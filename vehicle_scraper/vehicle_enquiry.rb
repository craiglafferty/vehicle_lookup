require 'mechanize'

mechanize = Mechanize.new

page = mechanize.get('https://vehicleenquiry.service.gov.uk/')

form = page.forms.first

form['Vrm'] = 'ST02NYN'
form['Make'] = 'Hyundai'
form['V5CNumber'] = ''

page = form.submit

pp page
