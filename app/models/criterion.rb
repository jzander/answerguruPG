class Criterion < ActiveRecord::Base

	field :text, type: String
	field :importance, type: Integer

	belongs_to :decision

end
