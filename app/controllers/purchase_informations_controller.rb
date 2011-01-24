class PurchaseInformationsController < ApplicationController
  # GET /purchase_informations
  # GET /purchase_informations.xml
  def index
    @purchase_informations = PurchaseInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @purchase_informations }
    end
  end

  # GET /purchase_informations/1
  # GET /purchase_informations/1.xml
  def show
    @purchase_information = PurchaseInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @purchase_information }
    end
  end

  # GET /purchase_informations/new
  # GET /purchase_informations/new.xml
  def new
    @purchase_information = PurchaseInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @purchase_information }
    end
  end

  # GET /purchase_informations/1/edit
  def edit
    @purchase_information = PurchaseInformation.find(params[:id])
  end

  # POST /purchase_informations
  # POST /purchase_informations.xml
  def create
    @purchase_information = PurchaseInformation.new(params[:purchase_information])

    respond_to do |format|
      if @purchase_information.save
        flash[:notice] = 'PurchaseInformation was successfully created.'
        format.html { redirect_to(@purchase_information) }
        format.xml  { render :xml => @purchase_information, :status => :created, :location => @purchase_information }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @purchase_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /purchase_informations/1
  # PUT /purchase_informations/1.xml
  def update
    @purchase_information = PurchaseInformation.find(params[:id])

    respond_to do |format|
      if @purchase_information.update_attributes(params[:purchase_information])
        flash[:notice] = 'PurchaseInformation was successfully updated.'
        format.html { redirect_to(@purchase_information) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @purchase_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /purchase_informations/1
  # DELETE /purchase_informations/1.xml
  def destroy
    @purchase_information = PurchaseInformation.find(params[:id])
    @purchase_information.destroy

    respond_to do |format|
      format.html { redirect_to(purchase_informations_url) }
      format.xml  { head :ok }
    end
  end
end
