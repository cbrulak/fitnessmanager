class WeightRepsController < ApplicationController
  # GET /weight_reps
  # GET /weight_reps.json
  def index
    @weight_reps = WeightRep.find_all_by_user_id(current_user.id)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weight_reps }
    end
  end

  # GET /weight_reps/1
  # GET /weight_reps/1.json
  def show
    @weight_rep = WeightRep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @weight_rep }
    end
  end

  # GET /weight_reps/new
  # GET /weight_reps/new.json
  def new
    @weight_rep = WeightRep.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @weight_rep }
    end
  end

  # GET /weight_reps/1/edit
  def edit
    @weight_rep = WeightRep.find(params[:id])
  end

  # POST /weight_reps
  # POST /weight_reps.json
  def create
    @weight_rep = WeightRep.new(params[:weight_rep])
    @weight_rep.user_id = current_user.id

    respond_to do |format|
      if @weight_rep.save
        format.html { redirect_to @weight_rep, notice: 'Weight Rep was successfully created.' }
        format.json { render json: @weight_rep, status: :created, location: @weight_rep }
      else
        format.html { render action: "new" }
        format.json { render json: @weight_rep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weight_reps/1
  # PUT /weight_reps/1.json
  def update
    @weight_rep = WeightRep.find(params[:id])

    respond_to do |format|
      if @weight_rep.update_attributes(params[:weight_rep])
        format.html { redirect_to @weight_rep, notice: 'Weight Rep was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @weight_rep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weight_reps/1
  # DELETE /weight_reps/1.json
  def destroy
    @weight_rep = WeightRep.find(params[:id])
    @weight_rep.destroy

    respond_to do |format|
      format.html { redirect_to weight_reps_url }
      format.json { head :no_content }
    end
  end
end
