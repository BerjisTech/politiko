# frozen_string_literal: true

require 'application_system_test_case'

class PartyNamesTest < ApplicationSystemTestCase
  setup do
    @party_name = party_names(:one)
  end

  test 'visiting the index' do
    visit party_names_url
    assert_selector 'h1', text: 'Party Names'
  end

  test 'creating a Party name' do
    visit party_names_url
    click_on 'New Party Name'

    fill_in 'End date', with: @party_name.end_date
    fill_in 'Name', with: @party_name.name
    fill_in 'Party', with: @party_name.party
    fill_in 'Start date', with: @party_name.start_date
    click_on 'Create Party name'

    assert_text 'Party name was successfully created'
    click_on 'Back'
  end

  test 'updating a Party name' do
    visit party_names_url
    click_on 'Edit', match: :first

    fill_in 'End date', with: @party_name.end_date
    fill_in 'Name', with: @party_name.name
    fill_in 'Party', with: @party_name.party
    fill_in 'Start date', with: @party_name.start_date
    click_on 'Update Party name'

    assert_text 'Party name was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Party name' do
    visit party_names_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Party name was successfully destroyed'
  end
end
