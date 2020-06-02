require "application_system_test_case"

class ThesesTest < ApplicationSystemTestCase
  setup do
    @thesis = theses(:one)
  end

  test "visiting the index" do
    visit theses_url
    assert_selector "h1", text: "Theses"
  end

  test "creating a Thesis" do
    visit theses_url
    click_on "New Thesis"

    fill_in "Body", with: @thesis.body
    fill_in "Career", with: @thesis.career
    fill_in "Delivery time", with: @thesis.delivery_time
    fill_in "Email", with: @thesis.email
    fill_in "Grade", with: @thesis.grade
    fill_in "Name", with: @thesis.name
    fill_in "Phone", with: @thesis.phone
    fill_in "Type document", with: @thesis.type_document
    fill_in "University", with: @thesis.university
    click_on "Create Thesis"

    assert_text "Thesis was successfully created"
    click_on "Back"
  end

  test "updating a Thesis" do
    visit theses_url
    click_on "Edit", match: :first

    fill_in "Body", with: @thesis.body
    fill_in "Career", with: @thesis.career
    fill_in "Delivery time", with: @thesis.delivery_time
    fill_in "Email", with: @thesis.email
    fill_in "Grade", with: @thesis.grade
    fill_in "Name", with: @thesis.name
    fill_in "Phone", with: @thesis.phone
    fill_in "Type document", with: @thesis.type_document
    fill_in "University", with: @thesis.university
    click_on "Update Thesis"

    assert_text "Thesis was successfully updated"
    click_on "Back"
  end

  test "destroying a Thesis" do
    visit theses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Thesis was successfully destroyed"
  end
end
