# frozen_string_literal: true

require 'application_system_test_case'

class PoliticiansTest < ApplicationSystemTestCase
  setup do
    @politician = politicians(:one)
  end

  test 'visiting the index' do
    visit politicians_url
    assert_selector 'h1', text: 'Politicians'
  end

  test 'creating a Politician' do
    visit politicians_url
    click_on 'New Politician'

    fill_in 'Alias', with: @politician.alias
    fill_in 'Current party', with: @politician.current_party
    fill_in 'History', with: @politician.history
    fill_in 'Manifesto', with: @politician.manifesto
    fill_in 'Name', with: @politician.name
    click_on 'Create Politician'

    assert_text 'Politician was successfully created'
    click_on 'Back'
  end

  test 'updating a Politician' do
    visit politicians_url
    click_on 'Edit', match: :first

    fill_in 'Alias', with: @politician.alias
    fill_in 'Current party', with: @politician.current_party
    fill_in 'History', with: @politician.history
    fill_in 'Manifesto', with: @politician.manifesto
    fill_in 'Name', with: @politician.name
    click_on 'Update Politician'

    assert_text 'Politician was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Politician' do
    visit politicians_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Politician was successfully destroyed'
  end
end
