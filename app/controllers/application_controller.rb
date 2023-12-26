# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale
  before_action :set_branding

  private

  def set_locale
    I18n.locale = params[:locale] ||
                  session[:locale] ||
                  http_accept_language.compatible_language_from(I18n.available_locales) ||
                  I18n.default_locale
    session[:locale] = I18n.locale
  end

  def set_branding
    @pagetitle = 'Sri Lanka Reis'
  end
end
