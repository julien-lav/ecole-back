class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :description
      t.integer :year
      t.string :category
      t.text :content
      t.string :link

      t.timestamps
    end
  end
end
