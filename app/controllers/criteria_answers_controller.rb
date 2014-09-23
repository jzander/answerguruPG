class CriteriaAnswersController < ApplicationController

  
    def current_user
      if User && :user_id && session[:user_id]
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
      else
        return false
      end
      rescue ActiveRecord::RecordNotFound
    end

  def index
      #run algorith to multiply each criteria weight by each answer rate,

      # for each answer, 

      #   add the result of each [criteria weight * answer-criteria rate]
        
      #   then compare the total answer value to all answer values
        
      #   present the answer with the highest value.

      #show results
  end

  def new

    @decision = Decision.find(params[:id])
    # passed_id = params(:id)
    # decision = decisions.where(:id = passed_id)
    @decision.answers.each do |a|
      @decision.criteria.each do |c|
        onerec = CriteriaAnswer.new
        onerec.decision_id  = a.id
        onerec.criterion_id = c.id
        onerec.rating       = 0
        onerec.save

        # CriteriaAnswer.create([
        #   {decision_id: a.id,
        #   criterion_id: c.id,
        #   rating: 0}
        #   ])
        # newrecord.save  
      end
    end
    redirect_to edit_criteriaanswer_path
    ## go to edit view where user can rate 

  end

  def create

    # # params.require(:decision).permit(:id)
    # @decision = Decision.find(params[:id])
    # # passed_id = params(:id)
    # # decision = decisions.where(:id = passed_id)
    # @decision.answers.each do |a|
    #   @decision.criteria.each do |c|
    #     newrecord = Criteria_answer.new
    #     newrecord.create(
    #       :decision_id => a(:id),
    #       :criterion_id => c(:id),
    #       :rating => 0)
    #     newrecord.save  
    #   end
    # end
    # redirect_to edit_criteriaanswer_path

    # @decision = Decision.find(params[:id])
    # @answers = @decision.answers
    # @criteria = @decision.criteria
    # @answer = Answer.new
    # @criterion_answer = criterion_answer.new

   # var myanswerid = decision.answers.id

    # for each decision answer loop through |variable| 

      # var myanswerid = variable[:id]

    #   for each decision criterion loop through |variable|

    #       var mycriteriaid = decision.criteria.id

        #     criteria_answer.create

        #      myanswerid

        #        mycriteriaid

        #       .save

       # next decision criteria

       # next answer criteria

        # redirect to edit

end

  def edit

    # render form for rating criteria for all the crieria_answers

    # @criteria_answers = answers.criteria_answers.all

    # button to calculate redirects to update (submit automatically goes to update)

  end

  def update

    # save rating and redirects to index


  end

  def show

  end

end
