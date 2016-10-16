class ClaimOpportunitiesController < ApplicationController
  before_action :set_claim_opportunity, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /claim_opportunities
  # GET /claim_opportunities.json
  def index
    @claim_opportunities = ClaimOpportunity.all
  end

  # GET /claim_opportunities/1
  # GET /claim_opportunities/1.json
  def show
  end

  # GET /claim_opportunities/new
  def new
    @claim_opportunity = ClaimOpportunity.new
    @volunteer_opportunity = VolunteerOpportunity.find(params[:volunteer_opportunity_id])
  end

  # GET /claim_opportunities/1/edit
  def edit
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
        format.html { redirect_to root_url, notice: 'Claim opportunity was successfully created.' }
        format.json { render :show, status: :created, location: @claim_opportunity }
      else
        format.html { render :new }
        format.json { render json: @claim_opportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /claim_opportunities/1
  # PATCH/PUT /claim_opportunities/1.json
  def update
    respond_to do |format|
      if @claim_opportunity.update(claim_opportunity_params)
        format.html { redirect_to @claim_opportunity, notice: 'Claim opportunity was successfully updated.' }
        format.json { render :show, status: :ok, location: @claim_opportunity }
      else
        format.html { render :edit }
        format.json { render json: @claim_opportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /claim_opportunities/1
  # DELETE /claim_opportunities/1.json
  def destroy
    @claim_opportunity.destroy
    respond_to do |format|
      format.html { redirect_to claim_opportunities_url, notice: 'Claim opportunity was successfully destroyed.' }
      format.json { head :no_content }
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
