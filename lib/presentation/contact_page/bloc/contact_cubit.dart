import 'package:bloc/bloc.dart';
import 'contact_page_state.dart';

class ContactCubit extends Cubit<ContactPageState> {
  ContactCubit() : super(ContactPageState.loading());
}
