require 'mini_magick'

image_path = 'app/assets/images/once-again.png'
output_path = 'tmp/images/test.jpg'
# asking = "I am once again asking for".upcase
question = "you to go to fucking bed".upcase

image = MiniMagick::Image.open(image_path)

draw_options = {
  pointsize: 46, # Font size
  fill: 'white', # Text color
  gravity: 'South', # Position at the bottom
  font: '@tmp/impact.ttf'
}

# image.combine_options do |i|
#   i.gravity draw_options[:gravity]
#   i.pointsize draw_options[:pointsize]
#   i.fill draw_options[:fill]
#   i.font draw_options[:font]
#   i.draw "text 0,150 '#{asking}'"
# end

image.combine_options do |i|
  i.gravity draw_options[:gravity]
  i.pointsize draw_options[:pointsize]
  i.fill draw_options[:fill]
  i.font draw_options[:font]
  i.draw "text 0,90 '#{question}'"
end

image.write(output_path)
