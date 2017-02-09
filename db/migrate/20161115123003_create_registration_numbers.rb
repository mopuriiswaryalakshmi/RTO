class CreateRegistrationNumbers < ActiveRecord::Migration
  def change
    create_table :registration_numbers do |t|
      t.string :name
      t.integer :state_id

      t.timestamps null: false
    end
  end
end
