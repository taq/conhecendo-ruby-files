# encoding: utf-8
require "java"

%w(JFrame JLabel JPanel JButton).each { |it| java_import("javax.swing.#{it}") }

class Alistener
  include java.awt.event.ActionListener
  def actionPerformed(event)
    puts "Button clicked!"
  end
end
listener = Alistener.new

frame = JFrame.new
label = JLabel.new("Click on button!")
panel = JPanel.new

button = JButton.new("Click on me!")
button.addActionListener(listener)

panel.setLayout(java.awt.GridLayout.new(2,1))
panel.add(label)
panel.add(button)

frame.setTitle("JRuby example")
frame.getContentPane().add(panel)
frame.pack
frame.defaultCloseOperation = JFrame::EXIT_ON_CLOSE
frame.setVisible(true)
