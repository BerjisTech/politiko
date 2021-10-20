# frozen_string_literal: true

require 'application_system_test_case'

class PartyFollowersTest < ApplicationSystemTestCase
  setup do
    @party_follower = party_followers(:one)
  end

  test 'visiting the index' do
    visit party_followers_url
    assert_selector 'h1', text: 'Party Followers'
  end

  test 'creating a Party follower' do
    visit party_followers_url
    click_on 'New Party Follower'

    fill_in 'Party', with: @party_follower.party
    fill_in 'User', with: @party_follower.user
    click_on 'Create Party follower'

    assert_text 'Party follower was successfully created'
    click_on 'Back'
  end

  test 'updating a Party follower' do
    visit party_followers_url
    click_on 'Edit', match: :first

    fill_in 'Party', with: @party_follower.party
    fill_in 'User', with: @party_follower.user
    click_on 'Update Party follower'

    assert_text 'Party follower was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Party follower' do
    visit party_followers_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Party follower was successfully destroyed'
  end
end
