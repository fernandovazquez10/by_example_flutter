import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:by_example/config/router/app.dart';
import 'package:by_example/config/theme/app.dart';
import 'package:by_example/presentation/providers/providers.dart';

void main() async {

  await dotenv.load(fileName: '.env');
  runApp(
    const ProviderScope(
      child: MyApp()
    ) 
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    
    final AppTheme appTheme = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
      title: 'By example',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme()
    );
  }
}
