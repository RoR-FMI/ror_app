module ApplicationHelper
# Returns the full title of a page an if there is not one defined has a default title.
  def full_title(page_title)
    default_title = "FMI-RoRApp"
    if page_title.empty?
      default_title
    else
      "#{default_title} | #{page_title}"
    end
  end
end
