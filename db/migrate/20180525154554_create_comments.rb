class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :post 
      t.integer :user 
      t.string :comment

      t.timestamps
    end
    add_index :comments, [:created_at]
  end
end
