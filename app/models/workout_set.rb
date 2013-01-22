class WorkoutSet < ActiveRecord::Base
  attr_accessible :name, :numSets, :reps, :user_id, :weightunit, :weight

  WEIGHTUNITS = ['kgs','lbs']
end
