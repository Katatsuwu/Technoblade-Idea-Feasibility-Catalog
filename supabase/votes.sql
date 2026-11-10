-- Shared catalog voting for Technoblade-Idea-Feasibility-Catalog
-- Run this in Supabase Dashboard -> SQL Editor.
-- Then enable Anonymous Sign-Ins in Authentication -> Sign In / Providers.

create table if not exists public.votes (
  idea_id integer not null check (idea_id between 1 and 11),
  user_id uuid not null references auth.users(id) on delete cascade,
  created_at timestamptz not null default now(),
  primary key (user_id, idea_id)
);

alter table public.votes drop constraint if exists votes_idea_id_check;
alter table public.votes add constraint votes_idea_id_check check (idea_id between 1 and 11);

alter table public.votes enable row level security;

grant select, insert, delete on public.votes to authenticated;

drop policy if exists "Anyone signed in can read vote totals" on public.votes;
create policy "Anyone signed in can read vote totals"
  on public.votes for select
  to authenticated
  using (true);

drop policy if exists "Users can vote as themselves" on public.votes;
create policy "Users can vote as themselves"
  on public.votes for insert
  to authenticated
  with check (auth.uid() = user_id);

drop policy if exists "Users can remove their own votes" on public.votes;
create policy "Users can remove their own votes"
  on public.votes for delete
  to authenticated
  using (auth.uid() = user_id);

-- Enable INSERT/DELETE notifications for connected catalog visitors.
do $$
begin
  if not exists (
    select 1
    from pg_publication_tables
    where pubname = 'supabase_realtime'
      and schemaname = 'public'
      and tablename = 'votes'
  ) then
    alter publication supabase_realtime add table public.votes;
  end if;
end
$$;
