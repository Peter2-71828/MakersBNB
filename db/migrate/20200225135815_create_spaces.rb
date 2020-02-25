class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |s|
      t.integer :space_id 
      t.string  :name
      t.integer :price
      t.string  :owner
      t.string  :description

  end
end
