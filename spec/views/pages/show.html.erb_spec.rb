require 'rails_helper'

RSpec.describe "pages/show", type: :view do
  before(:each) do
    @page = assign(:page, Page.create!(
      :tag_line => "Tag Line",
      :secondary_tag_line => "Secondary Tag Line",
      :secondary_description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Tag Line/)
    expect(rendered).to match(/Secondary Tag Line/)
    expect(rendered).to match(/MyText/)
  end
end
