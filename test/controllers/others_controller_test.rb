require 'test_helper'

class OthersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @other = others(:one)
  end

  test "should get index" do
    get others_url, as: :json
    assert_response :success
  end

  test "should create other" do
    assert_difference('Other.count') do
      post others_url, params: { other: { title: @other.title } }, as: :json
    end

    assert_response 201
  end

  test "should show other" do
    get other_url(@other), as: :json
    assert_response :success
  end

  test "should update other" do
    patch other_url(@other), params: { other: { title: @other.title } }, as: :json
    assert_response 200
  end

  test "should destroy other" do
    assert_difference('Other.count', -1) do
      delete other_url(@other), as: :json
    end

    assert_response 204
  end
end
