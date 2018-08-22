class ReadingRecordsController < ApplicationController
  before_action :set_reading_record, only: [:show, :edit, :update, :destroy]

  # GET /reading_records
  # GET /reading_records.json
  def index
    @reading_records = ReadingRecord.all
  end

  # GET /reading_records/1
  # GET /reading_records/1.json
  def show
  end

  # GET /reading_records/new
  def new
    @reading_record = ReadingRecord.new
  end

  # GET /reading_records/1/edit
  def edit
  end

  # POST /reading_records
  # POST /reading_records.json
  def create
    @reading_record = ReadingRecord.new(reading_record_params)

    respond_to do |format|
      if @reading_record.save
        format.html { redirect_to @reading_record, notice: 'Reading record was successfully created.' }
        format.json { render :show, status: :created, location: @reading_record }
      else
        format.html { render :new }
        format.json { render json: @reading_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reading_records/1
  # PATCH/PUT /reading_records/1.json
  def update
    respond_to do |format|
      if @reading_record.update(reading_record_params)
        format.html { redirect_to @reading_record, notice: 'Reading record was successfully updated.' }
        format.json { render :show, status: :ok, location: @reading_record }
      else
        format.html { render :edit }
        format.json { render json: @reading_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reading_records/1
  # DELETE /reading_records/1.json
  def destroy
    @reading_record.destroy
    respond_to do |format|
      format.html { redirect_to reading_records_url, notice: 'Reading record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reading_record
      @reading_record = ReadingRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reading_record_params
      params[:reading_record][:user_id] = current_user.id
      params.require(:reading_record).permit(:title, :start_time, :end_time, :content, :user_id)
    end
end
