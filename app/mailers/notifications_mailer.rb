class NotificationsMailer < ActionMailer::Base
  default :from => "andrea.coa.dixon@gmail.com"
  default :to => "andrea.coa.dixon@gmail.com"

  def new_message(message)
    @message = message
    @company = Company.find_by_name("Wave Vision Marketing")

    mail(:subject => "Questions" + @company.name)
  end
end
