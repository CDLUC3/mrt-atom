# frozen_string_literal: true

# module
module Merritt
  # module
  module Atom
    # The `<atom:updated/>` date from the feed and the URL of the next page, if any
    # Mark please add documentation
    class PageResult
      attr_reader :atom_updated, :next_page

      def initialize(atom_updated:, next_page:)
        @atom_updated = atom_updated
        @next_page = next_page
      end
    end
  end
end
