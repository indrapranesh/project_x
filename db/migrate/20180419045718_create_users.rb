class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
    
     t.timestamps
     t.string	:name
     t.string	:email
     t.string	:token
     t.string	:password_digest
    end
    add_index :users, :token, unique: true
  end
end
