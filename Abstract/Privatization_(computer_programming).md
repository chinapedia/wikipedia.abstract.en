PRIVATIZATION is a technique used in shared-memory programming to enable parallelism, by removing dependencies that occur across different threads in a parallel program. Dependencies within threads occur due to the presence of variables that are written and/or read by different threads at the same time during execution. This basic principle of this technique is making private copies of a variable shared by multiple threads, hence making each thread capable to operate on its local copy of this variable rather than a shared one.[1]