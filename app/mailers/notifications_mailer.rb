class NotificationsMailer < ActionMailer::Base
  # default :from => "admin@wavevisionmarketing.com"
  # default :to => "admin@wavevisionmarketing.com"

  def new_question(message)
    @message = message
    @company = Company.find_by_name("Wave Vision Marketing")

    mail(:subject => "Questions - " + @company.name,
    	:to      => 'admin@wavevisionmarketing.com',
      	:from    => 'admin@wavevisionmarketing.com',
      	:tag     => 'questions'
      	)
  end

  def new_resume(message)
    @message = message
    @company = Company.find_by_name("Wave Vision Marketing")

    mail(:subject => "New Applicant - " + @company.name,
    	:to      => 'careers@wavevisionmarketing.com',
      	:from    => 'admin@wavevisionmarketing.com',
      	:tag     => 'resumes'
      	)
  end

  


end
