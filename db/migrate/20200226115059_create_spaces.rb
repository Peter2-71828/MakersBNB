class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |s|
      s.string  :name
      s.integer :price
      s.datetime :date
      s.text  :description
  end
end
end
