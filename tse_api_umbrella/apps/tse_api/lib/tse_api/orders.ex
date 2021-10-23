defmodule TesApi.Orders do
  @moduledoc """
      *** Check market
      *** Check channel
      *** Check request ID
      *** Check action
      *** Check order type
      *** Check price
  """
  import Error
  alias TseApi.Orders

  @behaviour TesApi.Order

  @doc """
    Check kind of market
  """
  def new_order(%{marketID: "VN"} = order) do
    order
    # |> check_market()
    # |> check_channel()
    # |> check_request_id()
    |> check_action()
    |> check_order_type()
    |> check_price()
  end

  def new_order(%{marketID: "VNFE"} = order) do
    nil
  end

  def new_order(_), do: ApiError.error_response()

  @doc """
    Check type of order
  """
  def check_order_type(%{orderType: "LO"} = order) do
    order
  end

  def check_order_type(%{orderType: "ATO"} = order) do
    order
  end

  def check_order_type(%{orderType: "ATO"} = order) do
    order
  end

  def check_order_type(%{orderType: "MP"} = order) do
    order
  end

  def check_order_type(%{orderType: "MTL"} = order) do
    order
  end

  def check_order_type(%{orderType: "MOK"} = order) do
    order
  end

  def check_order_type(%{orderType: "MAK"} = order) do
    order
  end

  def check_order_type(%{orderType: "PLO"} = order) do
    order
  end

  def check_order_type(_), do: ApiError.error_response()

  def check_action(%{orderType: "B"} = order) do
    if :ok = check_price(order) do
    else
      nil
    end
  end

  @doc """
    check type of action
  """
  def check_action(%{orderType: "S"} = order) do
    if :ok = check_price(order) do
    else
      nil
    end
  end

  def check_action(_), do: ApiError.error_response()

  @doc """
    Check price.
  """
  def check_price(%{orderType: "S"} = order) do
    order
  end

  def check_price(_), do: ApiError.error_response()
end
