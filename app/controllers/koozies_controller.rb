class KooziesController < ApplicationController
  # GET /koozies
  # GET /koozies.xml
  def index
    @koozies = Koozy.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @koozies }
    end
  end

  # GET /koozies/1
  # GET /koozies/1.xml
  def show
    @koozy = Koozy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @koozy }
    end
  end

  # GET /koozies/new
  # GET /koozies/new.xml
  def new
    @koozy = Koozy.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @koozy }
    end
  end

  # GET /koozies/1/edit
  def edit
    @koozy = Koozy.find(params[:id])
  end

  # POST /koozies
  # POST /koozies.xml
  def create
    params[:koozy][:style] = Style.find(params[:koozy][:style].to_i)
    @koozy = Koozy.new(params[:koozy])

    respond_to do |format|
      if @koozy.save
        format.html { redirect_to(@koozy, :notice => 'Koozy was successfully created.') }
        format.xml  { render :xml => @koozy, :status => :created, :location => @koozy }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @koozy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /koozies/1
  # PUT /koozies/1.xml
  def update
    @koozy = Koozy.find(params[:id])

    respond_to do |format|
      if @koozy.update_attributes(params[:koozy])
        format.html { redirect_to(@koozy, :notice => 'Koozy was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @koozy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /koozies/1
  # DELETE /koozies/1.xml
  def destroy
    @koozy = Koozy.find(params[:id])
    @koozy.destroy

    respond_to do |format|
      format.html { redirect_to(koozies_url) }
      format.xml  { head :ok }
    end
  end
end
