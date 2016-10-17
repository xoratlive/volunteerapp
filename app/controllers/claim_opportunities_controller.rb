class ClaimOpportunitiesController < ApplicationController
  before_action :set_claim_opportunity, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  def opportunities_to_claim
    @claim_opportunity = ClaimOpportunity.all.where(organization: current_user).order("created_at DESC")
  end

  def opportunities_that_have_been_claimed
    @claim_opportunity = ClaimOpportunity.all.where(volunteer: current_user).order("created_at DESC")
  end


 

  # GET /claim_opportunities/new
  def new
    @claim_opportunity = ClaimOpportunity.new
    @volunteer_opportunity = VolunteerOpportunity.find(params[:volunteer_opportunity_id])
  end


  # POST /claim_opportunities
  # POST /claim_opportunities.json
  def create
    @claim_opportunity = ClaimOpportunity.new(claim_opportunity_params)
    @volunteer_opportunity = VolunteerOpportunity.find(params[:volunteer_opportunity_id])
    @organization = @volunteer_opportunity.user


    @claim_opportunity.volunteer_opportunity_id = @volunteer_opportunity.id
    @claim_opportunity.volunteer_id = current_user.id
    @claim_opportunity.organization_id = @organization.id


    respond_to do |format|
      if @claim_opportunity.save
        format.html { redirect_to root_url, notice: 'You have successfully claimed the opportunity.' }
        format.json { render :show, status: :created, location: @claim_opportunity }
      else
        format.html { render :new }
        format.json { render json: @claim_opportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_claim_opportunity
      @claim_opportunity = ClaimOpportunity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def claim_opportunity_params
      params.require(:claim_opportunity).permit(:please_explain_why_you_are_interested_in_this_opportunity)
    end
end
