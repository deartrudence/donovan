class CreateAthleteStories < ActiveRecord::Migration[5.0]
  def change
    create_table :athlete_stories do |t|
      t.text :description
      t.references :page, foreign_key: true

      t.timestamps
    end
  end
end
