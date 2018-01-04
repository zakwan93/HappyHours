class CreateAttends < ActiveRecord::Migration[5.1]
  def change
    create_table :attends do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.boolean :likesbeer
      
      t.timestamps
    end
  end
end
