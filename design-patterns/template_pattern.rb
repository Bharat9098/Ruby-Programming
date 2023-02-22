# In template pattern, a class provides a base template,
# this base template is used by other classes for their intended purpose.

class News
  attr_accessor :title, :content

  def initialize title, content
    @title = title
    @content = content
  end

  def header
    p "Not Implemented"
  end
  
  def body
    raise "Not Implemented"
  end
  
  def footer
    raise "Not Implemented"
  end

  def print
    puts header
    puts body
    puts footer
  end
end

class PlainText < News
  def header
    """
      *************************
      *
      TODAYS NEWS
      *
      *************************
    """
  end
  def footer
    """
      *************************
      *
      GOODBYE!
      *
      *************************
    """
  end
  
  def body
    """
      #{title}
      =========================
      #{content}
    """
  end

   def print
    puts header
    puts body
    puts footer
  end
end

PlainText.new(
"Good Morning!",
"Nice weather today"
).print