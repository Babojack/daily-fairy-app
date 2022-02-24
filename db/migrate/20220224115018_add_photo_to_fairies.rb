class AddPhotoToFairies < ActiveRecord::Migration[6.1]
  def change
    add_column :fairies, :photo, :string
  end
end
