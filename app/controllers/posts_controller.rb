class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token

    # handle post request to create new post
    def create
        @post = Post.create(content: params[:content], user_id: params[:user_id])
        
        render json: @post
    end

    # handle get request to show all posts
    def show
        @posts = Post.all
        render json: @posts
    end

    # handle put request to update a post
    def update
        @post = Post.find(params[:id])
        @post.update(content: params[:content])
        render json: @post
    end

    # handle delete request to delete a post
    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        render json: @post
    end
end
