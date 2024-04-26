class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      # no agrego un id a la tabla, se hace solo
      # para checkear lo que corri abro esta base poniendo sqlite3 db/development.sqlite3 y despues pongo .schema
      t.string "name"
      t.string "city"
      t.string "state"
      t.string "url"

      t.timestamps
    end
  end
end
