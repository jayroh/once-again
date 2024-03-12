# frozen_string_literal: true

class ImageController < ApplicationController
  def show
    jpg_creator = JpgCreator.new(image_slug)
    jpg_creator.validate_slug!
    jpg_creator.create

    send_file jpg_creator.path,
      type: 'image/jpg',
      disposition: 'inline'
  end

  private

  def image_slug
    params[:id].dasherize.downcase
  end
end
