class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: [:edit, :update, :destroy, :show]
  access all: [:show, :index, :angular], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

    layout 'portfolio'
    def index
        @portfolio_items = Portfolio.by_position
    end

    def angular
      @angular_portfolio_items = Portfolio.angular
    end

    def new
        @portfolio_item = Portfolio.new
        3.times { @portfolio_item.technologies.build }
    end

    def create
        @portfolio_item = Portfolio.new(portfolio_params)
    
        respond_to do |format|
          if @portfolio_item.save
            format.html { redirect_to portfolios_path, notice: "Portfolio item was successfully created." }
          else
            format.html { render :new, status: :unprocessable_entity }
          end
        end
    end
    def portfolio_params
      params.require(:portfolio).permit(
        :title,
        :subtitle,
        :body,
        technologies_attributes: [:name]
      )
    end

    def edit
    end

    def update
        respond_to do |format|
          if @portfolio_item.update(portfolio_params)
            format.html { redirect_to portfolios_path, notice: "The portfolio was successfully updated." }
          else
            format.html { render :edit, status: :unprocessable_entity }
          end
        end
    end

    def show
    end

    def destroy
      @portfolio_item.destroy
      respond_to do |format|
        format.html { redirect_to portfolios_url, notice: "Portfolio was successfully destroyed." }
      end
    end

    def set_portfolio_item
      @portfolio_item = Portfolio.find(params[:id])
    end

end
