class CreateTrailers < ActiveRecord::Migration
  def up
    create_table :trailers do |t|
      t.integer "movie_id"
      t.string "video_url"
      t.integer "views"
      t.timestamps
    end
  end
  def down
  	drop_table :trailers
  end
end
