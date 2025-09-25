import 'package:aplikasi_5sia6_mobile3/controllers/note_controller.dart';
import 'package:flutter/material.dart';

class CreateNoteView extends StatelessWidget {
  const CreateNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    final noteController = NoteController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        title: Text('Create Note'),
        actions: [
          IconButton(
              onPressed: () {
                noteController.prosesCreateData(context);
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
