class PatternsController < ApplicationController
  protect_from_forgery :except => :index

  # you can disable csrf protection on controller-by-controller basis:
  skip_before_filter :verify_authenticity_token
  before_action :set_pattern, only: [:show, :edit, :update, :destroy]

  # GET /patterns
  # GET /patterns.json
  def index
    @patterns = Pattern.all
  end

  # GET /patterns/1
  # GET /patterns/1.json
  def show
  end

  # GET /patterns/new
  def new
    @pattern = Pattern.new
  end

  # GET /patterns/1/edit
  def edit
  end

  # POST /patterns
  # POST /patterns.json
  def create
    @pattern = Pattern.new(pattern_params)

    respond_to do |format|
      if @pattern.save
        format.html { redirect_to @pattern, notice: 'Pattern was successfully created.' }
        format.json { render :show, status: :created, location: @pattern }
      else
        format.html { render :new }
        format.json { render json: @pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patterns/1
  # PATCH/PUT /patterns/1.json
  def update
    respond_to do |format|
      if @pattern.update(pattern_params)
        format.html { redirect_to @pattern, notice: 'Pattern was successfully updated.' }
        format.json { render :show, status: :ok, location: @pattern }
      else
        format.html { render :edit }
        format.json { render json: @pattern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patterns/1
  # DELETE /patterns/1.json
  def destroy
    @pattern.destroy
    respond_to do |format|
      format.html { redirect_to patterns_url, notice: 'Pattern was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def login
  end
  def check_login
    user_name = params[:user_name]
    password = params[:password]
    if password.empty? || user_name.empty?
      redirect_to(:action=>"login", :notice=>"用户名或者密码不能为空")
    elsif password == "123456" && user_name == "test123"
      redirect_to(:action=>"main_frame", :user=>"#{user_name}")
    else
      redirect_to(:action=>"login", :notice=>"用户名或者密码错误")
    end
  
  end

  def main_frame
  end
  def main_title

  end

  def main_right
  
  end

  def main_left
  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pattern
      @pattern = Pattern.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pattern_params
      params.require(:pattern).permit(:image, :activities_start_date_top, :activities_start_date_left, :activities_start_date_width, :activities_start_date_height, :activities_end_date_top, :activities_end_date_left, :activities_end_date_width, :activities_end_date_height, :coupon_top, :coupon_left, :coupon_width, :coupon_height)
    end
end
