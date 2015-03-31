require 'rails_helper'
describe "the creating post process" do
  let(:user) { FactoryGirl.create(:user) }

  before do
    sign_in(user)
  end

  it "allows a user to create a post", js: true do
    fill_in "New Post", :with => "Lets talk about matts pong game"
    click_on "Tweeet"
    click_on "Delete"
    click_on "Confirm"
    expect(page).to have_content "matts pong game"
  end
end
