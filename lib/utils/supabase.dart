import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:supabase/supabase.dart';
import 'package:mohurpe_a/constants.dart';

class SupabaseHandler {
  static final client = SupabaseClient(
      'https://pdfwfjqkujxfvutaffzb.supabase.co',
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InBkZndmanFrdWp4ZnZ1dGFmZnpiIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTA1NDY1ODMsImV4cCI6MTk2NjEyMjU4M30.F4rqnHm_bLruNrQjo00dj4iDv0wzqTrgQf_fa83e1oU');

  static User? currentUser;

  static Future<GotrueSessionResponse?> signUp({
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
    try {
      final res = await client.auth.signIn(
        email: email,
        password: password,
      );
      log('SIGN IN RES: ${res.toString()}');

      log('SIGN IN DATA: ${res.data.toString()}');

      log('SIGN IN ERROR: ${res.error.toString()}');

      return res;
    } catch (e) {
      log('catch');
      return null;
    }
  }

  static Future<Map<String, dynamic>?> getUsetData() async {
    String id = await SupabaseHandler.getCurrentUser()!.id;
    final response = await SupabaseHandler.client
        .from("user_details")
        .select()
        .eq("id", id)
        .execute();

    log('DATA: ${response.data}');
    log('ERROR: ${response.error}');

    if (response.hasError) return null;

    return response.data[0];
  }

  static User? getCurrentUser() {
    if (currentUser != null) {
      return currentUser;
    }
    currentUser = client.auth.currentUser;
    return currentUser;
  }
}
