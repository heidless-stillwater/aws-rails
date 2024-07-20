class ContactMailer < ApplicationMailer
  default to: "lockhartarts.co.uk@domainsbyproxy.com"
  default from: "no-reply@lockhartarts.co.uk"

  def home_form(name, email, message)
    @name = name
    @name = email
    @message = message
    
    @greeting = "Hi"

    mail subject: "contact form"
  end
end
