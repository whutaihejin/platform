namespace java echo

typedef i32 int

service EchoService {
  int multiply(1: int x, 2: int y),
  string echo(1: string name),
}
