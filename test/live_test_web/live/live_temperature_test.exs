defmodule LiveTestWeb.LiveTemperatureTest do
  use LiveTestWeb.ConnCase

  import Phoenix.LiveViewTest

  describe "Index" do
    test "Increment Temperature", %{conn: conn} do
      {:ok, index_live, _html} = live(conn, ~p"/")

      assert index_live |> element("#button-temperature") |> render_click() =~
               "71"
    end
  end
end
