class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :current_year
      t.boolean :role

      t.timestamps
    end
  end
end
