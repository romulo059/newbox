require "application_system_test_case"

class VulnerabilitiesTest < ApplicationSystemTestCase
  setup do
    @vulnerability = vulnerabilities(:one)
  end

  test "visiting the index" do
    visit vulnerabilities_url
    assert_selector "h1", text: "Vulnerabilities"
  end

  test "creating a Vulnerability" do
    visit vulnerabilities_url
    click_on "New Vulnerability"

    fill_in "Criticality", with: @vulnerability.criticality
    fill_in "Cvss score", with: @vulnerability.cvss_score
    fill_in "Description", with: @vulnerability.description
    fill_in "Name", with: @vulnerability.name
    fill_in "Solution", with: @vulnerability.solution
    click_on "Create Vulnerability"

    assert_text "Vulnerability was successfully created"
    click_on "Back"
  end

  test "updating a Vulnerability" do
    visit vulnerabilities_url
    click_on "Edit", match: :first

    fill_in "Criticality", with: @vulnerability.criticality
    fill_in "Cvss score", with: @vulnerability.cvss_score
    fill_in "Description", with: @vulnerability.description
    fill_in "Name", with: @vulnerability.name
    fill_in "Solution", with: @vulnerability.solution
    click_on "Update Vulnerability"

    assert_text "Vulnerability was successfully updated"
    click_on "Back"
  end

  test "destroying a Vulnerability" do
    visit vulnerabilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vulnerability was successfully destroyed"
  end
end
