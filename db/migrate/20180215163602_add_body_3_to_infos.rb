class AddBody3ToInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :infos, :body_3, :text
  end
end
