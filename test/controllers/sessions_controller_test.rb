  require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get login_path
    get sessions_new_url
    assert_response :success
  end
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
