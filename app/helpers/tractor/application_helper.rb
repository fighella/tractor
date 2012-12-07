module Tractor
  module Tractor::ApplicationHelper

    def content_statuses
      ['Online','Offline','On Hold']
    end

    def liquidize(content, arguments)
      Liquid::Template.parse(content).render(arguments, :filters => [LiquidFilters]).to_html
    end

    def grouper(list)
      xs = list.clone
      res = []

      while !xs.empty? do
        x = xs.shift
        # There are two possiblities
        if x[:width] != 1
          x2 = xs.shift
          # There are three possibilities here. nil, width == 1, width == 2
          if x2.nil?
            res.push([x]) # odd one out at the end.
          elsif x2[:width] == 1
            res.push([x,x2])
          else # push +x+ back onto +xs+ and put +x2+ in the results
            xs = [x] + xs
            res.push([x2])
          end
        elsif x[:width] == 2
          res.push([x])
        end
      end
      res
    end


  end
end
