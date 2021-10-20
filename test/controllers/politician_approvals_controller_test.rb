# frozen_string_literal: true

require 'test_helper'

class PoliticianApprovalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @politician_approval = politician_approvals(:one)
  end

  test 'should get index' do
    get politician_approvals_url
    assert_response :success
  end

  test 'should get new' do
    get new_politician_approval_url
    assert_response :success
  end

  test 'should create politician_approval' do
    assert_difference('PoliticianApproval.count') do
      post politician_approvals_url,
           params: { politician_approval: { approval: @politician_approval.approval, party: @politician_approval.party,
                                            user: @politician_approval.user } }
    end

    assert_redirected_to politician_approval_url(PoliticianApproval.last)
  end

  test 'should show politician_approval' do
    get politician_approval_url(@politician_approval)
    assert_response :success
  end

  test 'should get edit' do
    get edit_politician_approval_url(@politician_approval)
    assert_response :success
  end

  test 'should update politician_approval' do
    patch politician_approval_url(@politician_approval),
          params: { politician_approval: { approval: @politician_approval.approval, party: @politician_approval.party,
                                           user: @politician_approval.user } }
    assert_redirected_to politician_approval_url(@politician_approval)
  end

  test 'should destroy politician_approval' do
    assert_difference('PoliticianApproval.count', -1) do
      delete politician_approval_url(@politician_approval)
    end

    assert_redirected_to politician_approvals_url
  end
end
