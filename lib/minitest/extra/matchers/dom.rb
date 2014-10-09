module Minitest
  module Extra
    module Matchers
      module DOM
        def self.included(base)
          base.class_eval do
            infect_an_assertion :assert_dom_equal, :must_equal_dom
          end
        end

        def assert_dom_equal(expected, actual)
          expected_dom = HTML::Document.new(expected).root
          actual_dom   = HTML::Document.new(actual).root

          assert_equal expected_dom, actual_dom
        end
      end
    end
  end
end
