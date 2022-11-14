class QuestionsController < ApplicationController

  def ask
  end

  def answer
    if params[:ask].downcase == 'i am going to work right now!'
      @answer = 'Great!'
    elsif params[:ask].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    @answer
  end
end
