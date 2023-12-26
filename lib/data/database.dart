import 'package:supabase_flutter/supabase_flutter.dart';

enum DBTable {
  Hospital,
  Animal,
  Hospitalization,
  HospitalizationNote,
  Bookmark
}

final supabase = Supabase.instance.client;