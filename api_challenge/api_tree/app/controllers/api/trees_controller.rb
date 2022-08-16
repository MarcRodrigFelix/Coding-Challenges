class Api::TreesController < ApplicationController

     # GET all Trees
    def index
        @trees = Tree.where(parent: nil)
        # render json: @trees.to_json( only: [ :id, :label ], include: [ :children ] )
        render json: @trees
    end

    # GET full (:id) Tree
    def show
        @tree = Tree.find(params[:id])
        # @children = @tree.children
        render json: @tree
    end

    def create
binding.pry
        @tree = Tree.new(tree_params)
        if @tree.save
            render json: @tree
        else
            render error: { error: "Something went wrong, make sure your creating under an existing tree"}, status: 400
        end
    end


    private

    def tree_params
        params.require(:tree).permit(:label, :parent)
    end

end
