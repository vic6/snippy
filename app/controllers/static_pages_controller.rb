class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @snippet = current_user.snippets.build
    end
  end
end
