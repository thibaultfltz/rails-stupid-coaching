class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @result = "I don't care, get dressed and go to work!"
    @result = 'Great!' if params[:input] == 'I am going to work'
    @result = 'Silly question, get dressed and go to work!' if params[:input][-1] == '?'
  end
end
