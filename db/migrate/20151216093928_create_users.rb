class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name,               null: false, default: ""
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.timestamps null: false
    end
  end
end
