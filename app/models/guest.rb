class Guest < ApplicationRecord
  belongs_to :person
  belongs_to :event

  validates :person_id, uniqueness: { scope: :event_id, message: "should invited once per event" }

end
