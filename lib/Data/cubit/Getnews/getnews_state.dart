part of 'getnews_cubit.dart';

@immutable
 class GetNewsState {}

 class GetnewsInitial extends GetNewsState {}
  class GetNewsLoading extends GetNewsState {}
 class GetNewsSuccess extends GetNewsState {

  final GetNewsModel response;
  GetNewsSuccess({required this.response});
 }
 class GetNewsError extends GetNewsState {}