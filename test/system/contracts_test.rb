require "application_system_test_case"

class ContractsTest < ApplicationSystemTestCase
  setup do
    @contract = contracts(:one)
  end

  test "visiting the index" do
    visit contracts_url
    assert_selector "h1", text: "Contracts"
  end

  test "creating a Contract" do
    visit contracts_url
    click_on "New Contract"

    fill_in "Academic grade", with: @contract.academic_grade
    fill_in "Age", with: @contract.age
    fill_in "Career", with: @contract.career
    fill_in "Civil status", with: @contract.civil_status
    fill_in "Contract service", with: @contract.contract_service
    fill_in "Date", with: @contract.date
    fill_in "Dpi", with: @contract.dpi
    fill_in "Email", with: @contract.email
    fill_in "Fee", with: @contract.fee
    fill_in "Mount", with: @contract.mount
    fill_in "Name", with: @contract.name
    fill_in "Phone", with: @contract.phone
    fill_in "Place", with: @contract.place
    fill_in "Service", with: @contract.service
    fill_in "Social", with: @contract.social
    fill_in "Way to pay", with: @contract.way_to_pay
    click_on "Create Contract"

    assert_text "Contract was successfully created"
    click_on "Back"
  end

  test "updating a Contract" do
    visit contracts_url
    click_on "Edit", match: :first

    fill_in "Academic grade", with: @contract.academic_grade
    fill_in "Age", with: @contract.age
    fill_in "Career", with: @contract.career
    fill_in "Civil status", with: @contract.civil_status
    fill_in "Contract service", with: @contract.contract_service
    fill_in "Date", with: @contract.date
    fill_in "Dpi", with: @contract.dpi
    fill_in "Email", with: @contract.email
    fill_in "Fee", with: @contract.fee
    fill_in "Mount", with: @contract.mount
    fill_in "Name", with: @contract.name
    fill_in "Phone", with: @contract.phone
    fill_in "Place", with: @contract.place
    fill_in "Service", with: @contract.service
    fill_in "Social", with: @contract.social
    fill_in "Way to pay", with: @contract.way_to_pay
    click_on "Update Contract"

    assert_text "Contract was successfully updated"
    click_on "Back"
  end

  test "destroying a Contract" do
    visit contracts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contract was successfully destroyed"
  end
end
