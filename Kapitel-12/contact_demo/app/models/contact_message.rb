class ContactMessage < ActiveRecord::Base
  validates :name, length: {:minimum => 2}
  validates :email, format: /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  validates :message, presence: true
end
