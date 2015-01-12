require 'test_helper'

class TranslationsVersionsControllerTest < ActionController::TestCase
  setup do
    @translations_version = translations_versions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:translations_versions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create translations_version" do
    assert_difference('TranslationsVersion.count') do
      post :create, translations_version: { translation_id: @translations_version.translation_id, version_id: @translations_version.version_id }
    end

    assert_redirected_to translations_version_path(assigns(:translations_version))
  end

  test "should show translations_version" do
    get :show, id: @translations_version
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @translations_version
    assert_response :success
  end

  test "should update translations_version" do
    patch :update, id: @translations_version, translations_version: { translation_id: @translations_version.translation_id, version_id: @translations_version.version_id }
    assert_redirected_to translations_version_path(assigns(:translations_version))
  end

  test "should destroy translations_version" do
    assert_difference('TranslationsVersion.count', -1) do
      delete :destroy, id: @translations_version
    end

    assert_redirected_to translations_versions_path
  end
end
