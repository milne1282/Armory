class ProductInformationsController < ApplicationController
  # GET /product_informations
  # GET /product_informations.xml
  def index
    @product_informations = ProductInformation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_informations }
    end
  end

  # GET /product_informations/1
  # GET /product_informations/1.xml
  def show
    @product_information = ProductInformation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_information }
    end
  end

  # GET /product_informations/new
  # GET /product_informations/new.xml
  def new
    @product_information = ProductInformation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_information }
    end
  end

  # GET /product_informations/1/edit
  def edit
    @product_information = ProductInformation.find(params[:id])
  end

  # POST /product_informations
  # POST /product_informations.xml
  def create
    @product_information = ProductInformation.new(params[:product_information])

    respond_to do |format|
      if @product_information.save
        flash[:notice] = 'ProductInformation was successfully created.'
        format.html { redirect_to(@product_information) }
        format.xml  { render :xml => @product_information, :status => :created, :location => @product_information }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_informations/1
  # PUT /product_informations/1.xml
  def update
    @product_information = ProductInformation.find(params[:id])

    respond_to do |format|
      if @product_information.update_attributes(params[:product_information])
        flash[:notice] = 'ProductInformation was successfully updated.'
        format.html { redirect_to(@product_information) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_information.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_informations/1
  # DELETE /product_informations/1.xml
  def destroy
    @product_information = ProductInformation.find(params[:id])
    @product_information.destroy

    respond_to do |format|
      format.html { redirect_to(product_informations_url) }
      format.xml  { head :ok }
    end
  end
end
