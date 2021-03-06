module ApplicationHelper
  def title
      base_title="The GNUX's Home"
      if @title.nil? then return base_title end
      return   "#{base_title} | #{h(@title)}"
  end

  def logo
     image_tag("bomb.png", :alt => "Sample App", :class => "round")
  end
  
end
