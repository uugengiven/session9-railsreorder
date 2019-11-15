class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :title
      t.datetime :date
      t.integer :order

      t.timestamps
    end
  end
end
