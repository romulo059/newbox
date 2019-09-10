class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.string :name
      t.string :description
      t.string :os

      t.timestamps
    end
  end
end
