
# install.packages("blogdown")
library(blogdown)
# blogdown::install_hugo()

# getwd()
# blogdown::build_site()
blogdown::serve_site()
blogdown::stop_server()
blogdown::build_site(local = FALSE)

# Posts
# blogdown::new_post(title = 'CRM Simulations Checklist', 
#                    tags = c('DoseFinding', 'CRM'))
# # Not right
# blogdown::new_post(subdir = 'content/post/rmarkdown-in-trials', 
#                    file = 'index', 
#                    ext = 'Rmd', 
#                    title = 'RMarkdown in Clinical Trials Research', 
#                    tags = c('bootcamp'))
# Not right either
