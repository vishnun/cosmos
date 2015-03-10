class FactsController < ApplicationController
  def index
    @facts = Fact.all
  end

  def new
    @fact = Fact.new
  end

  def create
    @fact = Fact.create(fact_params)
    render 'show'
  end

  private
  def fact_params
    Rails.logger.info "PARAMS: #{params.inspect}"
    params.require(:fact).permit!
  end
end