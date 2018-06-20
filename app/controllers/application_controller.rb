class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  
    def ayy
      render html: "Slug Sorter coming soon baby"
    end
  end