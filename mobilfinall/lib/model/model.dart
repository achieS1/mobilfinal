class Todo {
  late int id;
  late bool completed;
  late String title;
  Todo(int id, int userId, bool completed, String title) {

    this.id = id;

    this.title = title;
    this.completed = completed;
  }

  Todo.fromJson(Map json) {
    id = json['id'];
    completed = json['completed'];
    title = json['title'];
  }

  Map toJson() {
    return {
      "id": id,
      "completed": completed,
    };
  }
}
