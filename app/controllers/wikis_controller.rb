require 'rest-client'

class WikisController < ApplicationController

    def wikiarticles
        url = "https://en.wikipedia.org/w/api.php?action=query&list=search&srlimit=30&srsearch=#{params[:search]}&utf8=&format=json"
        response = RestClient.get(url)
        data = JSON.parse(response.body)
        render json: data
    end

end