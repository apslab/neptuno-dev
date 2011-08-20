class FunctionalUnitsController < ApplicationController
  # GET /functional_units
  # GET /functional_units.xml
  def index
    @functional_units = FunctionalUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @functional_units }
    end
  end

  # GET /functional_units/1
  # GET /functional_units/1.xml
  def show
    @functional_unit = FunctionalUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @functional_unit }
    end
  end

  # GET /functional_units/new
  # GET /functional_units/new.xml
  def new
    @functional_unit = FunctionalUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @functional_unit }
    end
  end

  # GET /functional_units/1/edit
  def edit
    @functional_unit = FunctionalUnit.find(params[:id])
  end

  # POST /functional_units
  # POST /functional_units.xml
  def create
    @functional_unit = FunctionalUnit.new(params[:functional_unit])

    respond_to do |format|
      if @functional_unit.save
        format.html { redirect_to(@functional_unit, :notice => 'Functional unit was successfully created.') }
        format.xml  { render :xml => @functional_unit, :status => :created, :location => @functional_unit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @functional_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /functional_units/1
  # PUT /functional_units/1.xml
  def update
    @functional_unit = FunctionalUnit.find(params[:id])

    respond_to do |format|
      if @functional_unit.update_attributes(params[:functional_unit])
        format.html { redirect_to(@functional_unit, :notice => 'Functional unit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @functional_unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /functional_units/1
  # DELETE /functional_units/1.xml
  def destroy
    @functional_unit = FunctionalUnit.find(params[:id])
    @functional_unit.destroy

    respond_to do |format|
      format.html { redirect_to(functional_units_url) }
      format.xml  { head :ok }
    end
  end
end
