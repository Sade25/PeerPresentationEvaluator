require "test_helper"

class StudentPresentationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_presentation = student_presentations(:one)
  end

  test "should get index" do
    get student_presentations_url
    assert_response :success
  end

  test "should get new" do
    get new_student_presentation_url
    assert_response :success
  end

  test "should create student_presentation" do
    assert_difference("StudentPresentation.count") do
      post student_presentations_url, params: { student_presentation: {  } }
    end

    assert_redirected_to student_presentation_url(StudentPresentation.last)
  end

  test "should show student_presentation" do
    get student_presentation_url(@student_presentation)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_presentation_url(@student_presentation)
    assert_response :success
  end

  test "should update student_presentation" do
    patch student_presentation_url(@student_presentation), params: { student_presentation: {  } }
    assert_redirected_to student_presentation_url(@student_presentation)
  end

  test "should destroy student_presentation" do
    assert_difference("StudentPresentation.count", -1) do
      delete student_presentation_url(@student_presentation)
    end

    assert_redirected_to student_presentations_url
  end
end
