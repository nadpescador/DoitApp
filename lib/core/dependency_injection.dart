import 'package:get_it/get_it.dart';
import 'package:tabata/presentation/tabata_form_pages/cubit/tabata_form_cubit.dart';

void init() {
  final getIt = GetIt.instance;

  getIt.registerLazySingleton<TabataFormCubit>(() => TabataFormCubit());
}
