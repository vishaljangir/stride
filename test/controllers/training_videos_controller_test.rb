require 'test_helper'

class TrainingVideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training_video = training_videos(:one)
  end

  test "should get index" do
    get training_videos_url
    assert_response :success
  end

  test "should get new" do
    get new_training_video_url
    assert_response :success
  end

  test "should create training_video" do
    assert_difference('TrainingVideo.count') do
      post training_videos_url, params: { training_video: {  } }
    end

    assert_redirected_to training_video_url(TrainingVideo.last)
  end

  test "should show training_video" do
    get training_video_url(@training_video)
    assert_response :success
  end

  test "should get edit" do
    get edit_training_video_url(@training_video)
    assert_response :success
  end

  test "should update training_video" do
    patch training_video_url(@training_video), params: { training_video: {  } }
    assert_redirected_to training_video_url(@training_video)
  end

  test "should destroy training_video" do
    assert_difference('TrainingVideo.count', -1) do
      delete training_video_url(@training_video)
    end

    assert_redirected_to training_videos_url
  end
end
