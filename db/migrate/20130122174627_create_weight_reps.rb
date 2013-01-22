class CreateWeightReps < ActiveRecord::Migration
  def change
    create_table :weight_reps do |t|
      t.integer :reps
      t.integer :numSets
      t.integer :weight
      t.string :weightUnit
      t.integer :workoutset_id
      t.integer :user_id
      t.timestamps
    end
  end
end
