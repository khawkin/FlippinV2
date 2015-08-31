class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :industry_id
      t.integer :third_party_id
      t.string :name
      t.integer :averageNewPrice
      t.integer :newPrice
      t.integer :averageUsedPrice
      t.integer :usedPrice
      t.string :quality
      t.string :productCredibility
      t.string :productLocation
      t.string :type
      t.integer :age
      t.integer :sellingTime
      t.boolean :bidPrice?
      t.string :description
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
