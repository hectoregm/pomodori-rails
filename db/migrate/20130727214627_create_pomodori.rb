class CreatePomodori < ActiveRecord::Migration
  def change
    create_table :pomodori do |t|
      t.references :task, index: true
      t.timestamp :started_at
      t.timestamp :finished_at
      t.integer :length

      t.timestamps
    end
  end
end
