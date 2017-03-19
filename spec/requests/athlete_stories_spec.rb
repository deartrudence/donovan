require 'rails_helper'

RSpec.describe "AthleteStories", type: :request do
  describe "GET /athlete_stories" do
    it "works! (now write some real specs)" do
      get athlete_stories_path
      expect(response).to have_http_status(200)
    end
  end
end
