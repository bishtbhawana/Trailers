class CreateActorsMoviesJoin < ActiveRecord::Migration
  def up
    create_table :actors_movies, :id => false do |t|
    	t.integer "movie_id"
    	t.integer "actor_id"
    end
    add_index :actors_movies, ['movie_id' , 'actor_id']
  end
  def down
  	drop_table :actors_movies
  end
end
