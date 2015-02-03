module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | SupercarIndexBricks"
    end
  end
end
