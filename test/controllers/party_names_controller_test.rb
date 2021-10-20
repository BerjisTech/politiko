# frozen_string_literal: true

require 'test_helper'

class PartyNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @party_name = party_names(:one)
  end

  test 'should get index' do
    get party_names_url
    assert_response :success
  end

  test 'should get new' do
    get new_party_name_url
    assert_response :success
  end

  test 'should create party_name' do
    assert_difference('PartyName.count') do
      post party_names_url,
           params: { party_name: { end_date: @party_name.end_date, name: @party_name.name, party: @party_name.party,
                                   start_date: @party_name.start_date } }
    end

    assert_redirected_to party_name_url(PartyName.last)
  end

  test 'should show party_name' do
    get party_name_url(@party_name)
    assert_response :success
  end

  test 'should get edit' do
    get edit_party_name_url(@party_name)
    assert_response :success
  end

  test 'should update party_name' do
    patch party_name_url(@party_name),
          params: { party_name: { end_date: @party_name.end_date, name: @party_name.name, party: @party_name.party,
                                  start_date: @party_name.start_date } }
    assert_redirected_to party_name_url(@party_name)
  end

  test 'should destroy party_name' do
    assert_difference('PartyName.count', -1) do
      delete party_name_url(@party_name)
    end

    assert_redirected_to party_names_url
  end
end
