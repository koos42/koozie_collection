class KoozyTagsController < ApplicationController
  # GET /koozy_tags
  # GET /koozy_tags.xml
  def index
    @koozy_tags = KoozyTag.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @koozy_tags }
    end
  end

  # GET /koozy_tags/1
  # GET /koozy_tags/1.xml
  def show
    @koozy_tag = KoozyTag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @koozy_tag }
    end
  end

  # GET /koozy_tags/new
  # GET /koozy_tags/new.xml
  def new
    @koozy_tag = KoozyTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @koozy_tag }
    end
  end

  # GET /koozy_tags/1/edit
  def edit
    @koozy_tag = KoozyTag.find(params[:id])
  end

  # POST /koozy_tags
  # POST /koozy_tags.xml
  def create
    @koozy_tag = KoozyTag.new(params[:koozy_tag])

    respond_to do |format|
      if @koozy_tag.save
        format.html { redirect_to(@koozy_tag, :notice => 'Koozy tag was successfully created.') }
        format.xml  { render :xml => @koozy_tag, :status => :created, :location => @koozy_tag }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @koozy_tag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /koozy_tags/1
  # PUT /koozy_tags/1.xml
  def update
    @koozy_tag = KoozyTag.find(params[:id])

    respond_to do |format|
      if @koozy_tag.update_attributes(params[:koozy_tag])
        format.html { redirect_to(@koozy_tag, :notice => 'Koozy tag was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @koozy_tag.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /koozy_tags/1
  # DELETE /koozy_tags/1.xml
  def destroy
    @koozy_tag = KoozyTag.find(params[:id])
    @koozy_tag.destroy

    respond_to do |format|
      format.html { redirect_to(koozy_tags_url) }
      format.xml  { head :ok }
    end
  end
end
