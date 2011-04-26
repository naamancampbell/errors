package au.id.clancampbell.errors

class Category {

    static hasMany = [error:Error]

    String name
    String description

    static constraints = {
      name(blank: false)
      description(blank: false)
    }

    String toString() {
      return name
    }

}
