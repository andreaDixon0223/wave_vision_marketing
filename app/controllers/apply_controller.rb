class ApplyController < ApplicationController
	def new
    	@message = Message.new
    	@company = Company.find_by_name("Wave Vision Marketing")
  	end

  	def create
    	@message = Message.new(params[:message])
    	@company = Company.find_by_name("Wave Vision Marketing")
    
    	if @message.valid?
      		NotificationsMailer.new_message(@message).deliver
      		redirect_to(root_path, :notice => "Message was successfully sent.")
    	else
      		flash.now.alert = "Please fill out all fields."
      		render :new
    	end
  	end
end
