# frozen_string_literal: true

require 'application_system_test_case'

class PartiesTest < ApplicationSystemTestCase
  setup do
    @party = parties(:one)
  end

  test 'visiting the index' do
    visit parties_url
    assert_selector 'h1', text: 'Parties'
  end

  test 'creating a Party' do
    visit parties_url
    click_on 'New Party'

    fill_in 'About', with: @party.about
    fill_in 'Created by', with: @party.created_by
    fill_in 'Current chair', with: @party.current_chair
    fill_in 'History', with: @party.history
    fill_in 'Manifesto', with: @party.manifesto
    fill_in 'Name', with: @party.name
    click_on 'Create Party'

    assert_text 'Party was successfully created'
    click_on 'Back'
  end

  test 'updating a Party' do
    visit parties_url
    click_on 'Edit', match: :first

    fill_in 'About', with: @party.about
    fill_in 'Created by', with: @party.created_by
    fill_in 'Current chair', with: @party.current_chair
    fill_in 'History', with: @party.history
    fill_in 'Manifesto', with: @party.manifesto
    fill_in 'Name', with: @party.name
    click_on 'Update Party'

    assert_text 'Party was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Party' do
    visit parties_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Party was successfully destroyed'
  end
end
