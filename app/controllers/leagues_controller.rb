# frozen_string_literal: true

class LeaguesController < ApplicationController
  def index
    @leagues = League.all
  end

  def new
    @league = League.new
  end

  def create
    @league = League.create(league_params)
    if @league.save
      redirect_to leagues_path
    else
      render :new
    end
  end

  private

  def league_params
    params.require(:league).permit(:name)
  end
end
