
void main() {

  try {
    saveNote("");
  } on EmptyNoteException catch (e){
    print(e);
  }
  catch (e)
  {
    print(e);
  }finally{
    print("Successfully  mission done.");
  }
}




  // class EmptyNoteException implements Exception {
  //
  //   final String messge;
  //
  //   EmptyNoteException([this.messge = 'Note can not be empty']);
  // @override
  // String toString()
  //   {
  //     return " Exception: $messge";
  //   }
  // // }
  // }
  void saveNote(String note)
  {
    if(note.trim().isEmpty)
      {
        throw EmptyNoteException();
      }
    else {
      print("Successfully saved the file.");
    }
  }


  class EmptyNoteException implements Exception
{
  String messgae;
   EmptyNoteException ([this.messgae = "Note can't be empty !"]);

   @override
  toString()
   {
     return "Exception : ${messgae}";
   }
}