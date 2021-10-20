# frozen_string_literal: true

require 'test_helper'

class RepostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @repost = reposts(:one)
  end

  test 'should get index' do
    get reposts_url
    assert_response :success
  end

  test 'should get new' do
    get new_repost_url
    assert_response :success
  end

  test 'should create repost' do
    assert_difference('Repost.count') do
      post reposts_url,
           params: { repost: { content: @repost.content, content_type: @repost.content_type, user: @repost.user } }
    end

    assert_redirected_to repost_url(Repost.last)
  end

  test 'should show repost' do
    get repost_url(@repost)
    assert_response :success
  end

  test 'should get edit' do
    get edit_repost_url(@repost)
    assert_response :success
  end

  test 'should update repost' do
    patch repost_url(@repost),
          params: { repost: { content: @repost.content, content_type: @repost.content_type, user: @repost.user } }
    assert_redirected_to repost_url(@repost)
  end

  test 'should destroy repost' do
    assert_difference('Repost.count', -1) do
      delete repost_url(@repost)
    end

    assert_redirected_to reposts_url
  end
end
