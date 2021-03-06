defmodule Happi.Heroku.Addon.Service do
  @moduledoc """
  Heroku add-on services.
  """
  
  use Napper.Resource

  defstruct id: "",
    name: "",
    cli_plugin_name: "",
    human_name: "",
    state: "",
    supports_multiple_installations: false,
    supports_sharing: false,
    created_at: nil,
    updated_at: nil

  @type t :: %__MODULE__{
    id: String.t,
    name: String.t,
    cli_plugin_name: String.t,
    human_name: String.t,
    state: String.t,
    supports_multiple_installations: boolean,
    supports_sharing: boolean,
    created_at: String.t,
    updated_at: String.t
  }
end

defimpl Napper.Endpoint, for: Happi.Heroku.Addon.Service do
  def under_master_resource?(_), do: false
  def endpoint_url(_), do: "/addon-services"
end
