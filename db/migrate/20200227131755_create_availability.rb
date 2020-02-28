class CreateAvailability < ActiveRecord::Migration[6.0]
  def change
    create_table :availability do |a|
      a.datetime :start_date
      a.datetime :end_date
      a.references :users, foreign_key: true
      a.references :spaces, foreign_key: true 
    end
  end
end
