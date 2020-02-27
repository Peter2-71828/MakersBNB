class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |s|
      s.string  :name
      s.integer :price_per_night
      s.datetime :date
      s.text  :description
      s.references :users, foreign_key: true
    end
  end
end