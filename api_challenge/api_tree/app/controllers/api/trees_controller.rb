class Api::TreesController < ApplicationController

     # GET all Trees
    def index
        @trees = Tree.all
        render json: @trees.to_json( only: [ :id, :label ], include: [ :children ] )
    end

    # GET full (:id) Tree
    def show
        @tree = Tree.find(params[:id])
        @children = @tree.children
        render json: @tree
    end 
end
