#' Gerrymander
#'
#' A dataset on gerrymandering and its influence on House elections.
#'
#' @name gerrymander
#' @docType data
#' @format A data frame with 435 rows and 12 variables: 
#' \describe{
#'   \item{district}{Congressional district.}
#'   \item{last_name}{Last name of 2016 election winner.}
#'   \item{first_name}{First name of 2016 election winnner.}
#'   \item{party16}{Political party of 2016 election winner.}
#'   \item{clinton16}{Percent of vote received by Clinton in 2016 Presidential Election.}
#'   \item{trump16}{Percent of vote received by Trump in 2016 Presidential Election.}
#'   \item{dem16}{Did a Democrat win the 2016 House election. Levels of 1 (yes) and 0 (no).}
#'   \item{state}{State the Representative is from.}
#'   \item{party18}{Political Party of the 2018 election winner.}
#'   \item{dem18}{Did a Democrat win the 2018 House election. Levels of 1 (yes) and 0 (no).}
#'   \item{flip18}{Did a Democrat flip the seat in the 2018 election? Levels of 1 (yes) and 0 (no).}
#'   \item{gerry}{Categorical variable for prevalence of gerrymandering with levels of low, mid and high.}
#' }
#' @source [Name of Source As It Will Appear in the Help File](url for source)
#' @keywords datasets
#'
#' @examples 
"gerrymander"
