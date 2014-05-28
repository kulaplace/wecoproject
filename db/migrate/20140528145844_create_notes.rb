class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.integer :lead_id
      t.text :notes_body

      t.timestamps
    end
  end
end
