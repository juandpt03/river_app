import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/providers.dart';

class StreamScreen extends ConsumerWidget {
  const StreamScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomName$ = ref.watch(nameStreamProvider);
    // if (!randomName$.hasValue) {
    //   return const Scaffold(
    //     body: Center(
    //       child: CircularProgressIndicator(),
    //     ),
    //   );
    // }
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stream Provider'),
        ),
        body: randomName$.when(
          data: (data) => Center(child: Text(data)),
          error: (error, stackTrace) => Text('Error: $error'),
          loading: () => const Center(child: CircularProgressIndicator()),
        ));
  }
}
