# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_pagetitle

  private
  
  def set_pagetitle
    @pagetitle = 'Sri Lanka Reis'
  end
end
