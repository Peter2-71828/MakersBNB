class CreateAvailability < ActiveRecord::Migration[6.0]
  def change
    create_table :availability do |a|
      a.datetime :date
      a.references :users, foreign_key: true
      a.references :spaces, foreign_key: true
    end
  end
end
