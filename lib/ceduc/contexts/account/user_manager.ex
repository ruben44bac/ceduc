defmodule Ceduc.Contexts.Account.UserManager do
  def create_mail() do
    get_list()
    |> Enum.map(fn name ->
      %{
        name: name,
        email: String.replace(name, " ", ".") |> String.downcase(),
        password:
          String.split(name, " ")
          |> List.first()
          |> Kernel.<>("#{:rand.uniform(10000)}#{Enum.random(["!", ".", "?", ",", "#"])}")
      }
    end)
    |> Enum.map(&"#{&1.name}   |   #{&1.email}    |   #{&1.password}")
  end

  def get_list() do
    [
      "Victor Domínguez",
      "Issac Ornelas",
      "Vanessa Rodríguez",
      "Eduardo Cuate",
      "Ari Díaz",
      "Enrique Díaz",
      "Araceli Ramirez"
    ]
  end
end
