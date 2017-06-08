class Event < ApplicationRecord

  has_many :visits
  has_many :guests
  
end
