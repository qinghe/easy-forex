Exchange.destroy_all
User.destroy_all
Currency.destroy_all

usd = Currency.create!(code:'USD', name: 'US Dollar')
eur = Currency.create!(code:'EUR', name: 'Euro')
gbp = Currency.create!(code:'GBP', name: 'Breat Britain Pound')
bob = Currency.create!(code:'BOB', name: 'Boliviano')
ars = Currency.create!(code:'ARS', name: 'Argentinian Peso')
aud = Currency.create!(code:'AUD', name: 'Australian Dollar')
brl = Currency.create!(code:'BRL', name: 'Brasilian Real')
cad = Currency.create!(code:'CAD', name: 'Canadian Dollar')
clp = Currency.create!(code:'CLP', name: 'Chilian Peso')
cny = Currency.create!(code:'CNY', name: 'Yuan')
cop = Currency.create!(code:'COP', name: 'Colombian Peso')
dkk = Currency.create!(code:'DKK', name: 'Denmark Crown')
hkd = Currency.create!(code:'HKD', name: 'Hong-Kong Dollar')
huf = Currency.create!(code:'HUF', name: 'Hungarian Forint')
inr = Currency.create!(code:'INR', name: 'Indian Roupie')
isk = Currency.create!(code:'ISK', name: 'Island Crown')
lak = Currency.create!(code:'LAK', name: 'Laos Kip')
lbp = Currency.create!(code:'LBP', name: 'Liban Pound')
myr = Currency.create!(code:'MYR', name: 'Malaisian Ringgit')
mvr = Currency.create!(code:'MVR', name: 'Maldives Rufiyaa')
mxn = Currency.create!(code:'MXN', name: 'Mexican Peso')
mnt = Currency.create!(code:'MNT', name: 'Mongolian Tugrik')
nok = Currency.create!(code:'NOK', name: 'Norwegian Crown')
nzd = Currency.create!(code:'NZD', name: 'New Zeland Dollar')
npr = Currency.create!(code:'NPR', name: 'Nepal Roupie')
pln = Currency.create!(code:'PLN', name: 'Poland Zloti')
pen = Currency.create!(code:'PEN', name: 'Peruvian Sol')
rub = Currency.create!(code:'RUB', name: 'Russian Rouble')
thb = Currency.create!(code:'THB', name: 'Thaïland Bath')
twd = Currency.create!(code:'TWD', name: 'Taïwan Dollar')
uyu = Currency.create!(code:'UYU', name: 'Uruguay Peso')
vnd = Currency.create!(code:'VND', name: 'Vietnam Dong')
zar = Currency.create!(code:'ZAR', name: 'South Africa Rand')

gerard = User.create!(email: 'gerard@moi.com', password: "12345678", password_confirmation: "12345678", first_name: 'Gerard', last_name: 'Dupont')
edouard = User.create!(email: 'edouard@moi.com', password: "12345678", password_confirmation: "12345678", first_name: 'Edouard', last_name: 'Dupuis')
jertrude = User.create!(email: 'jertrude@moi.com', password: "12345678", password_confirmation: "12345678", first_name: 'Jertrude', last_name: 'Ledey')
micheline = User.create!(email: 'micheline@moi.com', password: "12345678", password_confirmation: "12345678", first_name: 'Micheline', last_name: 'Toulemonde')
helena = User.create!(email: 'helena@moi.com', password: "12345678", password_confirmation: "12345678", first_name: 'Helena', last_name: 'Delachance')
cedric = User.create!(email: 'cedric@moi.com', password: "12345678", password_confirmation: "12345678", first_name: 'Cedric', last_name: 'Petit')
julien = User.create!(email: 'julien@moi.com', password: "12345678", password_confirmation: "12345678", first_name: 'Julien', last_name: 'Leroy')
aymeric = User.create!(email: 'aymeric@moi.com', password: "12345678", password_confirmation: "12345678", first_name: 'Aymeric', last_name: 'Destombes')
hortense = User.create!(email: 'hortense@moi.com', password: "12345678", password_confirmation: "12345678", first_name: 'Hortense', last_name: 'Labombe')
margaux = User.create!(email: 'margaux@moi.com', password: "12345678", password_confirmation: "12345678", first_name: 'Margaux', last_name: 'Dubédéhaisse')
pauline = User.create!(email: 'pauline@moi.com', password: "12345678", password_confirmation: "12345678", first_name: 'Pauline', last_name: 'Abraham')
patrick = User.create!(email: 'patrick@moi.com', password: "12345678", password_confirmation: "12345678", first_name: 'Patrick', last_name: 'Renoir')

