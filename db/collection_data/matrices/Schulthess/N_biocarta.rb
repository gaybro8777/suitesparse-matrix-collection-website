{
    matrix_id: '2552',
    name: 'N_biocarta',
    group: 'Schulthess',
    description: 'biochemical network; left nullspace is required',
    author: 'P. Schulthess',
    editor: 'T. Davis',
    date: '2012',
    kind: 'biochemical network',
    problem_2D_or_3D: '0',
    num_rows: '1922',
    num_cols: '1996',
    nonzeros: '4335',
    num_explicit_zeros: '0',
    num_strongly_connected_components: '800',
    num_dmperm_blocks: '347',
    structural_full_rank: 'false',
    structural_rank: '1185',
    pattern_symmetry: '0.000',
    numeric_symmetry: '0.000',
    rb_type: 'integer',
    structure: 'rectangular',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'Matrices from Pascal Schulthess, Institute for Pathology,            
Chariteplatz 1, 10117 Berlin, Germany.                               
                                                                     
Three large biochemical networks (N_biocarta, N_pid, and N_reactome).
These are stoichiometric matrices extracted from three biochemical   
databases (BioCarta, PID, and REACTOME) describing cell signaling    
pathways and protein-protein interaction networks.  The goal is to   
find the left nullspace of the matrix; in MATLAB notation:           
                                                                     
N = null (Problem.A\') ;                                              
                                                                     
The matrix (Problem.A\')*N will thus be essentially zero.             
This can be done much more efficiently with the spqr_rank toolbox by 
Leslie Foster and Tim Davis, as:                                     
                                                                     
N = spqr_null (Problem.A\') ;                                         
                                                                     
Results:                                                             
The matrix A is transposed, then N = null (A) or N = spqr_null (A)   
is computed.  The size statistic is the memory taken by N.           
spqr_null can compute either an explicit matrix N, or an implicit    
Householder-based representation.  The latter takes less memory.     
                                                                     
Matrix: N_biocarta  size: 1996 by 1922 (transposed)                  
                                                                     
spqr_null stats:                                                     
                       flag: 0                                       
                       rank: 1023                                    
                        tol: 3.5456e-12                              
      est_sval_upper_bounds: [0.1689 3.4534e-15]                     
      est_sval_lower_bounds: [0.1203 0]                              
    sval_numbers_for_bounds: [1023 1024]                             
         est_norm_A_times_N: 2.4349e-15                              
                                                                     
spqr_null, implicit:  0.03 sec, norm(A*N)  9e-15 size:  0.08 MB      
spqr_null, explicit:  0.10 sec, norm(A*N)  9e-15 size:  0.11 MB      
MATLAB null:          3.31 sec, norm(A*N)  2e-13 size: 13.82 MB      
all report dim(N) of 899.                                            
                                                                     
Matrix: N_pid  size: 3923 by 3625 (transposed)                       
                                                                     
spqr_null stats:                                                     
                       flag: 0                                       
                       rank: 2048                                    
                        tol: 1.3937e-11                              
      est_sval_upper_bounds: [0.0922 5.1310e-15]                     
      est_sval_lower_bounds: [0.0585 0]                              
    sval_numbers_for_bounds: [2048 2049]                             
         est_norm_A_times_N: 1.6751e-15                              
                                                                     
spqr_null, implicit:  0.05 sec, norm(A*N)  4e-14 size:  0.21 MB      
spqr_null, explicit:  0.34 sec, norm(A*N)  4e-14 size:  1.32 MB      
MATLAB null:         24.86 sec, norm(A*N)  9e-13 size: 45.73 MB      
all report dim(N) of 1577                                            
                                                                     
Matrix: N_reactome  size: 16559 by 10204 (transposed)                
                                                                     
spqr_null stats:                                                     
                       flag: 0                                       
                       rank: 9025                                    
                        tol: 1.1766e-10                              
      est_sval_upper_bounds: [0.6722 1.3042e-14]                     
      est_sval_lower_bounds: [0.0106 0]                              
    sval_numbers_for_bounds: [9025 9026]                             
         est_norm_A_times_N: 9.4695e-15                              
                                                                     
spqr_null, implicit: 0.95 sec, norm(A*N)  2e-13 size:  7.5 MB        
spqr_null, explicit: 3.53 sec, norm(A*N)  2e-13 size: 25.2 MB        
MATLAB null:       904.54 sec, norm(A*N)  2e-10 size: 96.2 MB        
all report dim(N) of 1179.                                           
',
    norm: '1.481869e+01',
    min_singular_value: '0',
    condition_number: 'Inf',
    svd_rank: '1023',
    sprank_minus_rank: '162',
    null_space_dimension: '899',
    full_numerical_rank: 'no',
    svd_gap: '55062247462621.429688',
    image_files: 'N_biocarta.png,N_biocarta_dmperm.png,N_biocarta_scc.png,N_biocarta_svd.png,N_biocarta_graph.gif,',
}
