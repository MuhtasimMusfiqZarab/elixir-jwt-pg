defmodule MyAppWeb.JwtAuthPlug do
  import Plug.Conn
  alias MyAppWeb.JwtAuthToken

  def call(conn, _opts) do
    case JwtAuthToken.decode(jwt_from_map, public_key) do
      { :success, %{token: token, claims: claims} } ->
        conn |> success(claims)
      { :error, error } ->
        conn |> forbidden
    end
  end

  defp public_key do
    # your public key string that you read from a PEM file or stored in an env var or fetched from an endpoint
  end

  defp success(conn, token_payload) do
    assign(conn, :claims, token_payload.claims)
    |> assign(:jwt, token_payload.token)
  end
end