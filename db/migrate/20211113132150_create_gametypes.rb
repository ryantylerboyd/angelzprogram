class CreateGametypes < ActiveRecord::Migration[6.1]
  def change
    create_table :gametypes do |t|
      t.string :gametype
      t.integer :multiplier
      t.integer :commission

      t.timestamps
    end
  end
end
