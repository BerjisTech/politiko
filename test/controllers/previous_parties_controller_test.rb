# frozen_string_literal: true

require 'test_helper'

class PreviousPartiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @previous_party = previous_parties(:one)
  end

  test 'should get index' do
    get previous_parties_url
    assert_response :success
  end

  test 'should get new' do
    get new_previous_party_url
    assert_response :success
  end

  test 'should create previous_party' do
    assert_difference('PreviousParty.count') do
      post previous_parties_url,
           params: { previous_party: { end_date: @previous_party.end_date, party: @previous_party.party,
                                       politician: @previous_party.politician, start_date: @previous_party.start_date } }
    end

    assert_redirected_to previous_party_url(PreviousParty.last)
  end

  test 'should show previous_party' do
    get previous_party_url(@previous_party)
    assert_response :success
  end

  test 'should get edit' do
    get edit_previous_party_url(@previous_party)
    assert_response :success
  end

  test 'should update previous_party' do
    patch previous_party_url(@previous_party),
          params: { previous_party: { end_date: @previous_party.end_date, party: @previous_party.party,
                                      politician: @previous_party.politician, start_date: @previous_party.start_date } }
    assert_redirected_to previous_party_url(@previous_party)
  end

  test 'should destroy previous_party' do
    assert_difference('PreviousParty.count', -1) do
      delete previous_party_url(@previous_party)
    end

    assert_redirected_to previous_parties_url
  end
end
