class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.confirmation.subject
  #
  def confirmation(email)
    attachments['rails.png'] = File.read("#{Rails.root}/app/assets/images/rails.png")
    mail to: email,
         from: "info@railsbuch.de",
         subject: "Ihre Kontaktnachricht erhalten"  do |format| 
     format.html { render :layout => 'contact' }
     format.text
   end
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.inquiry.subject
  #
  def inquiry(contact_message)
    @contact_message = contact_message
    mail to: "info@railsbuch.de",
         from: contact_message.email,
         subject: "Neue Kontaktanfrage"
  end
end
