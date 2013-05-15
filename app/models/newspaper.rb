class Newspaper < ActiveRecord::Base
  attr_accessible :title, :editor

  validates :title, :editor, :presence => true
end