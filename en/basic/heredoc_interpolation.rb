extra = "after the extra content"
str = <<~END
       Creating a long String
       with line breaks and that
       will end just below,
       #{extra}.
END

puts str
