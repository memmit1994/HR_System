require 'test_helper'

class CommitteesJoinedsControllerTest < ActionController::TestCase
  setup do
    @committees_joined = committees_joineds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:committees_joineds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create committees_joined" do
    assert_difference('CommitteesJoined.count') do
      post :create, committees_joined: { committee_id: @committees_joined.committee_id, user_id: @committees_joined.user_id }
    end

    assert_redirected_to committees_joined_path(assigns(:committees_joined))
  end

  test "should show committees_joined" do
    get :show, id: @committees_joined
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @committees_joined
    assert_response :success
  end

  test "should update committees_joined" do
    patch :update, id: @committees_joined, committees_joined: { committee_id: @committees_joined.committee_id, user_id: @committees_joined.user_id }
    assert_redirected_to committees_joined_path(assigns(:committees_joined))
  end

  test "should destroy committees_joined" do
    assert_difference('CommitteesJoined.count', -1) do
      delete :destroy, id: @committees_joined
    end

    assert_redirected_to committees_joineds_path
  end
end
