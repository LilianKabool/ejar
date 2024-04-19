class HandlerError  {
  final String errorMessage;


  HandlerError({ this.errorMessage = '' });


  @override
  String toString() {

    print("the error message is ${errorMessage}");
    return '$errorMessage';
  }
  @override
  List<Object> get props => [errorMessage ];
}