# JSON Query

### Opdracht 1
Zoals je in de manual kunt lezen, kun je ook rekenen in je queries. Schrijf een query die de bevolkingsdichtheid in 1970 voor ieder land berekent.

```
jq ".[] | { country: .country, population_density_1970: (.population_1970 / .area_km2) }" < world-population.json > DS-JSON-query-1-output.json
```

```json
{
  "country": "Afghanistan",
  "population_density_1970": 16.48647103015807
}
{
  "country": "Albania",
  "population_density_1970": 80.86583414498399
}
{
  "country": "Algeria",
  "population_density_1970": 5.792365752615419
}
{
  "country": "American Samoa",
  "population_density_1970": 136.05527638190955
}
{
  "country": "Andorra",
  "population_density_1970": 42.43589743589744
}
{
  "country": "Angola",
  "population_density_1970": 4.836528435068581
}
{
  "country": "Anguilla",
  "population_density_1970": 69.04395604395604
}
{
  "country": "Antigua and Barbuda",
  "population_density_1970": 145.96380090497738
}
{
  "country": "Argentina",
  "population_density_1970": 8.575313983599482
}
{
  "country": "Armenia",
  "population_density_1970": 85.20919207880846
}
{
  "country": "Aruba",
  "population_density_1970": 328.3666666666667
}
{
  "country": "Australia",
  "population_density_1970": 1.6374148078581139
}
{
  "country": "Austria",
  "population_density_1970": 89.00932384256775
}
{
  "country": "Azerbaijan",
  "population_density_1970": 62.64800230946882
}
{
  "country": "Bahamas",
  "population_density_1970": 12.84723517177078
}
{
  "country": "Bahrain",
  "population_density_1970": 290.921568627451
}
{
  "country": "Bangladesh",
  "population_density_1970": 457.69370468252356
}
{
  "country": "Barbados",
  "population_density_1970": 561.3883720930232
}
{
  "country": "Belarus",
  "population_density_1970": 44.17526974951831
}
{
  "country": "Belgium",
  "population_density_1970": 315.42767295597486
}
{
  "country": "Belize",
  "population_density_1970": 5.264521466515719
}
{
  "country": "Benin",
  "population_density_1970": 26.845935962778142
}
{
  "country": "Bermuda",
  "population_density_1970": 963.3148148148148
}
{
  "country": "Bhutan",
  "population_density_1970": 7.78491430952753
}
{
  "country": "Bolivia",
  "population_density_1970": 4.174196531707721
}
{
  "country": "Bosnia and Herzegovina",
  "population_density_1970": 74.50957839442286
}
{
  "country": "Botswana",
  "population_density_1970": 1.0176013745704466
}
{
  "country": "Brazil",
  "population_density_1970": 11.316640650219762
}
{
  "country": "British Virgin Islands",
  "population_density_1970": 63.450331125827816
}
{
  "country": "Brunei",
  "population_density_1970": 23.129748482220293
}
{
  "country": "Bulgaria",
  "population_density_1970": 77.40825584646326
}
{
  "country": "Burkina Faso",
  "population_density_1970": 20.55803815113182
}
{
  "country": "Burundi",
  "population_density_1970": 125.66767263059567
}
{
  "country": "Cambodia",
  "population_density_1970": 37.05650840997597
}
{
  "country": "Cameroon",
  "population_density_1970": 13.57218546110777
}
{
  "country": "Canada",
  "population_density_1970": 2.146748665704525
}
{
  "country": "Cape Verde",
  "population_density_1970": 71.22787007190676
}
{
  "country": "Cayman Islands",
  "population_density_1970": 39.89772727272727
}
{
  "country": "Central African Republic",
  "population_density_1970": 3.3184736686656477
}
{
  "country": "Chad",
  "population_density_1970": 2.856225856697819
}
{
  "country": "Chile",
  "population_density_1970": 12.988301842873051
}
{
  "country": "China",
  "population_density_1970": 84.73655658037568
}
{
  "country": "Colombia",
  "population_density_1970": 18.30986697590011
}
{
  "country": "Comoros",
  "population_density_1970": 130.156283566058
}
{
  "country": "Cook Islands",
  "population_density_1970": 86.73728813559322
}
{
  "country": "Costa Rica",
  "population_density_1970": 36.315009784735814
}
{
  "country": "Croatia",
  "population_density_1970": 79.38364490935435
}
{
  "country": "Cuba",
  "population_density_1970": 80.7181755305595
}
{
  "country": "Curacao",
  "population_density_1970": 338.7049549549549
}
{
  "country": "Cyprus",
  "population_density_1970": 69.26861960869095
}
{
  "country": "Czech Republic",
  "population_density_1970": 124.20901540607368
}
{
  "country": "Denmark",
  "population_density_1970": 114.2377825219288
}
{
  "country": "Djibouti",
  "population_density_1970": 6.223232758620689
}
{
  "country": "Dominica",
  "population_density_1970": 91.73768308921439
}
{
  "country": "Dominican Republic",
  "population_density_1970": 91.96176367857656
}
{
  "country": "DR Congo",
  "population_density_1970": 8.594009957106145
}
{
  "country": "Ecuador",
  "population_density_1970": 22.295162205020212
}
{
  "country": "Egypt",
  "population_density_1970": 34.69697840291286
}
{
  "country": "El Salvador",
  "population_density_1970": 172.0018059978138
}
{
  "country": "Equatorial Guinea",
  "population_density_1970": 11.299240668781861
}
{
  "country": "Eritrea",
  "population_density_1970": 10.822687074829933
}
{
  "country": "Estonia",
  "population_density_1970": 30.114732350144823
}
{
  "country": "Eswatini",
  "population_density_1970": 25.504780004607234
}
{
  "country": "Ethiopia",
  "population_density_1970": 25.63456126052703
}
{
  "country": "Falkland Islands",
  "population_density_1970": 0.18680686765793147
}
{
  "country": "Faroe Islands",
  "population_density_1970": 27.57788944723618
}
{
  "country": "Fiji",
  "population_density_1970": 28.876641856392293
}
{
  "country": "Finland",
  "population_density_1970": 13.611980828782828
}
{
  "country": "France",
  "population_density_1970": 91.57883613228324
}
{
  "country": "French Guiana",
  "population_density_1970": 0.55646802499581
}
{
  "country": "French Polynesia",
  "population_density_1970": 28.29157667386609
}
{
  "country": "Gabon",
  "population_density_1970": 2.231092248606483
}
{
  "country": "Gambia",
  "population_density_1970": 49.464963981663395
}
{
  "country": "Georgia",
  "population_density_1970": 68.87268292682927
}
{
  "country": "Germany",
  "population_density_1970": 219.2425471978136
}
{
  "country": "Ghana",
  "population_density_1970": 37.15165197268303
}
{
  "country": "Gibraltar",
  "population_density_1970": 4447.5
}
{
  "country": "Greece",
  "population_density_1970": 64.73879081748618
}
{
  "country": "Greenland",
  "population_density_1970": 0.020975159804366032
}
{
  "country": "Grenada",
  "population_density_1970": 287.1918604651163
}
{
  "country": "Guadeloupe",
  "population_density_1970": 195.52211302211302
}
{
  "country": "Guam",
  "population_density_1970": 160.83788706739526
}
{
  "country": "Guatemala",
  "population_density_1970": 50.080430530172926
}
{
  "country": "Guernsey",
  "population_density_1970": 675.0769230769231
}
{
  "country": "Guinea",
  "population_density_1970": 17.174105272577147
}
{
  "country": "Guinea-Bissau",
  "population_density_1970": 16.378214532871972
}
{
  "country": "Guyana",
  "population_density_1970": 3.2807567602770633
}
{
  "country": "Haiti",
  "population_density_1970": 168.6779099099099
}
{
  "country": "Honduras",
  "population_density_1970": 24.737341322049566
}
{
  "country": "Hong Kong",
  "population_density_1970": 3582.4927536231885
}
{
  "country": "Hungary",
  "population_density_1970": 110.88452938900116
}
{
  "country": "Iceland",
  "population_density_1970": 1.985126213592233
}
{
  "country": "India",
  "population_density_1970": 169.57750236495426
}
{
  "country": "Indonesia",
  "population_density_1970": 60.50103409222769
}
{
  "country": "Iran",
  "population_density_1970": 17.26112808253878
}
{
  "country": "Iraq",
  "population_density_1970": 22.384135226331626
}
{
  "country": "Ireland",
  "population_density_1970": 41.803210336829224
}
{
  "country": "Isle of Man",
  "population_density_1970": 96.67482517482517
}
{
  "country": "Israel",
  "population_density_1970": 139.97626384207993
}
{
  "country": "Italy",
  "population_density_1970": 176.9587304537128
}
{
  "country": "Ivory Coast",
  "population_density_1970": 16.985161088248883
}
{
  "country": "Jamaica",
  "population_density_1970": 169.1466654535529
}
{
  "country": "Japan",
  "population_density_1970": 278.932180562538
}
{
  "country": "Jersey",
  "population_density_1970": 589.198275862069
}
{
  "country": "Jordan",
  "population_density_1970": 17.431599919410804
}
{
  "country": "Kazakhstan",
  "population_density_1970": 4.501194539249147
}
{
  "country": "Kenya",
  "population_density_1970": 19.768675682800712
}
{
  "country": "Kiribati",
  "population_density_1970": 70.82244143033292
}
{
  "country": "Kuwait",
  "population_density_1970": 45.054776069143564
}
{
  "country": "Kyrgyzstan",
  "population_density_1970": 15.085615975914099
}
{
  "country": "Laos",
  "population_density_1970": 11.297647804054055
}
{
  "country": "Latvia",
  "population_density_1970": 37.13524063259964
}
{
  "country": "Lebanon",
  "population_density_1970": 227.87897053195562
}
{
  "country": "Lesotho",
  "population_density_1970": 33.71704826223028
}
{
  "country": "Liberia",
  "population_density_1970": 13.141565426644757
}
{
  "country": "Libya",
  "population_density_1970": 1.0850432499403253
}
{
  "country": "Liechtenstein",
  "population_density_1970": 131.80625
}
{
  "country": "Lithuania",
  "population_density_1970": 49.15998468606432
}
{
  "country": "Luxembourg",
  "population_density_1970": 131.22273781902553
}
{
  "country": "Macau",
  "population_density_1970": 8242.8
}
{
  "country": "Madagascar",
  "population_density_1970": 11.310540490357573
}
{
  "country": "Malawi",
  "population_density_1970": 39.03599642145775
}
{
  "country": "Malaysia",
  "population_density_1970": 31.156029419322074
}
{
  "country": "Maldives",
  "population_density_1970": 410.81
}
{
  "country": "Mali",
  "population_density_1970": 4.961801882289194
}
{
  "country": "Malta",
  "population_density_1970": 998.1455696202531
}
{
  "country": "Marshall Islands",
  "population_density_1970": 132.4254143646409
}
{
  "country": "Martinique",
  "population_density_1970": 289.38652482269504
}
{
  "country": "Mauritania",
  "population_density_1970": 1.0887726787620065
}
{
  "country": "Mauritius",
  "population_density_1970": 406.91911764705884
}
{
  "country": "Mayotte",
  "population_density_1970": 94.60695187165776
}
{
  "country": "Mexico",
  "population_density_1970": 25.600664842507157
}
{
  "country": "Micronesia",
  "population_density_1970": 84.02991452991454
}
{
  "country": "Moldova",
  "population_density_1970": 109.64781658098445
}
{
  "country": "Monaco",
  "population_density_1970": 12135
}
{
  "country": "Mongolia",
  "population_density_1970": 0.8272308213616689
}
{
  "country": "Montenegro",
  "population_density_1970": 38.39183318853171
}
{
  "country": "Montserrat",
  "population_density_1970": 111.7843137254902
}
{
  "country": "Morocco",
  "population_density_1970": 34.20524241406338
}
{
  "country": "Mozambique",
  "population_density_1970": 10.493738694344989
}
{
  "country": "Myanmar",
  "population_density_1970": 40.32663196261185
}
{
  "country": "Namibia",
  "population_density_1970": 0.9138242401119165
}
{
  "country": "Nauru",
  "population_density_1970": 317.2857142857143
}
{
  "country": "Nepal",
  "population_density_1970": 84.93817136722811
}
{
  "country": "Netherlands",
  "population_density_1970": 311.533715651135
}
{
  "country": "New Caledonia",
  "population_density_1970": 5.974804845222073
}
{
  "country": "New Zealand",
  "population_density_1970": 10.441425386461194
}
{
  "country": "Nicaragua",
  "population_density_1970": 18.752095909429098
}
{
  "country": "Niger",
  "population_density_1970": 3.6856416732438833
}
{
  "country": "Nigeria",
  "population_density_1970": 60.154999956699086
}
{
  "country": "Niue",
  "population_density_1970": 19.942307692307693
}
{
  "country": "North Korea",
  "population_density_1970": 124.41619240405515
}
{
  "country": "North Macedonia",
  "population_density_1970": 64.43367168358418
}
{
  "country": "Northern Mariana Islands",
  "population_density_1970": 21.85991379310345
}
{
  "country": "Norway",
  "population_density_1970": 11.968876041531553
}
{
  "country": "Oman",
  "population_density_1970": 2.1670210016155087
}
{
  "country": "Pakistan",
  "population_density_1970": 67.22991863133737
}
{
  "country": "Palau",
  "population_density_1970": 24.762527233115467
}
{
  "country": "Palestine",
  "population_density_1970": 179.78151125401928
}
{
  "country": "Panama",
  "population_density_1970": 20.104061418513066
}
{
  "country": "Papua New Guinea",
  "population_density_1970": 5.377795782559848
}
{
  "country": "Paraguay",
  "population_density_1970": 5.922004071276847
}
{
  "country": "Peru",
  "population_density_1970": 10.552600496725843
}
{
  "country": "Philippines",
  "population_density_1970": 109.3479128268191
}
{
  "country": "Poland",
  "population_density_1970": 103.88591174974974
}
{
  "country": "Portugal",
  "population_density_1970": 94.29504832229341
}
{
  "country": "Puerto Rico",
  "population_density_1970": 308.6379932356257
}
{
  "country": "Qatar",
  "population_density_1970": 10.185309856723633
}
{
  "country": "Republic of the Congo",
  "population_density_1970": 4.084763157894737
}
{
  "country": "Reunion",
  "population_density_1970": 188.73954599761052
}
{
  "country": "Romania",
  "population_density_1970": 83.57118347588626
}
{
  "country": "Russia",
  "population_density_1970": 7.608560575993719
}
{
  "country": "Rwanda",
  "population_density_1970": 147.9370870984889
}
{
  "country": "Saint Barthelemy",
  "population_density_1970": 115.0952380952381
}
{
  "country": "Saint Kitts and Nevis",
  "population_density_1970": 172.2911877394636
}
{
  "country": "Saint Lucia",
  "population_density_1970": 167.3538961038961
}
{
  "country": "Saint Martin",
  "population_density_1970": 109.47169811320755
}
{
  "country": "Saint Pierre and Miquelon",
  "population_density_1970": 22.880165289256198
}
{
  "country": "Saint Vincent and the Grenadines",
  "population_density_1970": 253.10796915167094
}
{
  "country": "Samoa",
  "population_density_1970": 50.23610133708656
}
{
  "country": "San Marino",
  "population_density_1970": 297.8524590163934
}
{
  "country": "Sao Tome and Principe",
  "population_density_1970": 80.48029045643153
}
{
  "country": "Saudi Arabia",
  "population_density_1970": 2.840498397443352
}
{
  "country": "Senegal",
  "population_density_1970": 22.202620957493316
}
{
  "country": "Serbia",
  "population_density_1970": 81.41072418827311
}
{
  "country": "Seychelles",
  "population_density_1970": 120.3075221238938
}
{
  "country": "Sierra Leone",
  "population_density_1970": 38.730931140228606
}
{
  "country": "Singapore",
  "population_density_1970": 2903.987323943662
}
{
  "country": "Sint Maarten",
  "population_density_1970": 184.11764705882354
}
{
  "country": "Slovakia",
  "population_density_1970": 92.23376226114975
}
{
  "country": "Slovenia",
  "population_density_1970": 85.89187589404627
}
{
  "country": "Solomon Islands",
  "population_density_1970": 5.981208471760797
}
{
  "country": "Somalia",
  "population_density_1970": 5.835389558963518
}
{
  "country": "South Africa",
  "population_density_1970": 18.319105809242473
}
{
  "country": "South Korea",
  "population_density_1970": 325.3282406945415
}
{
  "country": "South Sudan",
  "population_density_1970": 5.393202042775657
}
{
  "country": "Spain",
  "population_density_1970": 66.7848839507344
}
{
  "country": "Sri Lanka",
  "population_density_1970": 188.82440176802317
}
{
  "country": "Sudan",
  "population_density_1970": 5.994060659530834
}
{
  "country": "Suriname",
  "population_density_1970": 2.3191185447442315
}
{
  "country": "Sweden",
  "population_density_1970": 17.82765076227806
}
{
  "country": "Switzerland",
  "population_density_1970": 149.72451797306462
}
{
  "country": "Syria",
  "population_density_1970": 34.12463008964251
}
{
  "country": "Taiwan",
  "population_density_1970": 413.2807448954218
}
{
  "country": "Tajikistan",
  "population_density_1970": 20.915576519916144
}
{
  "country": "Tanzania",
  "population_density_1970": 14.409458600107715
}
{
  "country": "Thailand",
  "population_density_1970": 69.75313376987839
}
{
  "country": "Timor-Leste",
  "population_density_1970": 37.247613284926715
}
{
  "country": "Togo",
  "population_density_1970": 38.6965395791142
}
{
  "country": "Tokelau",
  "population_density_1970": 142.83333333333334
}
{
  "country": "Tonga",
  "population_density_1970": 115.77510040160642
}
{
  "country": "Trinidad and Tobago",
  "population_density_1970": 192.76608187134502
}
{
  "country": "Tunisia",
  "population_density_1970": 30.850216979402237
}
{
  "country": "Turkey",
  "population_density_1970": 45.358235851151534
}
{
  "country": "Turkmenistan",
  "population_density_1970": 4.51020692481049
}
{
  "country": "Turks and Caicos Islands",
  "population_density_1970": 5.975738396624473
}
{
  "country": "Tuvalu",
  "population_density_1970": 223.6153846153846
}
{
  "country": "Uganda",
  "population_density_1970": 42.712531566963364
}
{
  "country": "Ukraine",
  "population_density_1970": 78.34148467274234
}
{
  "country": "United Arab Emirates",
  "population_density_1970": 3.565598086124402
}
{
  "country": "United Kingdom",
  "population_density_1970": 229.10731165088515
}
{
  "country": "United States",
  "population_density_1970": 21.37380516206265
}
{
  "country": "United States Virgin Islands",
  "population_density_1970": 182.84149855907782
}
{
  "country": "Uruguay",
  "population_density_1970": 15.412933482108333
}
{
  "country": "Uzbekistan",
  "population_density_1970": 26.84702950379973
}
{
  "country": "Vanuatu",
  "population_density_1970": 7.139141849208302
}
{
  "country": "Vatican City",
  "population_density_1970": 752
}
{
  "country": "Venezuela",
  "population_density_1970": 12.390787226729373
}
{
  "country": "Vietnam",
  "population_density_1970": 126.59217963117278
}
{
  "country": "Wallis and Futuna",
  "population_density_1970": 66.03521126760563
}
{
  "country": "Western Sahara",
  "population_density_1970": 0.287109022556391
}
{
  "country": "Yemen",
  "population_density_1970": 12.962162479544215
}
{
  "country": "Zambia",
  "population_density_1970": 5.6890814921898665
}
{
  "country": "Zimbabwe",
  "population_density_1970": 13.31497068510609
}
```


