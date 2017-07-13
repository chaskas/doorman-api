class Person < ApplicationRecord

  validates :rut, uniqueness: { message: "Error: RUT ya existe" }

  has_many :visits, -> { order(:created_at => :desc) }

  def rank

    nEvents = Event.where("starts > :now", { now: 3.month.ago }).count

    nVisits = Visit.where("created_at > :now", { now: 3.month.ago }).where(person_id: self.id).count

    rank = ((nVisits.to_f / nEvents.to_f) * 5).round(2)

  end

end
