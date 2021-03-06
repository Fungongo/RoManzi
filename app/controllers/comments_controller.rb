class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(params[:comment])
    @comment.user_id = current_user.id
    @comment.novel_id = params[:novel_id]
    
    if @comment.save
      flash[:notice] = "Comment created."
    else
      flash[:notice] = "Error while creating the comment. Please retry."
    end
    
    redirect_to :back
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])

    if @comment.update_attributes(params[:comment])
      flash[:notice] = "Comment updated."
    else
      flash[:notice] = "Error while updating the comment. Please retry."
    end
    
    redirect_to "/novels/#{@comment.novel_id}"
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to comments_url }
      format.json { head :no_content }
    end
  end
end
