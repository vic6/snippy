class SnippetsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @snippet = current_user.snippets.build(snippet_params)
    if @snippet.save
      flash[:success] = 'Snippet created'
      redirect_to current_user
    else
      render 'static_pages/home'
    end
  end

  def edit
  end

  def destroy
  end

  private

  def snippet_params
    params.require(:snippet).permit(:title, :content)
  end
end
