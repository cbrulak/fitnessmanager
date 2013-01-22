class WorkoutSetsController < ApplicationController
  # GET /workout_sets
  # GET /workout_sets.json
  def index
    @workout_sets = WorkoutSet.find_all_by_user_id(current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @workout_sets }
    end
  end

  # GET /workout_sets/1
  # GET /workout_sets/1.json
  def show
    @workout_set = WorkoutSet.find(params[:id])
    @weight_rep = WeightRep.new
    @weight_rep.reps = @workout_set.reps
    @weight_rep.numSets = @workout_set.numSets

    @weight_reps = WeightRep.find_all_by_workoutset_id(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @workout_set }
    end
  end

  # GET /workout_sets/new
  # GET /workout_sets/new.json
  def new
    @workout_set = WorkoutSet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @workout_set }
    end
  end

  # GET /workout_sets/1/edit
  def edit
    @workout_set = WorkoutSet.find(params[:id])
  end

  # POST /workout_sets
  # POST /workout_sets.json
  def create
    @workout_set = WorkoutSet.new(params[:workout_set])
    @workout_set.user_id = current_user.id

    respond_to do |format|
      if @workout_set.save
        format.html { redirect_to @workout_set, notice: 'Workout set was successfully created.' }
        format.json { render json: @workout_set, status: :created, location: @workout_set }
      else
        format.html { render action: "new" }
        format.json { render json: @workout_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /workout_sets/1
  # PUT /workout_sets/1.json
  def update
    @workout_set = WorkoutSet.find(params[:id])

    respond_to do |format|
      if @workout_set.update_attributes(params[:workout_set])
        format.html { redirect_to @workout_set, notice: 'Workout set was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @workout_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_sets/1
  # DELETE /workout_sets/1.json
  def destroy
    @workout_set = WorkoutSet.find(params[:id])
    @workout_set.destroy

    respond_to do |format|
      format.html { redirect_to workout_sets_url }
      format.json { head :no_content }
    end
  end
end
