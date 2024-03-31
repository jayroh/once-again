# frozen_string_literal: true

class JpgCreator
  class Error < StandardError; end

  class Errors
    class InvalidSlug < Error
      def message
        'Invalid slug - only letters, numbers, dashes, and spaces allowed.'
      end
    end
  end

  SOURCE_IMAGE = 'app/assets/images/once-again.png'

  def initialize(image_slug)
    @image_slug = image_slug
  end

  def validate_slug!
    return if image_slug.match?(/\A[a-z0-9\- ]+\z/)

    raise Errors::InvalidSlug
  end

  def create
    return if File.exist?("tmp/images/#{image_slug}.jpg")

    image.write path
  end

  def path
    "tmp/images/#{image_slug}.jpg"
  end

  private

  attr_reader :image_slug

  def once_again_request
    image_slug.upcase.tr('-', ' ')
  end

  def image
    MiniMagick::Image.open(SOURCE_IMAGE).tap do |img|
      img.format 'jpg'
      img.combine_options do |i|
        i.gravity 'South'
        i.pointsize 46
        i.fill 'white'
        i.font '@app/assets/fonts/impact.ttf'
        i.draw "text 0,90 '#{once_again_request}'"
      end
    end
  end
end
