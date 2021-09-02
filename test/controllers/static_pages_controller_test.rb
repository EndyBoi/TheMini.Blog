require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Iron Twitter"
  end

  test "should get root" do
    get '/'
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select 'title', test: "Home | #{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select 'title', text: "Help | #{@base_title}"
  end

  test "shoult get about" do
    get static_pages_about_url
    assert_response :success 
    assert_select 'title', text: "About | #{@base_title}"
  end

end
