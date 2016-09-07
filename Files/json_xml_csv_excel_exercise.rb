require 'json'
require 'nokogiri'
require 'axlsx'
require 'csv'

slashdot_articles = []
File.open("slashdot.xml", "r") do |file|
  doc = Nokogiri::XML(file)
  slashdot_articles = doc.css('item').map { |item|
    {
      title: item.at_css('title').content,
      link: item.at_css('link').content,
      summary: item.at_css('description').content
    }
  }
end

feedzilla_articles = []
File.open("feedzilla.json", "r") do |file|
  items = JSON.parse(file.read)
  feedzilla_articles = items['articles'].map { |article|
    {
      title: article['title'],
      link: article['url'],
      summary: article['summary']
    }
  }
end

sorted_articles =
  (feedzilla_articles + slashdot_articles).sort_by do |article|
    article[:title]
  end

CSV.open("article.csv", "wb") do |csv|
  sorted_articles.each { |article|
    csv << [ article[:title], article[:link], article[:summary] ]
  }
end

pkg = Axlsx::Package.new
pkg.workbook.add_worksheet(:name => "Articles") do |sheet|
  sorted_articles.each { |article|
    sheet.add_row [ article[:title], article[:link], article[:summary] ]
  }
end

pkg.serialize("articles.xlsx")
