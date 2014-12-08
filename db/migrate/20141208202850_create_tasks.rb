class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :urgency
      t.integer :importance
      t.integer :quadrant

      t.timestamps
    end
  end
end
