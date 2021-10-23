defmodule TseApi.ApiError do
  @moduledoc """

  """

  @callback error_response(any, String.t()) :: any

  def error_response(:error_01, field) do
    field
  end

  def error_response(_, _), do: :error_not_found
end
