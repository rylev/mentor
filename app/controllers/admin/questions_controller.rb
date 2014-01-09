class Admin::QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
  end

  def create
    question = Question.new(params.permit(:text))
    if question.save
      redirect_to action: :index, flash: { message: "Success!" }
    else
      render :new, flash: { error: "Something went wrong" }
    end
  end

  def edit
  end

  def update
    if question = Question.find_by(id: params[:id])
      question.update_attributes(params.permit(:text))
      redirect_to :index, flash: { message: "Success!" }
    else
      render :edit, flash: { error: "Question not found!" }
    end
  end

  def destroy
    Question.find(params[:id]).destroy
  end
end