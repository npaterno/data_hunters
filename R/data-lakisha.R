#' Are Emily and Greg More Employable Than Lakisha and Jamal?
#'
#' Original data from the experiment run by Bertrand and Mullainathan (2004).
#' 
#' From the summary: "We study race in the labor market by sending fictitious resumes to help-wanted ads in Boston and Chicago newspapers. To manipulate perceived race, resumes are randomly assigned African-American- or White-sounding names. White names receive 50 percent more callbacks for interviews. Callbacks are also more responsive to resume quality for White names than for African-American ones. The racial gap is uniform across occupation, industry, and employer size. We also find little evidence that employers are inferring social class from the names. Differential treatment by race still appears to be prominent in the U. S. labor market."
#'
#'
#' @name lakisha
#' @docType data
#' @format A tibble with 4870 observations of 65 variables.
#' \describe{
#'   \item{id}{ID.}                                                              
#'   \item{ad}{Ad #.}                                                            
#'   \item{education}{Highest education with levels of 0=not reported; 1 = High School Diploma; 2 = High School Graduate; 3 = some college; 4 = college +.}        
#'   \item{ofjobs}{number of jobs listed on resume}                             
#'   \item{yearsexp}{number of years of work experience on the resume}          
#'   \item{honors}{1=resume mentions some honors}                               
#'   \item{volunteer}{1=resume mentions some volunteering experience}           
#'   \item{military}{1=applicant has some military experience}                  
#'   \item{empholes}{1=resume has some employment holes}                        
#'   \item{occupspecific}{Occup. Specific}                                      
#'   \item{occupbroad}{Occup. Broad}                                            
#'   \item{workinschool}{1=resume mentions some work experience while at school}
#'   \item{email}{1=email address on applicant's resume}                        
#'   \item{computerskills}{1=resume mentions some computer skills}              
#'   \item{specialskills}{1=resume mentions some special skills}                
#'   \item{firstname}{applicant's first name}                                   
#'   \item{sex}{sex}                                                             
#'   \item{race}{race}                                                            
#'   \item{h}{1=high quality resume}                                            
#'   \item{l}{1=low quality resume}                                             
#'   \item{call}{1=applicant was called back}                                   
#'   \item{city}{c=chicago; b=boston}                                           
#'   \item{kind}{kind}                                                            
#'   \item{adid}{employment ad identifier}                                      
#'   \item{fracblack}{frac blacks in applicant's zip}                           
#'   \item{fracwhite}{frac whites in applicant's zip}                           
#'   \item{lmedhhinc}{log median HH income in applicant's zip}                  
#'   \item{fracdropout}{frac HS dropouts in applicant's zip}                    
#'   \item{fraccolp}{frac college educ or more in applicant's zip}
#'   \item{linc}{log per capita income in applicant's zip}                      
#'   \item{col}{applicant has college degree or more}                           
#'   \item{expminreq}{min experience required, if any}                          
#'   \item{schoolreq}{specific education requirement, if any}                   
#'   \item{eoe}{1=ad mentions employer is EOE}                                  
#'   \item{parent_sales}{sales of parent company}                               
#'   \item{parent_emp}{employment of parent company}                            
#'   \item{branch_sales}{sales of branch}                                       
#'   \item{branch_emp}{emp of branch}                                           
#'   \item{fed}{employer is federal contractor}                                 
#'   \item{fracblack_empzip}{fraction blacks in employers's zipcode}            
#'   \item{fracwhite_empzip}{fraction whites in employer's zipcode}             
#'   \item{lmedhhinc_empzip}{log median HH income in employer's zipcode}        
#'   \item{fracdropout_empzip}{fraction HS dropouts in employer's zipcode}      
#'   \item{fraccolp_empzip}{fraction college or more in employer's  zipcode}    
#'   \item{linc_empzip}{log per capita income in employer's zipcode}            
#'   \item{manager}{manager wanted}                                             
#'   \item{supervisor}{supervisor wanted}                                       
#'   \item{secretary}{secretary wanted}                                         
#'   \item{offsupport}{offsupport}                                                      
#'   \item{salesrep}{sales representative wanted}                               
#'   \item{retailsales}{retail sales worker wanted}                             
#'   \item{req}{1=ad mentions any requirement for job}                          
#'   \item{expreq}{1=ad mentions some experience requirement}                   
#'   \item{comreq}{1=ad mentions some communication skills requirement}         
#'   \item{educreq}{1=ad mentions some educational requirement}                 
#'   \item{compreq}{1=ad mentions some computer skill requirement}              
#'   \item{orgreq}{1=ad mentions some organizational skills requirement}        
#'   \item{manuf}{employer industry is manufacturing}                           
#'   \item{transcom}{employer industry is transport/communication}              
#'   \item{bankreal}{employer industry is finance, insurance, real estate}      
#'   \item{trade}{employer industry is wholesale or retail trade}               
#'   \item{busservice}{employer industry is business and personal  services}    
#'   \item{othservice}{employer industry is health, educ. and social  services} 
#'   \item{missind}{employer industry is other/unknown}                         
#'   \item{ownership}{ownership status of employer}  
#'   }
#' @source Bertrand, Marianne, and Mullainathan, Sendhil. Replication data for: Are Emily and Greg More Employable Than Lakisha and Jamal? A Field Experiment on Labor Market Discrimination. Nashville, TN: American Economic Association \[publisher\], 2004. Ann Arbor, MI: Inter-university Consortium for Political and Social Research \[distributor\], 2019-12-06. \url{https://doi.org/10.3886/E116023V1}.
#' 
#' The description of the variables follows the labels present in the original dataset.
#' @keywords datasets
#' @examples
#' library(dplyr)
#' 
#' # Percent callback for typical White names and typical African-American names (table 1, p. 997)
#' 
#' lakisha %>% 
#'   group_by(race) %>% 
#'   summarise(call_back = mean(call))

"lakisha"
