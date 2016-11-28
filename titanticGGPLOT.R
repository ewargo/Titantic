# titanic is avaliable in your workspace

# Check out the structure of titanic
str(titanic)
str(titantic3)

# Use ggplot() for the first instruction
ggplot(titanic3, aes(x = factor(pclass), fill = factor(sex))) + 
  geom_bar(position = "dodge")

# Use ggplot() for the second instruction
ggplot(titanic3, aes(x = factor(pclass), fill = factor(sex))) + 
  geom_bar(position = "dodge") + 
  facet_grid(. ~ survived)

# Position jitter (use below)
posn.j <- position_jitter(0.5, 0)

# Use ggplot() for the last instruction
ggplot(titanic3, aes(x = factor(pclass), y = age, col = factor(sex))) + 
  geom_jitter(size = 3, alpha = 0.5, position = posn.j) + 
  facet_grid(. ~ survived)