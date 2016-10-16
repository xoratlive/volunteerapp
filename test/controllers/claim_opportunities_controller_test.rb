require 'test_helper'

class ClaimOpportunitiesControllerTest < ActionController::TestCase
  setup do
    @claim_opportunity = claim_opportunities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:claim_opportunities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create claim_opportunity" do
    assert_difference('ClaimOpportunity.count') do
      post :create, claim_opportunity: { please_explain_why_you_are_interested_in_this_opportunity: @claim_opportunity.please_explain_why_you_are_interested_in_this_opportunity }
    end

    assert_redirected_to claim_opportunity_path(assigns(:claim_opportunity))
  end

  test "should show claim_opportunity" do
    get :show, id: @claim_opportunity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @claim_opportunity
    assert_response :success
  end

  test "should update claim_opportunity" do
    patch :update, id: @claim_opportunity, claim_opportunity: { please_explain_why_you_are_interested_in_this_opportunity: @claim_opportunity.please_explain_why_you_are_interested_in_this_opportunity }
    assert_redirected_to claim_opportunity_path(assigns(:claim_opportunity))
  end

  test "should destroy claim_opportunity" do
    assert_difference('ClaimOpportunity.count', -1) do
      delete :destroy, id: @claim_opportunity
    end

    assert_redirected_to claim_opportunities_path
  end
end
