class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :pass_confirmation
      t.string :password_digest
      t.boolean :admin?

      t.timestamps null: false
    end
  end
end
