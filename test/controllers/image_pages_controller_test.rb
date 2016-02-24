require 'test_helper'

class ImagePagesControllerTest < ActionController::TestCase
  setup do
    @image_page = image_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_page" do
    assert_difference('ImagePage.count') do
      post :create, image_page: { image_id: @image_page.image_id, webpage_id: @image_page.webpage_id }
    end

    assert_redirected_to image_page_path(assigns(:image_page))
  end

  test "should show image_page" do
    get :show, id: @image_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_page
    assert_response :success
  end

  test "should update image_page" do
    patch :update, id: @image_page, image_page: { image_id: @image_page.image_id, webpage_id: @image_page.webpage_id }
    assert_redirected_to image_page_path(assigns(:image_page))
  end

  test "should destroy image_page" do
    assert_difference('ImagePage.count', -1) do
      delete :destroy, id: @image_page
    end

    assert_redirected_to image_pages_path
  end
end
