import 'package:bloc/bloc.dart';

class ExtendingAppBarCubit extends Cubit<bool> {
  ExtendingAppBarCubit() : super(false);

  void extend() => emit(true);
  void reduce() => emit(false);
}
