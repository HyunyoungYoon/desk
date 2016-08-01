require 'test_helper'

class MydeskControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
