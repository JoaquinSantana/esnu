require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get pomoc" do
    get :pomoc
    assert_response :success
  end

end
