class AddFoundationImageToPages < ActiveRecord::Migration[5.0]
  def up
    add_attachment :pages, :foundation_image
  end

  def down
    remove_attachment :pages, :foundation_image
  end
end
