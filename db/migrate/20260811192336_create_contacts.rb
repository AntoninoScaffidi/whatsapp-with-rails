class CreateContacts < ActiveRecord::Migration[8.1]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :whatsapp_number, null: false

      t.timestamps
    end
  end
end