### Opdracht 2
Schrijf een query/verzin een oplossing die per continent de absolute bevolkingsgroei tussen 1970 en 2022 weergeeft.

```
jq "
    group_by(.continent) |
    map({
        continent: .[0].continent,
        growth:
            map(.population_2022 - .population_1990) |
            add
    })
" < world-population.json > DS-JSON-query-2-output.json
```

```json
[
  {
    "continent": "Africa",
    "growth": 788580303
  },
  {
    "continent": "Asia",
    "growth": 1510819697
  },
  {
    "continent": "Europe",
    "growth": 22826741
  },
  {
    "continent": "North America",
    "growth": 179029711
  },
  {
    "continent": "Oceania",
    "growth": 18294732
  },
  {
    "continent": "South America",
    "growth": 139670193
  }
]
```


### Opdracht 3
Schrijf een query/verzin een oplossing die per continent de absolute aantallen per gegeven jaar weergeeft.

```
jq "
    group_by(.continent) |
    map({
        continent: .[0].continent,
        population_2022: map(.population_2022) | add,
        population_2020: map(.population_2020) | add,
        population_2015: map(.population_2015) | add,
        population_2010: map(.population_2010) | add,
        population_2000: map(.population_2000) | add,
        population_1990: map(.population_1990) | add,
        population_1980: map(.population_1980) | add,
        population_1970: map(.population_1970) | add
    })
" < world-population.json > DS-JSON-query-3-output.json
```

