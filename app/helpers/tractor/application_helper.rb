module Tractor
  module Tractor::ApplicationHelper

    def content_statuses
      ['Online','Offline','On Hold']
    end

    def liquidize(content, arguments)
      Liquid::Template.parse(content).render(arguments, :filters => [LiquidFilters]).to_html
    end

  end
end
