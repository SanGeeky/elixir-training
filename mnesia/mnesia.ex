# iex --name learner@elixirschool.com


alias :mnesia, as: Mnesia
Mnesia.create_schema([node()])
Mnesia.start()


Mnesia.create_table(Person, [attributes: [:id, :name, :job]])


Mnesia.dirty_write({Person, 1, "Seymour Skinner", "Principal"})
Mnesia.dirty_read({Person, 1})


# Transaction Write
data_to_write = fn ->
  Mnesia.write({Person, 4, "Marge Simpson", "home maker"})
  Mnesia.write({Person, 5, "Hans Moleman", "unknown"})
  Mnesia.write({Person, 6, "Monty Burns", "Businessman"})
  Mnesia.write({Person, 7, "Waylon Smithers", "Executive assistant"})
end

Mnesia.transaction(data_to_write)

# Transaction Read
data_to_read = fn ->
  Mnesia.read({Person, 6})
end

Mnesia.transaction(data_to_read)


# Indeces
Mnesia.add_table_index(Person, :job)

Mnesia.transaction(
  fn ->
    Mnesia.index_read(Person, "Principal", :job)
  end
)


# Match and Select
# :_ coluumns that no participate in match
Mnesia.transaction(
  fn ->
    Mnesia.match_object({Person, :_, "Marge Simpson", :_})
  end
)


Mnesia.transaction(
  fn ->
    Mnesia.select(Person, [{{Person, :"$1", :"$2", :"$3", :"$4"}, [{:>, :"$1", 3}], [:"$$"]}])
  end
)


# Transformations
case Mnesia.create_table(Person, [attributes: [:id, :name, :job, :age]]) do
  {:atomic, :ok} ->
    Mnesia.add_table_index(Person, :job)
    Mnesia.add_table_index(Person, :age)
  {:aborted, {:already_exists, Person}} ->
    case Mnesia.table_info(Person, :attributes) do
      [:id, :name, :job] ->
        Mnesia.wait_for_tables([Person], 5000)
        Mnesia.transform_table(
          Person,
          fn ({Person, id, name, job}) ->
            {Person, id, name, job, 21}
          end,
          [:id, :name, :job, :age]
          )
        Mnesia.add_table_index(Person, :age)
      [:id, :name, :job, :age] ->
        :ok
      other ->
        {:error, other}
    end
end
