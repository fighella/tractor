module Tractor
  class SendEventsController < ApplicationController
    # GET /send_events
    # GET /send_events.json
    def index
      @send_events = SendEvent.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @send_events }
      end
    end
  
    # GET /send_events/1
    # GET /send_events/1.json
    def show
      @send_event = SendEvent.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @send_event }
      end
    end
  
    # GET /send_events/new
    # GET /send_events/new.json
    def new
      @send_event = SendEvent.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @send_event }
      end
    end
  
    # GET /send_events/1/edit
    def edit
      @send_event = SendEvent.find(params[:id])
    end
  
    # POST /send_events
    # POST /send_events.json
    def create
      @send_event = SendEvent.new(params[:send_event])
  
      respond_to do |format|
        if @send_event.save
          format.html { redirect_to @send_event, notice: 'Send event was successfully created.' }
          format.json { render json: @send_event, status: :created, location: @send_event }
        else
          format.html { render action: "new" }
          format.json { render json: @send_event.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /send_events/1
    # PUT /send_events/1.json
    def update
      @send_event = SendEvent.find(params[:id])
  
      respond_to do |format|
        if @send_event.update_attributes(params[:send_event])
          format.html { redirect_to @send_event, notice: 'Send event was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @send_event.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /send_events/1
    # DELETE /send_events/1.json
    def destroy
      @send_event = SendEvent.find(params[:id])
      @send_event.destroy
  
      respond_to do |format|
        format.html { redirect_to send_events_url }
        format.json { head :no_content }
      end
    end
  end
end
