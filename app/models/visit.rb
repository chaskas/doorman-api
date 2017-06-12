class Visit < ApplicationRecord
  belongs_to :person
  belongs_to :event

  validates :person_id, uniqueness: { scope: :event_id, message: "should visit once per event" }

end
