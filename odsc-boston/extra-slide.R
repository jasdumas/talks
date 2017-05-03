## Insights from this data

#```{r, echo=FALSE, fig.height=6.5, fig.width=10, message=FALSE, warning=FALSE}

data("beermaterials")

beermaterials$Month<- factor( beermaterials$Month, levels = unique(beermaterials$Month) )

beermaterials %>% 
  gather(key = materials, value = pounds, -c(Month, Year)) %>% 
  ggplot(., aes(x=Year, y=pounds, color=materials)) +
  geom_line() +
  geom_point() +
  theme_bw() +
  theme(axis.ticks = element_blank(), axis.text.x = element_blank()) +
  facet_wrap(~ Month, nrow = 2)

#```


<img src="img/odsc.png" style="position: center; right: 3; width: 400px;"></img>
  
  <blockquote class="twitter-tweet" data-lang="en"><p lang="en" dir="ltr">Having fun playing around with <a href="https://twitter.com/jasdumas">@jasdumas</a>&#39;s ttbbeer <a href="https://twitter.com/hashtag/Rstats?src=hash">#Rstats</a> pkg <a href="https://t.co/1S0QDJI154">https://t.co/1S0QDJI154</a>. What explains the dry hop spike in Dec 2014 &amp; 2015? <a href="https://t.co/TT37aHjAwQ">pic.twitter.com/TT37aHjAwQ</a></p>&mdash; Stephen Turner (@genetics_blog) <a href="https://twitter.com/genetics_blog/status/829449765389754374">February 8, 2017</a></blockquote>
  <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
  