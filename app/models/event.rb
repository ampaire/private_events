# frozen_string_literal: true

class Event < ApplicationRecord
  include EventsHelper
  belongs_to :creator, class_name: 'User'
  has_many :attendees,
           class_name: 'AttendedEvent',
           foreign_key: 'attended_event_id',
           dependent: :destroy
  validates :description, presence: true, length: { maximum: 100 }

  def creator
    User.find_by(id: creator_id).name
  end
end
