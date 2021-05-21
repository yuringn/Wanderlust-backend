class PostsController < ApplicationController
    
    def index
        posts  = Post.order(:id)
        render json: posts
     end
 
     def show
         post = Post.find(params[:id])
         if post
             render json: post
         else
             render json: {error: "Cannot find this post"}
         end
     end
 
     def create
         post = Post.create(post_params)
         render json: post
     end
 
     def edit
         post = Post.find(params[:id])
     end
 
     def update
         post = Post.find(params[:id])
         post.update(post_params)
         render json: post
     end
 
     def destroy
         post = Post.find(params[:id])
         post.destroy
         render json: {}
     end
 
     private
     
     def post_params
         params.permit(:user_id, :location_id, :title, :visit_date, :review, :pictures)
     end
 
end
