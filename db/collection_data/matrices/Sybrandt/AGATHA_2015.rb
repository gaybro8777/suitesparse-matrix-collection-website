{
    matrix_id: '2893',
    name: 'AGATHA_2015',
    group: 'Sybrandt',
    description: 'machine learning graph',
    author: 'J. Sybrandt, I. Tyagin, M. Shtutman, I. Safro',
    editor: 'T. Davis',
    date: '2020',
    kind: 'undirected graph',
    problem_2D_or_3D: '0',
    num_rows: '183964077',
    num_cols: '183964077',
    nonzeros: '11588725964',
    num_explicit_zeros: '0',
    pattern_symmetry: '1.000',
    numeric_symmetry: '1.000',
    rb_type: 'binary',
    structure: 'symmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Sybrandt/AGATHA_2015: deep-learning graph                              
                                                                       
AGATHA: Automatic Graph-mining And Transformer based Hypothesis        
Generation Approach                                                    
                                                                       
Justin Sybrandt, Ilya Tyagin, Michael Shtutman, Ilya Safro             
Clemson University                                                     
paper: https://arxiv.org/abs/2002.05635.                               
                                                                       
abstract: Medical research is risky and expensive. Drug discovery, as  
an example, requires that researchers efficiently winnow thousands of  
potential targets to a small candidate set for more thorough           
evaluation. However, research groups spend significant time and money  
to perform the experiments necessary to determine this candidate set   
long before seeing intermediate results. Hypothesis generation systems 
address this challenge by mining the wealth of publicly available      
scientific information to predict plausible research directions. We    
present AGATHA, a deep-learning hypothesis generation system that can  
introduce data-driven insights earlier in the discovery process.       
Through a learned ranking criteria, this system quickly prioritizes    
plausible term-pairs among entity sets, allowing us to recommend new   
research directions. We massively validate our system with a temporal  
holdout wherein we predict connections first introduced after 2015     
using data published beforehand. We additionally explore biomedical    
sub-domains, and demonstrate AGATHA\'s predictive capacity across the   
twenty most popular relationship types. This system achieves           
best-in-class performance on an established benchmark, and demonstrates
high recommendation scores across subdomains. Reproducibility: All     
code, experimental data, and pre-trained models are available online:  
http://sybrandt.com/2020/agatha .                                      
                                                                       
Appears in the 29TH ACM Intl. Conf. on Information and Knowledge       
Management, Oct 2020.  https://www.cikm2020.org/                       
                                                                       
Details of this matrix:                                                
                                                                       
This matrix represents the semantic graph associated with the Agatha   
hypothesis generation system: https://arxiv.org/abs/2002.05635.        
                                                                       
The matrix was created by selecting all biomedical papers published    
prior to January 1st 2015. We extracted terms, phrases, entities, and  
author-supplied metadata keywords for each. In addition we identify all
SemRep predicate arguments. Each sentence, term, phrase, entity, and   
predicate represents a node. Edges follow a particular schema,         
described in detail in the paper. Most edges indicate that two nodes   
co-occur. For instance, if a sentence contains a term, then an edge    
exists between the two nodes. We introduce a set of edges between      
sentences based on the nearest-neighbors network of sentence           
embeddings.                                                            
                                                                       
The graph is really big, consisting of 183,964,077 nodes and           
11,588,725,964 edges.  Each node has a label, consisting of a          
character string, with a length ranging from 0 to 782 characters.      
The mean string lenth is 17.4.  A single node (171,649,101 in 1-based  
notation) has a label of length zero, and is an artifact from how the  
original data was processed.  All other node labels range in length    
from 3 to 782.  The longest string comes from the following paper:     
https://pubmed.ncbi.nlm.nih.gov/183954/ which states: "The primary     
structure of the enzyme was determined: Ac-Met-Glu-...--Ala-Leu-Lys."  
                                                                       
To save space in the MATLAB representation, the node labels are held   
in a single character array, Problem.aux.names, where each label is    
terminated with a newline character. To extract the label of any       
given node, do the following:                                          
                                                                       
   names = Problem.aux.names ;                                         
   p = [1 find(names==10)+1] ;                                         
   label = names (p(i):p(i+1)-2) ;                                     
                                                                       
For example, to list all nodes with labels of length 0 to 4:           
                                                                       
   p = [1 find(names==10)+1] ;                                         
   d = diff (p) ;                                                      
   for len = 0:4                                                       
       fprintf (\'\nnodes with labels of length %d:\n\', len) ;          
       nodes = find (d == len+1) ;                                     
       for i = nodes                                                   
           fprintf (\'%12d: [%s]\n\', i, names (p(i):p(i+1)-2)) ;        
       end                                                             
   end                                                                 
',
    aux_fields: 'names: full 1-by-3202264968
',    image_files: '',
}
