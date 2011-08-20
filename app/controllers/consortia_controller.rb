class ConsortiaController < ApplicationController
  # GET /consortia
  # GET /consortia.xml
  def index
    @consortia = Consortium.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @consortia }
    end
  end

  # GET /consortia/1
  # GET /consortia/1.xml
  def show
    @consortium = Consortium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @consortium }
    end
  end

  # GET /consortia/new
  # GET /consortia/new.xml
  def new
    @consortium = Consortium.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @consortium }
    end
  end

  # GET /consortia/1/edit
  def edit
    @consortium = Consortium.find(params[:id])
  end

  # POST /consortia
  # POST /consortia.xml
  def create
    @consortium = Consortium.new(params[:consortium])

    respond_to do |format|
      if @consortium.save
        format.html { redirect_to(@consortium, :notice => 'Consortium was successfully created.') }
        format.xml  { render :xml => @consortium, :status => :created, :location => @consortium }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @consortium.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /consortia/1
  # PUT /consortia/1.xml
  def update
    @consortium = Consortium.find(params[:id])

    respond_to do |format|
      if @consortium.update_attributes(params[:consortium])
        format.html { redirect_to(@consortium, :notice => 'Consortium was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @consortium.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /consortia/1
  # DELETE /consortia/1.xml
  def destroy
    @consortium = Consortium.find(params[:id])
    @consortium.destroy

    respond_to do |format|
      format.html { redirect_to(consortia_url) }
      format.xml  { head :ok }
    end
  end
end
