# frozen_string_literal: true

class InvCollectionsInvObject < ApplicationRecord
  belongs_to :inv_collection
  belongs_to :inv_object
end
