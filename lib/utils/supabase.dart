import 'dart:developer';
import 'package:supabase/supabase.dart';

class SupabaseHandler {
  static final client = SupabaseClient(
      'https://pdfwfjqkujxfvutaffzb.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBkZndmanFrdWp4ZnZ1dGFmZnpiIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTA1NDY1ODMsImV4cCI6MTk2NjEyMjU4M30.F4rqnHm_bLruNrQjo00dj4iDv0wzqTrgQf_fa83e1oU');
  static User? currentUser;
  static Future<GotrueResponse?> signUp({
    required String email,
    required String password,
  }) async {
    final res = await client.auth.signUp(email, password);

    if (res.error != null) {
      log('SIGN UP ERROR: ${res.error.toString()}');
      return null;
    }

    return res;
  }

  static Future<GotrueSessionResponse?> signIn({
    required String email,
    required String password,
  }) async {
    final res = await client.auth.signIn(
      email: email,
      password: password,
    );

    if (res.error != null) {
      log('SIGN IN ERROR: ${res.error.toString()}');
      return null;
    }
    return res;
  }

  static User? getCurrentUser() {
    if (currentUser != null) {
      return currentUser;
    }
    currentUser = client.auth.currentUser;
    return currentUser;
  }

  // Client
  static Future<bool> getUserExistence({
    required String email,
  }) async {
    // final res = await client.auth.api.resetPasswordForEmail('user@example.com');
    // final res = client.auth.update(email);
    var res = client.auth.api.getUser(email);
    // log(res.toString());
    log(res.toString());
    //   final res = await client.auth.api.getUser(email);
    //   if (res.error != null) {
    //     // log(res.error.toString());
    //     log("user not found");
    return false;
    //   }
    //   log("rrrrrrrrr");
    // return true;
  }
}
