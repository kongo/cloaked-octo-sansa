class WelcomeController < ApplicationController

  before_action :authenticate_user!

  def index
    # empty
  end
end
