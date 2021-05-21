class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :hometown
      t.string :bio
      t.text :avatar

      t.timestamps
    end
  end
end
