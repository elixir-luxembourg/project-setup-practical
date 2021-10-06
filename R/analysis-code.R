# From royblue@uni.lu

# Hi Hiro, 

# here's analysis code. 
# Don't forget to push to the repo. Enjoy.
# greets, r

library(tidyverse)

peaks <- read_tsv("data/TC1-ST2-D0.12_peaks.narrowPeak", 
                  col_names = c("chrom", "chromStart", 
                                "chromEnd", "name", "score", 
                                "strand", "signalValue", 
                                "pValue", "qValue", "peak"))

## Number of peaks on each chromosome
count(peaks, chrom)

## Length of peaks
peaks_length <- peaks %>% mutate(length = chromEnd - chromStart)

## Plot length of peaks 
ggplot(peaks_length, aes(x = length)) + geom_histogram()

## All Stats on length
peaks_length %>% 
  summarise("Minimum" = min(length), 
            "Maximum" = max(length), 
            "Average" = round(mean(length))) 

# To include single datum in text use `pull`
peaks_length %>% 
  summarise(Minimum = min(length)) %>% 
  pull(Minimum)


## Signal Value density plot

ggplot(peaks, aes(x = signalValue)) + geom_density()

### Correlate p-value with the signal value?

ggplot(peaks, aes(pValue, signalValue)) + geom_point() + geom_smooth(method = "lm")

