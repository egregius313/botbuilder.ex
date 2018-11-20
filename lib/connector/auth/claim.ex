defmodule Botbuilder.Connector.Auth.Claim do
  @type claim_type :: String.t()

  @type claim :: %{type: claim_type, value: String.t()}

  @typedoc """
  Represents a claim-based identity
  """
  @type claims_identity :: %{
          is_authenticated: boolean,
          claims: [claim]
        }

  @doc """
  Get the claim value for the claim with the type.
  """
  @spec claim_value(claims_identity, claim_type) :: String.t() | nil
  def claim_value(claims_identity, claim_type) do
    Enum.find(claims_identity.claims, fn %{type: type} -> type == claim_type end)
  end
end
