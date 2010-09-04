class ConveniosController < ApplicationController
  # GET /convenios
  # GET /convenios.xml
  def index
    @convenios = Convenio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @convenios }
    end
  end

  # GET /convenios/1
  # GET /convenios/1.xml
  def show
    @convenio = Convenio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @convenio }
    end
  end

  # GET /convenios/new
  # GET /convenios/new.xml
  def new
    @convenio = Convenio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @convenio }
    end
  end

  # GET /convenios/1/edit
  def edit
    @convenio = Convenio.find(params[:id])
  end

  # POST /convenios
  # POST /convenios.xml
  def create
    @convenio = Convenio.new(params[:convenio])

    respond_to do |format|
      if @convenio.save
        format.html { redirect_to(@convenio, :notice => 'Convenio was successfully created.') }
        format.xml  { render :xml => @convenio, :status => :created, :location => @convenio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @convenio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /convenios/1
  # PUT /convenios/1.xml
  def update
    @convenio = Convenio.find(params[:id])

    respond_to do |format|
      if @convenio.update_attributes(params[:convenio])
        format.html { redirect_to(@convenio, :notice => 'Convenio was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @convenio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /convenios/1
  # DELETE /convenios/1.xml
  def destroy
    @convenio = Convenio.find(params[:id])
    @convenio.destroy

    respond_to do |format|
      format.html { redirect_to(convenios_url) }
      format.xml  { head :ok }
    end
  end
end
