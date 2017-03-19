class AddUrlToGram < ActiveRecord::Migration[5.0]
  def change
    add_column :grams, :url, :string
  end
end
