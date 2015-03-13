require 'test_helper'

class SpidersControllerTest < ActionController::TestCase
  setup do
    @spider = spiders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spiders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spider" do
    assert_difference('Spider.count') do
      post :create, spider: { description: @spider.description, species: @spider.species, spider_id: @spider.spider_id, venemous: @spider.venemous }
    end

    assert_redirected_to spider_path(assigns(:spider))
  end

  test "should show spider" do
    get :show, id: @spider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spider
    assert_response :success
  end

  test "should update spider" do
    patch :update, id: @spider, spider: { description: @spider.description, species: @spider.species, spider_id: @spider.spider_id, venemous: @spider.venemous }
    assert_redirected_to spider_path(assigns(:spider))
  end

  test "should destroy spider" do
    assert_difference('Spider.count', -1) do
      delete :destroy, id: @spider
    end

    assert_redirected_to spiders_path
  end
end
