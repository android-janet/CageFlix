class ReviewsController < ApplicationController
   def new
      @review = Review.new
   end

   def create
      @review = Review.new(review_params)
      if @review.save
         redirect_to reviews_path
      else
         render :new
      end
   end

   private
   def review_params
      params.require(:review).permit(:title, :body)
   end
end
