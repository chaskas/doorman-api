class Person < ApplicationRecord
  validates :rut, uniqueness: { message: "Error: RUT ya existe" }

  has_many :visits, -> { order(:created_at => :desc) }

  def as_json(options={})
    options[:methods] = [:total_visits]
    super
  end

  def total_visits
    Visit.where(person_id: self.id).count
  end

end
