require 'rails_helper'
  describe "the creating post process" do
    it "allows a user to create a post" do
      FactoryGirl.create(:user)
      visit "/"
      fill_in "New Post", :with => "Lets talk about matts pong game"
      click_on "Tweeet"
      expect(page).to have_content "successfully"
    end
  end
