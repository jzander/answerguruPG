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

    redirect_to edit_criteria_answer_path
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

  criteria_answer = CriteriaAnswer.new(criteria_answer_params)
  if criteria_answer.save
    redirect_to crit_answer_path
  end
end

  def edit
      @decision = Decision.find(params[:id])
      @answers = @decision.answers
      @criteria = @decision.criteria
      @criteria_answer = CriteriaAnswer.new
      # @answer = Answer.new
      # binding.pry
      # each(
      #   params.require(:answer).permit(:text, :rating)
      #   )
      # @criterionanswer = CriterionAnswer.new
      # @answers = @decision.answers
      # @criteria_answers.new
      # @answers = @decision.answers
      # @criteria = @decision.criteria

      # respond_to do |format|
      #   if @answer.update(params.require(:rating).permit(:text))
      #     format.html { redirect_to edit_criteria_answer_path, notice: 'Feature was successfully updated.' }
      #     format.json { head :no_content }  
      #   else
      #     format.html { render action: 'edit' }
      #     format.json { render json: @answer.errors, status: :unprocessable_entity }
      #   end
      # end
    # render form for rating criteria for all the crieria_answers

    # @criteria_answers = answers.criteria_answers.all

    # button to calculate redirects to update (submit automatically goes to update)

  end

  def update

    @answers.rating.save
    # save rating and redirects to index


  end

  def show

  end

private
  def get_decision
     #find our parent decision that we should attach to
     @decision = Decision.find(params[:decision_id])
  end
  def criteria_answer_params
    params.require(:criteria_answer).permit(:rating, :criteria_id, :answer_id, :id)
  end

end
