class StaticPagesController < ApplicationController
  def home
    @company = Company.find_by_name("Wave Vision Marketing")

  end

  def aboutus
    @company = Company.find_by_name("Wave Vision Marketing")

  end

  def services
    @company = Company.find_by_name("Wave Vision Marketing")
  end

  def careers
    @company = Company.find_by_name("Wave Vision Marketing")
  end

  def apply
    @company = Company.find_by_name("Wave Vision Marketing")
  end

  def contact
    @company = Company.find_by_name("Wave Vision Marketing")
  end

  # ------- METHODS -------------


  def new_applicant

  end

  def questions
  end
end
