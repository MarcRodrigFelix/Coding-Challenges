class Api::TreesController < ApplicationController

     # GET all Trees
    def index
        @trees = Tree.all
        render json: @trees
    end

    # GET full Tree
    def show
        @tree = Tree.find(params[:id])
        render json: @tree
    end 
end
