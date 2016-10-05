require 'test_helper'

class VolunteerOpportunitiesControllerTest < ActionController::TestCase
  setup do
    @volunteer_opportunity = volunteer_opportunities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:volunteer_opportunities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create volunteer_opportunity" do
    assert_difference('VolunteerOpportunity.count') do
      post :create, volunteer_opportunity: { Address: @volunteer_opportunity.Address, Organization: @volunteer_opportunity.Organization, Phone: @volunteer_opportunity.Phone, Website: @volunteer_opportunity.Website }
    end

    assert_redirected_to volunteer_opportunity_path(assigns(:volunteer_opportunity))
  end

  test "should show volunteer_opportunity" do
    get :show, id: @volunteer_opportunity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @volunteer_opportunity
    assert_response :success
  end

  test "should update volunteer_opportunity" do
    patch :update, id: @volunteer_opportunity, volunteer_opportunity: { Address: @volunteer_opportunity.Address, Organization: @volunteer_opportunity.Organization, Phone: @volunteer_opportunity.Phone, Website: @volunteer_opportunity.Website }
    assert_redirected_to volunteer_opportunity_path(assigns(:volunteer_opportunity))
  end

  test "should destroy volunteer_opportunity" do
    assert_difference('VolunteerOpportunity.count', -1) do
      delete :destroy, id: @volunteer_opportunity
    end

    assert_redirected_to volunteer_opportunities_path
  end
end
