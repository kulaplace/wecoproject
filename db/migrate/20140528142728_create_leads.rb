class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :name
      t.string :company
      t.string :address
      t.string :email
      t.string :phone
      t.integer :status
      t.integer :lead_id

      t.timestamps
    end
  end
end
