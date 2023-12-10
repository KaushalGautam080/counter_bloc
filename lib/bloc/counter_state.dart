 class CounterState{
  int counter;
  CounterState({required this.counter});
}


class InitialState extends CounterState{
  InitialState():super(counter: 0);
}
// class UpdatedState extends CounterState{
//   final int counter;

//   UpdatedState(this.counter);
// }