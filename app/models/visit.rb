class Visit < ApplicationRecord

  belongs_to :person
  belongs_to :event

  validates :person_id, uniqueness: { scope: :event_id, message: "should visit once per event" }

  before_save :update_person_visits

  private

    def update_person_visits

      person = Person.find(self.person_id)
      person.nvisits += 1
      person.save

    end

end
