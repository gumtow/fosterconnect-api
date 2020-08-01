require 'test_helper'

class MessageboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @messageboard = messageboards(:one)
  end

  test "should get index" do
    get messageboards_url
    assert_response :success
  end

  test "should get new" do
    get new_messageboard_url
    assert_response :success
  end

  test "should create messageboard" do
    assert_difference('Messageboard.count') do
      post messageboards_url, params: { messageboard: { content: @messageboard.content, status: @messageboard.status, subject: @messageboard.subject } }
    end

    assert_redirected_to messageboard_url(Messageboard.last)
  end

  test "should show messageboard" do
    get messageboard_url(@messageboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_messageboard_url(@messageboard)
    assert_response :success
  end

  test "should update messageboard" do
    patch messageboard_url(@messageboard), params: { messageboard: { content: @messageboard.content, status: @messageboard.status, subject: @messageboard.subject } }
    assert_redirected_to messageboard_url(@messageboard)
  end

  test "should destroy messageboard" do
    assert_difference('Messageboard.count', -1) do
      delete messageboard_url(@messageboard)
    end

    assert_redirected_to messageboards_url
  end
end
