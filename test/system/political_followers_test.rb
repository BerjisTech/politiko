# frozen_string_literal: true

require 'application_system_test_case'

class PoliticalFollowersTest < ApplicationSystemTestCase
  setup do
    @political_follower = political_followers(:one)
  end

  test 'visiting the index' do
    visit political_followers_url
    assert_selector 'h1', text: 'Political Followers'
  end

  test 'creating a Political follower' do
    visit political_followers_url
    click_on 'New Political Follower'

    fill_in 'Politician', with: @political_follower.politician
    fill_in 'User', with: @political_follower.user
    click_on 'Create Political follower'

    assert_text 'Political follower was successfully created'
    click_on 'Back'
  end

  test 'updating a Political follower' do
    visit political_followers_url
    click_on 'Edit', match: :first

    fill_in 'Politician', with: @political_follower.politician
    fill_in 'User', with: @political_follower.user
    click_on 'Update Political follower'

    assert_text 'Political follower was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Political follower' do
    visit political_followers_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Political follower was successfully destroyed'
  end
end
