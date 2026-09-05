create table if not exists public.team_app_state (
  id text primary key,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);
create or replace function public.set_team_app_state_updated_at()
returns trigger language plpgsql as $$ begin new.updated_at = now(); return new; end; $$;
drop trigger if exists trg_team_app_state_updated_at on public.team_app_state;
create trigger trg_team_app_state_updated_at before update on public.team_app_state
for each row execute function public.set_team_app_state_updated_at();
alter table public.team_app_state enable row level security;
drop policy if exists "dreamteam_read" on public.team_app_state;
drop policy if exists "dreamteam_insert" on public.team_app_state;
drop policy if exists "dreamteam_update" on public.team_app_state;
create policy "dreamteam_read" on public.team_app_state for select to anon, authenticated using (id='dream-team-ac-2026-27-osz');
create policy "dreamteam_insert" on public.team_app_state for insert to anon, authenticated with check (id='dream-team-ac-2026-27-osz');
create policy "dreamteam_update" on public.team_app_state for update to anon, authenticated using (id='dream-team-ac-2026-27-osz') with check (id='dream-team-ac-2026-27-osz');
grant select, insert, update on public.team_app_state to anon, authenticated;
