class QuestionController < ApplicationController
  def ask
  end

  def answer
    if params[:question].length > 0
      @response = "I don't care, get back to work!"
      if params[:question].downcase == 'i am going to work'
        @response = "Great!"
      elsif params[:question].index('?')
        @response = "Silly question, get dressed and go to work!"
      end
    else
      @response = "Dude, you need to ask a question!"
    end
  end
end
