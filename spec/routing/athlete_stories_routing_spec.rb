require "rails_helper"

RSpec.describe AthleteStoriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/athlete_stories").to route_to("athlete_stories#index")
    end

    it "routes to #new" do
      expect(:get => "/athlete_stories/new").to route_to("athlete_stories#new")
    end

    it "routes to #show" do
      expect(:get => "/athlete_stories/1").to route_to("athlete_stories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/athlete_stories/1/edit").to route_to("athlete_stories#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/athlete_stories").to route_to("athlete_stories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/athlete_stories/1").to route_to("athlete_stories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/athlete_stories/1").to route_to("athlete_stories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/athlete_stories/1").to route_to("athlete_stories#destroy", :id => "1")
    end

  end
end
