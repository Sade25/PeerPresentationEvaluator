require "test_helper"

class PresentationScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @presentation_score = presentation_scores(:one)
  end

  test "should get index" do
    get presentation_scores_url
    assert_response :success
  end

  test "should get new" do
    get new_presentation_score_url
    assert_response :success
  end

  test "should create presentation_score" do
    assert_difference("PresentationScore.count") do
      post presentation_scores_url, params: { presentation_score: {  } }
    end

    assert_redirected_to presentation_score_url(PresentationScore.last)
  end

  test "should show presentation_score" do
    get presentation_score_url(@presentation_score)
    assert_response :success
  end

  test "should get edit" do
    get edit_presentation_score_url(@presentation_score)
    assert_response :success
  end

  test "should update presentation_score" do
    patch presentation_score_url(@presentation_score), params: { presentation_score: {  } }
    assert_redirected_to presentation_score_url(@presentation_score)
  end

  test "should destroy presentation_score" do
    assert_difference("PresentationScore.count", -1) do
      delete presentation_score_url(@presentation_score)
    end

    assert_redirected_to presentation_scores_url
  end
end
