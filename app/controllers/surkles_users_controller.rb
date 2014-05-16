class SurklesUsersController < ApplicationController
  def add_user_to_surkle
  	@SurklesUser = SurklesUser.create(user_id: params[:user_id], surkle_id: params[:id])
  end

  def remove_user_from_surkle
  	@SurklesUser = .where("user_id = ? && surkle_id = ?", params[:user_id], params[:surkle_id]).first
  	@SurkleUser.destroy
  end
end
