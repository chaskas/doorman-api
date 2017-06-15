class Guest < ApplicationRecord

  belongs_to :person
  belongs_to :event

  validates :person_id, uniqueness: { scope: :event_id, message: "should invited once per event" }

  before_save :set_ends

  private
    def set_ends
      if !self.ends
        self.ends = (self.event.starts + 1.day).change(hour: 1).beginning_of_hour
      end
    end
end
