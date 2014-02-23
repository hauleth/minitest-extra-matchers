require "minitest/extra/matchers/version"

module Minitest
  module Extra
    module Matchers
      autoload Subject, 'minitest/extra/matchers/subject'
      autoload Pending, 'minitest/extra/matchers/pending'
    end
  end
end
