class WorkPortfoliosController < ApplicationController
  def index
    @portfolios = WorkPortfolio.all
  end

  def new
    @portfolio_item = WorkPortfolio.new
  end

  def create
    @portfolio_item = WorkPortfolio.new(params.require(:work_portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to work_portfolios_path, notice: 'Kaam ho gaya. Paise mil jaane chahiye :D'}
      else
        format.html { render :new }
      end
    end
  end
end
