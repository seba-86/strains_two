require "application_system_test_case"

class OenologistsTest < ApplicationSystemTestCase
  setup do
    @oenologist = oenologists(:one)
  end

  test "visiting the index" do
    visit oenologists_url
    assert_selector "h1", text: "Oenologists"
  end

  test "creating a Oenologist" do
    visit oenologists_url
    click_on "New Oenologist"

    fill_in "Age", with: @oenologist.age
    fill_in "Country", with: @oenologist.country
    check "Editor" if @oenologist.editor
    fill_in "Name", with: @oenologist.name
    check "Viewer" if @oenologist.viewer
    check "Writer" if @oenologist.writer
    click_on "Create Oenologist"

    assert_text "Oenologist was successfully created"
    click_on "Back"
  end

  test "updating a Oenologist" do
    visit oenologists_url
    click_on "Edit", match: :first

    fill_in "Age", with: @oenologist.age
    fill_in "Country", with: @oenologist.country
    check "Editor" if @oenologist.editor
    fill_in "Name", with: @oenologist.name
    check "Viewer" if @oenologist.viewer
    check "Writer" if @oenologist.writer
    click_on "Update Oenologist"

    assert_text "Oenologist was successfully updated"
    click_on "Back"
  end

  test "destroying a Oenologist" do
    visit oenologists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oenologist was successfully destroyed"
  end
end
