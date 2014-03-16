class StaticPagesController < ApplicationController
  def home
    @company_name = "Wave Vision Marketing"
   #create db records for companies with company info REMEMBER TO REPLCE ALL INFO IN PAGES 
  end

  def aboutus
    @company_name = "Wave Vision Marketing"

  end

  def services
    @company_name = "Wave Vision Marketing"
  end

  def careers
    @company_name = "Wave Vision Marketing"
  end

  def apply
    @company_name = "Wave Vision Marketing"
  end

  def contact
    @company_name = "Wave Vision Marketing"
  end
end
