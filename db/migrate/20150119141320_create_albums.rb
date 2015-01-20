class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
       t.string "title"
       t.integer "movie_id"
       t.integer "photo_id"
      t.timestamps
    end
  end
end
