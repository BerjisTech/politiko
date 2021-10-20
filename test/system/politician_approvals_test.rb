# frozen_string_literal: true

require 'application_system_test_case'

class PoliticianApprovalsTest < ApplicationSystemTestCase
  setup do
    @politician_approval = politician_approvals(:one)
  end

  test 'visiting the index' do
    visit politician_approvals_url
    assert_selector 'h1', text: 'Politician Approvals'
  end

  test 'creating a Politician approval' do
    visit politician_approvals_url
    click_on 'New Politician Approval'

    fill_in 'Approval', with: @politician_approval.approval
    fill_in 'Party', with: @politician_approval.party
    fill_in 'User', with: @politician_approval.user
    click_on 'Create Politician approval'

    assert_text 'Politician approval was successfully created'
    click_on 'Back'
  end

  test 'updating a Politician approval' do
    visit politician_approvals_url
    click_on 'Edit', match: :first

    fill_in 'Approval', with: @politician_approval.approval
    fill_in 'Party', with: @politician_approval.party
    fill_in 'User', with: @politician_approval.user
    click_on 'Update Politician approval'

    assert_text 'Politician approval was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Politician approval' do
    visit politician_approvals_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Politician approval was successfully destroyed'
  end
end
