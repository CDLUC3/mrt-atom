# frozen_string_literal: true

module Merritt
  module Atom
    # DEFAULT_DELAY = 300
    # DEFAULT_BATCH_SIZE = 10 # Can be problematic for George Fujimoto collection until Nuxeo server upgraded
    DEFAULT_DELAY = 60
    DEFAULT_BATCH_SIZE = 1

    require_relative 'atom/util'
    require_relative 'atom/feed_processor'
    require_relative 'atom/entry_processor'
    require_relative 'atom/page_result'
    require_relative 'atom/page_client'
    require_relative 'atom/harvester'
    require_relative 'atom/csh_generator'
    require_relative 'atom/model/encoder'
    require_relative 'atom/model/application_record'
    require_relative 'atom/model/inv_collections_inv_object'
    require_relative 'atom/model/inv_collection'
    require_relative 'atom/model/inv_object'
  end
end
