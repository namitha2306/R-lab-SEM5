library(igraph)

# Function to add an edge between two vertices in the graph
add_edge <- function(graph, v1, v2) {
  graph <- add_edges(graph, c(v1, v2))
  return(graph)
}

# Create an undirected graph
graph <- make_graph(edges = c(1, 2, 1, 5, 5, 4, 4, 3, 3, 6, 3, 5, 5, 6, 2, 4), n = 6, directed = FALSE)

# Print and plot the original graph
print("Original Graph:")
print(graph)
plot(graph)

# Add an edge between vertices 1 and 6
updated_graph <- add_edge(graph, 1, 6)

# Print and plot the updated graph
print("Updated Graph:")
print(updated_graph)
plot(updated_graph)

# Function to perform DFS traversal starting from a specific vertex
dfs_traversal <- function(graph, start_vertex) {
  dfs_result <- dfs(graph, start_vertex)$order
  return(dfs_result)
}

# Perform DFS traversal starting from vertex 1
traversal_order <- dfs_traversal(updated_graph, 1)
print("DFS Traversal Order:")
print(traversal_order)