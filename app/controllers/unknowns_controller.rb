class UnknownsController < ApplicationController
  # GET /unknowns
  # GET /unknowns.xml
  def index
    @unknowns = Unknown.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @unknowns }
    end
  end

  # GET /unknowns/1
  # GET /unknowns/1.xml
  def show
    @unknown = Unknown.find(params[:id])
    @media = Unknown.find(params[:id])
    @assoc = Unknown.reflect_on_all_associations
    @TabAssoc=[]
    @assoc.each do |a|
      @TabAssoc<<a.klass;
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unknown }
    end
  end

  # GET /unknowns/new
  # GET /unknowns/new.xml
  def new
    @unknown = Unknown.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @unknown }
    end
  end

  # GET /unknowns/1/edit
  def edit
    @unknown = Unknown.find(params[:id])
  end

  # POST /unknowns
  # POST /unknowns.xml
  def create
    @unknown = Unknown.new(params[:unknown])

    respond_to do |format|
      if @unknown.save
        format.html { redirect_to(@unknown, :notice => 'Unknown was successfully created.') }
        format.xml  { render :xml => @unknown, :status => :created, :location => @unknown }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @unknown.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /unknowns/1
  # PUT /unknowns/1.xml
  def update

    
    @unknown = Unknown.find(params[:id])
    
    @passage=params[:id]
    @passage1=@unknown.id
    @params=params[:unknown]
    @nr=@unknown.new_record?
    
    respond_to do |format|
      if @unknown.update_attributes(params[:unknown])     
        format.html { redirect_to(@unknown, :notice => "Unknown was successfully updated. id=#{@passage} id1=#{@passage1}") }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @unknown.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /unknowns/1
  # DELETE /unknowns/1.xml
  def destroy
    @unknown = Unknown.find(params[:id])
    @unknown.destroy

    respond_to do |format|
      format.html { redirect_to(unknowns_url) }
      format.xml  { head :ok }
    end
  
  end
  
  def delete_all
     Unknown.destroy_all
     @unknowns = Unknown.all

     render :index
  end
  
end
