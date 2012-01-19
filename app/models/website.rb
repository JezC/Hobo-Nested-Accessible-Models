class Website < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    url         :string
    description :text
    timestamps
  end

  belongs_to :organisation
  has_many :pages, :dependent => :destroy, :accessible => true

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
