class AddPictureColumnToPhotos < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :pictures, :string
  end
end
