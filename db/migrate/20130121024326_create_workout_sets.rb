class CreateWorkoutSets < ActiveRecord::Migration
  def change
    create_table :workout_sets do |t|
      t.string :name
      t.integer :reps
      t.integer :numSets

      t.timestamps
    end
  end
end
