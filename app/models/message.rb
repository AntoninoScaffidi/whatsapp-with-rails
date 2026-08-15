class Message < ApplicationRecord
  belongs_to :contact

  validates :body, presence: true

  def deliver!
    twilio_message = Rails.application.config.x.twilio_client.messages.create(
      from: "whatsapp:#{ENV.fetch('TWILIO_WHATSAPP_NUMBER')}",
      to: "whatsapp:#{contact.whatsapp_number}",
      body: body
    )

    update!(twilio_sid: twilio_message.sid, status: twilio_message.status)
  end
end
