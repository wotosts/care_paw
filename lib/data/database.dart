import 'package:supabase_flutter/supabase_flutter.dart';

enum DBTable {
  Hospital,
  Animal,
}final supabase = Supabase.instance.client;