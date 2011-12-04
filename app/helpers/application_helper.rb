module ApplicationHelper
  def title
    base_title="Ruby on Rails Tutorial Sample App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@tite} "
    end
  end
end
