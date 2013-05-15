class NewspapersController < ApplicationController

  def index
    @newspapers = Newspaper.all
  end

  def new
    @newspaper = Newspaper.new
    @newspaper.subscription_plans.build
  end

  def create
    @newspaper = Newspaper.new(params[:newspaper])
    if @newspaper.save
      # params[:subscription_plans_attributes].each do |attribute|
  #       unless attribute.price == ''
  #         sub_plan = SubscriptionPlan.new(:price => attribute.price, :is_daily => attribute.is_daily)
  #         sub_plan.newspaper_id = @newspaper.id
  #         sub_plan.save
  #       end
  #     end
      redirect_to newspaper_path(@newspaper.id)
    else
      render :new
    end
  end

  def show
    @newspaper = Newspaper.find(params[:id])
  end

end