class CreateGameinstances < ActiveRecord::Migration[6.1]
  def change
    create_table :gameinstances do |t|
      t.integer :sessionid
      t.string :playername
      t.float :betamount
      t.string :gametype
      t.integer :multiplier
      t.integer :commission
      t.string :paymentname
      t.float :currentprice
      t.boolean :crypto
      t.float :cryptoprice
      t.boolean :outcome
      t.float :result

      t.timestamps
    end
  end
end
