# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Hello.Repo.insert!(%Hello.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

# Insert some categories
for title <- ["Home Improvement", "Power Tools", "Gardening", "Books"] do
  {:ok, _category} = Hello.Catalog.create_category(%{title: title})
end

# Insert some more categories
for title <- ["Food", "Fitness", "Kitchen", "Office", "Electronics"] do
  {:ok, _category} = Hello.Catalog.create_category(%{title: title})
end
