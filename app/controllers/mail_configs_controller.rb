class MailConfigsController < ApplicationController
  before_action :set_mail_config, only: [:show, :edit, :update, :destroy]

  # GET /mail_configs
  # GET /mail_configs.json
  def index
    @mail_configs = MailConfig.all
  end

  # GET /mail_configs/1
  # GET /mail_configs/1.json
  def show
  end

  # GET /mail_configs/new
  def new
    @mail_config = MailConfig.new
  end

  # GET /mail_configs/1/edit
  def edit
  end

  # POST /mail_configs
  # POST /mail_configs.json
  def create
    @mail_config = MailConfig.new(mail_config_params)

    respond_to do |format|
      if @mail_config.save
        format.html { redirect_to @mail_config, notice: 'Mail config was successfully created.' }
        format.json { render :show, status: :created, location: @mail_config }
      else
        format.html { render :new }
        format.json { render json: @mail_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mail_configs/1
  # PATCH/PUT /mail_configs/1.json
  def update
    respond_to do |format|
      if @mail_config.update(mail_config_params)
        format.html { redirect_to @mail_config, notice: 'Mail config was successfully updated.' }
        format.json { render :show, status: :ok, location: @mail_config }
      else
        format.html { render :edit }
        format.json { render json: @mail_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mail_configs/1
  # DELETE /mail_configs/1.json
  def destroy
    @mail_config.destroy
    respond_to do |format|
      format.html { redirect_to mail_configs_url, notice: 'Mail config was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mail_config
      @mail_config = MailConfig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mail_config_params
      params.require(:mail_config).permit(:criterium, :template_name)
    end
end
