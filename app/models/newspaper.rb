class Newspaper < ActiveRecord::Base
  attr_accessible :title, :editor, :subscription_plans_attributes

  has_many :subscription_plans
  accepts_nested_attributes_for :subscription_plans,
    :reject_if => lambda { |attributes| attributes['price'].blank? }


  validates :title, :editor, :presence => true
end