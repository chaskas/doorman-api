class Person < ApplicationRecord
  
  validates :rut, uniqueness: { message: "Error: RUT ya existe" }

  has_many :visits, -> { order(:created_at => :desc) }

end
