class UserMailer < ActionMailer::Base
  default from: "from@example.com"
  def welcome_email
    @url  = 'http://example.com/login'
    mail(to: 'bhawana.bisht209@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end
