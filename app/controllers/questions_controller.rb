class QuestionsController < ApplicationController
  def home
  end

  def ask

  end

  def answer
    @question = params[:ask]
    if params[:ask] #s'il y a quelque chose? sinon ça ne rentre pas dans la fonction
      if @question.include? "!"
        @answer = "I don't care, get dressed and go to work!"
      elsif @question.include? "?"
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "Great!"
      end
    end
  end
end
