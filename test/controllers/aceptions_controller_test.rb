require 'test_helper'

class AceptionsControllerTest < ActionController::TestCase
  setup do
    @aception = aceptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aceptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aception" do
    assert_difference('Aception.count') do
      post :create, aception: { description: @aception.description, name: @aception.name, sequencial: @aception.sequencial, word_id: @aception.word_id }
    end

    assert_redirected_to aception_path(assigns(:aception))
  end

  test "should show aception" do
    get :show, id: @aception
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aception
    assert_response :success
  end

  test "should update aception" do
    patch :update, id: @aception, aception: { description: @aception.description, name: @aception.name, sequencial: @aception.sequencial, word_id: @aception.word_id }
    assert_redirected_to aception_path(assigns(:aception))
  end

  test "should destroy aception" do
    assert_difference('Aception.count', -1) do
      delete :destroy, id: @aception
    end

    assert_redirected_to aceptions_path
  end
end
