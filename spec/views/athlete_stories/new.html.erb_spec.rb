require 'rails_helper'

RSpec.describe "athlete_stories/new", type: :view do
  before(:each) do
    assign(:athlete_story, AthleteStory.new(
      :description => "MyText",
      :pages => nil
    ))
  end

  it "renders new athlete_story form" do
    render

    assert_select "form[action=?][method=?]", athlete_stories_path, "post" do

      assert_select "textarea#athlete_story_description[name=?]", "athlete_story[description]"

      assert_select "input#athlete_story_pages_id[name=?]", "athlete_story[pages_id]"
    end
  end
end
