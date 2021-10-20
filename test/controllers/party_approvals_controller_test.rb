# frozen_string_literal: true

require 'test_helper'

class PartyApprovalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @party_approval = party_approvals(:one)
  end

  test 'should get index' do
    get party_approvals_url
    assert_response :success
  end

  test 'should get new' do
    get new_party_approval_url
    assert_response :success
  end

  test 'should create party_approval' do
    assert_difference('PartyApproval.count') do
      post party_approvals_url,
           params: { party_approval: { approval: @party_approval.approval, party: @party_approval.party,
                                       user: @party_approval.user } }
    end

    assert_redirected_to party_approval_url(PartyApproval.last)
  end

  test 'should show party_approval' do
    get party_approval_url(@party_approval)
    assert_response :success
  end

  test 'should get edit' do
    get edit_party_approval_url(@party_approval)
    assert_response :success
  end

  test 'should update party_approval' do
    patch party_approval_url(@party_approval),
          params: { party_approval: { approval: @party_approval.approval, party: @party_approval.party,
                                      user: @party_approval.user } }
    assert_redirected_to party_approval_url(@party_approval)
  end

  test 'should destroy party_approval' do
    assert_difference('PartyApproval.count', -1) do
      delete party_approval_url(@party_approval)
    end

    assert_redirected_to party_approvals_url
  end
end
