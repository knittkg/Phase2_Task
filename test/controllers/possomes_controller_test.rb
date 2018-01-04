require 'test_helper'

class PossomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @possome = possomes(:one)
  end

  test "should get index" do
    get possomes_url
    assert_response :success
  end

  test "should get new" do
    get new_possome_url
    assert_response :success
  end

  test "should create possome" do
    assert_difference('Possome.count') do
      post possomes_url, params: { possome: { body: @possome.body } }
    end

    assert_redirected_to possome_url(Possome.last)
  end

  test "should show possome" do
    get possome_url(@possome)
    assert_response :success
  end

  test "should get edit" do
    get edit_possome_url(@possome)
    assert_response :success
  end

  test "should update possome" do
    patch possome_url(@possome), params: { possome: { body: @possome.body } }
    assert_redirected_to possome_url(@possome)
  end

  test "should destroy possome" do
    assert_difference('Possome.count', -1) do
      delete possome_url(@possome)
    end

    assert_redirected_to possomes_url
  end
end
