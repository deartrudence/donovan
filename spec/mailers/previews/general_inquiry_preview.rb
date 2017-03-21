# Preview all emails at http://localhost:3000/rails/mailers/general_inquiry
class GeneralInquiryPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/general_inquiry/new_general_inquiry
  def new_general_inquiry
    GeneralInquiryMailer.new_general_inquiry('trudy', '@email', '123', 'comment')
  end

  def bailey_inc_inquiry
  	GeneralInquiryMailer.bailey_inc_inquiry('trudy', '@email', '123', 'company', 'location', 'date', 'info')
  	
  end

end
