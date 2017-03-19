class AddHeaderImageToPages < ActiveRecord::Migration[5.0]
  
  def up
    add_attachment :pages, :header_image
  end

  def down
    remove_attachment :pages, :header_image
  end

end
