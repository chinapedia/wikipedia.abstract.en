BIBLIOMETRIX package is a R tool (http://www.bibliometrix.org) providing a set of tools for quantitative research in scientometrics and bibliometrics.[1]

Bibliometrics is the application of quantitative analysis and statistics to publications such as journal articles and their accompanying citation counts. Quantitative evaluation of publication and citation data is now used in almost all science fields to evaluate growth, maturity, leading authors, conceptual and intellectual maps, trend of a scientific community. Bibliometrics is also used in research performance evaluation,[2] especially in university and government labs, and also by policymakers,[3] research directors and administrators, information specialists and librarians, and scholars themselves.[4][5][6][7][8]

BIBLIOMETRIX is written in R-language. R is an open-source environment and ecosystem. The existence of substantial of good statistical algorithms, access to high-quality numerical routines, and integrated data visualization tools are perhaps the strongest qualities to prefer R to other languages for scientific computation.

BIBLIOMETRIX supports scholars in three key phases of analysis:

1.  Data importing and conversion to R data-frame;
2.  Descriptive analysis of a publication dataset;
3.  Network extraction for co-citation, coupling, and collaboration analyses. Matrices are the input data for performing network analysis, factorial analysis or multidimensional scaling analysis;
4.  Text mining of manuscripts (title, abstract, authors' keywords, etc.);
5.  Co-word analysis.g


Main functions of Bibliometrix package

The following table lists the main functions of bibliometrix package:

+-------------------------------------+--------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| _SOFTWARE ASSISTED_                 | _BIBLIOMETRIX FUNCTION_                    | _DESCRIPTION_                                                                                                        |
|                                     |                                            |                                                                                                                      |
| _WORKFLOW STEPS_[9]                 |                                            |                                                                                                                      |
+-------------------------------------+--------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| _Data loading and converting_       | • _Convert2df()_                           | • _It creates a bibliographic data frame_                                                                            |
+-------------------------------------+--------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| _Data Analysis_                     | • _biblioAnalysis()_                       | • _It returns an object of class bibliometrix_                                                                       |
|                                     |                                            |                                                                                                                      |
| _Descriptive bibliometric analysis_ | • _Summary() and plot()_                   | • _They summarize the main results of the bibliometric analysis_                                                     |
|                                     |                                            |                                                                                                                      |
|                                     | • _citations()_                            | • _It identifies the most cited references or authors_                                                               |
|                                     |                                            |                                                                                                                      |
|                                     | • _localCitations()_                       | • _It identifies the most cited local authors_                                                                       |
|                                     |                                            |                                                                                                                      |
|                                     | • _dominance()_                            | • _It calculates the authors’ dominance ranking_                                                                     |
|                                     |                                            |                                                                                                                      |
|                                     | • _Hindex()_                               | • _It measures productivity and citation impact of a scholar_                                                        |
|                                     |                                            |                                                                                                                      |
|                                     | • _lotka()_                                | • _It estimates Lotka’s law coefficients for scientific productivity_                                                |
+-------------------------------------+--------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| _Data Analysis_ _Term Extraction_   | • _termExtraction()_                       | _• it extracts terms from textual fields (abstracts, titles, author's keywords, etc.) of a bibliographic collection_ |
+-------------------------------------+--------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| _Data Analysis_                     | • _cocMatrix()_                            | • _It computes a bipartite network_                                                                                  |
|                                     |                                            |                                                                                                                      |
| _Bi-partite networks_               |                                            |                                                                                                                      |
+-------------------------------------+--------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| _Data Analysis_                     | • _couplingSimilarity()_                   | • _It calculates Jaccard or Salton similarity coefficient among manuscripts of a coupling network_                   |
|                                     |                                            |                                                                                                                      |
| _Normalization_                     |                                            |                                                                                                                      |
+-------------------------------------+--------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| _Data Analysis_                     | _External functions from other R packages_ | _Other R packages suggested for bibliometric analysis_                                                               |
|                                     |                                            |                                                                                                                      |
| _Data Reduction_                    |                                            | • _factominer: for PCA and MCA_                                                                                      |
|                                     |                                            |                                                                                                                      |
|                                     |                                            | • _cmdscale: for MDS_                                                                                                |
|                                     |                                            |                                                                                                                      |
|                                     |                                            | • _cluster: for clustering_                                                                                          |
+-------------------------------------+--------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| _Data Analysis_                     | • _biblioNetwork()_                        | • _It calculates the most frequently used coupling networks_                                                         |
|                                     |                                            |                                                                                                                      |
| _Similarity matrix_                 |                                            |                                                                                                                      |
|                                     |                                            |                                                                                                                      |
| _(square network matrix)_           |                                            |                                                                                                                      |
+-------------------------------------+--------------------------------------------+----------------------------------------------------------------------------------------------------------------------+
| _Data visualization_                | _External functions from other R packages_ | _Other R packages suggested for mapping_                                                                             |
|                                     |                                            |                                                                                                                      |
| _Mapping_                           |                                            | • _igraph_ _for social network_                                                                                      |
|                                     |                                            |                                                                                                                      |
|                                     |                                            | • _ggplot2_ _for bi-dimensional maps_                                                                                |
|                                     |                                            |                                                                                                                      |
|                                     |                                            | • _cluster_ _for dendrogram_                                                                                         |
+-------------------------------------+--------------------------------------------+----------------------------------------------------------------------------------------------------------------------+


References

Category:R (programming language) Category:Quantitative research Category:Bibliometrics

[1]

[2]

[3]

[4]

[5] Cuccurullo, C., Aria, M., & Sarto, F. (2015). TWENTY YEARS OF RESEARCH ON PERFORMANCE MANAGEMENT IN BUSINESS AND PUBLIC ADMINISTRATION DOMAINS. _Presentation at the Correspondence Analysis and Related Methods conference (CARME 2015)_ in September 2015.

[6] Cuccurullo, C., Aria, M., & Sarto, F. (2013). TWENTY YEARS OF RESEARCH ON PERFORMANCE MANAGEMENT IN BUSINESS AND PUBLIC ADMINISTRATION DOMAINS. In _Academy of Management Proceedings_ (Vol. 2013, No. 1, p. 14270). Academy of Management.

[7]

[8]

[9]