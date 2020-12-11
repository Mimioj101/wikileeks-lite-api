require 'rest-client'

class WikisController < ApplicationController

    def wikiarticles
        url = "https://en.wikipedia.org/w/api.php?action=query&list=search&srlimit=50&srsearch=#{params[:search]}&utf8=&srqiprofile=popular_inclinks_pv&format=json"
        response = RestClient.get(url)
        data = JSON.parse(response.body)
        render json: data
        byebug
    end

    # private
    # def wiki_params
    #     params.require(:wiki).permit(:page_id, :page_title, :snippet, :img, :cat_title, :cat_id)
    # end

end