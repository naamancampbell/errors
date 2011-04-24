package au.id.clancampbell.errors

class Errors {

  int errorNum
  int errorCat
  String title
  String errorMsg
  String solution
  String[] urls

  static constraints = {
    errorNum(blank: false)
    errorCat(blank: false)
    title(blank: false)
    errorMsg(blank: false)
    solution(blank: false)
  }

}
