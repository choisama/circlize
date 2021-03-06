source("R/global.R")
source("R/plot.R")
source("R/utils.R")
source("R/link.R")
# library(circlize)

par(mar = c(1, 1, 1, 1))
factors = letters[1:8]
circos.initialize(factors = factors, xlim = c(0, 10))
circos.trackPlotRegion(factors = factors, ylim = c(0, 10), track.height = 0.1, bg.border = NA, panel.fun = function(x, y) {
	circos.text(5, 10, get.cell.meta.data("sector.index"))
})

circos.trackPlotRegion(factors = factors, ylim = c(0, 10))
circos.axis(sector.index = "a")
circos.axis(sector.index = "b", direction = "inside", labels.direction = "default2")
circos.axis(sector.index = "c", h = "bottom")

circos.axis(sector.index = "d", h = "bottom", direction = "inside")
circos.axis(sector.index = "e", h = 5, major.at = c(1, 3, 5, 7, 9))
circos.axis(sector.index = "f", h = 5, major.at = c(1, 3, 5, 7, 9), labels = c("a", "c", "e", "g", "f"), minor.ticks = 0)
circos.axis(sector.index = "g", h = 5, major.at = c(1, 3, 5, 7, 9), labels = c("a", "c", "e", "g", "f"), major.tick = FALSE)
circos.axis(sector.index = "h", h = 2, major.at = c(1, 3, 5, 7, 9), labels = c("a", "c", "e", "g", "f"), major.tick.percentage = 0.3, labels.away.percentage = 0.2, minor.ticks = 2, labels.direction = "vertical_right")
circos.clear()
