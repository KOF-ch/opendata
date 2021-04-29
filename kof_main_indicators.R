# indicator     dcat    metadata on db
# Baro          X
# GL            X       X
# Beschäftigung X       Y
# ESI           X
# global baro   X

# TODO: keywords, topics, accrualperiodicity
#       Metadata as csv or json or both or neither or banana?

library(dcatR)

pub <- DcatPublisher$new("KOF Konjunkturforschungsstelle", "https://kof.ethz.ch/")

contact_data_at_kof <- DcatContact$new(label = "KOF Datenservice", email = "data@kof.ethz.ch")

organization <- "kof-konjunkturforschungsstelle"

# ch.kofbarometer ----
ch.kof.barometer_data <- DcatResource$new(
  title = list(
    de = "KOF Konjunkturbarometer",
    en = "KOF Economic Barometer",
    fr = "KOF Baromètre conjoncturel"
  ),
  description = list(
    de = "Seit den 1970er Jahren veröffentlicht die KOF einen vorlaufenden Sammelindikator, das Konjunkturbarometer, welches anzeigt, wie sich die Schweizer Konjunktur in der nahen Zukunft entwickeln dürfte. Die Methodik wurde 1998 revidiert, dann nochmals 2006. Die letzte umfassende Revision erfolgte im Jahr 2014.",
    en = "Since the 1970s, the KOF Swiss Economic Institute is publishing a leading composite indicator, the KOF Economic Barometer, predicting how the Swiss economy should perform in the near future. The methodology was overhauled in 1998 and again in 2006. The last thorough revision was conducted in 2014.",
    fr = "Depuis les années 70, le KOF publie un indicateur phare pour l’économie suisse, le baromètre conjoncturel, lequel prévoit l’évolution de la conjoncture suisse dans un avenir proche. La méthode de calcul a été révisée en 1998 puis en 2006. La dernière révision a eu lieu en 2014."
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/collections/ogd_ch.kof.barometer?mime=csv",
  id = "ch.kof.barometer", # TODO  It is recommended that the identifier consists out of the following characters: A-Za-z, 0-9 without special characters, except - and _
  rights = "CC-BY",
  media_type = "text/csv",
  issued = as.Date("2021-01-26"),
  modified = Sys.Date(),
  language_independent = TRUE
)

ch.kof.barometer_meta_de <- DcatResource$new(
  title = list(
    de = "Datenbeschreibung"
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/metadata/collections/ogd_ch.kof.barometer?mime=csv&locale=de",
  id = "ch.kof.barometer.meta.de",
  rights = "CC-BY",
  media_type = "text/csv",
  modified = Sys.Date(),
  issued = as.Date("2021-01-26")
)

ch.kof.barometer_meta_fr <- DcatResource$new(
  title = list(
    fr = "Description des données"
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/metadata/collections/ogd_ch.kof.barometer?mime=csv&locale=fr",
  id = "ch.kof.barometer.meta.fr",
  rights = "CC-BY",
  media_type = "text/csv",
  modified = Sys.Date(),
  issued = as.Date("2021-01-26")
)

ch.kof.barometer_meta_en <- DcatResource$new(
  title = list(
    en = "Data description"
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/metadata/collections/ogd_ch.kof.barometer?mime=csv&locale=en",
  id = "ch.kof.barometer.meta.en",
  rights = "CC-BY",
  media_type = "text/csv",
  modified = Sys.Date(),
  issued = as.Date("2021-01-26")
)

ch.kof.barometer <- DcatDataset$new(
  "ch.kof.barometer",
  organization,
  title = list(
    de = "KOF Konjunkturbarometer",
    en = "KOF Economic Barometer",
    fr = "KOF Baromètre conjoncturel"
  ),
  description = list(
    de = "Seit den 1970er Jahren veröffentlicht die KOF einen vorlaufenden Sammelindikator, das Konjunkturbarometer, welches anzeigt, wie sich die Schweizer Konjunktur in der nahen Zukunft entwickeln dürfte. Die Methodik wurde 1998 revidiert, dann nochmals 2006. Die letzte umfassende Revision erfolgte im Jahr 2014.",
    en = "Since the 1970s, the KOF Swiss Economic Institute is publishing a leading composite indicator, the KOF Economic Barometer, predicting how the Swiss economy should perform in the near future. The methodology was overhauled in 1998 and again in 2006. The last thorough revision was conducted in 2014.",
    fr = "Depuis les années 70, le KOF publie un indicateur phare pour l’économie suisse, le baromètre conjoncturel, lequel prévoit l’évolution de la conjoncture suisse dans un avenir proche. La méthode de calcul a été révisée en 1998 puis en 2006. La dernière révision a eu lieu en 2014."
  ),
  keywords = list(
    de = c("vorlaufindikator", "konjunktur", "schweiz"),
    fr = c("conjoncture", "suisse"),
    en = c("leading indicator", "business cycle", "fli", "switzerland")
  ),
  themes = c("national-economy"),
  publishers = pub,
  landing_page = "https://kof.ethz.ch/prognosen-indikatoren/indikatoren/kof-konjunkturbarometer.html",
  contact_points = list(
    contact_data_at_kof
  ),
  resources = list(
    ch.kof.barometer_data,
    ch.kof.barometer_meta_de,
    ch.kof.barometer_meta_fr,
    ch.kof.barometer_meta_en
  ),
  accrual_periodicity = "monthly"
)












# KOF Business Situation Indicator ----
# TODO: Use set what the website uses
ch.kof.bts_total.bs_data <- DcatResource$new(
  title = list(
    de = "KOF Business Situation Indicator",
    en = "KOF Geschäftslageindikator",
    fr = "KOF Indicateur de la situation des affaires"
  ),
  description = list(
    de = "Die KOF Geschäftslage basiert auf mehr als 4500 Meldungen von Unternehmen in der Schweiz. Monatlich werden Unternehmen in den Wirtschaftsbereichen Industrie, Detailhandel, Baugewerbe, Projektierung sowie Finanz- und Versicherungsdienstleistungen befragt. Unternehmen im Gastgewerbe, im Grosshandel und in den übrigen Dienstleistungen werden vierteljährlich, jeweils im ersten Monat eines Quartals, befragt.",
    fr = "The KOF Business Situation Indicator is based on over 4,500 Swiss enterprise respondents. Each month, a survey is conducted among companies active in industry, retail, construction, project engineering as well as financial and insurance services. Companies in hotel and catering, wholesale and other services are interviewed in the first month of every quarter.",
    en = "L’indicateur de la situation des affaires du KOF se fonde sur plus de 4500 informations d’entreprises de Suisse. Chaque mois, les entreprises des secteurs de l’industrie, du commerce de détail, du bâtiment, des bureaux d’études et des services financiers et assurantiels sont interrogées. Les entreprises de l’hôtellerie, du commerce de gros et des autres services font l’objet d’une enquête trimestrielle, à chaque fois le premier mois d’un nouveau trimestre."
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/collections/ogd_ch.kof.bts_total?mime=csv",
  id = "ch.kof.bts_total",
  rights = "CC-BY",
  media_type = "text/csv",
  issued = as.Date("2021-01-26"),
  language_independent = TRUE
)

ch.kof.bts_total.bs_meta_de <- DcatResource$new(
  title = list(
    de = "Datenbeschreibung"
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/metadata/collections/ogd_ch.kof.TODO?mime=csv&locale=de",
  id = "ch.kof.bts_total.meta.de",
  rights = "CC-BY",
  media_type = "text/csv",
  issued = as.Date("2021-01-26")
)

ch.kof.bts_total.bs_meta_fr <- DcatResource$new(
  title = list(
    fr = "Description des données"
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/metadata/collections/ogd_ch.kof.TODO?mime=csv&locale=fr",
  id = "ch.kof.bts_total.meta.fr",
  rights = "CC-BY",
  media_type = "text/csv",
  issued = as.Date("2021-01-26")
)

ch.kof.bts_total.bs_meta_en <- DcatResource$new(
  title = list(
    en = "Data description"
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/metadata/collections/ogd_ch.kof.TODO?mime=csv&locale=en",
  id = "ch.kof.bts_total.meta.en",
  rights = "CC-BY",
  media_type = "text/csv",
  issued = as.Date("2021-01-26")
)

ch.kof.bts_total.bs <- DcatDataset$new(
  "ch.kof.bts_total",
  organization,
  title = list(
    de = "KOF Business Situation Indicator",
    en = "KOF Geschäftslageindikator",
    fr = "KOF Indicateur de la situation des affaires"
  ),
  description = list(
    de = "Die KOF Geschäftslage basiert auf mehr als 4500 Meldungen von Unternehmen in der Schweiz. Monatlich werden Unternehmen in den Wirtschaftsbereichen Industrie, Detailhandel, Baugewerbe, Projektierung sowie Finanz- und Versicherungsdienstleistungen befragt. Unternehmen im Gastgewerbe, im Grosshandel und in den übrigen Dienstleistungen werden vierteljährlich, jeweils im ersten Monat eines Quartals, befragt.",
    fr = "The KOF Business Situation Indicator is based on over 4,500 Swiss enterprise respondents. Each month, a survey is conducted among companies active in industry, retail, construction, project engineering as well as financial and insurance services. Companies in hotel and catering, wholesale and other services are interviewed in the first month of every quarter.",
    en = "L’indicateur de la situation des affaires du KOF se fonde sur plus de 4500 informations d’entreprises de Suisse. Chaque mois, les entreprises des secteurs de l’industrie, du commerce de détail, du bâtiment, des bureaux d’études et des services financiers et assurantiels sont interrogées. Les entreprises de l’hôtellerie, du commerce de gros et des autres services font l’objet d’une enquête trimestrielle, à chaque fois le premier mois d’un nouveau trimestre."
  ),
  keywords = list(
    de = c("Geschäftslageindikator", "Schweiz"),
    fr = c("situation des affaires", "suisse"),
    en = c("Bussiness situation", "economics", "switzerland")
  ),
  themes = c("national-economy"),
  publishers = pub,
  contact_points = list(
    contact_data_at_kof
  ),
  landing_page = "https://kof.ethz.ch/prognosen-indikatoren/indikatoren/kof-geschaeftslageindikator.html",
  resources = list(
    ch.kof.bts_total.bs_data,
    ch.kof.bts_total.bs_meta_de,
    ch.kof.bts_total.bs_meta_fr,
    ch.kof.bts_total.bs_meta_en
  ),
  accrual_periodicity = "monthly"
)


















# Employment Indicator ----
ch.kof.ie_data <- DcatResource$new(
  id = "ch.kof.ie",
  title = list(
    de = "KOF Beschäftigungsindikator",
    en = "KOF Employment Indicator",
    fr = "KOF Indicateur de l'emploi"
  ),
  description = list(
    de = "Der KOF Beschäftigungsindikator wird aus den vierteljährlichen Konjunkturumfragen der KOF berechnet. Im Rahmen dieser Umfragen befragt die KOF privatwirtschaftliche Unternehmen in der Schweiz, wie sie ihren gegenwärtigen Bestand an Beschäftigten beurteilen und ob sie diesen in den nächsten drei Monaten verändern wollen.",
    en = "The KOF Employment Indicator is calculated on the basis of the quarterly KOF Business Tendency Surveys. As part of these surveys, the KOF asks private businesses in Switzerland how they consider their current staffing levels to be and whether they intend to change them over the coming three months.",
    fr = "Le KOF indicateur de l’emploi est calculé à partir des enquêtes conjoncturelles trimestrielles du KOF. Dans le cadre de ses enquêtes, le KOF interroge des entreprises privées de Suisse sur leur appréciation du nombre actuel de leurs salariés et sur leur intention de modifier ses effectifs dans les trois mois qui suivent."
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/collections/ogd_ch.kof.ie?mime=csv",
  rights = "CC-BY",
  media_type = "text/csv",
  issued = as.Date("2021-01-26"),
  language_independent = TRUE
)

ch.kof.ie_meta_de <- DcatResource$new(
  id = "ch.kof.ie.meta.de",
  title = list(
    de = "Datenbeschreibung"
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/metadata/collections/ogd_ch.kof.ie?mime=csv&locale=de",
  rights = "CC-BY",
  media_type = "text/csv",
  issued = as.Date("2021-01-26")
)

ch.kof.ie_meta_fr <- DcatResource$new(
  id = "ch.kof.ie.meta.fr",
  title = list(
    fr = "Description des données"
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/metadata/collections/ogd_ch.kof.ie?mime=csv&locale=fr",
  rights = "CC-BY",
  media_type = "text/csv",
  issued = as.Date("2021-01-26")
)

ch.kof.ie_meta_en <- DcatResource$new(
  id = "ch.kof.ie.meta.en",
  title = list(
    en = "Data description"
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/metadata/collections/ogd_ch.kof.ie?mime=csv&locale=en",
  rights = "CC-BY",
  media_type = "text/csv",
  issued = as.Date("2021-01-26")
)

ch.kof.ie <- DcatDataset$new(dataset_id = "ch.kof.ie",
                             org = organization,
                             title = list(
                               de = "KOF Beschäftigungsindikator",
                               en = "KOF Employment Indicator",
                               fr = "KOF Indicateur de l'emploi"
                             ),
                             description = list(
                               de = "Der KOF Beschäftigungsindikator wird aus den vierteljährlichen Konjunkturumfragen der KOF berechnet. Im Rahmen dieser Umfragen befragt die KOF privatwirtschaftliche Unternehmen in der Schweiz, wie sie ihren gegenwärtigen Bestand an Beschäftigten beurteilen und ob sie diesen in den nächsten drei Monaten verändern wollen.",
                               en = "The KOF Employment Indicator is calculated on the basis of the quarterly KOF Business Tendency Surveys. As part of these surveys, the KOF asks private businesses in Switzerland how they consider their current staffing levels to be and whether they intend to change them over the coming three months.",
                               fr = "Le KOF indicateur de l’emploi est calculé à partir des enquêtes conjoncturelles trimestrielles du KOF. Dans le cadre de ses enquêtes, le KOF interroge des entreprises privées de Suisse sur leur appréciation du nombre actuel de leurs salariés et sur leur intention de modifier ses effectifs dans les trois mois qui suivent."
                             ),
                             themes = c("work", "national-economy"),
                             publishers = pub,
                             contact_points = list(
                               contact_data_at_kof
                             ),
                             resources = list(
                               ch.kof.ie_data,
                               ch.kof.ie_meta_de,
                               ch.kof.ie_meta_fr,
                               ch.kof.ie_meta_en
                             ),
                             landing_page = "https://kof.ethz.ch/prognosen-indikatoren/indikatoren/kof-beschaeftigungsindikator.html",
                             keywords = list(
                               de = c("Arbeitsmarkt", "Beschäftigung"),
                               en = c("Labour market", "employment"),
                               fr = c("marché de l’emploi", "emploi")
                             ),
                             accrual_periodicity = "quarterly")

















# KOF Economic Sentiment Indicator ----
ch.kof.esi_data <- DcatResource$new(
  title = list(
    de = "KOF Economic Sentiment Indicator",
    en = "KOF Economic Sentiment Indicator",
    fr = "KOF Indice du climat économique"
  ),
  description = list(
    de = "Der KOF Economic Sentiment Indicator für die Schweiz basiert auf den Konjunkturumfragen der KOF und der Konsumentenbefragung des Staatssekretariats für Wirtschaft (SECO). Die Berechnungsmethode der Indikatoren für die Schweiz lehnt sich an die Methodik der EU-Kommission an. Die EU-Kommission berechnet auf diese Weise Indikatoren für alle Mitgliedsländer der EU sowie für verschiedene Aggregate, etwa der EU insgesamt oder den Euro-Raum.",
    en = "The KOF Economic Sentiment Indicator for Switzerland is based on the results of the KOF Business Tendency Surveys and the Consumer Confidence Survey conducted by the State Secretariat for Economic Affairs (SECO). The calculation method used for the Swiss indicators follows the method employed by the EU Commission to calculate indicators for all EU member states as well as various aggregates, for instance total EU or Euro area.",
    fr = "Le KOF Indice du climat économique pour la Suisse (KOF Economic Sentiment Indicator) se base sur les résultats d’enquêtes conjoncturelles du KOF et de celle menées auprès des consommateurs par le Secrétariat d’État à l’économie (SECO). La méthode de calcul des indices pour la Suisse s’appuie sur la méthodologie de la Commission européenne. La Commission européenne calcule de cette manière les indices pour tous les pays membres de l’UE ainsi que pour différents agrégats, tels que l’UE dans son ensemble ou la zone euro."
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/collections/ogd_ch.kof.esi&mime=csv",
  id = "ch.kof.esi.index",
  rights = "CC-BY",
  media_type = "text/csv",
  issued = as.Date("2021-01-26"),
  language_independent = TRUE
)

ch.kof.esi_meta_de <- DcatResource$new(
  title = list(
    de = "Datenbeschreibung"
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/metadata/collections/ogd_ch.kof.esi?mime=csv&locale=de",
  id = "ch.kof.esi.meta.de", # TODO ALL THE IDs
  rights = "CC-BY",
  media_type = "text/csv",
  issued = as.Date("2021-01-26")
)

ch.kof.esi_meta_fr <- DcatResource$new(
  title = list(
    fr = "Description des données"
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/metadata/collections/ogd_ch.kof.esi?mime=csv&locale=fr",
  id = "ch.kof.esi.meta.fr",
  rights = "CC-BY",
  media_type = "text/csv",
  issued = as.Date("2021-01-26")
)

ch.kof.esi_meta_en <- DcatResource$new(
  title = list(
    en = "Data description"
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/metadata/collections/ogd_ch.kof.esi?mime=csv&locale=en",
  id = "ch.kof.esi.meta.en", # TODO ALL THE IDs
  rights = "CC-BY",
  media_type = "text/csv",
  issued = as.Date("2021-01-26")
)

ch.kof.esi <- DcatDataset$new(
  "ch.kof.esi.index",
  organization,
  title = list(
    de = "KOF Economic Sentiment Indicator",
    en = "KOF Economic Sentiment Indicator",
    fr = "KOF Indice du climat économique"
  ),
  description = list(
    de = "Der KOF Economic Sentiment Indicator für die Schweiz basiert auf den Konjunkturumfragen der KOF und der Konsumentenbefragung des Staatssekretariats für Wirtschaft (SECO). Die Berechnungsmethode der Indikatoren für die Schweiz lehnt sich an die Methodik der EU-Kommission an. Die EU-Kommission berechnet auf diese Weise Indikatoren für alle Mitgliedsländer der EU sowie für verschiedene Aggregate, etwa der EU insgesamt oder den Euro-Raum.",
    en = "The KOF Economic Sentiment Indicator for Switzerland is based on the results of the KOF Business Tendency Surveys and the Consumer Confidence Survey conducted by the State Secretariat for Economic Affairs (SECO). The calculation method used for the Swiss indicators follows the method employed by the EU Commission to calculate indicators for all EU member states as well as various aggregates, for instance total EU or Euro area.",
    fr = "Le KOF Indice du climat économique pour la Suisse (KOF Economic Sentiment Indicator) se base sur les résultats d’enquêtes conjoncturelles du KOF et de celle menées auprès des consommateurs par le Secrétariat d’État à l’économie (SECO). La méthode de calcul des indices pour la Suisse s’appuie sur la méthodologie de la Commission européenne. La Commission européenne calcule de cette manière les indices pour tous les pays membres de l’UE ainsi que pour différents agrégats, tels que l’UE dans son ensemble ou la zone euro."
  ),
  keywords = list(
    de = c("ökonomische stimmung"),
    fr = c("climat économique"),
    en = c("economic sentiment")
  ),
  themes = c("national-economy"),
  publishers = pub,
  contact_points = list(
    contact_data_at_kof
  ),
  landing_page = "https://kof.ethz.ch/prognosen-indikatoren/indikatoren/kof-economic-sentiment-indicator.html",
  resources = list(
    ch.kof.esi_data,
    ch.kof.esi_meta_de,
    ch.kof.esi_meta_fr,
    ch.kof.esi_meta_en
  ),
  accrual_periodicity = "monthly"
)











# Global Economic Barometers*** ----
ch.kof.globalbaro_data <- DcatResource$new(
  title = list(
    de = "Globale Konjunkturbarometer",
    en = "Global Economic Barometers",
    fr = "Baromètres conjoncturels mondiaux"
  ),
  description = list(
    de = "Die globalen Konjunkturbarometer sind ein Indikatorensystem für die zeitnahe Analyse der globalen Konjunkturentwicklung. Sie sind ein Kooperationsprojekt der KOF Konjunkturforschungsstelle der ETH Zürich und der Fundação Getúlio Vargas (FGV) in Rio de Janeiro, Brasilien. Das System besteht aus zwei Teilindikatoren: einem Koinzidenz- und einem Frühindikator.",
    en = "The Global Economic Barometers are a system of indicators that enables a timely analysis of global economic development. They represent a collaboration between the KOF Swiss Economic Institute and Fundação Getúlio Vargas (FGV) based in Rio de Janeiro, Brazil. The system consists of two indicators: a coincident indicator and a leading indicator.",
    fr = "Les Baromètres conjoncturels mondiaux sont un système d’indicateurs destiné à l’analyse en temps réel de l’évolution conjoncturelle mondiale. Il s’agit d’un projet de coopération du KOF Centre de recherches conjoncturelles de l’ETH Zürich et de la Fundação Getúlio Vargas (FGV) de Rio de Janeiro (Brésil). Le système comprend deux sous- indicateurs : un indicateur coïncident et un indicateur avancé."
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/collections/ogd_ch.kof.globalbaro?mime=csv",
  id = "ch.kof.globalbaro",
  rights = "CC-BY",
  media_type = "text/csv",
  issued = as.Date("2021-01-26"),
  language_independent = TRUE
)

ch.kof.globalbaro_meta_de <- DcatResource$new(
  title = list(
    de = "Datenbeschreibung"
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/metadata/collections/ogd_ch.kof.globalbaro?mime=csv&locale=de",
  id = "ch.kof.globalbaro.meta.de", # TODO ALL THE IDs
  rights = "CC-BY",
  media_type = "text/csv",
  issued = as.Date("2021-01-26")
)

ch.kof.globalbaro_meta_fr <- DcatResource$new(
  title = list(
    fr = "Description des données"
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/metadata/collections/ogd_ch.kof.globalbaro?mime=csv&locale=fr",
  id = "ch.kof.globalbaro.meta.fr", # TODO ALL THE IDs
  rights = "CC-BY",
  media_type = "text/csv",
  issued = as.Date("2021-01-26")
)

ch.kof.globalbaro_meta_en <- DcatResource$new(
  title = list(
    en = "Data description"
  ),
  url = "https://datenservice.kof.ethz.ch/api/v1/public/metadata/collections/ogd_ch.kof.globalbaro?mime=csv&locale=en",
  id = "ch.kof.globalbaro.meta.en", # TODO ALL THE IDs
  rights = "CC-BY",
  media_type = "text/csv",
  issued = as.Date("2021-01-26")
)

ch.kof.globalbaro <- DcatDataset$new(
  "ch.kof.globalbaro",
  organization,
  title = list(
    de = "Globale Konjunkturbarometer",
    en = "Global Economic Barometers",
    fr = "Baromètres conjoncturels mondiaux"
  ),
  description = list(
    de = "Die globalen Konjunkturbarometer sind ein Indikatorensystem für die zeitnahe Analyse der globalen Konjunkturentwicklung. Sie sind ein Kooperationsprojekt der KOF Konjunkturforschungsstelle der ETH Zürich und der Fundação Getúlio Vargas (FGV) in Rio de Janeiro, Brasilien. Das System besteht aus zwei Teilindikatoren: einem Koinzidenz- und einem Frühindikator.",
    en = "The Global Economic Barometers are a system of indicators that enables a timely analysis of global economic development. They represent a collaboration between the KOF Swiss Economic Institute and Fundação Getúlio Vargas (FGV) based in Rio de Janeiro, Brazil. The system consists of two indicators: a coincident indicator and a leading indicator.",
    fr = "Les Baromètres conjoncturels mondiaux sont un système d’indicateurs destiné à l’analyse en temps réel de l’évolution conjoncturelle mondiale. Il s’agit d’un projet de coopération du KOF Centre de recherches conjoncturelles de l’ETH Zürich et de la Fundação Getúlio Vargas (FGV) de Rio de Janeiro (Brésil). Le système comprend deux sous- indicateurs : un indicateur coïncident et un indicateur avancé."
  ),
  keywords = list(
    de = c("weltwirtschaft"),
    fr = c("économie mondiale"),
    en = c("global economy")
  ),
  themes = c("national-economy"),
  publishers = pub,
  contact_points = list(
    contact_data_at_kof
  ),
  landing_page = "https://kof.ethz.ch/prognosen-indikatoren/indikatoren/kof-globalbaro.html",
  resources = list(
    ch.kof.globalbaro_data,
    ch.kof.globalbaro_meta_de,
    ch.kof.globalbaro_meta_fr,
    ch.kof.globalbaro_meta_en
  ),
  accrual_periodicity = "monthly"
)

catalog <- DcatCatalog$new(
  list(
    ch.kof.barometer,
    ch.kof.bts_total.bs,
    ch.kof.ie,
    ch.kof.esi,
    ch.kof.globalbaro
  )
)

catalog$to_file("kof_indicators.xml")
