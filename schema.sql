create table if not exists houses (
 id uuid primary key default gen_random_uuid(),
 number text not null,
 owner text,
 address text,
 phone text,
 meter numeric not null default 0,
 created_at timestamptz default now()
);
create table if not exists bills (
 id uuid primary key default gen_random_uuid(),
 house_id uuid references houses(id) on delete cascade,
 month text not null,
 previous numeric not null,
 current numeric not null,
 units numeric not null,
 water_charge numeric not null,
 meter_maintenance numeric not null default 5,
 total numeric not null,
 paid boolean not null default false,
 paid_date timestamptz,
 created_at timestamptz default now()
);
create index if not exists bills_month_idx on bills(month);
