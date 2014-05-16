class SurklesUser < ActiveRecord::Base
	belongs_to :user
	belongs_to :surkle

	def self.add_user_to_surkle(user_id, surkle_id)
		self.create!(user_id: user_id, surkle_id: surkle_id)
	end

	def self.remove_surkle_user(user_id, surkle_id)
		self.where("user_id = ? && surkle_id = ?", user_id, surkle_id).first.destroy
	end
end
