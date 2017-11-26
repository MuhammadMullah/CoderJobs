defmodule Coderjobs.Others.Contact do
  use Ecto.Schema

  import Ecto.Changeset

  alias Coderjobs.Others.Contact

  schema "" do
    field :email, :string
    field :message, :string
    timestamps()
  end

  def changeset(%Contact{} = form, attrs \\ %{}) do
    form
    |> cast(attrs, [:email, :message])
    |> validate_required(:email)
    |> validate_required(:message)
    |> validate_format(:email, ~r/@/)
  end
end
