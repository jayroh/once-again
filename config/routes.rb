# frozen_string_literal: true

Rails.application.routes.draw do
  get '/:id(.:format)', to: 'image#show', format: :jpg
end
