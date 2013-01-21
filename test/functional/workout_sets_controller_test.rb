require 'test_helper'

class WorkoutSetsControllerTest < ActionController::TestCase
  setup do
    @workout_set = workout_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workout_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workout_set" do
    assert_difference('WorkoutSet.count') do
      post :create, workout_set: { name: @workout_set.name, numSets: @workout_set.numSets, reps: @workout_set.reps }
    end

    assert_redirected_to workout_set_path(assigns(:workout_set))
  end

  test "should show workout_set" do
    get :show, id: @workout_set
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workout_set
    assert_response :success
  end

  test "should update workout_set" do
    put :update, id: @workout_set, workout_set: { name: @workout_set.name, numSets: @workout_set.numSets, reps: @workout_set.reps }
    assert_redirected_to workout_set_path(assigns(:workout_set))
  end

  test "should destroy workout_set" do
    assert_difference('WorkoutSet.count', -1) do
      delete :destroy, id: @workout_set
    end

    assert_redirected_to workout_sets_path
  end
end
