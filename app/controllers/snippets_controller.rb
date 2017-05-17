class SnippetsController < ApplicationController
  before_action :correct_user, only: :destroy

  def index
    @snippets = Snippet.paginate(page: params[:page])
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
    @snippet.destroy
    flash[:success] = 'Snippet deleted'
    redirect_to request.referrer || root_url
  end

  private

  def snippet_params
    params.require(:snippet).permit(:title, :content)
  end

  def correct_user
    @snippet = current_user.snippets.find_by(id: params[:id])
    redirect_to root_url if @snippet.nil?
  end
end
