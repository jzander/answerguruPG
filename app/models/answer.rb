class Answer < ActiveRecord::Base
  before_save :make_criteria_answers

  belongs_to :decision
  has_many :criteria
  has_many :criteria_answers

  accepts_nested_attributes_for :criteria_answers

  def make_criteria_answers
    # Put all the criteria_answers in place for this new answer.  One per existing criteria.
    ActiveRecord::Base.connection.execute("INSERT INTO critiera_answers (criterion_id, answer_id) (SELECT id, #{self.id} FROM criteria WHERE decision_id=#{self.decision_id})")
  end
end