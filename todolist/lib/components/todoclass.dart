class todoclass {
  String todo;
  String id;
  bool iscompleted;

  todoclass({required this.todo,required this.id,required this.iscompleted});


  static List<todoclass> getTodos(){
    return [
     todoclass(todo: "study flutter", id: "1" ,iscompleted: true),
      todoclass(todo: "study machine learning", id: "2" ,iscompleted: false),
      todoclass(todo: "study flutter", id: "3" ,iscompleted: true),
      todoclass(todo: "study machine learning", id: "4" ,iscompleted: false),
      todoclass(todo: "study flutter", id: "5" ,iscompleted: true),
      todoclass(todo: "study machine learning", id: "6" ,iscompleted: false),
      todoclass(todo: "study flutter", id: "7" ,iscompleted: true),
      todoclass(todo: "study machine learning", id: "8" ,iscompleted: false),
      todoclass(todo: "study flutter", id: "9" ,iscompleted: true),
      todoclass(todo: "study machine learning", id: "10" ,iscompleted: false)
    ];
  }
}