class NovelsController < ApplicationController
  # GET /novels
  # GET /novels.xml
  def index
    @novels = Novel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @novels }
    end
  end

  # GET /novels/1
  # GET /novels/1.xml
  def show
    @novel = Novel.find(params[:id])

    @media = Novel.find(params[:id])
    @assoc = Novel.reflect_on_all_associations
    @TabAssoc=[]
    @assoc.each do |a|
      @TabAssoc<<a.klass;
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @novel }
    end
  end

  # GET /novels/new
  # GET /novels/new.xml
  def new
    @novel = Novel.new
    @item=@novel

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @novel }
    end
  end

  # GET /novels/1/edit
  def edit
    @novel = Novel.find(params[:id])
  end

  # POST /novels
  # POST /novels.xml
  def create
    @novel = Novel.new(params[:novel])

    respond_to do |format|
      if @novel.save
        format.html { redirect_to(@novel, :notice => 'Novel was successfully created.') }
        format.xml  { render :xml => @novel, :status => :created, :location => @novel }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @novel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /novels/1
  # PUT /novels/1.xml
  def update
    @novel = Novel.find(params[:id])

    respond_to do |format|
      if @novel.update_attributes(params[:novel])
        format.html { redirect_to(@novel, :notice => 'Novel was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @novel.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /novels/1
  # DELETE /novels/1.xml
  def destroy
    @novel = Novel.find(params[:id])
    @novel.destroy

    respond_to do |format|
      format.html { redirect_to(novels_url) }
      format.xml  { head :ok }
    end
  end
  
  def delete_all
     Novel.destroy_all
     @novels = Novel.all

     render :index
   end
end
