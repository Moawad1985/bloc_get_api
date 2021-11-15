
import 'package:bloc/bloc.dart';
import 'package:bloc_get_api/post_model.dart';
import 'package:bloc_get_api/repositery/data_services.dart';

class PostsCubit extends Cubit<List<PostModel>>{
 final _dataServices = DataServices();
  PostsCubit() : super([]);

  void getPosts() async =>emit( await _dataServices.getPosts());

}