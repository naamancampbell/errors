package au.id.clancampbell.errors

class Category {

    static hasMany = [error:Error]

    String name
    String description

    static constraints = {
      name(blank: false)
    }

    String toString() {
      return name
    }

}
