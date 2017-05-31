class Person < ApplicationRecord
  validates :rut, uniqueness: true
end
