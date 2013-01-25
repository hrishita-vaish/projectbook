class EmailsController < ApplicationController
  # GET /emails
  # GET /emails.json
  #before_filter :find_project
  #before_filter :find_project, :only => [:index, :new]
  def index
 # to fetch only the project related emails
       if params[:project_id]
          @project = Project.find(params[:project_id])
          @emails = @project.emails
      else
      @emails = Email.all
     end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @emails }
    end
  end
  # def all_email_index
  #    @emails = Email.all
  #   # @projects = Project.all
  #   respond_to do |format|
  #     format.html
  #     format.json { render json: @emails }
  #   end
  # end

  # GET /emails/1
  # GET /emails/1.json
  def show
    @email = Email.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @email }
    end
  end

  # GET /emails/new
  # GET /emails/new.json
  def new
    @email = Email.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @email }
    end
  end

  # GET /emails/1/edit
  def edit
    @email = Email.find(params[:id])
  end

  # POST /emails
  # POST /emails.json
  def create
    ####
     #@project = Project.find(params[:project_id])
    #@email = @project.emails.create(params[:email])
    ##redirect_to post_path(@post)
    ###
    @email = Email.new(params[:email])

    respond_to do |format|
      if @email.save
        if @email.project
          format.html { redirect_to project_email_path(@email.project, @email), notice: 'Email was successfully created.' }
        else
        format.html { redirect_to @email, notice: 'Email was successfully created.' }
        end
        format.json { render json: @email, status: :created, location: @email }
      else
        format.html { render action: "new" }
        format.json { render json: @email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /emails/1
  # PUT /emails/1.json
  def update
    @email = Email.find(params[:id])

    respond_to do |format|
      if @email.update_attributes(params[:email])
        format.html { redirect_to @email, notice: 'Email was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emails/1
  # DELETE /emails/1.json
  def destroy
    @email = Email.find(params[:id])
    @email.destroy

    respond_to do |format|
      format.html { redirect_to emails_url }
      format.json { head :no_content }
    end
  end
  def find_project
    @project = Project.find(params[:project_id])
  end
end
