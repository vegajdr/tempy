# frozen_string_literal: true

class Session < ApplicationRecord
  has_many :requests
end
