class CreateUsers < ActiveRecord::Migration[6.0]
  def change
      create_table :users do |u|
        t.integer :user_id
        t.string :name
  end
end
