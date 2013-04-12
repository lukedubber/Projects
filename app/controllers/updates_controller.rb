class UpdatesController < ApplicationController
  # GET /updates
  # GET /updates.json
  def index
    @project = Project.find(params[:project_id])
    @updates = @project.updates.all
    #@updates = Update.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @updates }
    end
  end

  # GET /updates/1
  # GET /updates/1.json
  def show
	
    #@project = Project.find(params[:project_id])
    #@updates = @project.updates.find(params[:id])
    @update = Update.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @update }
    end
  end

  # GET /updates/new
  # GET /updates/new.json
  def new
    @project = Project.find(params[:project_id])
    @update = Update.new
	
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @update }
    end
  end

  # GET /updates/1/edit
  def edit
    @project = Project.find(params[:project_id]) 
    @update = Update.find(params[:id])
  end

  # POST /updates
  # POST /updates.json
  def create
    @project = Project.find(params[:project_id])
    @update = @project.updates.new(params[:update])
    #redirect_to project_path(@project)
    respond_to do |format|
      if @update.save
        format.html { redirect_to project_update_path(:id => @update.id), notice: 'Update was successfully created.' }
        format.json { render json: @update, status: :created, location: @update }
      else
        format.html { render action: "new" }
        format.json { render json: @update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /updates/1
  # PUT /updates/1.json
  def update
    @update = Update.find(params[:id])

    respond_to do |format|
      if @update.update_attributes(params[:update])
        format.html { redirect_to project_update_path(:id => @update.id),  notice: 'Update was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /updates/1
  # DELETE /updates/1.json
  def destroy
    @update = Update.find(params[:id])
    @update.destroy

    respond_to do |format|
      format.html { redirect_to project_updates_path }
      format.json { head :no_content }
    end
  end
end
