# frozen_string_literal: true

class LeaguesController < ApplicationController
  def index
    @leagues = League.all
  end
end
