class SubscriptionPlansController < ApplicationController
  def new
    @subscription_plan = SubscriptionPlan.new
    @newspaper = Newspaper.find(params[:newspaper_id])
    @newspaper_id = params[:id]
  end

  def create
    @subscription_plan = SubscriptionPlan.new(params[:subscription_plan])
    @subscription_plan.newspaper_id = params[:newspaper_id]
    if @subscription_plan.save!
      redirect_to newspaper_url(params[:newspaper_id])
    else
      @newspaper = Newspaper.find(params[:newspaper_id])
      render :new
    end
  end
end