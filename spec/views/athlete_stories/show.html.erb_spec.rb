require 'rails_helper'

RSpec.describe "athlete_stories/show", type: :view do
  before(:each) do
    @athlete_story = assign(:athlete_story, AthleteStory.create!(
      :description => "MyText",
      :pages => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
