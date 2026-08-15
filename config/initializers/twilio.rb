Rails.application.config.x.twilio_client = Twilio::REST::Client.new(
  ENV.fetch("TWILIO_ACCOUNT_SID"),
  ENV.fetch("TWILIO_AUTH_TOKEN")
)
