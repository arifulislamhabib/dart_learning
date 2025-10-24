int main()
{
try {
  saveNote("");
} catch(e)
  {
    print(e);
  }
  finally{
  print("Exception is handed.");
  }
  return 0;
}

class EmptyNoteException implements Exception{
  final String message;
  EmptyNoteException([this.message = "note cant be emplty"]);

  @override
  String toString(){
    return 'Exception: $message';
  }
}

void saveNote(String note)
{
if (note.trim().isEmpty)
  {
    throw EmptyNoteException();
  }
}