require 'mechanize'

mechanize = Mechanize.new

page = mechanize.get('https://vehicleenquiry.service.gov.uk/')

form = page.forms.first

form['Vrm'] = 'WV14UKN'
form['Make'] = 'Ford'
form['V5CNumber'] = ''

page = form.submit

pp page
