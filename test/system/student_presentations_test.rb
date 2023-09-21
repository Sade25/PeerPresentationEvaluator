require "application_system_test_case"

class StudentPresentationsTest < ApplicationSystemTestCase
  setup do
    @student_presentation = student_presentations(:one)
  end

  test "visiting the index" do
    visit student_presentations_url
    assert_selector "h1", text: "Student presentations"
  end

  test "should create student presentation" do
    visit student_presentations_url
    click_on "New student presentation"

    click_on "Create Student presentation"

    assert_text "Student presentation was successfully created"
    click_on "Back"
  end

  test "should update Student presentation" do
    visit student_presentation_url(@student_presentation)
    click_on "Edit this student presentation", match: :first

    click_on "Update Student presentation"

    assert_text "Student presentation was successfully updated"
    click_on "Back"
  end

  test "should destroy Student presentation" do
    visit student_presentation_url(@student_presentation)
    click_on "Destroy this student presentation", match: :first

    assert_text "Student presentation was successfully destroyed"
  end
end
