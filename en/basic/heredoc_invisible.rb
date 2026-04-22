extra = "after the extra content"
str = <<~_
       Creating a long string
       with line breaks and
       it will end just below,
       #{extra}.
_

puts str
