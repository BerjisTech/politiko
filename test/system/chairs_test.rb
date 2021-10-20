# frozen_string_literal: true

require 'application_system_test_case'

class ChairsTest < ApplicationSystemTestCase
  setup do
    @chair = chairs(:one)
  end

  test 'visiting the index' do
    visit chairs_url
    assert_selector 'h1', text: 'Chairs'
  end

  test 'creating a Chair' do
    visit chairs_url
    click_on 'New Chair'

    fill_in 'End date', with: @chair.end_date
    fill_in 'Party', with: @chair.party
    fill_in 'Politician', with: @chair.politician
    fill_in 'Start date', with: @chair.start_date
    click_on 'Create Chair'

    assert_text 'Chair was successfully created'
    click_on 'Back'
  end

  test 'updating a Chair' do
    visit chairs_url
    click_on 'Edit', match: :first

    fill_in 'End date', with: @chair.end_date
    fill_in 'Party', with: @chair.party
    fill_in 'Politician', with: @chair.politician
    fill_in 'Start date', with: @chair.start_date
    click_on 'Update Chair'

    assert_text 'Chair was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Chair' do
    visit chairs_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Chair was successfully destroyed'
  end
end
