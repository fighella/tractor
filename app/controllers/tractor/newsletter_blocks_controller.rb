module Tractor
  class NewsletterBlocksController < ApplicationController
    # GET /newsletter_blocks
    # GET /newsletter_blocks.json
    def index
      @newsletter_blocks = NewsletterBlock.all.order(sort_order ASC)
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @newsletter_blocks }
      end
    end
  
    # GET /newsletter_blocks/1
    # GET /newsletter_blocks/1.json
    def show
      @newsletter_block = NewsletterBlock.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @newsletter_block }
      end
    end
  
    # GET /newsletter_blocks/new
    # GET /newsletter_blocks/new.json
    def new
      @newsletter_block = NewsletterBlock.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @newsletter_block }
      end
    end
  
    # GET /newsletter_blocks/1/edit
    def edit
      @newsletter_block = NewsletterBlock.find(params[:id])
    end
  
    # POST /newsletter_blocks
    # POST /newsletter_blocks.json
    def create
      @newsletter_block = NewsletterBlock.new(params[:newsletter_block])
  
      respond_to do |format|
        if @newsletter_block.save
          format.html { redirect_to @newsletter_block, notice: 'Newsletter block was successfully created.' }
          format.json { render json: @newsletter_block, status: :created, location: @newsletter_block }
        else
          format.html { render action: "new" }
          format.json { render json: @newsletter_block.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /newsletter_blocks/1
    # PUT /newsletter_blocks/1.json
    def update
      @newsletter_block = NewsletterBlock.find(params[:id])
     
      respond_to do |format|
        
        if @newsletter_block.update_attributes(params[:newsletter_block])
          format.html { redirect_to @newsletter_block, notice: 'Newsletter block was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @newsletter_block.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /newsletter_blocks/1
    # DELETE /newsletter_blocks/1.json
    def destroy
      @newsletter_block = NewsletterBlock.find(params[:id])
      @newsletter_block.destroy
  
      respond_to do |format|
        format.html { redirect_to newsletter_blocks_url }
        format.json { head :no_content }
      end
    end

    def kill_block_image
      @block = NewsletterBlock.find(params[:id])
      @block_number = params[:block_number]
      respond_to do |format|
        format.js
      end
    end

  end
end
