class CreatePlaylists < ActiveRecord::Migration[5.0]
  def change
    create_table :playlists do |t|
      t.references :user_id
      t.string :url
      t.string :identifier

      t.timestamps
    end
  end
end
