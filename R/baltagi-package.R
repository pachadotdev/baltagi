#' Cigar
#' 
#' Panel Data, 46 U.S. States over the period 1963-1992.
#' 
#' @source Baltagi and Levin (1992) and Baltagi, Griffin and Xiong (2000).
#' @format ## `cigar`
#' A data frame with 1,380 rows and 9 columns:
#' \describe{
#'  \item{state}{State abbreviation}
#'  \item{year}{Year}
#'  \item{price}{Price per pack of cigarettes}
#'  \item{population}{Population}
#'  \item{population_16}{Population over the age of 16}
#'  \item{cpi}{Consumer price index (1983 = 100)}
#'  \item{ndi}{Per capita disposable income}
#'  \item{sales}{Cigarette sales in packs per capita}
#'  \item{pimin}{Minimum price in adjoining states per pack of cigarettes}
#' }
"cigar"

#' Gasoline
#' 
#' Panel Data, 18 OECD countries over 19 years, 1960‑1978.
#' 
#' @source Baltagi and Griffin (1983).
#' @format ## `gasoline`
#' A data frame with 342 rows and 6 columns:
#' \describe{
#'  \item{country}{Country}
#'  \item{year}{Year}
#'  \item{lgaspcar}{The logarithm of motor gasoline consumption per auto}
#'  \item{lincomep}{The logarithm of real per capita income}
#'  \item{lrpmg}{The logarithm of real motor gasoline price}
#'  \item{lcarpcap}{The logarithm of the stock of cars per capita}
#' }
"gasoline"

#' Grunfeld
#' 
#' Panel Data, 10 U.S. firms over 20 years, 1935‑1954.
#' 
#' @source Grunfeld (1958).
#' @format ## `grunfeld`
#' A data frame with 200 rows and 5 columns:
#' \describe{
#'  \item{firm}{Firm number}
#'  \item{year}{Year}
#'  \item{investment}{Annual real gross investment}
#'  \item{value}{Real value of the firm (shares outstanding)}
#'  \item{capital}{Real value of the capital stock}
#' }
"grunfeld"

#' Hedonic
#' 
#' Cross-Section, 506 Census tracts in the Boston area in 1970.
#' 
#' @source Harrison and Rubinfeld (1978). See also Belsley, Kuh and Welsch (1980).
#' @format ## `hedonic`
#' A data frame with 506 rows and 15 columns:
#' \describe{
#'  \item{mv}{Medium value of owner-occupied homes}
#'  \item{crim}{Crime rate}
#'  \item{zn}{Proportion of 25,000 square feet residential lots}
#'  \item{indus}{Proportion of non-retail business acres}
#'  \item{chas}{Represents the dummy variable which is 1 if the tract bounds the Charles River}
#'  \item{nox}{Annual average nitrogen oxide concentration in parts per hundred million}
#'  \item{rm}{Average number of rooms}
#'  \item{age}{Proportion of owner units built prior to 1940}
#'  \item{dis}{Weighted distances to five employment centers in the Boston area}
#'  \item{rad}{Index of accessibility to radial highways}
#'  \item{tax}{Full value property tax rate ($/$10,000)}
#'  \item{ptratio}{Pupil / teacher ratio}
#'  \item{b}{Proportion of blacks in the population}
#'  \item{lstat}{Proportion of the population that is lower status}
#'  \item{townid}{Town identifier}
#' }
"hedonic"

#' Produc
#' 
#' Panel Data, 48 states over 17 years, 1970-1986.
#' 
#' @source Munnell (1990), see also Baltagi and Pinnoi (1995).
#' @format ## `produc`
#' \describe{
#'  \item{state}{State}
#'  \item{st_abb}{State abbreviation}
#'  \item{year}{Year}
#'  \item{pub_cap}{Public capital}
#'  \item{hwy}{Highway and streets}
#'  \item{water}{Water and sewer facilities}
#'  \item{util}{Other public buildings and structures}
#'  \item{priv_cap}{Private capital stock}
#'  \item{gsp}{Gross state products}
#'  \item{emp}{Labor input measured by the employment in non-agricultural payrolls}
#'  \item{unemp}{State unemployment rate}
#' }
"produc"

#' Wages
#' 
#' Panel Data, 595 individuals over 7 years, 1976-1982.
#' 
#' @source The Panel Study of Income Dynamics, taken from Cornwell and Rupert (1988).
#' @format ## `wages`
#' \describe{
#'  \item{exp}{Years of full‑time work experience}
#'  \item{wks}{Weeks worked}
#'  \item{occ}{OCC=1, if the individual is in a blue‑collar occupation}
#'  \item{ind}{IND=1, if the individual works in a manufacturing industry}
#'  \item{south}{SOUTH=1, if the individual resides in the South}
#'  \item{smsa}{SMSA=1, if the individual resides in a standard metropolitan statistical area}
#'  \item{ms}{MS=1, if the individual is married}
#'  \item{fem}{FEM=1, if the individual is female}
#'  \item{union}{UNION=1, if the individual's wage is set by a union contract}
#'  \item{ed}{Years of education}
#'  \item{blk}{BLK=1, if the individual is black}
#'  \item{lwage}{Logarithm of wage}
#' }
"wages"
