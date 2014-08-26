class Decision < ActiveRecord::Base
	belongs_to :user
	has_many :criteria
	has_many :answers

  accepts_nested_attributes_for :criteria
end
