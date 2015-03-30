class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :deliver_confirmation_instructions
  
  def deliver_confirmation_instructions
    UserMailer.signup_confirmation(self).deliver_now
  end
end
