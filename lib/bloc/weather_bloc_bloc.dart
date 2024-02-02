import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:weather/weather.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  WeatherBlocBloc() : super(WeatherBlocInitial()) {
    on<WeatherBlocEvent>((event, emit) {
      emit(WeatherBlocLoading());
      try {
        WeatherFactory wf = WeatherFactory("API_KEY", language: Language.ENGLISH);
        Weather weather = await wf.currentWeatherByLocation(
        latitude,
        longitude
        );
        emit(WeatherBlocSucess ());
      } catch (e) {
        emit(WeatherBlocFailure());
      }
    });
  }
}
