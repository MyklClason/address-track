require 'test_helper'

class AlternativeEmailsControllerTest < ActionController::TestCase
  setup do
    @alternative_email = alternative_emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alternative_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alternative_email" do
    assert_difference('AlternativeEmail.count') do
      post :create, alternative_email: { email: @alternative_email.email, user_id: @alternative_email.user_id }
    end

    assert_redirected_to alternative_email_path(assigns(:alternative_email))
  end

  test "should show alternative_email" do
    get :show, id: @alternative_email
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alternative_email
    assert_response :success
  end

  test "should update alternative_email" do
    patch :update, id: @alternative_email, alternative_email: { email: @alternative_email.email, user_id: @alternative_email.user_id }
    assert_redirected_to alternative_email_path(assigns(:alternative_email))
  end

  test "should destroy alternative_email" do
    assert_difference('AlternativeEmail.count', -1) do
      delete :destroy, id: @alternative_email
    end

    assert_redirected_to alternative_emails_path
  end
end
