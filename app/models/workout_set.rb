class WorkoutSet < ActiveRecord::Base
  attr_accessible :name, :numSets, :reps
end
