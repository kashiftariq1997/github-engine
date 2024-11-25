module Github
  class HomeController < ApplicationController
    def index
      if params.key?(:token) && params.key?(:theme) && params.key?(:workspace_id)
        session[:token] = params[:token]
        session[:theme] = params[:theme]
        session[:workspace_id] = params[:workspace_id]
        
        redirect_to home_index_path and return
      end

    end
  end
end