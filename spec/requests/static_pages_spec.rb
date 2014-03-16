require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Wave Vision Marketing" do
      visit '/static_pages/home'
      page.should have_content('Wave Vision Marketing')
    end
  end
end
