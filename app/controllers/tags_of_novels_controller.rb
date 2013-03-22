class TagsOfNovelsController < ApplicationController
  # GET /tags_of_novels
  # GET /tags_of_novels.json
  def index
    @tags_of_novels = TagsOfNovel.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tags_of_novels }
    end
  end

  # GET /tags_of_novels/1
  # GET /tags_of_novels/1.json
  def show
    @tags_of_novel = TagsOfNovel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tags_of_novel }
    end
  end

  # GET /tags_of_novels/new
  # GET /tags_of_novels/new.json
  def new
    @tags_of_novel = TagsOfNovel.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tags_of_novel }
    end
  end

  # GET /tags_of_novels/1/edit
  def edit
    @tags_of_novel = TagsOfNovel.find(params[:id])
  end

  # POST /tags_of_novels
  # POST /tags_of_novels.json
  def create
    @tags_of_novel = TagsOfNovel.new(params[:tags_of_novel])

    respond_to do |format|
      if @tags_of_novel.save
        format.html { redirect_to @tags_of_novel, notice: 'Tags of novel was successfully created.' }
        format.json { render json: @tags_of_novel, status: :created, location: @tags_of_novel }
      else
        format.html { render action: "new" }
        format.json { render json: @tags_of_novel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tags_of_novels/1
  # PUT /tags_of_novels/1.json
  def update
    @tags_of_novel = TagsOfNovel.find(params[:id])

    respond_to do |format|
      if @tags_of_novel.update_attributes(params[:tags_of_novel])
        format.html { redirect_to @tags_of_novel, notice: 'Tags of novel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tags_of_novel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tags_of_novels/1
  # DELETE /tags_of_novels/1.json
  def destroy
    @tags_of_novel = TagsOfNovel.find(params[:id])
    @tags_of_novel.destroy

    respond_to do |format|
      format.html { redirect_to tags_of_novels_url }
      format.json { head :no_content }
    end
  end
end
