class NotificationsMailer < ActionMailer::Base
  # default :from => "admin@wavevisionmarketing.com"
  # default :to => "admin@wavevisionmarketing.com"

  def new_message(message)
    @message = message
    @company = Company.find_by_name("Wave Vision Marketing")

    mail(
      :subject => 'Did you know Postmark has a Heroku add-on?',
      :to      => 'sheldon@bigbangtheory.com',
      :from    => 'leonard@bigbangtheory.com',
      :tag     => 'my-tag'
    )
  end

  


end
