# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_branding

  private
  
  def set_branding
    @pagetitle = 'Sri Lanka Reis'
  end
end
