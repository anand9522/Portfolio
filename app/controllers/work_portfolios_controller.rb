class WorkPortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:edit, :update]

  def set_portfolio
      @portfolio_item = WorkPortfolio.find params[:id]
  end

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
        format.html { redirect_to work_portfolios_path, notice: 'Kaam ho gaya. Paise mil jaane chahiye :D '}
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(params.require(:work_portfolio).permit(:id, :title, :subtitle, :body))
        format.html {redirect_to work_portfolios_path, notice: 'Ho gya update'}
      else
        format.html { render :edit}
      end
    end
  end

def destroy
  @item = WorkPortfolio.find(params[:id])

  @item.destroy

  respond_to do |format|
    format.html { redirect_to work_portfolios_url, notice: 'Kaam ho gya.' }
  end
end

def show
  @work_portfolio_item = WorkPortfolio.find(params[:id])
end

end
