defmodule TvApi.ChannelTest do
  use TvApi.ModelCase

  alias TvApi.Channel

  @valid_attrs %{active: true, name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Channel.changeset(%Channel{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Channel.changeset(%Channel{}, @invalid_attrs)
    refute changeset.valid?
  end
end
