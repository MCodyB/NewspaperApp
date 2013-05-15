class SubscriptionPlan < ActiveRecord::Base
  attr_accessible :price, :is_daily, :newspaper_id

  has_many :subscriptions
  has_many :users, :through => :subscriptions
  belongs_to :newspaper

  validates :price, :presence => true
  validates_inclusion_of :is_daily, :in => [true, false]
  validate :has_newspaper?

  def has_newspaper?
    !self.newspaper.nil?
  end

  def cost
    self.price/100.0
  end
end