if (!require("Require")) {install.packages("Require", repos = "https://cloud.r-project.org/"); require(Require)}

library(Require)
getCRANrepos(ind = 1)

projectPackages <- "projectRPackages"
dir.create(projectPackages)
Require(c("ggplot2", "duckdb", "lubridate"), standAlone = TRUE, libPaths = projectPackages)

con <- dbConnect(duckdb::duckdb(), dbdir = "data/db.duckdb", read_only = TRUE)

res <- dbGetQuery(con, "SELECT * FROM plot_data")

dbDisconnect(con, shutdown = TRUE)

res$`Recording Date` <- ymd(res$`Recording Date`)

plot <- ggplot(res, aes(x = `Recording Date`, y = `Investigation to Audit Ratio`, shape = `Federal Agency`, linetype = `Federal Agency`)) +
     scale_colour_grey(start = .1, end = .7) +
     geom_point(size = 2) +
     geom_line(show.legend = FALSE) +
     geom_hline(yintercept=1, linetype='solid') +
     scale_shape_manual(values = c("Department of Agriculture" = 1,
                                   "Department of Defense" = 2,
                                   "Department of Education" = 3,
                                   "Department of Health And Human Services" = 5,
                                   "Department of Homeland Security" = 6,
                                   "Department of Housing And Urban Development" = 7,
                                   "Department of Justice" = 8,
                                   "Department of Labor" = 9,
                                   "Department of Transportation" = 10,
                                   "Department of The Treasury" = 11,
                                   "Department of Veterans Affairs" = 12)) +
     scale_x_date(date_breaks = "1 year", date_labels = "%Y") +
     scale_y_continuous(breaks = seq(-0.5, 2, by = .25)) +
     xlab("Year") +
     theme(text = element_text(size = 15),
       panel.grid.major = element_line(color = "#606060", linewidth = 0.1))

ggsave("./plots/oig_fte_ratio.svg",
plot,
width = 20,
height = 15,
units = "in",
dpi = 320)

ggplot(res, aes(x = `Recording Date`, y = `Investigation to Audit Ratio`, shape = `Federal Agency`, linetype = `Federal Agency`)) +
geom_point(size = 2) +
geom_line(show.legend = FALSE)

plot2 <- ggplot(res, aes(x = `Recording Date`, y = `Investigation to Audit Ratio`, shape = `Federal Agency`, linetype = `Federal Agency`)) +
facet_wrap(~ `Federal Agency`, scales='free_x') +
scale_colour_grey(start = .1, end = .7) +
geom_point(size = 2) +
geom_line(show.legend = FALSE) +
geom_hline(yintercept=1, linetype='solid') +
scale_shape_manual(values = c("Department of Agriculture" = 1,
                                   "Department of Defense" = 2,
                                   "Department of Education" = 3,
                                   "Department of Health And Human Services" = 5,
                                   "Department of Homeland Security" = 6,
                                   "Department of Housing And Urban Development" = 7,
                                   "Department of Justice" = 8,
                                   "Department of Labor" = 9,
                                   "Department of Transportation" = 10,
                                   "Department of The Treasury" = 11,
                                   "Department of Veterans Affairs" = 12)) +
     scale_x_date(date_breaks = "1 year", date_labels = "%Y") +
     scale_y_continuous(breaks = seq(-0.5, 2, by = .25)) +
     xlab("Year") +
     theme(text = element_text(size = 15),
       panel.grid.major = element_line(color = "#606060", linewidth = 0.1))

ggsave("./plots/oig_fte_ratio_2.svg",
plot2,
width = 30,
height = 15,
units = "in",
dpi = 320)