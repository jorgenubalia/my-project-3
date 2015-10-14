class OpportunitiesController < ApplicationController

private
def opportunity_params
  params.require(:opportunity).permit(:name, :description, :amount, :closedate, :stagename)
end

def create
  @opportunity = Opportunity.new(opportunity_params)

  if @opportunity.save
    redirect_to @opportunity
  else
    render 'new'
  end
end

def show
  @opportunity = Opportunity.find(params[:id])
end

def index
  @opportunities = Opportunity.all
end

def edit
  @opportunity = Opportunity.find(params[:id])
end

def update
  @opportunity = Opportunity.find(params[:id])

  if @opportunity.update(opportunity_params)
    redirect_to @opportunity
  else
    render 'edit'
  end
end

def destroy
  @opportunity = Opportunity.find(params[:id])
  @opportunity.destroy
 
  redirect_to opportunities_path
end

end



