module Github
  class HomeController < ApplicationController
    def index
      if params.key?(:token) && params.key?(:theme)
        session[:token] = params[:token]
        session[:theme] = params[:theme]
        
        redirect_to home_index_path and return
      end

    end
  end
end