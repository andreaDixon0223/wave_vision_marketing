class NotificationsMailer < ActionMailer::Base
  default :from => "admin@wavevisionmarketing.com"
  default :to => "admin@wavevisionmarketing"

  def new_message(message)
    @message = message
    @company = Company.find_by_name("Wave Vision Marketing")
    
    mail(:subject => "Questions" + @company.name)
  end
end
