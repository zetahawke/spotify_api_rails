class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :follows
      t.integer :following

      t.timestamps
    end
  end
end
