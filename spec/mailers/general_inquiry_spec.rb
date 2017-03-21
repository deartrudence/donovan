require "rails_helper"

RSpec.describe GeneralInquiryMailer, type: :mailer do
  describe "new_general_inquiry" do
    let(:mail) { GeneralInquiryMailer.new_general_inquiry }

    it "renders the headers" do
      expect(mail.subject).to eq("New general inquiry")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
