class AddSecondaryFoundationImageToPages < ActiveRecord::Migration[5.0]
  def up
    add_attachment :pages, :secondary_foundation_image
  end

  def down
    remove_attachment :pages, :secondary_foundation_image
  end
end
