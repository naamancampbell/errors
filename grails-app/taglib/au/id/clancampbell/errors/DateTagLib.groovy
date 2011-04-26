package au.id.clancampbell.errors

class DateTagLib {
  def thisYear = {
    out << Calendar.getInstance().get(Calendar.YEAR)
  }

  def copyright = { attrs, body ->
    out << "<div id='copyright'>"
    out << "&nbsp; <a rel='license' href='http://creativecommons.org/licenses/by-sa/3.0/'><img alt='Creative Commons License' style='border-width:0' src='http://i.creativecommons.org/l/by-sa/3.0/80x15.png' /></a> ${attrs['startYear']} - ${thisYear()}, ${body()}"
    out << "</div>"
  }
}
