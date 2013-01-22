class AddWeigthToWorkoutset < ActiveRecord::Migration
  def change
    add_column :workout_sets, :weight, :integer
    add_column :workout_sets, :weightunit, :string
  end
end
