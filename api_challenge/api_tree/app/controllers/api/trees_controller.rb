class Api::TreesController < ApplicationController

     # GET all Trees
     def index
        @trees = Tree.all
        render json: @trees
    end
    
end
