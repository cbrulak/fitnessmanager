class CreateTimeReps < ActiveRecord::Migration
  def change
    create_table :time_reps do |t|
      t.integer :reps
      t.integer :interval
      t.integer :workoutset_id
      t.integer :workoutset_id
      t.integer :user_id

      t.timestamps
    end
  end
end
