class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, default: '', null: false
      t.string :email, default: '', null: false
      t.string :encrypted_password, default: '', null: false
      t.string :id_type, default: '', null: false
      t.string :personal_id, default: '', null: false
      t.string :jti, default: '', null: false

      t.timestamps
    end

    add_index :users, :jti, unique: true
    add_index :users, :personal_id, unique: true
  end
end
