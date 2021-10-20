# frozen_string_literal: true

require 'test_helper'

class PartyFollowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @party_follower = party_followers(:one)
  end

  test 'should get index' do
    get party_followers_url
    assert_response :success
  end

  test 'should get new' do
    get new_party_follower_url
    assert_response :success
  end

  test 'should create party_follower' do
    assert_difference('PartyFollower.count') do
      post party_followers_url, params: { party_follower: { party: @party_follower.party, user: @party_follower.user } }
    end

    assert_redirected_to party_follower_url(PartyFollower.last)
  end

  test 'should show party_follower' do
    get party_follower_url(@party_follower)
    assert_response :success
  end

  test 'should get edit' do
    get edit_party_follower_url(@party_follower)
    assert_response :success
  end

  test 'should update party_follower' do
    patch party_follower_url(@party_follower),
          params: { party_follower: { party: @party_follower.party, user: @party_follower.user } }
    assert_redirected_to party_follower_url(@party_follower)
  end

  test 'should destroy party_follower' do
    assert_difference('PartyFollower.count', -1) do
      delete party_follower_url(@party_follower)
    end

    assert_redirected_to party_followers_url
  end
end
