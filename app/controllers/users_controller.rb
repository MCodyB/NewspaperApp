class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      params[:subscription_ids].each do |sub|
        subscription = Subscription.create(:subscription_plan_id => sub,
                                        :user_id => @user.id)
        end
      redirect_to user_url(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
  end

end