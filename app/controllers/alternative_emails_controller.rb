class AlternativeEmailsController < ApplicationController
  before_action :set_alternative_email, only: [:show, :edit, :update, :destroy]

  # GET /alternative_emails
  # GET /alternative_emails.json
  def index
    @alternative_emails = AlternativeEmail.all
  end

  # GET /alternative_emails/1
  # GET /alternative_emails/1.json
  def show
  end

  # GET /alternative_emails/new
  def new
    @alternative_email = AlternativeEmail.new
  end

  # GET /alternative_emails/1/edit
  def edit
  end

  # POST /alternative_emails
  # POST /alternative_emails.json
  def create
    @alternative_email = AlternativeEmail.new(alternative_email_params)

    respond_to do |format|
      if @alternative_email.save
        format.html { redirect_to @alternative_email, notice: 'Alternative email was successfully created.' }
        format.json { render :show, status: :created, location: @alternative_email }
      else
        format.html { render :new }
        format.json { render json: @alternative_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alternative_emails/1
  # PATCH/PUT /alternative_emails/1.json
  def update
    respond_to do |format|
      if @alternative_email.update(alternative_email_params)
        format.html { redirect_to @alternative_email, notice: 'Alternative email was successfully updated.' }
        format.json { render :show, status: :ok, location: @alternative_email }
      else
        format.html { render :edit }
        format.json { render json: @alternative_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alternative_emails/1
  # DELETE /alternative_emails/1.json
  def destroy
    @alternative_email.destroy
    respond_to do |format|
      format.html { redirect_to alternative_emails_url, notice: 'Alternative email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alternative_email
      @alternative_email = AlternativeEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alternative_email_params
      params.require(:alternative_email).permit(:user_id, :email)
    end
end
