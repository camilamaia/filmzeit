class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :name
      t.text :description
      t.float :rate
      t.decimal :duration

      t.timestamps null: false
    end
  end
end
