class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :send_welcome_email, :send_notice_email

    def check_for_admin
      @admin = Admin.all
      @admin_array = ['recr002@gmail.com','lelandk@gmail.com','tidicken@gmail.com', 'rubedo4225@gmail.com']
    end

   	def send_welcome_email
   		UserMailer.welcome_email(self).deliver
   	end

   	def send_notice_email
   		UserMailer.notice_email(admin).deliver
   	end

end
