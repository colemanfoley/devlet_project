class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.string :website
      t.text :comment
      t.references :lesson
      t.references :User

      t.timestamps
    end
    add_index :comments, :lesson_id
    add_index :comments, :User_id
  end
end
