package au.id.clancampbell.errors

import java.text.SimpleDateFormat

class DateTagLib {
  def thisYear = {
    out << Calendar.getInstance().get(Calendar.YEAR)
  }

  def copyright = { attrs, body ->
    out << "<div id='copyright'>"
    out << "&nbsp; <a rel='license' href='http://creativecommons.org/licenses/by-sa/3.0/'><img alt='Creative Commons License' style='border-width:0' src='http://i.creativecommons.org/l/by-sa/3.0/80x15.png' /></a> ${attrs['startYear']} - ${thisYear()}, ${body()}"
    out << "</div>"
  }

  /*def longDate = { attrs, body ->
    // parse the incoming date
    def b = attrs.body ?: body()
    def d = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(b)

    // if no format attribute is supplied
    def pattern = attrs["format"] ?: "EEEE, MMM d, yyyy"
    out << new SimpleDateFormat(pattern).format(d)
  }*/
}
