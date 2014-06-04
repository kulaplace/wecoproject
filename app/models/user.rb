class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_welcome_email, :send_notice_email

   	def send_welcome_email
   		LeadMailer.welcome_email(self).deliver
   	end

   	def send_notice_email
   		LeadMailer.notice_email(self).deliver
   	end

end
