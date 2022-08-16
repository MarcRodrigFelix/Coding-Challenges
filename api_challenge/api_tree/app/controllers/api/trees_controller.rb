class Api::TreesController < ApplicationController

     # GET all Trees
    def index
        @trees = Tree.where(parent_id: nil)
        # @trees = Tree.all
        render json: @trees
    end

    # GET full (:id) Tree
    def show
        @tree = Tree.find(params[:id])
        # @children = @tree.children
        render json: @tree
    end

    # POST tree
    def create
        @tree = Tree.new(tree_params)
        if @tree.save
            render json: @tree
        else
            render error: { error: "Something went wrong, make sure your creating under an existing tree"}, status: 400
        end
    end


    private

    def tree_params
        params.require(:tree).permit( :label)
    end

end
