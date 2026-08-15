class CreateMessages < ActiveRecord::Migration[8.1]
  def change
    create_table :messages do |t|
      t.references :contact, null: false, foreign_key: true
      t.text :body, null: false
      t.string :twilio_sid
      t.string :status, null: false, default: "queued"

      t.timestamps
    end
  end
end
