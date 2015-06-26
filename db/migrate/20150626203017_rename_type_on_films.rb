class RenameTypeOnFilms < ActiveRecord::Migration
  def change
    rename_column :films, :type, :category
  end
end
