require 'rails_helper'

RSpec.describe "pages/index", type: :view do
  before(:each) do
    assign(:pages, [
      Page.create!(
        :tag_line => "Tag Line",
        :secondary_tag_line => "Secondary Tag Line",
        :secondary_description => "MyText"
      ),
      Page.create!(
        :tag_line => "Tag Line",
        :secondary_tag_line => "Secondary Tag Line",
        :secondary_description => "MyText"
      )
    ])
  end

  it "renders a list of pages" do
    render
    assert_select "tr>td", :text => "Tag Line".to_s, :count => 2
    assert_select "tr>td", :text => "Secondary Tag Line".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
