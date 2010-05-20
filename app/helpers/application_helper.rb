# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def title
      base_title='Rails tuts'
      if @title.nil? then
        return base_title
      else
        "#{base_title} | #{h(@title)}"
      end
  end

  def logo
     image_tag("rails.png", :alt => "Sample App", :class => "round")
  end
  
end
