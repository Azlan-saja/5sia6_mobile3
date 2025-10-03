import 'package:aplikasi_5sia6_mobile3/controllers/note_controller.dart';
import 'package:aplikasi_5sia6_mobile3/models/note_model.dart';
import 'package:flutter/material.dart';

class UpdateNoteView extends StatelessWidget {
  final NoteModel note;

  const UpdateNoteView({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    final noteController = NoteController();
    noteController.titleController.text = note.noteTitle;
    noteController.contentController.text = note.noteContent;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Text('Update Note'),
        actions: [
          IconButton(
              onPressed: () {
                noteController.prosesUpdateData(context, note.noteId!);
              },
              icon: Icon(Icons.check))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Form(
          key: noteController.formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) =>
                    noteController.cekValidasi(value, label: 'Title'),
                controller: noteController.titleController,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Title",
                  prefixIcon: Icon(Icons.title),
                  border: InputBorder.none,
                  fillColor: Colors.grey.withAlpha(40),
                  filled: true,
                  contentPadding: EdgeInsets.only(top: 13),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                validator: (value) =>
                    noteController.cekValidasi(value, label: 'Content'),
                controller: noteController.contentController,
                maxLines: 3,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: "Content",
                  prefixIcon: Icon(Icons.notes),
                  border: InputBorder.none,
                  fillColor: Colors.grey.withAlpha(40),
                  filled: true,
                  contentPadding: EdgeInsets.only(top: 13),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
