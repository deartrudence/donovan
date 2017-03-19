class AddSecondaryImageToPages < ActiveRecord::Migration[5.0]
  def up
    add_attachment :pages, :secondary_image
  end

  def down
    remove_attachment :pages, :secondary_image
  end
end
