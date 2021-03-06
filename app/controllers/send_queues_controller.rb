require "date"
require "time"
class SendQueuesController < ApplicationController
	respond_to :json, :xml, :html
	# you can disable csrf protection on controller-by-controller basis:
	skip_before_filter :verify_authenticity_token
  before_action :set_send_queue, only: [:show, :edit, :update, :destroy]

	
  # GET /send_queues
  # GET /send_queues.json
  def index
		status = params[:status]
		beacon_id = params[:beacon_id]
		day = Date.today
		if status == nil
			if beacon_id != nil
				@send_queues = SendQueue.where("release_end_date >= ? AND release_start_date <= ? AND beacon_id = ?", day, day, beacon_id)
				@send_queues.each do |send_queue|
					send_queue.send_time = Time.now
					send_queue.image_url = request.host+"#{send_queue.image.url(:larger)}"
					send_queue.save
				end
				Rails.logger.info @send_queues.to_json
			else
				@send_queues = SendQueue.all
			end
		elsif status == "ok"
			@send_queues = SendQueue.where("release_end_date >= ?", day)
			@title = "正在发布的广告"
		elsif status == "no"
			@send_queues = SendQueue.where(release_start_date: nil)
			@title = "草稿中的广告"
		elsif status == "pass"
			@send_queues = SendQueue.where("release_end_date < ?", day)
			@title = "已经过期的广告"
		end
		respond_with @send_queues
  end

  # GET /send_queues/1
  # GET /send_queues/1.json
  def show
=begin	
		respond_to do |format|
			format.html {}
			format.png {}
		end
=end
		respond_with @send_queue
  end

  # GET /send_queues/new
  def new
    @send_queue = SendQueue.new
  end

  # GET /send_queues/1/edit
  def edit
  end

  # POST /send_queues
  # POST /send_queues.json
  def create
		my_id = params[:my_id]
		if my_id == nil
			@send_queue = SendQueue.new(send_queue_params)

			if params[:commit] == "草稿"
			  @send_queue.release_start_date = nil
				@send_queue.release_end_date = nil
			end
			respond_to do |format|
				if @send_queue.save
					format.html { redirect_to @send_queue, notice: 'Send queue was successfully created.' }
					format.json { render :show, status: :created, location: @send_queue}
				else
			    format.html { render :new }
					format.json { render json: @send_queue.errors, status: :unprocessable_entity }
				end
			end
		else
			@send_queue = SendQueue.new
			template = Template.find(my_id.to_i)		
			@send_queue.image = template.image
			@send_queue.start_date_top = template.start_date_top
			@send_queue.start_date_left = template.start_date_left
			@send_queue.start_date_width = template.start_date_width
			@send_queue.start_date_height = template.start_date_height
			@send_queue.start_date = params[:start_date]

			@send_queue.end_date_top = template.end_date_top
			@send_queue.end_date_left = template.end_date_left
			@send_queue.end_date_width = template.end_date_width
			@send_queue.end_date_height = template.end_date_height
			@send_queue.end_date = params[:end_date]

			@send_queue.coupon_top = template.coupon_top
			@send_queue.coupon_left = template.coupon_left
			@send_queue.coupon_width = template.coupon_width
			@send_queue.coupon_height = template.coupon_height
			@send_queue.coupon = params[:coupon].to_i

			@send_queue.date_font_size = template.date_font_size
			@send_queue.date_font_color = template.date_font_color
			@send_queue.coupon_font_color = template.coupon_font_color
			@send_queue.coupon_font_size = template.coupon_font_size
			
			@send_queue.msg_title = template.template_type
			@send_queue.msg_summary = params[:msg_summary]
	
			if params[:commit] == "发布"
				@send_queue.release_start_date = params[:release_start_date]			
				@send_queue.release_end_date = params[:release_end_date]			
			end

			@send_queue.beacon_id = params[:beacon_id]
			respond_to do |format|
      	if @send_queue.save
        	format.html { redirect_to @send_queue, notice: 'Send queue was suc
 cessfully created.' }
          format.json { render :show, status: :created, location: @send_queue}
        else
          format.html { render "/templates/#{template.id}" }
          format.json { render json: @send_queue.errors, status: :unprocessable_entity }
        end
    	end
		end

  end

  # PATCH/PUT /send_queues/1
  # PATCH/PUT /send_queues/1.json
  def update
    respond_to do |format|
      if @send_queue.update(send_queue_params)
        format.html { redirect_to "/send_queues?status=ok", notice: 'Send queue was successfully updated.' }
        format.json { render :"/send_queues?status=ok", status: :ok, location: @send_queue }
      else
				if @send_queue.release_start_date == nil
					format.html { render "/send_queues?status=no" }
					format.json { render json: @send_queue.errors, status: :unprocessable_entity }
				else
					if @send_queue.release_end_date >= Date.today
						format.html { render "/send_queues?status=ok" }
						format.json { render json: @send_queue.errors, status: :unprocessable_entity }
					else
						format.html { render "/send_queues?status=pass" }
						format.json { render json: @send_queue.errors, status: :unprocessable_entity }
					end
				end
      end
    end
  end

  # DELETE /send_queues/1
  # DELETE /send_queues/1.json
  def destroy
    @send_queue.destroy
    respond_to do |format|
      format.html { redirect_to send_queues_url, notice: 'Send queue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

	def drops
		@send_queue = SendQueue.find(params[:my_id])
		respond_to do |format|
			if @send_queue.update(:release_end_date => Date.today - 1)
				format.html {redirect_to "/send_queues?status=ok"}
			else
				format.html {reder "/send_queues?status=ok"}
			end
		end
	end
	

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_send_queue
      @send_queue = SendQueue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def send_queue_params
      params.require(:send_queue).permit(:image, :start_date_top, :start_date_left, :start_date_width, :start_date_height, :start_date, :end_date_top, :end_date_left, :end_date_width, :end_date_height, :end_date, :coupon_top, :coupon_left, :coupon_width, :coupon_height, :coupon, :date_font_size, :date_font_color, :coupon_font_size, :coupon_font_color, :release_start_date, :release_end_date, :send_time, :beacon_id, :msg_title, :msg_summary, :image_url)
    end

end
