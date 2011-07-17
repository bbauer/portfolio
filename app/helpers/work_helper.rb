module WorkHelper
  def icons(article)
    icons = []
    icons << "rails" + "\n" if article.rails == "yes"
    icons << "php" + "\n" if article.php == "yes"
    icons << "asp" + "\n" if article.asp == "yes"
    icons << "css" + "\n" if article.css3 == "yes"
    icons << "html" + "\n" if article.html5 == "yes"
    icons << "haml" + "\n" if article.haml == "yes"
    icons << "sass" + "\n" if article.sass == "yes"
    icons << "jquery" + "\n" if article.jquery == "yes"
    icons << "mootools" + "\n" if article.mootools == "yes"
    icons
  end
end
