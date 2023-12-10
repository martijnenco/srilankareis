# frozen_string_literal: true

Rails.application.routes.draw do
  root 'landing#index'

  localized do
    namespace :jurisdiction do
      get :privacy_policy
      get :terms_of_service
      get :disclaimer
    end
  end
end
