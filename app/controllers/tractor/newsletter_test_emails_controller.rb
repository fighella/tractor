module Tractor
  class NewsletterTestEmailsController < ApplicationController
    # GET /newsletter_test_emails
    # GET /newsletter_test_emails.json
    def index
      @newsletter_test_emails = NewsletterTestEmail.all
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @newsletter_test_emails }
      end
    end
  
    # GET /newsletter_test_emails/1
    # GET /newsletter_test_emails/1.json
    def show
      @newsletter_test_email = NewsletterTestEmail.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @newsletter_test_email }
      end
    end
  
    # GET /newsletter_test_emails/new
    # GET /newsletter_test_emails/new.json
    def new
      @newsletter_test_email = NewsletterTestEmail.new
  
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @newsletter_test_email }
      end
    end
  
    # GET /newsletter_test_emails/1/edit
    def edit
      @newsletter_test_email = NewsletterTestEmail.find(params[:id])
    end
  
    # POST /newsletter_test_emails
    # POST /newsletter_test_emails.json
    def create
      @newsletter_test_email = NewsletterTestEmail.new(params[:newsletter_test_email])
  
      respond_to do |format|
        if @newsletter_test_email.save
          format.html { redirect_to @newsletter_test_email, notice: 'Newsletter test email was successfully created.' }
          format.json { render json: @newsletter_test_email, status: :created, location: @newsletter_test_email }
        else
          format.html { render action: "new" }
          format.json { render json: @newsletter_test_email.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /newsletter_test_emails/1
    # PUT /newsletter_test_emails/1.json
    def update
      @newsletter_test_email = NewsletterTestEmail.find(params[:id])
  
      respond_to do |format|
        if @newsletter_test_email.update_attributes(params[:newsletter_test_email])
          format.html { redirect_to @newsletter_test_email, notice: 'Newsletter test email was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @newsletter_test_email.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /newsletter_test_emails/1
    # DELETE /newsletter_test_emails/1.json
    def destroy
      @newsletter_test_email = NewsletterTestEmail.find(params[:id])
      @newsletter_test_email.destroy
  
      respond_to do |format|
        format.html { redirect_to newsletter_test_emails_url }
        format.json { head :no_content }
      end
    end
  end
end