```json
[
  {
    "continent": "Africa",
    "population_2022": 1426730932,
    "population_2020": 1360671810,
    "population_2015": 1201102442,
    "population_2010": 1055228072,
    "population_2000": 818946032,
    "population_1990": 638150629,
    "population_1980": 481536377,
    "population_1970": 365444348
  },
  {
    "continent": "Asia",
    "population_2022": 4721383274,
    "population_2020": 4663086535,
    "population_2015": 4458250182,
    "population_2010": 4220041327,
    "population_2000": 3735089604,
    "population_1990": 3210563577,
    "population_1980": 2635334228,
    "population_1970": 2144906290
  },
  {
    "continent": "Europe",
    "population_2022": 743147538,
    "population_2020": 745792196,
    "population_2015": 741535608,
    "population_2010": 735613934,
    "population_2000": 726093423,
    "population_1990": 720320797,
    "population_1980": 692527159,
    "population_1970": 655923991
  },
  {
    "continent": "North America",
    "population_2022": 600296136,
    "population_2020": 594236593,
    "population_2015": 570383850,
    "population_2010": 542720651,
    "population_2000": 486069584,
    "population_1990": 421266425,
    "population_1980": 368293361,
    "population_1970": 315434606
  },
  {
    "continent": "Oceania",
    "population_2022": 45038554,
    "population_2020": 43933426,
    "population_2015": 40403283,
    "population_2010": 37102764,
    "population_2000": 31222778,
    "population_1990": 26743822,
    "population_1980": 22920240,
    "population_1970": 19480270
  },
  {
    "continent": "South America",
    "population_2022": 436816608,
    "population_2020": 431530043,
    "population_2015": 413134396,
    "population_2010": 393078250,
    "population_2000": 349634282,
    "population_1990": 297146415,
    "population_1980": 241789006,
    "population_1970": 192947156
  }
]
```


