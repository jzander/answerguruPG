class Answer < ActiveRecord::Base
	
	# field :text, type: String
	# field :rating, type: Integer

	belongs_to :decision

end

