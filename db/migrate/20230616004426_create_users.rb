class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      ## authentication zero fields
      t.string :email, null: false, index: { unique: true }
      t.string :password_digest, null: false
      t.boolean :verified, null: false, default: false

      t.string :encrypted_password, null: false, default: ""
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone_number

      t.boolean :is_admin, default: false
      t.boolean :is_player, default: false
      t.boolean :is_ghost_player, default: false

      t.timestamps null: false
    end

    # add_index :users, :email,                unique: true
    # add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end  
end
