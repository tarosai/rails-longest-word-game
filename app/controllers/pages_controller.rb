class PagesController < ApplicationController
  def game
   @grid = Array.new(4) { ('A'..'Z').to_a[rand(26)] }
   @start_time = Time.now
  end

 def score
   @input = params[:input]
   start_time = params[:start_time].to_datetime
   end_time = Time.now
   @time_result = (end_time - start_time)
 end
end
