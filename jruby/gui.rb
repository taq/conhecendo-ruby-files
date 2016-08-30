# encoding: utf-8
require "java"

%w(JFrame JLabel JPanel JButton).each { |c| java_import("javax.swing.#{c}") }

class Alistener
  include java.awt.event.ActionListener
  def actionPerformed(event)
    puts "Botão clicado!"
  end
end
listener = Alistener.new

frame = JFrame.new
label = JLabel.new("Clique no botão!")
panel = JPanel.new

button = JButton.new("Clique em mim!")
button.addActionListener(listener)

panel.setLayout(java.awt.GridLayout.new(2,1))
panel.add(label)
panel.add(button)

frame.setTitle("Exemplo de JRuby")
frame.getContentPane().add(panel)
frame.pack
frame.defaultCloseOperation = JFrame::EXIT_ON_CLOSE
frame.setVisible(true)
