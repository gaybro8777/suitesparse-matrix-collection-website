{
    matrix_id: '1855',
    name: 'Baumann',
    group: 'Watson',
    description: 'chemical master eqn, aij*h = prob of i->j transition in time h (Markov model)',
    author: 'L. Watson and J. Zhang',
    editor: 'T. Davis',
    date: '2007',
    kind: '2D/3D problem',
    problem_2D_or_3D: '1',
    num_rows: '112211',
    num_cols: '112211',
    nonzeros: '748331',
    num_explicit_zeros: '12300',
    num_strongly_connected_components: '2',
    num_dmperm_blocks: '2',
    structural_full_rank: 'true',
    structural_rank: '112211',
    pattern_symmetry: '1.000',
    numeric_symmetry: '0.000',
    rb_type: 'real',
    structure: 'unsymmetric',
    cholesky_candidate: 'no',
    positive_definite: 'no',
    notes: 'The ODE system \frac{dp}{dt}=Qp is what we call a chemical master equation (a 
Kolmogorov\'s backward/forward equation). Q is a sparse asymmetric matrix,     
whose off-diagonal entries are non-negative and row sum to zero. On each row, 
q_{ij}h gives the probability the system makes a transition from current state
i to some other state j, in small time interval h. By "state", we mean a      
possible combination of number of molecules in each chemical species. Now, h  
is small enough so that only one reaction happens.  In this way q_{ij} is     
nonzero only if there exists a chemical reaction that connects state i and j, 
i.e. j=i+s_k, s_k\'s are constant state vectors that correspond to every       
reaction.  Say we have M reactions, then there are at most M+1 nonzero        
entries on each row of Q.  On the other hand, the number of possible          
combination of molecules is huge, which means the dimension of Q is huge.     
The linear system we want to solve is (I - Q/lambda)x=b, and we have          
to solve it several times. (Here lambda is a constant).  Problem.A is the Q   
matrix.  This is a medium test problem; the largest has dimension 10^8.       
It has the nonzero pattern of a 11-by-101-by-101 mesh.                        
',
    image_files: 'Baumann.png,Baumann_dmperm.png,Baumann_graph.gif,',
}
