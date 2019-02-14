require 'test_helper'

class TrainingBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training_blog = training_blogs(:one)
  end

  test "should get index" do
    get training_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_training_blog_url
    assert_response :success
  end

  test "should create training_blog" do
    assert_difference('TrainingBlog.count') do
      post training_blogs_url, params: { training_blog: { description: @training_blog.description, name: @training_blog.name } }
    end

    assert_redirected_to training_blog_url(TrainingBlog.last)
  end

  test "should show training_blog" do
    get training_blog_url(@training_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_training_blog_url(@training_blog)
    assert_response :success
  end

  test "should update training_blog" do
    patch training_blog_url(@training_blog), params: { training_blog: { description: @training_blog.description, name: @training_blog.name } }
    assert_redirected_to training_blog_url(@training_blog)
  end

  test "should destroy training_blog" do
    assert_difference('TrainingBlog.count', -1) do
      delete training_blog_url(@training_blog)
    end

    assert_redirected_to training_blogs_url
  end
end
