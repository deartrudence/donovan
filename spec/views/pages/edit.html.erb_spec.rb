require 'rails_helper'

RSpec.describe "pages/edit", type: :view do
  before(:each) do
    @page = assign(:page, Page.create!(
      :tag_line => "MyString",
      :secondary_tag_line => "MyString",
      :secondary_description => "MyText"
    ))
  end

  it "renders the edit page form" do
    render

    assert_select "form[action=?][method=?]", page_path(@page), "post" do

      assert_select "input#page_tag_line[name=?]", "page[tag_line]"

      assert_select "input#page_secondary_tag_line[name=?]", "page[secondary_tag_line]"

      assert_select "textarea#page_secondary_description[name=?]", "page[secondary_description]"
    end
  end
end
