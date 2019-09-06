class XsharesController < ApplicationController
  def index
    @xshare = Xshare.all

  end

  def create
    @xshare = Xshare.create(share_params)
    if @xshare.invalid?
      flash[:error] = '<strong>Data not saved</strong> the text you entered is invalid.'
    end
      redirect_to root_path
    end

  def show
    @text = Text.new
    @name = Name.new
  end

  def about

  end

  private

  def share_params
    params.require(:xshare).permit(:text, :name)
  end
end
