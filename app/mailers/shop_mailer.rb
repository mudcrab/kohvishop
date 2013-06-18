class ShopMailer < ActionMailer::Base
  def welcome_email(email)
    mail(to: email[:to], from: Rails.configuration.accountant_mail, bcc: Rails.configuration.accountant_mail, body: email[:body], subject: email[:subject], content_type: "text/html")
  end
end