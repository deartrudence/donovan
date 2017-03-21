class GeneralInquiryMailerPreview < ActonMailer::Preview

	def new_general_inquiry
		GeneralInquiryMailer.new_general_inquiry('trudy', 'trudy@email', '234', 'comment')
	end
end