class StatisticsController < ApplicationController

  # Entrega el número total de invitados normales (invitados por rrpps) vs sus asistencias para un determinado evento
  def get_guests_vs_attendees

    event = Event.find_by! id: params[:id]

    nGuests =     Guest.where(event_id: event.id, person_id: Person.select("id").where(mtype: 0)).count

    nAttendees =  Visit.where(person_id: Guest.select("person_id").where(event_id: event.id, person_id: Person.select("id").where(mtype: 0)), event_id: event.id).count

    if nGuests && nAttendees
      a = {'guests' => nGuests, 'attendees' => nAttendees }
      render json: a, status: :ok
    else
      render status: :not_found
    end

  end

  # Entrega el número de asistentes por tipo (normal, residentes, hosts, invitados de residentes, invitados de host, invitados de staff)
  def get_attendees_by_type

    event = Event.find_by! id: params[:id]

    normal =        Visit.where(person_id: Guest.select("person_id").where(event_id: event.id, person_id: Person.select("id").where(mtype: 0)), event_id: event.id).count

    host =          Visit.where(person_id: Person.select("id").where( mtype: 2), event_id: event.id).count
    host_rg =       Visit.where(person_id: Person.select("id").where( mtype: 2), event_id: event.id).sum(:remaining_guest)

    residente =     Visit.where(person_id: Person.select("id").where( mtype: 1), event_id: event.id).count
    residente_rg =  Visit.where(person_id: Person.select("id").where( mtype: 1), event_id: event.id).sum(:remaining_guest)

    embajador =     Visit.where(person_id: Person.select("id").where( mtype: 4), event_id: event.id).count
    embajador_rg =  Visit.where(person_id: Person.select("id").where( mtype: 4), event_id: event.id).sum(:remaining_guest)

    invitado1 =     Visit.where(person_id: Person.select("id").where( mtype: 5), event_id: event.id).count
    invitado1_rg =  Visit.where(person_id: Person.select("id").where( mtype: 5), event_id: event.id).sum(:remaining_guest)

    invitado =      Visit.where(person_id: Person.select("id").where( mtype: 3), event_id: event.id).count
    invitado_rg =   Visit.where(person_id: Person.select("id").where( mtype: 3), event_id: event.id).sum(:remaining_guest)

    invHost        = 5 * host - host_rg
    invResidente   = 4 * residente - residente_rg
    invEmbajador   = 8 * embajador - embajador_rg
    invInvitado1   = 2 * invitado1 - invitado1_rg
    invInvitado    = invitado - invitado_rg

    if normal && host && invHost && residente && invResidente && embajador && invEmbajador && invitado1 && invInvitado1 && invitado && invInvitado
      a = {
        'normal':       normal,
        'host':         host,
        'invHost':      invHost,
        'residente':    residente,
        'invResidente': invResidente,
        'embajador':    embajador,
        'invEmbajador': invEmbajador,
        'invitado1':    invitado1,
        'invInvitado1': invInvitado1,
        'invitado':     invitado,
        'invInvitado':  invInvitado
      }
      render json: a, status: :ok
    else
      render status: :not_found
    end

  end

  # Entrega el número de asistentes por rango horario de 22 a 05 por hora.
  def get_attendes_by_hour

    event = Event.find_by! id: params[:id]

    v22_normal = event.get_attendees_by_hour_and_type(22,0)
    v23_normal = event.get_attendees_by_hour_and_type(23,0)
    v00_normal = event.get_attendees_by_hour_and_type(0,0)
    v01_normal = event.get_attendees_by_hour_and_type(1,0)
    v02_normal = event.get_attendees_by_hour_and_type(2,0)
    v03_normal = event.get_attendees_by_hour_and_type(3,0)
    v04_normal = event.get_attendees_by_hour_and_type(4,0)

    v22_host = event.get_attendees_by_hour_and_type(22,2)
    v23_host = event.get_attendees_by_hour_and_type(23,2)
    v00_host = event.get_attendees_by_hour_and_type(0,2)
    v01_host = event.get_attendees_by_hour_and_type(1,2)
    v02_host = event.get_attendees_by_hour_and_type(2,2)
    v03_host = event.get_attendees_by_hour_and_type(3,2)
    v04_host = event.get_attendees_by_hour_and_type(4,2)

    v22_host_rg = event.get_attendees_rg_by_hour_and_type(22,2)
    v23_host_rg = event.get_attendees_rg_by_hour_and_type(23,2)
    v00_host_rg = event.get_attendees_rg_by_hour_and_type(0,2)
    v01_host_rg = event.get_attendees_rg_by_hour_and_type(1,2)
    v02_host_rg = event.get_attendees_rg_by_hour_and_type(2,2)
    v03_host_rg = event.get_attendees_rg_by_hour_and_type(3,2)
    v04_host_rg = event.get_attendees_rg_by_hour_and_type(4,2)

    v22_invHost = 5 * v22_host - v22_host_rg
    v23_invHost = 5 * v23_host - v23_host_rg
    v00_invHost = 5 * v00_host - v00_host_rg
    v01_invHost = 5 * v01_host - v01_host_rg
    v02_invHost = 5 * v02_host - v02_host_rg
    v03_invHost = 5 * v03_host - v03_host_rg
    v04_invHost = 5 * v04_host - v04_host_rg

    v22_residente = event.get_attendees_by_hour_and_type(22,1)
    v23_residente = event.get_attendees_by_hour_and_type(23,1)
    v00_residente = event.get_attendees_by_hour_and_type(0,1)
    v01_residente = event.get_attendees_by_hour_and_type(1,1)
    v02_residente = event.get_attendees_by_hour_and_type(2,1)
    v03_residente = event.get_attendees_by_hour_and_type(3,1)
    v04_residente = event.get_attendees_by_hour_and_type(4,1)

    v22_residente_rg = event.get_attendees_rg_by_hour_and_type(22,1)
    v23_residente_rg = event.get_attendees_rg_by_hour_and_type(23,1)
    v00_residente_rg = event.get_attendees_rg_by_hour_and_type(0,1)
    v01_residente_rg = event.get_attendees_rg_by_hour_and_type(1,1)
    v02_residente_rg = event.get_attendees_rg_by_hour_and_type(2,1)
    v03_residente_rg = event.get_attendees_rg_by_hour_and_type(3,1)
    v04_residente_rg = event.get_attendees_rg_by_hour_and_type(4,1)

    v22_invResidente = 4 * v22_residente - v22_residente_rg
    v23_invResidente = 4 * v23_residente - v23_residente_rg
    v00_invResidente = 4 * v00_residente - v00_residente_rg
    v01_invResidente = 4 * v01_residente - v01_residente_rg
    v02_invResidente = 4 * v02_residente - v02_residente_rg
    v03_invResidente = 4 * v03_residente - v03_residente_rg
    v04_invResidente = 4 * v04_residente - v04_residente_rg

    v22_embajador = event.get_attendees_by_hour_and_type(22,4)
    v23_embajador = event.get_attendees_by_hour_and_type(23,4)
    v00_embajador = event.get_attendees_by_hour_and_type(0,4)
    v01_embajador = event.get_attendees_by_hour_and_type(1,4)
    v02_embajador = event.get_attendees_by_hour_and_type(2,4)
    v03_embajador = event.get_attendees_by_hour_and_type(3,4)
    v04_embajador = event.get_attendees_by_hour_and_type(4,4)

    v22_embajador_rg = event.get_attendees_rg_by_hour_and_type(22,4)
    v23_embajador_rg = event.get_attendees_rg_by_hour_and_type(23,4)
    v00_embajador_rg = event.get_attendees_rg_by_hour_and_type(0,4)
    v01_embajador_rg = event.get_attendees_rg_by_hour_and_type(1,4)
    v02_embajador_rg = event.get_attendees_rg_by_hour_and_type(2,4)
    v03_embajador_rg = event.get_attendees_rg_by_hour_and_type(3,4)
    v04_embajador_rg = event.get_attendees_rg_by_hour_and_type(4,4)

    v22_invEmbajador = 8 * v22_embajador - v22_embajador_rg
    v23_invEmbajador = 8 * v23_embajador - v23_embajador_rg
    v00_invEmbajador = 8 * v00_embajador - v00_embajador_rg
    v01_invEmbajador = 8 * v01_embajador - v01_embajador_rg
    v02_invEmbajador = 8 * v02_embajador - v02_embajador_rg
    v03_invEmbajador = 8 * v03_embajador - v03_embajador_rg
    v04_invEmbajador = 8 * v04_embajador - v04_embajador_rg

    v22_invitado1 = event.get_attendees_by_hour_and_type(22,5)
    v23_invitado1 = event.get_attendees_by_hour_and_type(23,5)
    v00_invitado1 = event.get_attendees_by_hour_and_type(0,5)
    v01_invitado1 = event.get_attendees_by_hour_and_type(1,5)
    v02_invitado1 = event.get_attendees_by_hour_and_type(2,5)
    v03_invitado1 = event.get_attendees_by_hour_and_type(3,5)
    v04_invitado1 = event.get_attendees_by_hour_and_type(4,5)

    v22_invitado1_rg = event.get_attendees_rg_by_hour_and_type(22,5)
    v23_invitado1_rg = event.get_attendees_rg_by_hour_and_type(23,5)
    v00_invitado1_rg = event.get_attendees_rg_by_hour_and_type(0,5)
    v01_invitado1_rg = event.get_attendees_rg_by_hour_and_type(1,5)
    v02_invitado1_rg = event.get_attendees_rg_by_hour_and_type(2,5)
    v03_invitado1_rg = event.get_attendees_rg_by_hour_and_type(3,5)
    v04_invitado1_rg = event.get_attendees_rg_by_hour_and_type(4,5)

    v22_invInvitado1 = 2 * v22_invitado1 - v22_invitado1_rg
    v23_invInvitado1 = 2 * v23_invitado1 - v23_invitado1_rg
    v00_invInvitado1 = 2 * v00_invitado1 - v00_invitado1_rg
    v01_invInvitado1 = 2 * v01_invitado1 - v01_invitado1_rg
    v02_invInvitado1 = 2 * v02_invitado1 - v02_invitado1_rg
    v03_invInvitado1 = 2 * v03_invitado1 - v03_invitado1_rg
    v04_invInvitado1 = 2 * v04_invitado1 - v04_invitado1_rg

    v22_invitado = event.get_attendees_by_hour_and_type(22,3)
    v23_invitado = event.get_attendees_by_hour_and_type(23,3)
    v00_invitado = event.get_attendees_by_hour_and_type(0,3)
    v01_invitado = event.get_attendees_by_hour_and_type(1,3)
    v02_invitado = event.get_attendees_by_hour_and_type(2,3)
    v03_invitado = event.get_attendees_by_hour_and_type(3,3)
    v04_invitado = event.get_attendees_by_hour_and_type(4,3)

    v22_invitado_rg = event.get_attendees_rg_by_hour_and_type(22,3)
    v23_invitado_rg = event.get_attendees_rg_by_hour_and_type(23,3)
    v00_invitado_rg = event.get_attendees_rg_by_hour_and_type(0,3)
    v01_invitado_rg = event.get_attendees_rg_by_hour_and_type(1,3)
    v02_invitado_rg = event.get_attendees_rg_by_hour_and_type(2,3)
    v03_invitado_rg = event.get_attendees_rg_by_hour_and_type(3,3)
    v04_invitado_rg = event.get_attendees_rg_by_hour_and_type(4,3)

    v22_invInvitado = v22_invitado - v22_invitado_rg
    v23_invInvitado = v23_invitado - v23_invitado_rg
    v00_invInvitado = v00_invitado - v00_invitado_rg
    v01_invInvitado = v01_invitado - v01_invitado_rg
    v02_invInvitado = v02_invitado - v02_invitado_rg
    v03_invInvitado = v03_invitado - v03_invitado_rg
    v04_invInvitado = v04_invitado - v04_invitado_rg

    v22 = v22_normal + v22_host + v22_invHost + v22_residente + v22_invResidente + v22_embajador + v22_invEmbajador + v22_invitado1 + v22_invInvitado1 + v22_invitado + v22_invInvitado
    v23 = v23_normal + v23_host + v23_invHost + v23_residente + v23_invResidente + v23_embajador + v23_invEmbajador + v23_invitado1 + v23_invInvitado1 + v23_invitado + v23_invInvitado
    v00 = v00_normal + v00_host + v00_invHost + v00_residente + v00_invResidente + v00_embajador + v00_invEmbajador + v00_invitado1 + v00_invInvitado1 + v00_invitado + v00_invInvitado
    v01 = v01_normal + v01_host + v01_invHost + v01_residente + v01_invResidente + v01_embajador + v01_invEmbajador + v01_invitado1 + v01_invInvitado1 + v01_invitado + v01_invInvitado
    v02 = v02_normal + v02_host + v02_invHost + v02_residente + v02_invResidente + v02_embajador + v02_invEmbajador + v02_invitado1 + v02_invInvitado1 + v02_invitado + v02_invInvitado
    v03 = v03_normal + v03_host + v03_invHost + v03_residente + v03_invResidente + v03_embajador + v03_invEmbajador + v03_invitado1 + v03_invInvitado1 + v03_invitado + v03_invInvitado
    v04 = v04_normal + v04_host + v04_invHost + v04_residente + v04_invResidente + v04_embajador + v04_invEmbajador + v04_invitado1 + v04_invInvitado1 + v04_invitado + v04_invInvitado

    if v22 && v23 && v00 && v01 && v02 && v03 && v04
      a = {'22': v22, '23': v23, '00': v00, '01': v01, '02': v02, '03': v03, '04': v04}
      render json: a, status: :ok
    else
      render status: :not_found
    end

  end

  def get_guests_by_user

    event = Event.find_by! id: params[:id]

    data = Guest.where(event_id: event.id).group(:user_id).count

    result = Array.new

    data.each do |item|
      user = User.find(item[0])
      result.push({'name': user.profile.first_name + ' ' + user.profile.last_name, 'guests': item[1]})
      puts "user_id: " + item[0].to_s + ", guests: " + item[1].to_s
    end

    render json: result

  end

  # Entrega el número de tragos solicitados por evento y tipo de miembro
  def get_drinks_by_event_and_mtype

    event = Event.find_by! id: params[:id]

    count_drinks_host               = Drink.where(person_id: Person.select("id").where( mtype: 2), event_id: event.id).count
    count_drinks_embajador          = Drink.where(person_id: Person.select("id").where( mtype: 4), event_id: event.id).count
    sum_remaining_drinks_host       = Drink.where(person_id: Person.select("id").where( mtype: 2), event_id: event.id).where('remaining >= ?',0).sum(:remaining)
    sum_remaining_drinks_embajador  = Drink.where(person_id: Person.select("id").where( mtype: 4), event_id: event.id).where('remaining >= ?',0).sum(:remaining)

    drinks_host        = 2 * count_drinks_host - sum_remaining_drinks_host
    drinks_embajador   = 4 * count_drinks_embajador - sum_remaining_drinks_embajador

    if drinks_host && drinks_embajador
      a = {'host': drinks_host, 'embajador': drinks_embajador }
      render json: a, status: :ok
    else
      render status: :not_found
    end

  end

end
