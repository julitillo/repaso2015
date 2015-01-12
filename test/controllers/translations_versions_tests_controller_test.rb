require 'test_helper'

class TranslationsVersionsTestsControllerTest < ActionController::TestCase
  setup do
    @translations_versions_test = translations_versions_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:translations_versions_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create translations_versions_test" do
    assert_difference('TranslationsVersionsTest.count') do
      post :create, translations_versions_test: { test_id: @translations_versions_test.test_id, translations_versions_id: @translations_versions_test.translations_versions_id }
    end

    assert_redirected_to translations_versions_test_path(assigns(:translations_versions_test))
  end

  test "should show translations_versions_test" do
    get :show, id: @translations_versions_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @translations_versions_test
    assert_response :success
  end

  test "should update translations_versions_test" do
    patch :update, id: @translations_versions_test, translations_versions_test: { test_id: @translations_versions_test.test_id, translations_versions_id: @translations_versions_test.translations_versions_id }
    assert_redirected_to translations_versions_test_path(assigns(:translations_versions_test))
  end

  test "should destroy translations_versions_test" do
    assert_difference('TranslationsVersionsTest.count', -1) do
      delete :destroy, id: @translations_versions_test
    end

    assert_redirected_to translations_versions_tests_path
  end
end
