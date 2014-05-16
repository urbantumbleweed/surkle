require 'spec_helper'

describe SurklesUsersController do

  describe "GET 'add_user_to_surkle'" do
    it "returns http success" do
      get 'add_user_to_surkle'
      response.should be_success
    end
  end

  describe "GET 'remove_user_from_surkle'" do
    it "returns http success" do
      get 'remove_user_from_surkle'
      response.should be_success
    end
  end

end
