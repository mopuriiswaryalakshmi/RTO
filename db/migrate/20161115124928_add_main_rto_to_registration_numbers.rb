class AddMainRtoToRegistrationNumbers < ActiveRecord::Migration
  def change
    add_column :registration_numbers, :office, :string
  end
end
