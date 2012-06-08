module Tractor
  module NewslettersHelper
  
   def templated?
     @newsletter.template_id != nil
   end

   def send_version?
     params[:send_version] == '0'
   end

   def news_link(title, href)
     link_to title, href.to_s + @newsletter.tracking_code.to_s, :html => { :style => "border: 0;", :border => "0"}
  end

  def popular_link(title, href)
    content_tag(:span, ' > ', :style => "color: #ea3d2f; font-weight: bold; font-family: arial;" ).to_s + link_to(title, href.to_s + @newsletter.tracking_code.to_s, :style => "color: #3b659f; text-decoration: none")
  end

  def tracking_code
    tracking_code = "?utm_source=emarketing&utm_campaign=#{@newsletter.title.gsub(" ",'-').downcase}&utm_medium=email&utm_content=#{@newsletter.title.gsub(" ", "-")}"
  end

  ## courses now nav links... add extra style to helper if needed
  def email_nav_link_to(title, href, style = nil)
    style = "margin: 0 12px 0 12px; color: #666; text-decoration: none; font-size: 12px;font-family: sans-serif; #{style}"
    link_to(title, href.to_s + @newsletter.tracking_code.to_s, :style => style)
  end

  def cleaned_for_news(content, tracking)
    content = content.gsub(/\[(link)\|(.[^\|]*)\|(.[^\]]*)\]/, "<a href=\"\\2#{tracking_code}\" style=\"color: #DA3200\">\\3</a>")
    content = content.gsub(/\[(box_link)\|(.[^\|]*)\|(.[^\]]*)\]/, "<table style=\"background: #fff; margin: 0; padding: 0;\"><tr><td style=\"background: #fff; height: 8px; font-size: 6px;line-height: 6px;\">&nbsp;</td></tr><tr><td style=\"padding: 5px 12px 5px 12px;background:#ef3e30;\" valign=\"top\"><a href=\"\\2#{tracking_code}\" style=\"color: #fff; text-transform: uppercase; text-decoration: none; font-size: 13px; font-weight: bold;  background:#ef3e30; padding: 3px 10px;\">\\3 &raquo;</a></td></tr><tr><td style=\"background: #fff; height: 16px;font-size: 10px;\">&nbsp;</td></tr></table>")
    content = content.gsub(/\[(pop_link)\|(.[^\|]*)\|(.[^\]]*)\]/, "<span style=\"color: #ea3d2f; font-weight: bold; font-family: arial;\"> &gt; </span><a href=\"\\2#{tracking_code}\" style=\"color: #3b659f; text-decoration: none\">\\3</a>")
  end
     
  end
end
