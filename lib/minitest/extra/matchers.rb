require "minitest/extra/matchers/version"

module Minitest
  module Extra
    module Matchers
      autoload :Subject,   'minitest/extra/matchers/subject'
      autoload :Pending,   'minitest/extra/matchers/pending'
      autoload :Received,  'minitest/extra/matchers/received'
      autoload :DOM,       'minitest/extra/matchers/dom'
    end
  end
end
