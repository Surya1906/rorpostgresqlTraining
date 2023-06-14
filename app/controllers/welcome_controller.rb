class WelcomeController < ApplicationController
  def index
    if Current.user
      redirect_to articles_path
    end
  end
end
