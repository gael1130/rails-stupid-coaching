class QuestionsController < ApplicationController
  def ask
  end

  def answer
    params[:answer_one]
    # raise
    @coach_answer = "Good"
    # @coach_answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    if params[:answer_one] == "I am going to work"
      @coach_answers = "Great!"
    elsif params[:answer_one][-1] == "?"
      @coach_answers = "Silly question, get dressed and go to work!"
    else
    @coach_answers = "I don't care, get dressed and go to work!"
    end
  end

end
