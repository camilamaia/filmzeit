class RedefineFilms < ActiveRecord::Migration
  def change
    remove_column :films, :name, :string
    remove_column :films, :description, :text
    remove_column :films, :rate, :float
    remove_column :films, :duration, :decimal

    add_column :films, :title, :string
    add_column :films, :year, :string
    add_column :films, :rated, :string
    add_column :films, :released, :string
    add_column :films, :runtime, :string
    add_column :films, :genre, :string
    add_column :films, :director, :string
    add_column :films, :writer, :string
    add_column :films, :actors, :string
    add_column :films, :plot, :text
    add_column :films, :language, :string
    add_column :films, :country, :string
    add_column :films, :awards, :string
    add_column :films, :poster, :string
    add_column :films, :metascore, :string
    add_column :films, :imdb_rating, :string
    add_column :films, :imdb_votes, :string
    add_column :films, :imdb_id, :string
    add_column :films, :type, :string
    add_column :films, :response, :string

  end
end
