require('rails_helper')

describe User do
  it { should have_many :posts }
  it { should validate_confirmation_of :password }

  describe '#create' do
    it "sends email to user on successful account creation" do
      user = FactoryGirl.create(:user)
      ActionMailer::Base.deliveries.last.to.should eq [user.email]
    end
  end
end
