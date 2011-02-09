class PocketDictionariesController < ApplicationController
  # GET /pocket_dictionaries
  # GET /pocket_dictionaries.xml
  def index
    @pocket_dictionaries = PocketDictionary.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pocket_dictionaries }
    end
  end

  # GET /pocket_dictionaries/1
  # GET /pocket_dictionaries/1.xml
  def show
    @pocket_dictionary = PocketDictionary.find(params[:id])
    @media = PocketDictionary.find(params[:id])
    @assoc = PocketDictionary.reflect_on_all_associations
    @TabAssoc=[]
    @assoc.each do |a|
      @TabAssoc<<a.klass;
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pocket_dictionary }
    end
  end

  # GET /pocket_dictionaries/new
  # GET /pocket_dictionaries/new.xml
  def new
    @pocket_dictionary = PocketDictionary.new
    @item=@pocket_dictionary

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pocket_dictionary }
    end
  end

  # GET /pocket_dictionaries/1/edit
  def edit
    @pocket_dictionary = PocketDictionary.find(params[:id])
  end

  # POST /pocket_dictionaries
  # POST /pocket_dictionaries.xml
  def create
    @pocket_dictionary = PocketDictionary.new(params[:pocket_dictionary])

    respond_to do |format|
      if @pocket_dictionary.save
        format.html { redirect_to(@pocket_dictionary, :notice => 'Pocket dictionary was successfully created.') }
        format.xml  { render :xml => @pocket_dictionary, :status => :created, :location => @pocket_dictionary }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pocket_dictionary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pocket_dictionaries/1
  # PUT /pocket_dictionaries/1.xml
  def update
    @pocket_dictionary = PocketDictionary.find(params[:id])

    respond_to do |format|
      if @pocket_dictionary.update_attributes(params[:pocket_dictionary])
        format.html { redirect_to(@pocket_dictionary, :notice => 'Pocket dictionary was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pocket_dictionary.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pocket_dictionaries/1
  # DELETE /pocket_dictionaries/1.xml
  def destroy
    @pocket_dictionary = PocketDictionary.find(params[:id])
    @pocket_dictionary.destroy

    respond_to do |format|
      format.html { redirect_to(pocket_dictionaries_url) }
      format.xml  { head :ok }
    end
  end
  
  def delete_all
     PocketDictionary.destroy_all
     @pocket_dictionaries = PocketDictionary.all

     render :index
   end
end
