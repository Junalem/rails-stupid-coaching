class PagesController < ApplicationController

  def ask

  end

  def answer
    correct_answer = 'I am going to work right now!'
    @response = ""
    if params[:question].include?('?')
      @response = 'Silly question, get dressed and go to work!'
    elsif params[:question] == correct_answer
      @response = 'Great!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
