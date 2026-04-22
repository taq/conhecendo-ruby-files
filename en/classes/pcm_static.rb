class ScrewBox
  def self.desc
    puts "This is a screw box"
  end

  private_class_method :desc
end

ScrewBox.desc
