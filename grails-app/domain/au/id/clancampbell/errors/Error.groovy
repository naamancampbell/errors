package au.id.clancampbell.errors

class Error {

  Category errorCat
  String title
  String opEnv
  String errorMsg
  String solution
  String urls

  static constraints = {
    errorCat(nullable: false)
    title(blank: false)
    opEnv(blank: false)
    errorMsg(blank: false)
    solution(blank: false)
    urls(blank: false)
  }

}
