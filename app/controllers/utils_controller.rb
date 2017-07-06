class UtilsController < ApplicationController

  require 'open-uri'
  require 'net/http'

  def get_people_names

    people = Person.where("first_name IS ? or last_name is ?", nil, nil)

    puts people.length

    people.each do |person|

      url = "https://zeus.sii.cl/cvc_cgi/nar/nar_consulta"

      begin

        response = Net::HTTP.post_form(URI.parse(url), { RUT: person.rut, DV: self.get_dv(person.rut.to_i), ACEPTAR: 'Consultar' })

        doc = Nokogiri::HTML(response.body)

        full_name = doc.css('table')[2].css('tr')[0].css('td')[0].css('font').text

        if(!full_name.blank?)
          full_name_array = full_name.split()

          last_name = full_name_array.pop
          last_name = " " + full_name_array.pop.strip.capitalize + " " + last_name.strip.capitalize

          last_name = last_name.strip
          first_name = full_name_array.map(&:capitalize).join(' ')

          person.first_name = first_name
          person.last_name = last_name
          person.save

          puts person.rut + " " + person.first_name.to_s + " " + person.last_name.to_s

        end

      rescue NameError => exception
        puts person.rut + " ERROR"
      end

    end

  end

  def get_dv(rut)

    results = Array.new

    numerical_serie = 2

    while rut > 0
      results.push (rut % 10) * numerical_serie
      rut = rut / 10
      numerical_serie += 1
      numerical_serie = 2 if numerical_serie > 7
    end

    digit = 11 - (results.inject(:+) % 11)

    if digit == 10
      digit = "k"
    elsif digit == 11
      digit = "0"
    else
      digit = digit.to_s
    end

    return digit

  end

end
