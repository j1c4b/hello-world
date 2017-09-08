learn_matrices_1 = function ()
{
#  matrix(1:9, byrow= TRUE, nrow = 3)
  new_hope <- c(460.998, 314.4)
  empire_strikes <- c(290.475, 247.900)
  return_jedi <- c(309.306, 165.8)
  
  the_phantom_Menace <- c(474.5, 552.5)
  attack_of_the_clones <- c(310.7, 338.7)
  revenge_of_the_sith <-c(380.3, 468.5)
  
  #star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), 
  #                           byrow= TRUE, nrow = 3)
  
  box_office1 <- c(new_hope, empire_strikes, return_jedi)
  box_office2 <- c(the_phantom_Menace, attack_of_the_clones, revenge_of_the_sith)
  titles1 <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
  titles2 <- c("The Phantom Menace ", "Attack of the Clones", "Revenge of the Sith")
  region <- c("US", "non-US")
  
  star_wars_matrix1 <- matrix(box_office1, byrow = TRUE, nrow = 3,
                             dimnames = list(titles1, region))
  star_wars_matrix2 <- matrix(box_office2, byrow = TRUE, nrow = 3,
                              dimnames = list(titles2, region))
                             
 # colnames(star_wars_matrix) <- region
 # rownames(star_wars_matrix) <- titles
  
  worldwide_vector1 <- rowSums(star_wars_matrix1)
  worldwide_vector2 <- rowSums(star_wars_matrix2)
  
  
 # all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
  all_wars_matrix <- rbind(star_wars_matrix1, star_wars_matrix2)
 # all_wars_matrix
  worldwide_vector_total <- colSums(all_wars_matrix)
  worldwide_vector_total
 # all_wars_matrix_total <- rbind(all_wars_matrix, worldwide_vector_total)
}