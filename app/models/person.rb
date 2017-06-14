class Person < ApplicationRecord
  validates :rut, uniqueness: true

  has_many :visits

end
