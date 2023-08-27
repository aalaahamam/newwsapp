import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:newsapp/Data/Repo/get_news_repo.dart';
import 'package:newsapp/Data/models/getnews_Mode.dart';

part 'getnews_state.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit() : super(GetnewsInitial());

GetNewsRepoo newsREpoo = GetNewsRepoo();

  ///هكلمها ف ال ui
  getNews() async {
    emit(GetNewsLoading());

    try {
      /// كلمت ال فانكشن
      await newsREpoo.getNews().then((value) {
        if (value != null) {
          emit(GetNewsSuccess(response: value));
        } else {
          emit(GetNewsError());
        }
      });
    } catch (error) {
       emit(GetNewsError());

    }
  }



}
