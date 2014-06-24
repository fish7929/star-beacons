class TemplatesController < ApplicationController
	respond_to :json, :xml, :html
	#protect_from_forgery :except => :index

	# you can disable csrf protection on controller-by-controller basis:
	skip_before_filter :verify_authenticity_token
  before_action :set_template, only: [:show, :edit, :update, :destroy]

  # GET /templates
  # GET /templates.json
  def index
    @templates = Template.all.limit(6)
		respond_with @templates
  end

  # GET /templates/1
  # GET /templates/1.json
  def show
		respond_with @template
  end

  # GET /templates/new
  def new
    @template = Template.new
		respond_with @template
  end

  # GET /templates/1/edit
  def edit
  end

  # POST /templates
  # POST /templates.json
  def create
    @template = Template.new(template_params)

    respond_to do |format|
      if @template.save
        format.html { redirect_to @template, notice: 'Template was successfully created.' }
        format.json { render :show, status: :created, location: @template }
      else
        format.html { render :new }
        format.json { render json: @template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /templates/1
  # PATCH/PUT /templates/1.json
  def update
    respond_to do |format|
      if @template.update(template_params)
        format.html { redirect_to @template, notice: 'Template was successfully updated.' }
        format.json { render :show, status: :ok, location: @template }
      else
        format.html { render :edit }
        format.json { render json: @template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /templates/1
  # DELETE /templates/1.json
  def destroy
    @template.destroy
    respond_to do |format|
      format.html { redirect_to templates_url, notice: 'Template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
	def login

  end
	def frame_welcome

	end
	def beacons_service

	end
	
	def check_login
    user_name = params[:user_name]
    password = params[:password]
    if password.empty? || user_name.empty?
      redirect_to(:action=>"login", :notice=>"用户名或者密码不能为空")
    elsif password == "123456" && user_name == "test123"
      redirect_to(:action=>"beacons_service", :user=>"#{user_name}")
    else
      redirect_to(:action=>"login", :notice=>"用户名或者密码错误")
    end
  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template
      @template = Template.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def template_params
      params.require(:template).permit(:image, :start_date_top, :start_date_left, :start_date_width, :start_date_height, :end_date_top, :end_date_left, :end_date_width, :end_date_height, :coupon_top, :coupon_left, :coupon_width, :coupon_height, :date_font_size, :date_font_color, :coupon_font_size, :coupon_font_color, :template_type)
    end
end
