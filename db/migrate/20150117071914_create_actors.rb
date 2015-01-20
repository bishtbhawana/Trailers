class CreateActors < ActiveRecord::Migration
  def up
    create_table :actors do |t|
      t.string "name"
      t.string "gender" , :limit => 1
      t.date "dob"
      t.integer "no_of_movies"
      t.text "about"
      t.timestamps
    end
    add_index("actors","movie_id")
  end
  def down
  	drop_table :actors
  end
end
