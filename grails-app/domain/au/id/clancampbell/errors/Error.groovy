package au.id.clancampbell.errors

class Error {

  Category category
  String title
  String opEnv
  String errorMsg
  String solution
  String URL
  Date dateCreated
  Date lastUpdated

  static constraints = {
    title(blank: false)
    category()
    opEnv(blank: false)
    errorMsg(blank: false, maxSize: 10000)
    solution(blank: false, maxSize: 10000)
    URL(url: true)
    dateCreated()
    lastUpdated()
  }

}
