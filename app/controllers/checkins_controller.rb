class CheckinsController < ApplicationController

  def check_in

    person = Person.find_by! rut: params[:rut]

    person.last_seen = Time.now
    person.save

    event = Event.where("starts < :now AND ends > :now", { now: Time.now }).take!

    if(person.mtype == 0)

      if Guest.exists?(person_id: person.id, event_id: event.id)

        guest = Guest.find_by! person_id: person.id, event_id: event.id

        if guest.ends > Time.now
          puts "///////////"
          puts guest.ends.to_s+ " " + Time.now.to_s
          puts "///////////"
        else
          puts "///////////"
          puts "NO" + guest.ends.to_s + " " + Time.now.to_s
          puts "///////////"
        end

        if Visit.exists?(person_id: person.id, event_id: event.id)

          @visit = Visit.find_by person_id: person.id, event_id: event.id

          render json: @visit, status: :not_found

        else

          @visit = Visit.new(person_id: person.id, event_id: event.id)
          @visit.remaining_guest = 0

          if @visit.save
            render json: @visit, include: :person, status: :created
          else
            render json: @visit.errors, status: :unprocessable_entity
          end

        end

      else

        render json: @guest, status: :not_found

      end

    else

      if Visit.exists?(person_id: person.id, event_id: event.id)

        @visit = Visit.find_by person_id: person.id, event_id: event.id

        # TODO: Comprobar que no han pasado 5 minutos desde visit.created_at

        if @visit.remaining_guest > 0
          @visit.remaining_guest = @visit.remaining_guest - 1
        end

        if @visit.save
          render json: @visit, include: :person, status: :ok, location: @visit
        else
          render json: @visit.errors, status: :unprocessable_entity
        end

      else

        rg = 0
        if person.mtype == 0 # Normal
          rg = 0
        elsif person.mtype == 1 # Residente
          rg = 4
        elsif person.mtype == 2 # Host
          rg = 5
        elsif person.mtype == 3 # Invitado
          rg = 1
        elsif person.mtype == 4 # Embajador
          rg = 8
        elsif person.mtype == 5 # Invitado +1
          rg =  2
        else
          rg = 0
        end

        @visit = Visit.new(person_id: person.id, event_id: event.id, remaining_guest: rg)

        if @visit.save
          render json: @visit, include: :person, status: :created, location: @visit
        else
          render json: @visit.errors, status: :unprocessable_entity
        end

      end

    end

  end

end
