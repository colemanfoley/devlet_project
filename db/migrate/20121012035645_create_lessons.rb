class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :body
      t.date :date_published
      t.references :track
      t.references :category
      t.references :user

      t.timestamps
    end
    add_index :lessons, :track_id
    add_index :lessons, :category_id
    add_index :lessons, :user_id
  end
end
