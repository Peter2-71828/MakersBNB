class CreateAvailability < ActiveRecord::Migration[6.0]
  def change
    create_table :availibility do |a|
      a.datetime :date
      # a.datetime :end_date
      a.references :users, foreign_key: true
      # a.references :spaces, foreign_key: true
    end
  end
end
