class CreateUserTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :user_trips do |t|
      t.references :user
      t.references :trip
      t.timestamps
    end
  end
end
