class UserMailer < ActionMailer::Base
  default from: "zuber.surya@softwaysolutions.net"
  before_action :set_attachement
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    attachments['image.jpg'] = set_attachement
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
  private
  def set_attachement
  	 File.read("#{Rails.root}/public/uploads/#{'images (3) (1).jpg'}",
                 filename: "#{'images (3) (1).jpg'}",
                 type: "image/jpg")
  end
end
