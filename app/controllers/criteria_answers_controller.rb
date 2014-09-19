class CriteriaAnswersController < ApplicationController

  def index

      #run algorith to multiply each criteria weight by each answer rate,

      # for each answer, 

      #   add the result of each [criteria weight * answer-criteria rate]
        
      #   then compare the total answer value to all answer values
        
      #   present the answer with the highest value.

      #show results

  end

  def create

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
