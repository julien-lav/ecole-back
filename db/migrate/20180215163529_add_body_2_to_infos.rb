class AddBody2ToInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :infos, :body_2, :text
  end
end
