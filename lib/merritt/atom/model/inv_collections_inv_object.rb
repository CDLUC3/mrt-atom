# frozen_string_literal: true

# Mark please add documentation
class InvCollectionsInvObject < ApplicationRecord
  belongs_to :inv_collection
  belongs_to :inv_object
end
