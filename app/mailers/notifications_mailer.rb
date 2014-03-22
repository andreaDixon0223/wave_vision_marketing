class NotificationsMailer < ActionMailer::Base
  default :from => "noreply@youdomain.dev"
  default :to => "you@youremail.dev"

  def new_message(message)
    @message = message
    @company = Company.find_by_name("Wave Vision Marketing")
    
    mail(:subject => "Questions" + @company.name)
  end
end
