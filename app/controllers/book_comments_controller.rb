class BookCommentsController < ApplicationController
  # GET /book_comments
  # GET /book_comments.xml
  def index
    @book_comments = BookComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @book_comments }
    end
  end

  # GET /book_comments/1
  # GET /book_comments/1.xml
  def show
    @book_comment = BookComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @book_comment }
    end
  end

  # GET /book_comments/new
  # GET /book_comments/new.xml
  def new
    @book_comment = BookComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @book_comment }
    end
  end

  # GET /book_comments/1/edit
  def edit
    @book_comment = BookComment.find(params[:id])
  end

  # POST /book_comments
  # POST /book_comments.xml
  def create
    @book_comment = BookComment.new(params[:book_comment])

    respond_to do |format|
      if @book_comment.save
        format.html { redirect_to(@book_comment, :notice => 'Book comment was successfully created.') }
        format.xml  { render :xml => @book_comment, :status => :created, :location => @book_comment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @book_comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /book_comments/1
  # PUT /book_comments/1.xml
  def update
    @book_comment = BookComment.find(params[:id])

    respond_to do |format|
      if @book_comment.update_attributes(params[:book_comment])
        format.html { redirect_to(@book_comment, :notice => 'Book comment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @book_comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /book_comments/1
  # DELETE /book_comments/1.xml
  def destroy
    @book_comment = BookComment.find(params[:id])
    @book_comment.destroy

    respond_to do |format|
      format.html { redirect_to(book_comments_url) }
      format.xml  { head :ok }
    end
  end
end
