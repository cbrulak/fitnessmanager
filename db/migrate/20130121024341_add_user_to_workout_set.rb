class AddUserToWorkoutSet < ActiveRecord::Migration
  def change
    add_column :workout_sets, :user_id, :integer
  end
end
