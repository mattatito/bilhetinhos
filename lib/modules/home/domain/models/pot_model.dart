
import 'package:bilhetinhos/modules/home/domain/models/note_model.dart';

class PotModel {
  final String id;
  final String title;
  final List<NoteModel> notes;

  PotModel({required this.id, required this.title, required this.notes});
}