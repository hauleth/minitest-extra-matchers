module Minitest
  module Extra
    module Matchers
      module DOM
        def self.included(base)
          base.class_eval do
            infect_an_assertion :assert_dom_equal, :must_equal_dom
            infect_an_assertion :assert_attribute_equal, :must_have_attribute,
                                :dont_flip
          end
        end

        def assert_dom_equal(expected, actual)
          expected_dom = Nokogiri::HTML.fragment(expected).child
          actual_dom   = Nokogiri::HTML.fragment(actual).child

          assert_equal expected_dom, actual_dom
        end

        def assert_attribute_equal(element, name, value)
          actual = Nokogiri::HTML.fragment(element).child.attr(name)

          assert_equal value, actual
        end
      end
    end
  end
end
