class Page < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    path        :string
    title       :string
    description :string
    timestamps
  end

  belongs_to :website
  has_many :sections, :dependent => :destroy, :accessible => true

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
