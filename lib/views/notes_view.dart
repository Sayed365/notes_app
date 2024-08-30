import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 12, bottom: 12),
        child: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(context: context, builder: (context){
              return const AddNoteBottomSheet();
            },);
          },
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}

