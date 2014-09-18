class Answer < ActiveRecord::Base
  belongs_to :decision
  has_many :criteria
end