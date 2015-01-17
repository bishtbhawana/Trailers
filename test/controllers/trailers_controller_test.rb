require 'test_helper'

class TrailersControllerTest < ActionController::TestCase
  setup do
    @trailer = trailers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trailers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trailer" do
    assert_difference('Trailer.count') do
      post :create, trailer: { video_link: @trailer.video_link, views: @trailer.views }
    end

    assert_redirected_to trailer_path(assigns(:trailer))
  end

  test "should show trailer" do
    get :show, id: @trailer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trailer
    assert_response :success
  end

  test "should update trailer" do
    patch :update, id: @trailer, trailer: { video_link: @trailer.video_link, views: @trailer.views }
    assert_redirected_to trailer_path(assigns(:trailer))
  end

  test "should destroy trailer" do
    assert_difference('Trailer.count', -1) do
      delete :destroy, id: @trailer
    end

    assert_redirected_to trailers_path
  end
end
