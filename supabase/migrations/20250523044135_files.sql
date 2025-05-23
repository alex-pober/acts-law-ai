create schema private;

insert into storage.buckets (id, name)
values ('files', 'files');

create policy "Authenticated users can upload files"
on storage.objects for insert to authenticated with check (
  bucket_id = 'files'
);

create policy "Authenticated users can view files"
on storage.objects for select to authenticated using (
  bucket_id = 'files'
);

create policy "Authenticated users can update files"
on storage.objects for update to authenticated with check (
  bucket_id = 'files'
);

create policy "Authenticated users can delete files"
on storage.objects for delete to authenticated using (
  bucket_id = 'files'
);
