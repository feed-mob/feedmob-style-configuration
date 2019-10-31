# frozen_string_literal: true

require "feedmob/style/version"
require "querly"

module Feedmob
  module Style
    Querly.load_rule File.join(__dir__, "../../config/querly-default.yml")
  end
end
