class LikesController < ApplicationController
  
  def create
 micropost=Micropost.find(params[:micropost_id]) 
 current_user.like(micropost)
 flash[:success]="投稿をお気に入り登録しました。"
 redirect_to micropost.user
  end

  def destroy
 micropost=Micropost.find(params[:micropost_id])
 current_user.unlike(micropost)
 flash[:secondary] = 'お気に入り登録を解除しました。'
 redirect_to micropost.user
 
  end
end
