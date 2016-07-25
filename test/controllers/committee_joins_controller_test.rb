require 'test_helper'

class CommitteeJoinsControllerTest < ActionController::TestCase
  setup do
    @committee_join = committee_joins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:committee_joins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create committee_join" do
    assert_difference('CommitteeJoin.count') do
      post :create, committee_join: { committee_id: @committee_join.committee_id, user_id: @committee_join.user_id }
    end

    assert_redirected_to committee_join_path(assigns(:committee_join))
  end

  test "should show committee_join" do
    get :show, id: @committee_join
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @committee_join
    assert_response :success
  end

  test "should update committee_join" do
    patch :update, id: @committee_join, committee_join: { committee_id: @committee_join.committee_id, user_id: @committee_join.user_id }
    assert_redirected_to committee_join_path(assigns(:committee_join))
  end

  test "should destroy committee_join" do
    assert_difference('CommitteeJoin.count', -1) do
      delete :destroy, id: @committee_join
    end

    assert_redirected_to committee_joins_path
  end
end
