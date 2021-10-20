# frozen_string_literal: true

require 'application_system_test_case'

class PreviousPartiesTest < ApplicationSystemTestCase
  setup do
    @previous_party = previous_parties(:one)
  end

  test 'visiting the index' do
    visit previous_parties_url
    assert_selector 'h1', text: 'Previous Parties'
  end

  test 'creating a Previous party' do
    visit previous_parties_url
    click_on 'New Previous Party'

    fill_in 'End date', with: @previous_party.end_date
    fill_in 'Party', with: @previous_party.party
    fill_in 'Politician', with: @previous_party.politician
    fill_in 'Start date', with: @previous_party.start_date
    click_on 'Create Previous party'

    assert_text 'Previous party was successfully created'
    click_on 'Back'
  end

  test 'updating a Previous party' do
    visit previous_parties_url
    click_on 'Edit', match: :first

    fill_in 'End date', with: @previous_party.end_date
    fill_in 'Party', with: @previous_party.party
    fill_in 'Politician', with: @previous_party.politician
    fill_in 'Start date', with: @previous_party.start_date
    click_on 'Update Previous party'

    assert_text 'Previous party was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Previous party' do
    visit previous_parties_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Previous party was successfully destroyed'
  end
end
