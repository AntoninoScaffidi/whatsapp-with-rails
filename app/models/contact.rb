class Contact < ApplicationRecord
  validates :name, presence: true
  validates :whatsapp_number, presence: true, format: {
    with: /\A\+[1-9]\d{6,14}\z/,
    message: "must be in E.164 format, e.g. +391234567890"
  }
end
