# frozen_string_literal: true

require 'test_helper'

class PoliticalFollowersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @political_follower = political_followers(:one)
  end

  test 'should get index' do
    get political_followers_url
    assert_response :success
  end

  test 'should get new' do
    get new_political_follower_url
    assert_response :success
  end

  test 'should create political_follower' do
    assert_difference('PoliticalFollower.count') do
      post political_followers_url,
           params: { political_follower: { politician: @political_follower.politician,
                                           user: @political_follower.user } }
    end

    assert_redirected_to political_follower_url(PoliticalFollower.last)
  end

  test 'should show political_follower' do
    get political_follower_url(@political_follower)
    assert_response :success
  end

  test 'should get edit' do
    get edit_political_follower_url(@political_follower)
    assert_response :success
  end

  test 'should update political_follower' do
    patch political_follower_url(@political_follower),
          params: { political_follower: { politician: @political_follower.politician, user: @political_follower.user } }
    assert_redirected_to political_follower_url(@political_follower)
  end

  test 'should destroy political_follower' do
    assert_difference('PoliticalFollower.count', -1) do
      delete political_follower_url(@political_follower)
    end

    assert_redirected_to political_followers_url
  end
end
