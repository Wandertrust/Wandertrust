class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|

      t.timestamps
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :emergency_contact_name
      t.string :emergency_contact_phone
      t.string :emergency_contact_relationship
    end
  end
end
