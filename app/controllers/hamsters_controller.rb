class HamstersController < ApplicationController
    def index
        hamsters = Hamster.all 

        render json: hamsters.map{|hamster|{id: hamster.id, username: hamster.username}}
        
    end

    def create
        
        hamster = Hamster.create(name: params[:name], username: params[:username])
        
        render json: hamster
    end

    def show
        hamster = Hamster.find(params[:id])
        render json: hamster
    end

end
