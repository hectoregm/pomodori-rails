class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string  :name, null: false
      t.integer :estimate, default: 1
      t.integer :priority
      t.string  :status
      t.boolean :today, default: false
      t.timestamps
    end
  end
end
