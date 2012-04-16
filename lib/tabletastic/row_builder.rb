module Tabletastic
  class RowBuilder
    def initialize(template)
      @template = template
      @cells = []
    end

    def cell(*args, &blk)
      @cells << @template.content_tag(:td, *args, &blk)
      self
    end

    def render
      @cells.join
    end
  end
end
