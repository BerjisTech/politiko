# frozen_string_literal: true

require 'application_system_test_case'

class PartyApprovalsTest < ApplicationSystemTestCase
  setup do
    @party_approval = party_approvals(:one)
  end

  test 'visiting the index' do
    visit party_approvals_url
    assert_selector 'h1', text: 'Party Approvals'
  end

  test 'creating a Party approval' do
    visit party_approvals_url
    click_on 'New Party Approval'

    fill_in 'Approval', with: @party_approval.approval
    fill_in 'Party', with: @party_approval.party
    fill_in 'User', with: @party_approval.user
    click_on 'Create Party approval'

    assert_text 'Party approval was successfully created'
    click_on 'Back'
  end

  test 'updating a Party approval' do
    visit party_approvals_url
    click_on 'Edit', match: :first

    fill_in 'Approval', with: @party_approval.approval
    fill_in 'Party', with: @party_approval.party
    fill_in 'User', with: @party_approval.user
    click_on 'Update Party approval'

    assert_text 'Party approval was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Party approval' do
    visit party_approvals_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Party approval was successfully destroyed'
  end
end
