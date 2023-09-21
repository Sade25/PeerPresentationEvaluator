require "application_system_test_case"

class PresentationScoresTest < ApplicationSystemTestCase
  setup do
    @presentation_score = presentation_scores(:one)
  end

  test "visiting the index" do
    visit presentation_scores_url
    assert_selector "h1", text: "Presentation scores"
  end

  test "should create presentation score" do
    visit presentation_scores_url
    click_on "New presentation score"

    click_on "Create Presentation score"

    assert_text "Presentation score was successfully created"
    click_on "Back"
  end

  test "should update Presentation score" do
    visit presentation_score_url(@presentation_score)
    click_on "Edit this presentation score", match: :first

    click_on "Update Presentation score"

    assert_text "Presentation score was successfully updated"
    click_on "Back"
  end

  test "should destroy Presentation score" do
    visit presentation_score_url(@presentation_score)
    click_on "Destroy this presentation score", match: :first

    assert_text "Presentation score was successfully destroyed"
  end
end
