# From john.blue@uni.lu

# Hi Hiro, 

# here's analysis code. 
# Don't forget to gull the repo. Enjoy.
# greets, j


peaks <- read_tsv("TC1-ST2-D0.12_peaks.narrowPeak", 
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

## Stats on length
peaks_length %>% 
  summarise(min(length), max(length), round(mean(length))) %>% 
  rename("Minimum" = `min(length)`,
         "Maximum" = `max(length)`,
         "Average" = `round(mean(length))`) 

## Signal Value density plot

ggplot(peaks, aes(x = signalValue)) + geom_density()

### Correlate p-value with the signal value?

ggplot(peaks, aes(pValue, signalValue)) + geom_point() + geom_smooth(method = "lm")

