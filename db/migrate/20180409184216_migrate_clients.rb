class MigrateClients < ActiveRecord::Migration[4.2]
  def change

    create_table :clients do |t|
        t.text :name
        t.text :phone
        t.text :email
        t.text :datestamp
        t.text :barber

        t.timestamps

  end
end
end
