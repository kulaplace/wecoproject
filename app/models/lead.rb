class Lead < ActiveRecord::Base

	validates :name, presence: true, length: { minimum: 2}

	validates :email, uniqueness: true, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }

	validates :company, presence: true

	validates :address, presence: true

	validates :phone, length: { is: 10 } 

	has_many :notes 

	after_create :send_welcome_email, :send_notice_email

   	def send_welcome_email
   		UserMailer.welcome_email(self).deliver
   	end

   	def send_notice_email
   		UserMailer.notice_email(self).deliver
   	end

end
