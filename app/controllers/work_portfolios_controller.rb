class WorkPortfoliosController < ApplicationController
  def index
    @portfolios = WorkPortfolio.all
  end
end
