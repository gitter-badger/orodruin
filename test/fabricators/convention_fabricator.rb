Fabricator(:convention) do
  name   'TestiCon'
  start  { Date.tommorow  }
  finish { start + 3.days }
end