### Opdracht 4
Schrijf een query/verzin een oplossing die per continent het percentage van de wereldbevolking van dat continent weergeeft.

```
jq "
  (map(.population_2022) | add) as $total_population |
  
  group_by(.continent) |
  map({
    continent: .[0].continent,
    population_2022: map(.population_2022) | add,
    population_percentage_2022: (
      (map(.population_2022) | add) / $total_population * 100
    )
  })
" < world-population.json > DS-JSON-query-4-output.json
```

```json
[
  {
    "continent": "Africa",
    "population_2022": 1426730932,
    "population_percentage_2022": 17.893603711292595
  },
  {
    "continent": "Asia",
    "population_2022": 4721383274,
    "population_percentage_2022": 59.21408121127158
  },
  {
    "continent": "Europe",
    "population_2022": 743147538,
    "population_percentage_2022": 9.320319091529134
  },
  {
    "continent": "North America",
    "population_2022": 600296136,
    "population_percentage_2022": 7.528722428374607
  },
  {
    "continent": "Oceania",
    "population_2022": 45038554,
    "population_percentage_2022": 0.5648591608481732
  },
  {
    "continent": "South America",
    "population_2022": 436816608,
    "population_percentage_2022": 5.478414396683904
  }
]
```


<!-- ### Opdracht 5 -->
<!-- Schrijf een query/verzin een oplossing die per continent het percentage groei ten opzichte van 1970 weergeeft. -->

```

```
