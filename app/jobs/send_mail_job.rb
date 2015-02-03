class SendMailJob < ActiveJob::Base
  queue_as :default

  def perform_later(user)
    # Do something later
    @user = user
    UserMailer.welcome_email(@user).deliver_later
    logger.innfo 'mail sent'
  end
end
