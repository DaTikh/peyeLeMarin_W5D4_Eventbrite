class Event < ApplicationRecord
  validates :date, uniqueness: true
  belongs_to :creator, class_name: 'User'
  has_many :event_attendees
  has_many :attendees, through: :event_attendees
end
