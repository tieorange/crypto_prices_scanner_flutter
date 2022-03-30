import 'package:bloc/bloc.dart';

part 'crypto_list_state.dart';

class TemplateCubit extends Cubit<TemplateState> {
  TemplateCubit() : super(TemplateInitial());
}
