require "test_helper"

class GeneratedNamesControllerTest < ActionController::TestCase

  def generated_name
    @generated_name ||= generated_names :one
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:generated_names)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('GeneratedName.count') do
      post :create, generated_name: { first_name: generated_name.first_name, surname: generated_name.surname }
    end

    assert_redirected_to generated_name_path(assigns(:generated_name))
  end

  def test_show
    get :show, id: generated_name
    assert_response :success
  end

  def test_edit
    get :edit, id: generated_name
    assert_response :success
  end

  def test_update
    put :update, id: generated_name, generated_name: { first_name: generated_name.first_name, surname: generated_name.surname }
    assert_redirected_to generated_name_path(assigns(:generated_name))
  end

  def test_destroy
    assert_difference('GeneratedName.count', -1) do
      delete :destroy, id: generated_name
    end

    assert_redirected_to generated_names_path
  end
end
