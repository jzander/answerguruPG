class Decision < ActiveRecord::Base
	# field :text, type: String

	belongs_to :user
	has_many :criteria
	has_many :answers
  



end
