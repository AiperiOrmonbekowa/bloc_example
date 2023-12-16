import 'package:bloc/bloc.dart';

// class SubjectCubit extends Cubit<SubjectState> {
//   SubjectCubit() : super(SubjectInitial());
// }

// 1
class CounterCubit extends Cubit<int> {
  // CounerState => абалы <int> иштегенибиз учун абалыбыз int
  CounterCubit()
      : super(
            0); // super ге баштапкы абалы канча болсо ошону беребиз. CounterInitial() => ордуна баштапкы абалыбыз 0 болгону учун 0 санын бердик

  void increment() {
    emit(state + 1); // emit => бир озгоруу болсо, ui га берет
  }

  void decrement() {
    emit(state - 1);
  }
}
