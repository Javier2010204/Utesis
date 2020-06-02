require 'test_helper'

class ThesesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thesis = theses(:one)
  end

  test "should get index" do
    get theses_url
    assert_response :success
  end

  test "should get new" do
    get new_thesis_url
    assert_response :success
  end

  test "should create thesis" do
    assert_difference('Thesis.count') do
      post theses_url, params: { thesis: { body: @thesis.body, career: @thesis.career, delivery_time: @thesis.delivery_time, email: @thesis.email, grade: @thesis.grade, name: @thesis.name, phone: @thesis.phone, type_document: @thesis.type_document, university: @thesis.university } }
    end

    assert_redirected_to thesis_url(Thesis.last)
  end

  test "should show thesis" do
    get thesis_url(@thesis)
    assert_response :success
  end

  test "should get edit" do
    get edit_thesis_url(@thesis)
    assert_response :success
  end

  test "should update thesis" do
    patch thesis_url(@thesis), params: { thesis: { body: @thesis.body, career: @thesis.career, delivery_time: @thesis.delivery_time, email: @thesis.email, grade: @thesis.grade, name: @thesis.name, phone: @thesis.phone, type_document: @thesis.type_document, university: @thesis.university } }
    assert_redirected_to thesis_url(@thesis)
  end

  test "should destroy thesis" do
    assert_difference('Thesis.count', -1) do
      delete thesis_url(@thesis)
    end

    assert_redirected_to theses_url
  end
end
