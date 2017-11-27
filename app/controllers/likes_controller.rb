class LikesController < ApplicationController
  def create
    @highlight = Highlight.find(params[:highlight_id])
    
    @like = Like.new(
      highlight_id: params[:highlight_id],
      user_id: current_user.id
    )
    
    if @like.save
      redirect_to highlight_path(@highlight)
    else
      render template: 'highlights/show'
    end
  end
  
  def destroy
    @like = Like.find_by(highlight_id: params[:highlight_id], user_id: current_user.id)
    @like.destroy
    redirect_to highlihgt_path(params[:highlight_id])
  end
end
