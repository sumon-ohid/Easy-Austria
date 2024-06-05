import '../database.dart';

class PostTable extends SupabaseTable<PostRow> {
  @override
  String get tableName => 'post';

  @override
  PostRow createRow(Map<String, dynamic> data) => PostRow(data);
}

class PostRow extends SupabaseDataRow {
  PostRow(super.data);

  @override
  SupabaseTable get table => PostTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get body => getField<String>('body');
  set body(String? value) => setField<String>('body', value);

  String? get user => getField<String>('user');
  set user(String? value) => setField<String>('user', value);
}
