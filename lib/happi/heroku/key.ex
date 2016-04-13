defmodule Happi.Heroku.Key do
  @moduledoc """
  Heroku key.
  """

  use Happi.Resource
  
  @derive [Poison.Encoder]

  defstruct id: "",
    public_key: "",
    email: "",
    fingerprint: "",
    comment: "",
    updated_at: nil,
    created_at: nil

  @type t :: %__MODULE__{
    id: String.t,
    public_key: String.t,
    email: String.t,
    fingerprint: String.t,
    comment: String.t,
    updated_at: String.t,
    created_at: String.t
  }
end

defimpl Happi.Endpoint, for: Happi.Heroku.Key do
  def endpoint_url(_), do: "/account/keys"
  def app_resource?(_), do: false
end
