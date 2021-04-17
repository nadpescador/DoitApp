import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tabata/presentation/tabata_work_page/bloc/tabata_page_state.dart';

class TabataPageCubit extends Cubit<TabataPageState> {
  TabataPageCubit() : super(TabataPageState.loading());
}
