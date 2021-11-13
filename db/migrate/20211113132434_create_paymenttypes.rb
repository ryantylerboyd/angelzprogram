class CreatePaymenttypes < ActiveRecord::Migration[6.1]
  def change
    create_table :paymenttypes do |t|
      t.string :paymentname
      t.float :currentprice
      t.boolean :crypto
      t.string :cryptourl

      t.timestamps
    end
  end
end
