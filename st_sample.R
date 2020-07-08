s <- st_read("s2.shp")
s %>% 
  group_by(BZT3 )%>% 
  nest() %>%
  mutate(samp = map(data, st_sample, 5))


s2 <- 
  s %>% 
  group_by(BZT3)%>% 
  nest() 


s2[1:10,] %>%
  mutate(samp = map(data, st_sample, 5))


s2[[2]][[11]] %>%
  st_sample(5)
  
s2[[2]][[11]] %>%
  slice(1:nrow(s2[[2]][[11]])) %>%
  st_sample(5)

