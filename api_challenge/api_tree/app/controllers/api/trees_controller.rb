class Api::TreesController < ApplicationController

     # GET all Trees
    def index
        @trees = Tree.where(parent_id: nil)
        # render json: @trees.to_json( only: [ :id, :label ], include: [ :children ] )
        render json: @trees
    end

    # GET full (:id) Tree
    def show
        @tree = Tree.find(params[:id])
        # @children = @tree.children
        render json: @tree
    end 
end
