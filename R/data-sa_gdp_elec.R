#' Sustainability and Economic Indicators for South Africa.
#' 
#' Includes yearly data on gdp, gni, co2 emissions, start up costs.
#'
#' @format A data frame with ___ rows and 7 variables.
#' \describe{
#'   \item{year}{Year data collected.}
#'   \item{access_elec}{Access to electricity as a percentage of the population.}
#'   \item{startup}{cost of business startup procedures as a percent of GNI.}
#'   \item{co2}{CO2 emission in kt (kiloton).}
#'   \item{gdp}{GDP per capita, PPP in constant 2017 international dollars.}
#'   \item{gni}{GNI per capita, PPP in constant 2017 international dollars.}
#'   \item{co2_kg_ppp}{kg per 2017 PPP dollars of GDP.}
 
#' }
#' 
#' @examples
#' library(ggplot2)
#' ggplot(sa_gdp_elec, aes(year, access_elec))+
#'    geom_point(alpha = 0.3) +
#'  labs( x= "Year", y = "% Access to Electricity", title = "% with Access to Electricity in South Africa 2003- 2018") 
#'

#' @source [World Bank ](https://databank.worldbank.org/source/world-development-indicators)
#'
#'World Bank Global Electrification Database from "Tracking SDG 7: The Energy Progress Report" led jointly by the custodian agencies: the International Energy Agency (IEA), the International Renewable Energy Agency (IRENA), the United Nations Statistics Division (UNSD), the World Bank and the World Health Organization (WHO).
#'
#'World Bank, Doing Business project http://www.doingbusiness.org/
#'
#'Data for up to 1990 are sourced from Carbon Dioxide Information Analysis Center, Environmental Sciences Division, Oak Ridge National Laboratory, Tennessee, United States. Data from 1990 are CAIT data: Climate Watch. 2020. GHG Emissions. Washington, DC: World Resources Institute. Available at: https://www.climatewatchdata.org/ghg-emissions.
#'
#'International Comparison Progrdevam, World Bank | World Development Indicators database, World Bank | Eurostat-OECD PPP Programme.
#'
#'International Comparison Program, World Bank | World Development Indicators database, World Bank | Eurostat-OECD PPP Programme.
#'
#'Data for up to 1990 are sourced from Carbon Dioxide Information Analysis Center, Environmental Sciences Division, Oak Ridge National Laboratory, Tennessee, United States. Data from 1990 are CAIT data: Climate Watch. 2020. GHG Emissions. Washington, DC: World Resources Institute. Available at: https://www.climatewatchdata.org/ghg-emissions. See NY.GDP.MKTP.PP.KD for the denominator's source.

"sa_gdp_elec"
