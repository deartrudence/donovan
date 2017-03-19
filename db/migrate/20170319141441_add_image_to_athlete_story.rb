class AddImageToAthleteStory < ActiveRecord::Migration[5.0]
  def up
    add_attachment :athlete_stories, :image
  end

  def down
    remove_attachment :athlete_stories, :image
  end
end
