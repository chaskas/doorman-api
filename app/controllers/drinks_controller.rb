class DrinksController < ApplicationController

  def get_drink

    person = Person.find_by! rut: params[:rut]

    event = Event.where("starts < :now AND ends > :now", { now: Time.now }).take!

    if Drink.exists?(person_id: person.id, event_id: event.id)

      @drink = Drink.find_by person_id: person.id, event_id: event.id

      if @drink.remaining > 0
        @drink.remaining = @drink.remaining - 1
      end

      if @drink.save
        render json: @drink, status: :ok
      else
        render json: @drink.errors, status: :unprocessable_entity
      end

    else
      # Crear visita con remaining guest correspondiente (dependiendo de person.mtype)

      rg = 0
      if person.mtype == 2 # Host
        rg = 2
      elsif person.mtype == 4 # Embajador
        rg = 4
      else
        rg = 0
      end

      @drink = Drink.new(person_id: person.id, event_id: event.id, remaining: rg)

      if @drink.save
        render json: @drink, status: :created
      else
        render json: @drink.errors, status: :unprocessable_entity
      end

    end

  end

end
