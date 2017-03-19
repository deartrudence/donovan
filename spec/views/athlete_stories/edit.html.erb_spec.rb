require 'rails_helper'

RSpec.describe "athlete_stories/edit", type: :view do
  before(:each) do
    @athlete_story = assign(:athlete_story, AthleteStory.create!(
      :description => "MyText",
      :pages => nil
    ))
  end

  it "renders the edit athlete_story form" do
    render

    assert_select "form[action=?][method=?]", athlete_story_path(@athlete_story), "post" do

      assert_select "textarea#athlete_story_description[name=?]", "athlete_story[description]"

      assert_select "input#athlete_story_pages_id[name=?]", "athlete_story[pages_id]"
    end
  end
end
