class WeightRep < ActiveRecord::Base
  attr_accessible :numSets, :reps, :weight, :weightUnit, :user_id, :workoutset_id
end
