# Create Matrix A with values 1 to 100 arranged in 10 rows and 10 columns
A <- matrix(1:100, nrow=10)  
B <- matrix(1:1000, nrow=10)

# Calculate the determinant of A
det_A <- det(A)

# Display the determinant of A
print(paste("Determinant of A: ", det_A))

# Check if determinant is non-zero before calculating the inverse
if (det_A != 0) {
  # Calculate the inverse of A
  inverse_A <- solve(A)
  print("Inverse of A: ")
  print(inverse_A)
} else {
  print("Matrix A is singular and does not have an inverse.")
}

# Attempt to calculate the determinant of B (Note: Will produce NA due to non-square matrix)
det_B <- tryCatch(det(B), error = function(e) NA)

# Display the determinant of B
print(paste("Determinant of B: ", det_B))

# Check if determinant is non-zero and matrix is square before calculating the inverse
if (!is.na(det_B) && nrow(B) == ncol(B)) {
  # Calculate the inverse of B
  inverse_B <- solve(B)
  print("Inverse of B: ")
  print(inverse_B)
} else {
  print("Matrix B is not a square matrix or is singular, so inverse cannot be computed.")
}