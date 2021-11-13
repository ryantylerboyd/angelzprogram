class CreateCustomerdata < ActiveRecord::Migration[6.1]
  def change
    create_table :customerdata do |t|
      t.string :playername
      t.float :betamount
      t.string :paymenttype
      t.float :multiplier
      t.string :gametype
      t.integer :commission
      t.float :currencyconvert
      t.boolean :outcome
      t.float :netincome

      t.timestamps
    end
  end
end
