class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |s|
      t.string  :name
      t.integer :price
      t.string  :owner
      t.text  :description
      t.timestamps

  end
end
