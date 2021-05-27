class ReviewsController < ApplicationController
  # authentication
  skip_before_action :authenticate_user!, only: [:create]

  def create
    @review = Review.new(review_params)
    @list = List.find(params[:list_id])
    @review.list = @list
    if @review.save
      redirect_to list_path(@list, anchor: "review-#{@review.id}")
    else
      render 'lists/show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to list_path(@review.list)
  end

  private 
  def review_params
    params.require(:review).permit(:comment, :rating)
  end


end
