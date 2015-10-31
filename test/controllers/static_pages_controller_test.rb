require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  #Uses an instance variable @base_title and string interpolation ? (4.2.2)
  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end
  #Change all instances of "Ruby on Rails Tutorial Sample App" to #{@base_title}
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home|#{@base_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help|#{@base_title}"

  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About|#{@base_title}"

  end
end
