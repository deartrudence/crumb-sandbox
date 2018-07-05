require 'test_helper'

class CrumbTemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crumb_template = crumb_templates(:one)
  end

  test "should get index" do
    get crumb_templates_url
    assert_response :success
  end

  test "should get new" do
    get new_crumb_template_url
    assert_response :success
  end

  test "should create crumb_template" do
    assert_difference('CrumbTemplate.count') do
      post crumb_templates_url, params: { crumb_template: { name: @crumb_template.name } }
    end

    assert_redirected_to crumb_template_url(CrumbTemplate.last)
  end

  test "should show crumb_template" do
    get crumb_template_url(@crumb_template)
    assert_response :success
  end

  test "should get edit" do
    get edit_crumb_template_url(@crumb_template)
    assert_response :success
  end

  test "should update crumb_template" do
    patch crumb_template_url(@crumb_template), params: { crumb_template: { name: @crumb_template.name } }
    assert_redirected_to crumb_template_url(@crumb_template)
  end

  test "should destroy crumb_template" do
    assert_difference('CrumbTemplate.count', -1) do
      delete crumb_template_url(@crumb_template)
    end

    assert_redirected_to crumb_templates_url
  end
end
