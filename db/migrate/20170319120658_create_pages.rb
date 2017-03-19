class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :tag_line
      t.string :secondary_tag_line
      t.text :secondary_description

      t.timestamps
    end
  end
end
