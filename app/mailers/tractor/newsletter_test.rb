module Tractor
  class NewsletterTest < ActionMailer::Base
    default from: "from@example.com"

    def test_email(content, send_to='fighella@gmail.com')
      @content = content
      mail(to: send_to,
           subject: @content.title)

    end

    add_template_helper(NewslettersHelper)
    add_template_helper(ApplicationHelper)


    def preview(staff)
      @staff = staff 
      @is_email = '4' 
      attachments.inline['courseslogo.png'] = File.read("#{Rails.root}/public/images/courseslogo.png")
      attachments.inline['logos.png'] = File.read("#{Rails.root}/public/images/logos.png")
      mail(:to => "jonny@coursesnow.com")
    end 

  end
end
