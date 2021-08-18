class SelectedStudioType < ApplicationRecord
  belongs_to :studio
  belongs_to :studio_type
end
