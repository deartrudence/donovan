require 'rails_helper'

RSpec.describe "athlete_stories/index", type: :view do
  before(:each) do
    assign(:athlete_stories, [
      AthleteStory.create!(
        :description => "MyText",
        :pages => nil
      ),
      AthleteStory.create!(
        :description => "MyText",
        :pages => nil
      )
    ])
  end

  it "renders a list of athlete_stories" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
