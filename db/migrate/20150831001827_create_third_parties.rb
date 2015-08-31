class CreateThirdParties < ActiveRecord::Migration
  def change
    create_table :third_parties do |t|
      t.string :name
      t.string :url
      t.integer :profit
      t.string :credibility
      t.integer :surcharge
      t.boolean :shipping?
      t.integer :shippingCost
      t.integer :visitorCount
      t.integer :rating
      t.boolean :vendor?

      t.timestamps null: false
    end
  end
end
