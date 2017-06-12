class Event < ApplicationRecord

  has_many :visits
  has_many :guests

  def as_json(options={})
    options[:methods] = [:total_guests, :total_attendees]
    super
  end

  def total_guests
    Guest.where(event_id: self.id).count
  end

  def total_attendees

    normal =        Visit.where(person_id: Guest.select("person_id").where(event_id: self.id, person_id: Person.select("id").where(mtype: 0)), event_id: self.id).count

    host =          Visit.where(person_id: Person.select("id").where( mtype: 2), event_id: self.id).count
    host_rg =       Visit.where(person_id: Person.select("id").where( mtype: 2), event_id: self.id).sum(:remaining_guest)

    residente =     Visit.where(person_id: Person.select("id").where( mtype: 1), event_id: self.id).count
    residente_rg =  Visit.where(person_id: Person.select("id").where( mtype: 1), event_id: self.id).sum(:remaining_guest)

    embajador =     Visit.where(person_id: Person.select("id").where( mtype: 4), event_id: self.id).count
    embajador_rg =  Visit.where(person_id: Person.select("id").where( mtype: 4), event_id: self.id).sum(:remaining_guest)

    invitado1 =     Visit.where(person_id: Person.select("id").where( mtype: 5), event_id: self.id).count
    invitado1_rg =  Visit.where(person_id: Person.select("id").where( mtype: 5), event_id: self.id).sum(:remaining_guest)

    invitado =      Visit.where(person_id: Person.select("id").where( mtype: 3), event_id: self.id).count
    invitado_rg =   Visit.where(person_id: Person.select("id").where( mtype: 3), event_id: self.id).sum(:remaining_guest)

    invHosts        = 5 * host - host_rg
    invResidentes   = 4 * residente - residente_rg
    invEmbajadores  = 8 * embajador - embajador_rg
    invInvitados1   = 2 * invitado1 - invitado1_rg
    invInvitados    = invitado - invitado_rg

    sum = normal + host + residente + embajador + invitado1 + invitado + invHosts + invResidentes + invEmbajadores + invInvitados1 + invInvitados

  end

end
