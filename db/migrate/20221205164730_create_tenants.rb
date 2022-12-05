class CreateTenants < ActiveRecord::Migration[7.0]
  def change
    create_table :tenants do |t|
      t.string :name
      t.integer :phone_number
      t.string :email
      t.string :house_number
      t.integer :number_of_bedrooms
      t.integer :rent_amount
      t.boolean :is_paid

      t.timestamps
    end
  end
end
