module ApplicationHelper
  def title
      base_title='Rails tuts'
      if @title.nil? then return base_title end
      return   "#{base_title} | #{h(@title)}"
      
  end

  def logo
     image_tag("bomb.png", :alt => "Sample App", :class => "round")
  end
  
end
