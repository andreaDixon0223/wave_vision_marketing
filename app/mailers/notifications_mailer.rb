class NotificationsMailer < ActionMailer::Base
  # default :from => "admin@wavevisionmarketing.com"
  # default :to => "admin@wavevisionmarketing.com"

  def new_message(message)
    @message = message
    @company = Company.find_by_name("Wave Vision Marketing")

    mail(:subject => "Questions" + @company.name,
    	:to      => 'andrea.coa.dixon@gmail.com',
      	:from    => 'admin@wavevisionmarketing.com',
      	:tag     => 'my-tag')
  end

  


end
