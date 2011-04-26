package au.id.clancampbell.errors

class Category {

    String name
    String description

    static constraints = {
      name(blank: false)
      description(blank: false)
    }

}
