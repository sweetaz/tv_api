defmodule TvApi.ChannelView do
  use TvApi.Web, :view

  def render("index.json", %{channels: channels}) do
    %{data: render_many(channels, TvApi.ChannelView, "channel.json")}
  end

  def render("show.json", %{channel: channel}) do
    %{data: render_one(channel, TvApi.ChannelView, "channel.json")}
  end

  def render("channel.json", %{channel: channel}) do
    %{id: channel.id,
      name: channel.name,
      active: channel.active}
  end
end
