class VolunteerOpportunitiesController < ApplicationController
  before_action :set_volunteer_opportunity, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!, only: [:new, :organization, :create, :edit, :update, :destroy]
  before_filter :check_user, only: [:edit, :update, :destroy]

def search
  if params[:search].present?
    @volunteer_opportunities = VolunteerOpportunity.search(params[:search], operator: "or")
  else
    @volunteer_opportunities = VolunteerOpportunity.all
  end
end



  # Organization URL displays volunteer opportunities that the organization has created.
  def organization
    @volunteer_opportunities = VolunteerOpportunity.where(user: current_user).order("created_at DESC")
  end

  
  # GET /volunteer_opportunities
  # GET /volunteer_opportunities.json
  def index
    @volunteer_opportunities = VolunteerOpportunity.all.order("created_at DESC")
    
  end

  # GET /volunteer_opportunities/1
  # GET /volunteer_opportunities/1.json
  
  def show
  @volunteer_opportunities = VolunteerOpportunity.where(user: @volunteer_opportunity.user.id).order("created_at DESC")

  end

 
  # GET /volunteer_opportunities/new
  def new
    @volunteer_opportunity = VolunteerOpportunity.new
  end

  # GET /volunteer_opportunities/1/edit
  def edit
  end

  # POST /volunteer_opportunities
  # POST /volunteer_opportunities.json
  def create
    @volunteer_opportunity = VolunteerOpportunity.new(volunteer_opportunity_params)
    @volunteer_opportunity.user_id = current_user.id

    respond_to do |format|
      if @volunteer_opportunity.save
        format.html { redirect_to @volunteer_opportunity, notice: 'Volunteer opportunity was successfully created.' }
        format.json { render :show, status: :created, location: @volunteer_opportunity }
      else
        format.html { render :new }
        format.json { render json: @volunteer_opportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /volunteer_opportunities/1
  # PATCH/PUT /volunteer_opportunities/1.json
  def update
    respond_to do |format|
      if @volunteer_opportunity.update(volunteer_opportunity_params)
        format.html { redirect_to @volunteer_opportunity, notice: 'Volunteer opportunity was successfully updated.' }
        format.json { render :show, status: :ok, location: @volunteer_opportunity }
      else
        format.html { render :edit }
        format.json { render json: @volunteer_opportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /volunteer_opportunities/1
  # DELETE /volunteer_opportunities/1.json
  def destroy
    @volunteer_opportunity.destroy
    respond_to do |format|
      format.html { redirect_to volunteer_opportunities_url, notice: 'Volunteer opportunity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_volunteer_opportunity
      @volunteer_opportunity = VolunteerOpportunity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def volunteer_opportunity_params
      params.require(:volunteer_opportunity).permit(:monday_morning, :monday_afternoon, :monday_evening, :tuesday_morning, :tuesday_afternoon, :tuesday_evening, :wednesday_morning, :wednesday_afternoon, :wednesday_evening, :thursday_morning, :thursday_afternoon, :thursday_evening, :friday_morning, :friday_afternoon, :friday_evening, :saturday_morning, :saturday_afternoon, :saturday_evening, :sunday_morning, :sunday_afternoon, :sunday_evening, :description, :Organization, :Address, :Phone, :Website, :skill_needed, :what_to_bring)
    end
    
    # Only let the creator of a volunteer opportunity edit or delete the opportunity.
    def check_user
      if current_user != @volunteer_opportunity.user
        redirect_to root_url, alert: "Sorry, this volunteer opportunity belongs to someone else."
    end
  end
end
