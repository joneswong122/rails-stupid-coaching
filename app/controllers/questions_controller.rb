class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @your_message = params[:your_message]
    @answer = coach_shout(@your_message)
  end

  def coach_answer(your_message)
    if your_message.include?("?")
      "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      ""
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_shout(your_message)
    if your_message == your_message.upcase
      prepends = "I can feel your motivation!"
    elsif your_message == 'I AM GOING TO WORK RIGHT NOW!'
      ""
    else
      prepends = ""
    end
    answer_back = coach_answer(your_message)
    prepends + answer_back
  end
end
