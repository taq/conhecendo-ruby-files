extra = "after the extra content"
str = <<~FIM
       Creating a long String
       with line breaks and that
       will end just below,
       #{extra}.
FIM

puts str
