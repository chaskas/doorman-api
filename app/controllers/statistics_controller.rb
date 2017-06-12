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

    v22 = Visit.where(event_id: event.id).where("created_at >= :begin AND created_at < :end", { begin: event.starts.change(hour: 22).beginning_of_hour,  end: event.starts.change(hour: 22).end_of_hour }).count
    v23 = Visit.where(event_id: event.id).where("created_at >= :begin AND created_at < :end", { begin: event.starts.change(hour: 23).beginning_of_hour,  end: event.starts.change(hour: 23).end_of_hour }).count
    v00 = Visit.where(event_id: event.id).where("created_at >= :begin AND created_at < :end", { begin: (event.starts + 1.day).change(hour: 0).beginning_of_hour,  end: (event.starts + 1.day).change(hour: 0).end_of_hour }).count
    v01 = Visit.where(event_id: event.id).where("created_at >= :begin AND created_at < :end", { begin: (event.starts + 1.day).change(hour: 1).beginning_of_hour,  end: (event.starts + 1.day).change(hour: 1).end_of_hour }).count
    v02 = Visit.where(event_id: event.id).where("created_at >= :begin AND created_at < :end", { begin: (event.starts + 1.day).change(hour: 2).beginning_of_hour,  end: (event.starts + 1.day).change(hour: 2).end_of_hour }).count
    v03 = Visit.where(event_id: event.id).where("created_at >= :begin AND created_at < :end", { begin: (event.starts + 1.day).change(hour: 3).beginning_of_hour,  end: (event.starts + 1.day).change(hour: 3).end_of_hour }).count
    v04 = Visit.where(event_id: event.id).where("created_at >= :begin AND created_at < :end", { begin: (event.starts + 1.day).change(hour: 4).beginning_of_hour,  end: (event.starts + 1.day).change(hour: 4).end_of_hour }).count

    if v22 && v23 && v00 && v01 && v02 && v03 && v04
      a = {'22': v22, '23': v23, '00': v00, '01': v01, '02': v02, '03': v03, '04': v04}
      render json: a, status: :ok
    else
      render status: :not_found
    end

  end

end
