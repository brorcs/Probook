class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:contact]
 
  def home
  end

  def contact
  end
end
