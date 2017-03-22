class GeneralInquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.general_inquiry_mailer.new_general_inquiry.subject
  #
  def new_general_inquiry(name, email, phone, comment)
    @name = name
    @email = email
    @phone = phone
    @comment = comment

    mail to: "trudy.macnabb@gmail.com"
  end

  def bailey_inc_inquiry(name, email, phone, company, location, date, info)
  	@name = name
    @email = email
    @phone = phone
    @company = company
    @location = location
    @date = date
    @info = info

    mail to: "trudy.macnabb@gmail.com"
  end

end
