require 'rails_helper'

RSpec.describe "tweets/index", type: :view do
  before(:each) do
    assign(:tweets, [
      Tweet.create!(
        :text => "Text"
      ),
      Tweet.create!(
        :text => "Text"
      )
    ])
  end

  it "renders a list of tweets" do
    render
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
