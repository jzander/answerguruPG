class CriteriaAnswer < ActiveRecord::Base
  belongs_to :answer
  belongs_to :criterion
end
