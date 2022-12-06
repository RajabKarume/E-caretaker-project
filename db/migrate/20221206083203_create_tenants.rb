class CreateTenants < ActiveRecord::Migration[7.0]
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :email
      t.integer :phone_number
      t.integer :house_number
      t.string :number_of_bedrooms
      t.integer :rent
      t.boolean :is_paid
      t.integer :apartment_id

      t.timestamps
    end
  end
end
