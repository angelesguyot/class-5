class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      t.integer "company_id"
      t.timestamps
    end
  end
end


# despues escribo esto  rails db:migrate para que se corra esto nuevo que hicimos. Solo se corren los nunca corridos. 
# Si quiero corregir algo hago una nueva, y elimino la anterior