Taiwan = Exchange.create!(title: 'Exchange Title', seller_id: gerard.id, amount: 150, base_currency_id: usd.id, variable_currency_id: twd.id, city: 'Taïwan', start_date: "Mon, 21 Dec 2016", end_date: "Wed, 23 Dec 2016")
Budapest = Exchange.create!(title: 'Exchange Title', seller_id: gerard.id, amount: 100, base_currency_id: huf.id, variable_currency_id: eur.id, city: 'Budapest', start_date: "Sat, 26 Dec 2016", end_date: "Tue, 29 Dec 2016")
HongKong = Exchange.create!(title: 'Exchange Title', seller_id: edouard.id, amount: 200, base_currency_id: eur.id, variable_currency_id: hkd.id, city: 'Hong-Kong', start_date: "Thu, 30 Dec 2016", end_date: "Thu, 31 Dec 2016")
Lille = Exchange.create!(title: 'Exchange Title', seller_id: jertrude.id, amount: 80, base_currency_id: gbp.id, variable_currency_id: eur.id, city: 'Lille', start_date: "Mon, 21 Dec 2016", end_date: "Thu, 24 Dec 2016")
Barcelone = Exchange.create!(title: 'Exchange Title', seller_id: jertrude.id, amount: 90, base_currency_id: eur.id, variable_currency_id: mnt.id, city: 'Barcelone', start_date: "Wed, 23 Dec 2016", end_date: "Wed, 23 Dec 2016")
Beijing = Exchange.create!(title: 'Exchange Title', seller_id: micheline.id, amount: 1000, base_currency_id: cny.id, variable_currency_id: usd.id, city: 'Beijing', start_date: "Tue, 28 Dec 2016", end_date: "Tue, 29 Dec 2016")
Montevideo = Exchange.create!(title: 'Exchange Title', seller_id: helena.id, amount: 1200, base_currency_id: uyu.id, variable_currency_id: eur.id, city: 'Montevideo', start_date: "Mon, 21 Dec 2016", end_date: "Wed, 22 Dec 2016")
LaPaz = Exchange.create!(title: 'Exchange Title', seller_id: cedric.id, amount: 120, base_currency_id: usd.id, variable_currency_id: bob.id, city: 'La paz', start_date: "Tue, 22 Dec 2016", end_date: "Wed, 23 Dec 2016")
Quito = Exchange.create!(title: 'Exchange Title', seller_id: cedric.id, amount: 150, base_currency_id: usd.id, variable_currency_id: pen.id, city: 'Quito', start_date: "Mon, 04 Jan 2016", end_date: "Mon, 11 Jan 2016")
Lille2 = Exchange.create!(title: 'Exchange Title', seller_id: margaux.id, amount: 150, base_currency_id: gbp.id, variable_currency_id: eur.id, city: 'Lille', start_date: "Sat, 02 Jan 2016", end_date: "Sun, 03 Jan 2016")
Barcelone2 = Exchange.create!(title: 'Exchange Title', seller_id: margaux.id, amount: 50, base_currency_id: eur.id, variable_currency_id: cny.id, city: 'Barcelone', start_date: "Sat, 25 Dec 2016", end_date: "Sat, 26 Dec 2016")
Taiwan2 = Exchange.create!(title: 'Exchange Title', seller_id: aymeric.id, amount: 1500, base_currency_id: twd.id, variable_currency_id: hkd.id, city: 'Taïwan', start_date: "Thu, 28 Dec 2016", end_date: "Thu, 31 Dec 2016")
Lapaz2 = Exchange.create!(title: 'Exchange Title', seller_id: hortense.id, amount: 1000, base_currency_id: bob.id, variable_currency_id: eur.id, city: 'La Paz', start_date: "Mon, 04 Jan 2016", end_date: "Mon, 11 Jan 2016")
HongKong2 = Exchange.create!(title: 'Exchange Title', seller_id: hortense.id, amount: 180, base_currency_id: hkd.id, variable_currency_id: usd.id, city: 'Hong-Kong', start_date: "Wed, 06 Jan 2016", end_date: "Sat, 09 Jan 2016")
HongKong3 = Exchange.create!(title: 'Exchange Title', seller_id: hortense.id, amount: 300, base_currency_id: hkd.id, variable_currency_id: eur.id, city: 'Hong-Kong', start_date: "Tue, 29 Dec 2016", end_date: "Thu, 31 Dec 2016")
Madrid = Exchange.create!(title: 'Exchange Title', seller_id: margaux.id, amount: 40, base_currency_id: eur.id, variable_currency_id: zar.id, city: 'Madrid', start_date: "Fri, 08 Jan 2016", end_date: "Fri, 10 Jan 2016")
Lyon = Exchange.create!(title: 'Exchange Title', seller_id: pauline.id, amount: 1200, base_currency_id: vnd.id, variable_currency_id: eur.id, city: 'Lyon', start_date: "Tue, 22 Dec 2016", end_date: "Tue, 23 Dec 2016")
Paris = Exchange.create!(title: 'Exchange Title', seller_id: pauline.id, amount: 300, base_currency_id: rub.id, variable_currency_id: eur.id, city: 'Paris', start_date: "Mon, 28 Dec 2015", end_date: "Fri, 01 Jan 2016")
