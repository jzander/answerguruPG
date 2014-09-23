class Answer < ActiveRecord::Base
  belongs_to :decision
  has_many :criteria
  has_many :criteria_answers
end