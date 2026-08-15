class MessagesController < ApplicationController
  before_action :set_contact

  def new
    @message = @contact.messages.new
  end

  def create
    @message = @contact.messages.new(message_params)

    if @message.save
      begin
        @message.deliver!
        redirect_to contacts_path, notice: "Message sent to #{@contact.name}."
      rescue Twilio::REST::RestError => e
        redirect_to contacts_path, alert: "Twilio couldn't send the message: #{e.error_message}"
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_contact
    @contact = Contact.find(params[:contact_id])
  end

  def message_params
    params.require(:message).permit(:body)
  end
end
