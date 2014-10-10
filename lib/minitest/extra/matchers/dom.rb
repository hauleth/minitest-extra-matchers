module Minitest
  module Extra
    module Matchers
      module DOM
        infect_an_assertion :assert_dom_equal, :must_equal_dom
        infect_an_assertion :assert_attr_equal, :must_have_attr

        def assert_dom_equal(expected, actual)
          expected_dom = Nokogiri::HTML.fragment(expected).child
          actual_dom   = Nokogiri::HTML.fragment(actual).child

          assert_equal expected_dom, actual_dom
        end

        def assert_attr_equal(value, element, name)
          actual = Nokogiri::HTML.fragment(element).child.attr(name)

          assert_equal value, actual
        end
      end
    end
  end
end
