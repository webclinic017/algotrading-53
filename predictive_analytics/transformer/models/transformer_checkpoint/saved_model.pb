��(
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
-
Sqrt
x"T
y"T"
Ttype:

2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.9.12v2.9.0-18-gd8ce9f9c3018��%
�
(Adam/transformer_model_17/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(Adam/transformer_model_17/dense_1/bias/v
�
<Adam/transformer_model_17/dense_1/bias/v/Read/ReadVariableOpReadVariableOp(Adam/transformer_model_17/dense_1/bias/v*
_output_shapes
:*
dtype0
�
*Adam/transformer_model_17/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*;
shared_name,*Adam/transformer_model_17/dense_1/kernel/v
�
>Adam/transformer_model_17/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp*Adam/transformer_model_17/dense_1/kernel/v*
_output_shapes
:	�*
dtype0
�
&Adam/transformer_model_17/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&Adam/transformer_model_17/dense/bias/v
�
:Adam/transformer_model_17/dense/bias/v/Read/ReadVariableOpReadVariableOp&Adam/transformer_model_17/dense/bias/v*
_output_shapes	
:�*
dtype0
�
(Adam/transformer_model_17/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*9
shared_name*(Adam/transformer_model_17/dense/kernel/v
�
<Adam/transformer_model_17/dense/kernel/v/Read/ReadVariableOpReadVariableOp(Adam/transformer_model_17/dense/kernel/v* 
_output_shapes
:
��*
dtype0
�
JAdam/transformer_model_17/transformer_encoder/layer_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*[
shared_nameLJAdam/transformer_model_17/transformer_encoder/layer_normalization_1/beta/v
�
^Adam/transformer_model_17/transformer_encoder/layer_normalization_1/beta/v/Read/ReadVariableOpReadVariableOpJAdam/transformer_model_17/transformer_encoder/layer_normalization_1/beta/v*
_output_shapes	
:�*
dtype0
�
KAdam/transformer_model_17/transformer_encoder/layer_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*\
shared_nameMKAdam/transformer_model_17/transformer_encoder/layer_normalization_1/gamma/v
�
_Adam/transformer_model_17/transformer_encoder/layer_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOpKAdam/transformer_model_17/transformer_encoder/layer_normalization_1/gamma/v*
_output_shapes	
:�*
dtype0
�
=Adam/transformer_model_17/transformer_encoder/conv1d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*N
shared_name?=Adam/transformer_model_17/transformer_encoder/conv1d_1/bias/v
�
QAdam/transformer_model_17/transformer_encoder/conv1d_1/bias/v/Read/ReadVariableOpReadVariableOp=Adam/transformer_model_17/transformer_encoder/conv1d_1/bias/v*
_output_shapes	
:�*
dtype0
�
?Adam/transformer_model_17/transformer_encoder/conv1d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*P
shared_nameA?Adam/transformer_model_17/transformer_encoder/conv1d_1/kernel/v
�
SAdam/transformer_model_17/transformer_encoder/conv1d_1/kernel/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_model_17/transformer_encoder/conv1d_1/kernel/v*$
_output_shapes
:��*
dtype0
�
;Adam/transformer_model_17/transformer_encoder/conv1d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*L
shared_name=;Adam/transformer_model_17/transformer_encoder/conv1d/bias/v
�
OAdam/transformer_model_17/transformer_encoder/conv1d/bias/v/Read/ReadVariableOpReadVariableOp;Adam/transformer_model_17/transformer_encoder/conv1d/bias/v*
_output_shapes	
:�*
dtype0
�
=Adam/transformer_model_17/transformer_encoder/conv1d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*N
shared_name?=Adam/transformer_model_17/transformer_encoder/conv1d/kernel/v
�
QAdam/transformer_model_17/transformer_encoder/conv1d/kernel/v/Read/ReadVariableOpReadVariableOp=Adam/transformer_model_17/transformer_encoder/conv1d/kernel/v*$
_output_shapes
:��*
dtype0
�
HAdam/transformer_model_17/transformer_encoder/layer_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*Y
shared_nameJHAdam/transformer_model_17/transformer_encoder/layer_normalization/beta/v
�
\Adam/transformer_model_17/transformer_encoder/layer_normalization/beta/v/Read/ReadVariableOpReadVariableOpHAdam/transformer_model_17/transformer_encoder/layer_normalization/beta/v*
_output_shapes	
:�*
dtype0
�
IAdam/transformer_model_17/transformer_encoder/layer_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*Z
shared_nameKIAdam/transformer_model_17/transformer_encoder/layer_normalization/gamma/v
�
]Adam/transformer_model_17/transformer_encoder/layer_normalization/gamma/v/Read/ReadVariableOpReadVariableOpIAdam/transformer_model_17/transformer_encoder/layer_normalization/gamma/v*
_output_shapes	
:�*
dtype0
�
TAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*e
shared_nameVTAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_bias/v
�
hAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_bias/v/Read/ReadVariableOpReadVariableOpTAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_bias/v*
_output_shapes	
:�*
dtype0
�
VAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*g
shared_nameXVAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/v
�
jAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/v/Read/ReadVariableOpReadVariableOpVAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/v*$
_output_shapes
:��*
dtype0
�
QAdam/transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*b
shared_nameSQAdam/transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/v
�
eAdam/transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/v/Read/ReadVariableOpReadVariableOpQAdam/transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/v*$
_output_shapes
:��*
dtype0
�
OAdam/transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*`
shared_nameQOAdam/transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/v
�
cAdam/transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/v/Read/ReadVariableOpReadVariableOpOAdam/transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/v*$
_output_shapes
:��*
dtype0
�
QAdam/transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*b
shared_nameSQAdam/transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/v
�
eAdam/transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/v/Read/ReadVariableOpReadVariableOpQAdam/transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/v*$
_output_shapes
:��*
dtype0
�
=Adam/transformer_model_17/positional_embedding/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*N
shared_name?=Adam/transformer_model_17/positional_embedding/dense_2/bias/v
�
QAdam/transformer_model_17/positional_embedding/dense_2/bias/v/Read/ReadVariableOpReadVariableOp=Adam/transformer_model_17/positional_embedding/dense_2/bias/v*
_output_shapes	
:�*
dtype0
�
?Adam/transformer_model_17/positional_embedding/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*P
shared_nameA?Adam/transformer_model_17/positional_embedding/dense_2/kernel/v
�
SAdam/transformer_model_17/positional_embedding/dense_2/kernel/v/Read/ReadVariableOpReadVariableOp?Adam/transformer_model_17/positional_embedding/dense_2/kernel/v*
_output_shapes
:	�*
dtype0
�
(Adam/transformer_model_17/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(Adam/transformer_model_17/dense_1/bias/m
�
<Adam/transformer_model_17/dense_1/bias/m/Read/ReadVariableOpReadVariableOp(Adam/transformer_model_17/dense_1/bias/m*
_output_shapes
:*
dtype0
�
*Adam/transformer_model_17/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*;
shared_name,*Adam/transformer_model_17/dense_1/kernel/m
�
>Adam/transformer_model_17/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp*Adam/transformer_model_17/dense_1/kernel/m*
_output_shapes
:	�*
dtype0
�
&Adam/transformer_model_17/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&Adam/transformer_model_17/dense/bias/m
�
:Adam/transformer_model_17/dense/bias/m/Read/ReadVariableOpReadVariableOp&Adam/transformer_model_17/dense/bias/m*
_output_shapes	
:�*
dtype0
�
(Adam/transformer_model_17/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*9
shared_name*(Adam/transformer_model_17/dense/kernel/m
�
<Adam/transformer_model_17/dense/kernel/m/Read/ReadVariableOpReadVariableOp(Adam/transformer_model_17/dense/kernel/m* 
_output_shapes
:
��*
dtype0
�
JAdam/transformer_model_17/transformer_encoder/layer_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*[
shared_nameLJAdam/transformer_model_17/transformer_encoder/layer_normalization_1/beta/m
�
^Adam/transformer_model_17/transformer_encoder/layer_normalization_1/beta/m/Read/ReadVariableOpReadVariableOpJAdam/transformer_model_17/transformer_encoder/layer_normalization_1/beta/m*
_output_shapes	
:�*
dtype0
�
KAdam/transformer_model_17/transformer_encoder/layer_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*\
shared_nameMKAdam/transformer_model_17/transformer_encoder/layer_normalization_1/gamma/m
�
_Adam/transformer_model_17/transformer_encoder/layer_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOpKAdam/transformer_model_17/transformer_encoder/layer_normalization_1/gamma/m*
_output_shapes	
:�*
dtype0
�
=Adam/transformer_model_17/transformer_encoder/conv1d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*N
shared_name?=Adam/transformer_model_17/transformer_encoder/conv1d_1/bias/m
�
QAdam/transformer_model_17/transformer_encoder/conv1d_1/bias/m/Read/ReadVariableOpReadVariableOp=Adam/transformer_model_17/transformer_encoder/conv1d_1/bias/m*
_output_shapes	
:�*
dtype0
�
?Adam/transformer_model_17/transformer_encoder/conv1d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*P
shared_nameA?Adam/transformer_model_17/transformer_encoder/conv1d_1/kernel/m
�
SAdam/transformer_model_17/transformer_encoder/conv1d_1/kernel/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_model_17/transformer_encoder/conv1d_1/kernel/m*$
_output_shapes
:��*
dtype0
�
;Adam/transformer_model_17/transformer_encoder/conv1d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*L
shared_name=;Adam/transformer_model_17/transformer_encoder/conv1d/bias/m
�
OAdam/transformer_model_17/transformer_encoder/conv1d/bias/m/Read/ReadVariableOpReadVariableOp;Adam/transformer_model_17/transformer_encoder/conv1d/bias/m*
_output_shapes	
:�*
dtype0
�
=Adam/transformer_model_17/transformer_encoder/conv1d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*N
shared_name?=Adam/transformer_model_17/transformer_encoder/conv1d/kernel/m
�
QAdam/transformer_model_17/transformer_encoder/conv1d/kernel/m/Read/ReadVariableOpReadVariableOp=Adam/transformer_model_17/transformer_encoder/conv1d/kernel/m*$
_output_shapes
:��*
dtype0
�
HAdam/transformer_model_17/transformer_encoder/layer_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*Y
shared_nameJHAdam/transformer_model_17/transformer_encoder/layer_normalization/beta/m
�
\Adam/transformer_model_17/transformer_encoder/layer_normalization/beta/m/Read/ReadVariableOpReadVariableOpHAdam/transformer_model_17/transformer_encoder/layer_normalization/beta/m*
_output_shapes	
:�*
dtype0
�
IAdam/transformer_model_17/transformer_encoder/layer_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*Z
shared_nameKIAdam/transformer_model_17/transformer_encoder/layer_normalization/gamma/m
�
]Adam/transformer_model_17/transformer_encoder/layer_normalization/gamma/m/Read/ReadVariableOpReadVariableOpIAdam/transformer_model_17/transformer_encoder/layer_normalization/gamma/m*
_output_shapes	
:�*
dtype0
�
TAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*e
shared_nameVTAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_bias/m
�
hAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_bias/m/Read/ReadVariableOpReadVariableOpTAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_bias/m*
_output_shapes	
:�*
dtype0
�
VAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*g
shared_nameXVAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/m
�
jAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/m/Read/ReadVariableOpReadVariableOpVAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/m*$
_output_shapes
:��*
dtype0
�
QAdam/transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*b
shared_nameSQAdam/transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/m
�
eAdam/transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/m/Read/ReadVariableOpReadVariableOpQAdam/transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/m*$
_output_shapes
:��*
dtype0
�
OAdam/transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*`
shared_nameQOAdam/transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/m
�
cAdam/transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/m/Read/ReadVariableOpReadVariableOpOAdam/transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/m*$
_output_shapes
:��*
dtype0
�
QAdam/transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*b
shared_nameSQAdam/transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/m
�
eAdam/transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/m/Read/ReadVariableOpReadVariableOpQAdam/transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/m*$
_output_shapes
:��*
dtype0
�
=Adam/transformer_model_17/positional_embedding/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*N
shared_name?=Adam/transformer_model_17/positional_embedding/dense_2/bias/m
�
QAdam/transformer_model_17/positional_embedding/dense_2/bias/m/Read/ReadVariableOpReadVariableOp=Adam/transformer_model_17/positional_embedding/dense_2/bias/m*
_output_shapes	
:�*
dtype0
�
?Adam/transformer_model_17/positional_embedding/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*P
shared_nameA?Adam/transformer_model_17/positional_embedding/dense_2/kernel/m
�
SAdam/transformer_model_17/positional_embedding/dense_2/kernel/m/Read/ReadVariableOpReadVariableOp?Adam/transformer_model_17/positional_embedding/dense_2/kernel/m*
_output_shapes
:	�*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
`
beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_2
Y
beta_2/Read/ReadVariableOpReadVariableOpbeta_2*
_output_shapes
: *
dtype0
`
beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebeta_1
Y
beta_1/Read/ReadVariableOpReadVariableOpbeta_1*
_output_shapes
: *
dtype0
�
!transformer_model_17/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!transformer_model_17/dense_1/bias
�
5transformer_model_17/dense_1/bias/Read/ReadVariableOpReadVariableOp!transformer_model_17/dense_1/bias*
_output_shapes
:*
dtype0
�
#transformer_model_17/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*4
shared_name%#transformer_model_17/dense_1/kernel
�
7transformer_model_17/dense_1/kernel/Read/ReadVariableOpReadVariableOp#transformer_model_17/dense_1/kernel*
_output_shapes
:	�*
dtype0
�
transformer_model_17/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*0
shared_name!transformer_model_17/dense/bias
�
3transformer_model_17/dense/bias/Read/ReadVariableOpReadVariableOptransformer_model_17/dense/bias*
_output_shapes	
:�*
dtype0
�
!transformer_model_17/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*2
shared_name#!transformer_model_17/dense/kernel
�
5transformer_model_17/dense/kernel/Read/ReadVariableOpReadVariableOp!transformer_model_17/dense/kernel* 
_output_shapes
:
��*
dtype0
�
Ctransformer_model_17/transformer_encoder/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*T
shared_nameECtransformer_model_17/transformer_encoder/layer_normalization_1/beta
�
Wtransformer_model_17/transformer_encoder/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOpCtransformer_model_17/transformer_encoder/layer_normalization_1/beta*
_output_shapes	
:�*
dtype0
�
Dtransformer_model_17/transformer_encoder/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*U
shared_nameFDtransformer_model_17/transformer_encoder/layer_normalization_1/gamma
�
Xtransformer_model_17/transformer_encoder/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOpDtransformer_model_17/transformer_encoder/layer_normalization_1/gamma*
_output_shapes	
:�*
dtype0
�
6transformer_model_17/transformer_encoder/conv1d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*G
shared_name86transformer_model_17/transformer_encoder/conv1d_1/bias
�
Jtransformer_model_17/transformer_encoder/conv1d_1/bias/Read/ReadVariableOpReadVariableOp6transformer_model_17/transformer_encoder/conv1d_1/bias*
_output_shapes	
:�*
dtype0
�
8transformer_model_17/transformer_encoder/conv1d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*I
shared_name:8transformer_model_17/transformer_encoder/conv1d_1/kernel
�
Ltransformer_model_17/transformer_encoder/conv1d_1/kernel/Read/ReadVariableOpReadVariableOp8transformer_model_17/transformer_encoder/conv1d_1/kernel*$
_output_shapes
:��*
dtype0
�
4transformer_model_17/transformer_encoder/conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*E
shared_name64transformer_model_17/transformer_encoder/conv1d/bias
�
Htransformer_model_17/transformer_encoder/conv1d/bias/Read/ReadVariableOpReadVariableOp4transformer_model_17/transformer_encoder/conv1d/bias*
_output_shapes	
:�*
dtype0
�
6transformer_model_17/transformer_encoder/conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*G
shared_name86transformer_model_17/transformer_encoder/conv1d/kernel
�
Jtransformer_model_17/transformer_encoder/conv1d/kernel/Read/ReadVariableOpReadVariableOp6transformer_model_17/transformer_encoder/conv1d/kernel*$
_output_shapes
:��*
dtype0
�
Atransformer_model_17/transformer_encoder/layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*R
shared_nameCAtransformer_model_17/transformer_encoder/layer_normalization/beta
�
Utransformer_model_17/transformer_encoder/layer_normalization/beta/Read/ReadVariableOpReadVariableOpAtransformer_model_17/transformer_encoder/layer_normalization/beta*
_output_shapes	
:�*
dtype0
�
Btransformer_model_17/transformer_encoder/layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*S
shared_nameDBtransformer_model_17/transformer_encoder/layer_normalization/gamma
�
Vtransformer_model_17/transformer_encoder/layer_normalization/gamma/Read/ReadVariableOpReadVariableOpBtransformer_model_17/transformer_encoder/layer_normalization/gamma*
_output_shapes	
:�*
dtype0
�
Mtransformer_model_17/transformer_encoder/multi_head_attention/projection_biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*^
shared_nameOMtransformer_model_17/transformer_encoder/multi_head_attention/projection_bias
�
atransformer_model_17/transformer_encoder/multi_head_attention/projection_bias/Read/ReadVariableOpReadVariableOpMtransformer_model_17/transformer_encoder/multi_head_attention/projection_bias*
_output_shapes	
:�*
dtype0
�
Otransformer_model_17/transformer_encoder/multi_head_attention/projection_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*`
shared_nameQOtransformer_model_17/transformer_encoder/multi_head_attention/projection_kernel
�
ctransformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/Read/ReadVariableOpReadVariableOpOtransformer_model_17/transformer_encoder/multi_head_attention/projection_kernel*$
_output_shapes
:��*
dtype0
�
Jtransformer_model_17/transformer_encoder/multi_head_attention/value_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*[
shared_nameLJtransformer_model_17/transformer_encoder/multi_head_attention/value_kernel
�
^transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/Read/ReadVariableOpReadVariableOpJtransformer_model_17/transformer_encoder/multi_head_attention/value_kernel*$
_output_shapes
:��*
dtype0
�
Htransformer_model_17/transformer_encoder/multi_head_attention/key_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*Y
shared_nameJHtransformer_model_17/transformer_encoder/multi_head_attention/key_kernel
�
\transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/Read/ReadVariableOpReadVariableOpHtransformer_model_17/transformer_encoder/multi_head_attention/key_kernel*$
_output_shapes
:��*
dtype0
�
Jtransformer_model_17/transformer_encoder/multi_head_attention/query_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*[
shared_nameLJtransformer_model_17/transformer_encoder/multi_head_attention/query_kernel
�
^transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/Read/ReadVariableOpReadVariableOpJtransformer_model_17/transformer_encoder/multi_head_attention/query_kernel*$
_output_shapes
:��*
dtype0
�
6transformer_model_17/positional_embedding/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*G
shared_name86transformer_model_17/positional_embedding/dense_2/bias
�
Jtransformer_model_17/positional_embedding/dense_2/bias/Read/ReadVariableOpReadVariableOp6transformer_model_17/positional_embedding/dense_2/bias*
_output_shapes	
:�*
dtype0
�
8transformer_model_17/positional_embedding/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*I
shared_name:8transformer_model_17/positional_embedding/dense_2/kernel
�
Ltransformer_model_17/positional_embedding/dense_2/kernel/Read/ReadVariableOpReadVariableOp8transformer_model_17/positional_embedding/dense_2/kernel*
_output_shapes
:	�*
dtype0
�
ConstConst* 
_output_shapes
:
��*
dtype0*��
value��B��
��"��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?�jW?^MM? C?��8?�z.?�~$?:�?ut?�}?���>��>G(�>��>)��>`׶>���>>9�>���>v�>��>'�p>�#`>a�P>(~B>:#5>R�(>�>!=>�%>~�=]��=��=vu�=dN�=� �=�ۤ=7o�=�̎=`�=�^w=�6f=�>V=bG=֌9=��,=�� =Ɗ=�)=\�=��<�M�<߻�<�>�<�´<�6�<&��<B��<r��<�J|<��j<IzZ<^OK<�1=<t0<W�#<uv<��<<��;̩�;���;��;\D�;Py�;���;�}�;].�;h��;�Qo;^�^; >O;��@; w3;G';i;Ӟ;i�;�x�: �:l��:W��:�ӻ:�ɮ:�:\�:�ٌ:m�:��s:�c:&?S:��D:��6:C;*:�i:j:.	:�O�9��9%�9���9�t�9�)�9_˥9�H�9r��9���9�x9�dg9�SW9�`H9Sw:9(�-9y!9#C9q�9+9�,�8�\�8@Q
?��?)�%?�G1?�T;?,(D?��K?��R?�X?��]?�=b?`)f?ƒi?d�l?�o?I\q?jNs?��t?vv?��w?��x?��y?	�z?	W{?��{?��|?|�|?@`}?(�}?~?�K~?��~?��~?r�~?n
?S+?�G?`?�u?`�?h�?J�?O�?��?��?��?O�?*�?<�?��?n�?��?��?�?/�?	�?��?�?;�?E�?,�?��?��?7�?��?*�?��?��?(�?h�?��?��?��?�?9�?T�?k�?�?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?  �?��h?�Hu?�|?:�?�Z?|?�v?�co?
�f?1�]?�S?k�I?5??��4?��*?Q� ?T?m?VM?f��>���>g��>Bk�>��>�G�>i`�>5�>e��>���>�{>gj>�cZ>�oK>�{=>�v0>�R$>� >�s>��>���=���=���=�%�=\�=���=①=@q�=_�=�p�=��p=8`=��P=�0B=��4=o-(=Ձ=\�=��=�B�<���<Pu�<\K�<�.�<��<>ԣ<�t�<\ߍ<�<T�u<_�d<��T<�F<�C8<�x+<'�<)}<.
<'� <�Q�;	��;�=�;|��;�v�;$�;�h�;���;V��;�xz;i;Y�X;G�I;��;;��.;�";\;��;i;���:��:!?�:���:��:@;�:�i�:j�:.�:�O:�m:$]:��M:�t?:�)2:_�%:�H:r�:��:��9�d�9�S�9�`�9Sw�9(��9y�9#C�9qԋ9+�9�,r9�\a93վ���SI$�Hn'�QM�=Kl2>Ƒ�>|k�>���>" ?u�?��?9*?�5?��>?�G?�{N?��T?<�Z?w_?i�c?(xg? �j?��m?��o?Xr?I�s?ǎu?��v?�'x?�3y?9z?��z?<�{?�+|?��|?O }?}?�}?�!~?�a~?f�~?m�~?�~??C6?JQ?�h?�|?��?��?�?N�?/�?��?$�?��?�?��?�?��?��?��?��?��?��?,�?}�?��?��?y�?7�?��?i�?��?O�?��?��?A�?}�?��?��?�?&�?C�?]�?s�?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?  �?  �?Á>��>&n?j�)?�<G?k�]?4�m?݈x?�E~?��?�t~?!Nz?c!t?Fnl?z�c?OZ?�	P?��E?�p;?�11?�$'?�]?$�?o�
?m/?���>\5�>�d�>�h�>Q<�>٭>)7�>mN�> �>_��>�&u>�md>��T>;F>�8>��+> >�>'�
>,3>���=��=�l�=���=���=/�=6j�=��=�{�=u-|=v�j=MiZ=�BK=�(==�0=��#=�s=	�=b= ��<���<���<E�<IG�<|�<���<���<�1�<ș�<�Xo<ú^<IDO<��@<�|3<�'<n<��<�<]��;�;���;S��;qڻ;�Ϯ;���;ba�;�ތ;�;L�s;�	c;�FS;��D;*�6;]A*;So;ao;�2	;�X�:o��:�:���:�{�:g0�:Yѥ:.N�:���:{��:�x:�lg:�[W:�gH:~::l�-:�~!:�H:~�:�#:�5�9�d�9���9�.�9���9m�9&p}��}p��[�9�?�Ϳ �o���a���}u������k:��=6�V>c�>�T�>2H�>R?W/?Ӎ"?�\.?��8?��A?��I?�P?QW?)m\?�a?	*e?��h?7�k?�vn?v�p?��r?�t?�v?�hw?4�x?��y?iz?K({?�{?�]|?�|?�E}?S�}?C�}?b:~?w~?��~?O�~?� ?�"?�@?;Z?qp?��?V�?â?B�?�?s�?��?��?��?��?��?w�?��?��?k�?��?��?;�?��?��?�?��?��?u�?�?��?�?r�?��?�?W�?��?��?��?�?1�?M�?e�?z�?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?ϽA�jq��(��uJ����>���>��?'�)?�IG?�]?�n?�x?�G~?��?0s~?~Kz?�t?jl?כc?_Z?�P?p�E?^k;?�,1?�'?�X?~�?��
?-+?���>�-�>f]�>�a�>�5�> ӭ>�1�> I�>*�>���>�u>�ed>�T>�3F>R�8>��+>Y >C>,�
>�.>��=��=)e�=���=��=!	�=�d�=ȍ�=�v�=]$|=��j=laZ=U;K=�!==q0=��#=n=��=�=A��<���<���<��<�@�<Nv�<7��<�{�<�,�<#��<�Oo<��^<�<O<��@<$v3<� '<th<`�<�<Qx�;��;��;��;�ӻ;Xɮ;ʦ�;�[�;�ٌ;X�;}�s;�c;?S;y�D;��6;7;*;�i;j;�-	;�O�:ڕ�:�:���:�t�:�)�:\˥:�H�:p��:���:�x:�dg:�SW:�`H:Rw::(�-:y!:#C:q�:+:�,�9�\�90U'�l	V�?�r��$�;l}��tp�S	[�k�?��� ��w��儼� <u����*ے:v�=\�V>�.�>�h�>4Z�>Y!?x6?!�"?qb.?��8?��A?i�I?W�P?1W?�o\?�a?�+e?D�h?��k?xn?��p?��r?��t?lv?�iw?��x?	�y?�iz?�({?N�{?�]|?K�|?F}?~�}?i�}?�:~?;w~?ի~?d�~?� ?	#?�@?GZ?{p?��?^�?ʢ?H�?�?w�?��?��?��?��?��?x�?��?��?l�?��?��?<�?��?��?�?��?��?v�?�?��?�?r�?��?�?X�?��?��?��?�?1�?M�?e�?z�?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?|u���[~m�ɋF�d5��c���I׽Le�=�ڥ> U ?=&?[�D?��[?o�l?��w?I�}?�?K�~?��z?��t?�?m?�d?l
[?�Q?��F?Kv<?142?	!(?TR?��?'�?�?Dw�>.��>$��>F��>���>�
�>	V�>T[�>��>�p�>�v>v	f>�OV>��G>��9>�&-><!>�>��>�>�B�=��=d��=Lb�=!۵=�B�=`��=n��=�s�=$�}=3^l=K�[=��L=,�>=IK1=��$=؊=��=Q�=n{�<�M�<�Q�<3q�<��<϶�<y��<(��</�<���<<q<S`<6�P<%BB<��4<�8(<��<��<��<�L�;d��;�{�;^P�;�2�;�;�֣;�v�;�;a�;��u;'�d;��T;�F;�D8;vy+;;�};q.
;x� ;R�:s��:1>�:���:w�:P�:
i�:ٞ�:m��:�xz:&i:q�X:[�I:��;:��.:��":\:��:,<�>��s��!��R�!��#R�_�p��~��'~�@2r���]�]�B��#�D�pEþ�/�����r)��M�=�M>y��>�V�>��>�?��?�L!?�A-?��7?A?,I?zHP?�V?o�[?@�`?�d?>`h?�k?7n?�p?��r?/gt?|�u?uIw?�rx?�ty?�Tz?�{?��{?GP|?��|?�;}?��}?��}?�3~?{q~?ڦ~?�~?�~?�?�=?�W?an?�?ʒ?l�?�?�?��?��?��?�?u�?�?�?��?��?.�?o�?c�?�?��?��?��?��?��?e�?�?��?�?i�?��?�?Q�?��?��?��?�?.�?J�?c�?x�?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?����$���b��~��6z��x]��`/�kT�t�k����:9A_>�>W�?�R5?�PP?Bud?Mxr?�'{?�T?��?�3}?�>x?#uq?�Ni?�0`?�mV?4IL?��A?ͩ7?}z-?�#?��?i�?ǟ?"7�>z�>P��>'*�>{�>[��>�}�>!�>z�>X��>�*�>v�n>w�^>�WO>o A>��3>~'>B�>�4>�/>���=�M�=��=��=��=(߯=7��=xX�=>ɍ=��=ќu=�d=A�T=u�E=Y;8=�r+=9�=�z=�,
=�� =�Q�<~��<
@�<,��<�y�<e�<Fl�<'��<���<}z<�i<��X<X�I<��;<�.<'�"<�`<�<�<���;�	�;iF�;Y��;���;7A�;5o�;Io�;�2�;�X;U�m;];��M;�{?;\02;Q�%;'N;��;v�;��:�l�:�[�:�g�:~�:i��:�~�:�H�:}ً:�#�:�5r:�da:��Q:�.C:��5:l):��u?�C?���>/��=�}X�}f ��}:��b�Sy����t�y�`yi�T�Q��4������o?���AF��ٓ��<+=��>#z>��>��>4/�>o�?uH?�'?V2?&B<?{�D?�L?2IS?OY?7^?��b?��f?��i?�l?8[o?�q?|s?u&u?s�v?l�w?��x?3�y?z�z?�g{?|?a�|?s}?�i}?c�}?-~?�Q~?Q�~?:�~?v�~?�?V.?mJ?�b?�w?�?��?��?i�?��?��?C�?��?��?��?�?��?�?��?E�?a�?4�?��?'�?W�?^�?A�?�?��?E�?��?4�?��?��?/�?m�?��?��?��?�?<�?V�?m�?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?F0(?�Cj>��`�Z���[�44|�Ts|���b�n�6�����,������hA>l��>\q?4�0?o�L?��a?��p?�6z?��~?��?\�}?#y?D�r?�j?��a?u�W?h�M?=rC?% 9?|�.?s�$?�6?��?��?LK ?/F�><��>�-�>�`�>Vb�>5+�>���>`�>��>.u�>�Jq>P�`>4rQ>C>۱5>U3)>�>��>��>�F�=S��=*V�=��=h�=\��=�^�=�=2>�=�O�=$#x=��f=3�V=� H=h :=R6-=`1!=�=��=d�=T��< �<�a�<6��<�R�<^��<��<-�<R��<k}<��k<'([<*�K<��=<��0<�X$<��<�Q<-p<�|�;�_�;s�;V��;׸;��;��;��;U��;���;ap;�e_;�O;.tA;�4;1�';��;�;��;>@�:���:��:�w�:di�:�T�:f(�:�ԗ:�I�:�z�:ĳt:��c:E�S:�0E:��@?�5y?ӿy?b�L?W�?��/>��)�6{��`O3�s�]���v�}��!h{�Rl��`U�!9��t�<��t���WzX�\^�����<�>[�l>���>�9�>�>�>��	?aU?�V%?Z�0?m�:?��C?��K?�cR?�VX?M�]?Vb?� f?�oi?�kl?o?,Eq?Z:s?i�t?�fv?}�w?��x?��y?}�z?�O{?�{?({|?��|?\}?��}?�~?�H~?��~?��~?��~?�?*?�F?�_?u?��?×?��?Ա?M�?`�?;�?	�?��?�?s�?G�?��?v�?��?�?��?��?��?.�?;�?#�?��?��?1�?��?%�?��?��?%�?e�?��?��?��?�?8�?S�?j�?~�?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?�F}?��j?|�?W�&>z���%�E�b�~��-z� e]�`F/��
lk�$�;��_>�/�>}?!b5?�\P?�}d?�}r?!+{?V?�?�1}?�;x?Zqq?hJi?�+`?|hV?DL?��A?��7?mu-?�#?�?Շ?f�?�.�>���>Ҥ�>#�>it�>��>x�>��>�t�>�{�>R&�>��n>��^>@PO>�A>��3>x'>��>�/>�*>��=VE�=��=@��=4�=�د=Q��=�R�=!č=��=��u=ߋd=��T=P�E=�48=�l+=w�=Zu=�'
=� =VI�<t��<�8�<6��<bs�<]��<�f�<<⒆<rvz<%i<��X<�I<��;<��.<G�"<�[<i�<<��;k�;�>�;?��;`�;;�;|i�;�i�;�-�;�O;��m;
];�M;�t?;�)2;T�%;�H;k�;��;
��:�d�:�S�:�`�:Ow�:%��:y�:!C�:pԋ:*�:�,r:�\a:�����>X�L?n�|?3�u?ݵC?գ�>J3�= Y��� �E�:���b��$y������y�oi��Q���4�}��H��5���F��`���,=�,>�Nz>R1�>j��>z@�>�?FO?�'?_[2?�F<?��D?��L?TLS?"Y?�9^?��b?R�f?��i?s�l?h\o?�q?�|s?<'u? �v?�w?P�x?��y?ܲz?8h{?h|?��|?�}?�i}?��}?Q~?�Q~?l�~?R�~?��~?�?f.?zJ?�b?�w?�?�?��?o�?��?��?F�?��?��?��?	�?��?�?��?F�?b�?5�?��?(�?X�?^�?B�?�?��?E�?��?4�?��?��?/�?m�?��?��?��?�?<�?V�?m�?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?2�>^^?�?CS?���>�1���پf?�F�p�����6r�pAN�����¾5��&5�=��>�`�>H` ?�@?�mX?>j?7v?D)}?/�?�&?^�{?�u?"�n?�f?j�\?��R?�H?4>?��3?��)?f�?�j?�>?�w?�4�>�Q�>�G�>�>���>A�>]B�>�(�>.>l�>Z�y>.�h>��X>�	J>d-<>?/>�/#>��>:w>\�>|4�=#A�=iw�=Y��=?�=�R�=�s�=g�=��=#��=u@o=t�^=�6O=r�@=Pu3=�'=�j=��=�=	��<��<���<���<Fݻ<�Ү<���<�d�<@�<x�<� t<kc<�LS<��D<��6<�F*<tt<:t<�7	<ua�;���;�&�;��;d��;�6�;+ץ;�S�;���;7��;�x;(ug;YcW;&oH;��:;��-;��!;�M;��;�(;X>�:�l�:8��:�5�:6��:��:�N�:c�:>9�:!�}:�?i�������v=4�?�d?��?��g?�*?�>:�0�q���ɣ�:K�g�l��P}�F���t�~a�ɉG��P)������ξ�3����:��ƥ�=
9<>%�>Fr�>Ӆ�>��?�Q?�!?�W+?�6?r�??O�G?-&O?I�U?[?K�_?!d?��g?� k?v�m?3p?MLr?�t?��u?�w?�Cx?�Ky?1z?��z?�{?$9|?u�|?�*}?��}?��}?�(~?�g~?`�~?��~?��~?J?9?�S?�j?�~?�?�?�?U�?�?��?��?"�?��?Z�?v�?�?�?��?�?�?��?O�?��?��?��?��?H�?��?v�?��?Y�?��?�?G�?��?��?��?�?)�?F�?_�?t�?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?�D�A�=yP1?3�z?�p?^�#?HV>��s�l���^��|���{�m8a���4�^��0󁾂p��vLJ>���>� ?8@2?��M?N�b?�Tq?k�z?�?��?�}?��x?�2r?;*j?� a?�jW?^MM? C?��8?�z.?�~$?:�?ut?�}?���>��>G(�>��>)��>`׶>���>>9�>���>v�>��>'�p>�#`>a�P>(~B>:#5>R�(>�>!=>�%>~�=]��=��=vu�=dN�=� �=�ۤ=7o�=�̎=`�=�^w=�6f=�>V=bG=֌9=��,=�� =Ɗ=�)=\�=��<�M�<߻�<�>�<�´<�6�<&��<B��<r��<�J|<��j<IzZ<^OK<�1=<t0<W�#<uv<��<<��;̩�;���;��;\D�;Py�;���;�}�;].�;h��;�Qo;^�^; >O;��@; w3;G';i;Ӟ;i�;�x�: �:l��:W��:�ӻ:�ɮ:�:\�:�ٌ:d�V�0~�f�8�=�O�9��>�D?�Wz?(�x?FJ?���>�e >8#8�>h󾒆5�ng_���w����`�z�_yk�@T��7���U���-Ҫ�
�R�F߫�b��<�>1�p>nץ>���>c��>@Q
?��?)�%?�G1?�T;?,(D?��K?��R?�X?��]?�=b?`)f?ƒi?d�l?�o?I\q?jNs?��t?vv?��w?��x?��y?	�z?	W{?��{?��|?|�|?@`}?(�}?~?�K~?��~?��~?r�~?n
?S+?�G?`?�u?`�?h�?J�?O�?��?��?��?O�?*�?<�?��?n�?��?��?�?/�?	�?��?�?;�?E�?,�?��?��?7�?��?*�?��?��?(�?h�?��?��?��?�?9�?T�?k�?�?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?\��D�9�8&νY?+Ml?P�{?�B?�P�>�8ǽ� �0�L�b�v��M��5l�I�D�n��!A��ý�>>�>�?5�'?U�E?g�\?;m?�x?�~?�?m�~?��z?��t?~�l?*&d?ݟZ?q�P?qZF?&<?��1?ߴ'?u�?�r?X[?c�?���>��>�5�>�-�>
��>���>�ڢ>��>ޥ�>��>�!v>�Xe>�U>�G>�^9>�,>5� >u�>vX>��>6��=r��=�E�= ��=oM�=���=��=+�=!	�=�4}=��k=�M[=*L=s�==��0=}$=�=ks=z�='��< ��<=��<m��<�<�/�<�;�<S�<\<T �<�Rp<ˣ_<$P<e�A<j84<_�'<�<�:<�%<x��;��;���;���;���;���;�V�;���;:r�;=��;��t;��c;�#T;IiE;��7;��*;;�	;~�	;2 ;��:x�:K��:D�:��:�~�:��:r�;;0�%�~���X���ľ�'5>�'?Y8o?0�~?�G]?�?+��>gۖ��cž"$���S���q���~���}��yq��z\��pA�
�"�f��o���|�݄���˴�ns�=.8Q>���>��>�=�>j0?�`?��!?��-?�58?kA?u~I?��P?�V?[$\? �`?��d?��h?f�k?pRn?�p?d�r?#yt?v?�Vw?�~x?y?o]z?,{?;�{?V|?z�|?0@}?a�}?��}?�6~?�s~?�~?��~?��~?*!???�X?Do?��?t�? �?��?��?��?"�?8�?[�?��?E�?A�?��?��?H�?��?v�?%�?��?��?��?��?��?l�?	�?��?�?m�?��?�?T�?��?��?��?�?0�?L�?d�?y�?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?�\	��@|���R�,�x��>�)^?�?M�R?3��>��k�U�پm�?�>�p����x)r�+N�&��A�¾�v���=@R�>���>
r ?�@?*xX?{Ej?�;v?�+}?��?�%?�{?��u?�n?f?��\?��R?�H?�.>?��3?��)?��?f?:?7s?e,�>/J�>A@�>"�>,��> �>�<�>|#�>!��>� �>��y>��h>?�X>�J>�&<>�8/>'*#>j�>'r>��>�+�=�8�=�o�=:��=��=iL�=9n�=�a�=��=���=�7o=l�^=/O=}�@=�n3=��&=e=b�=�=�w�<��<���<k��<~ֻ<x̮<��<P_�<*݌<��<"�s<8c<IES<q�D<@�6<�@*<�n<�n<�2	<<X�;��;��;���;z{�;10�;.ѥ;N�;���;d��;�x;�lg;�[W;�gH;�}:;_�-;�~!;�H;w�;�#;�5�:�d�:���:�.�:���:j�:�X?r�.>�d��Ux�i�ie��FX{=w?�d?��?��g?S�)?&��>�H\���'��UOK���l��T}�����t��sa��{G��@)���mξ����� ��=ik<>�>���>b��>F�?�X?Y(?�]+?� 6?�??5�G?�)O?E�U?�[?��_? #d?��g?%k?��m?'4p?HMr?�t?f�u?�w?<Dx?nLy?�1z?�z?:�{?i9|?��|?�*}?Ƌ}?��}?�(~?�g~?y�~?��~?��~?[?9?�S?�j?�~?#�? �?�?Z�?�?��?��?%�?��?\�?x�?�?�?��?�?�?��?O�?��?��?��?��?H�?��?v�?��?Y�?��?�?G�?��?��?��?�?)�?F�?_�?u�?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?" �>d�(Dw��5^�+�����>U?��?[?OE�>B=��þ@�7�K�l�&��Z�t�LS���!�� о^r.��p=o��>~��>l?��<?�V?��h?�'u?��|?	�?la?�$|?��v?�~o?Jg?��]?6�S?F�I?X??�5?��*?L!?�s?�<?�j?��>^�>4��>@��> �>�q�>z��>�Y�>�ߐ>��>�{>%�j>�Z>�K>B�=>l�0>az$>�%>C�>о>�&�=S�=�'�=�U�=#��=���=�=���=97�=L��=�(q=�n`=Y�P=�_B=��4=iV(=��=��=��=w��<���<���<�|�<�\�<�7�<-��<환<��<0&�<9�u<�d<k�T<3F<�p8<��+<�<[�<�O
<� <ً�;S��;bp�;	�;���;�)�;Ɏ�;���;%��;صz;�Mi;9Y;{J;�<;�.;��";�;*�;]2;-�:19�:�r�:s��:2�:oNh?l]d?���>�<��T�r�{7p����
K��pe?3^?j�?��l?.&2?�5�>U�=��������kF�"�i�B|����҇v�
d��J���,��d��վ�r�� �%�&�-�fb�=11>���>e޴>j�>���>+�?4�?�*?G�4?�>?G?�dN?�T?n|Z?�g_?�c?clg?ëj?�~m?��o?�r?u�s?��u?��v?$x?�0y?\z?*�z?�{?�)|?�|?�}?��}? �}?!~?*a~?��~?��~?��~?�?�5?�P?ih?�|?P�?��?��?+�?�?��?�?z�?�?��?	�?��?��?}�?��?��?��?'�?y�?��?��?v�?4�?��?g�?��?N�?��?��?@�?|�?��?��?�?&�?C�?\�?r�?��?��?��?��?��?��?��?��?��?��?��?��?��?��?��?r�}?v�>�h۾�u��a�������>�cR?l�?�)]?�`?��y=k���R�5�h�k�Z����u��ZT��b#�ѕӾ�5��U=��>+�>�U?�<?�jU?�h?X�t?�u|?��?�o?oF|?��v?��o?�Tg?�
^?Z,T?�I?(�??�[5?�7+?�Q!?��?�?��?���>��>�V�>��>G��>�ϲ>�ߦ>���>f-�>TY�>O|>;k>�[>�L>�>>�1>O�$>�y>d�>�>x��=���=k��=���=0�=��=h�=��=䃋=�ׁ=]�q=b�`=rPQ=�B=FG5=4�(=T�=9=��=��<t{�<"#�<��<LŽ<�<�V�<�<BP�<o�<�zv<V^e<�qU<g�F<A�8<,,<$ <U�<�
<|� <��;Fe�;���;�s�;��;��;��;��;q��; @{;��i;��Y;�wJ;Wi<;�T/;^(#;{�;�I;�z;���:���:@��:�0�:�>�3e?rMg?׌�>H$����p���q�Q�������� ?�O\?��?��m?�N4?�g�>��8=������E�*i���{�ڦ���v�v�d��|K�1�-�rb�,�׾j��޹)��;��Ƈ=�.>���>���>�J�>x��>+>?8K?��)?í4?"Q>?��F?�/N?٪T?TZ?YD_?8�c?�Qg?��j?|jm?a�o?fr?<�s??~u?��v?}x?)y?�z?��z?5�{?w%|?h�|?�}?�~}?��}?�~?`_~?+�~?~�~?Z�~?�?5?4P?�g?(|?Ӎ?�?_�?ٵ?ɿ?d�?��?L�?��?��?��?��?��?j�?��?��?��?�?p�?��?��?p�?/�?��?c�?��?K�?��?��?>�?z�?��?��?�?%�?B�?\�?r�?��?��?��?��?��?��?��?��?��?��?��?��?��?��?Dy&?��{?8�>���\�w�B]�4����>��U?W�?=QZ? ��>�-=n�že�8��Dm�u��ͱt�v�R�$!��ξ��+���z=��>���>r�?Q4=?APV?�h?Du?~�|?��?�[?�|??�v?�go?��f?	�]?#�S?��I?A:??�4?�*?4� ?�X?�"?�Q?���>���>Ȼ�>8r�>_��> N�>3f�>�:�>z>D��>�{>Woj>mkZ>9wK>]�=>%}0>�X$>O>�x>n�>���=���=x��=�,�=�b�=勬=���=�v�=c�=tu�=��p=5@`=�P=�7B=�4=�3(={�=��=��=L�<'��<3}�<�R�<�5�<5�<)ڣ<Fz�<|�<�
�<3�u<��d<;�T<�	F<EJ8<�~+<�<��<
3
<̚ <&Z�;��;YE�;s��;O}�;,�;�n�;���;2��;Ձz;si;.�X;��I;��;;��.;ˬ";|a;��;%;h��:
�:�F�:�zB���5>9mi?@8c?!�> �%Ts�C�o�����I�;%�?��^?{�?vl?�T1?�?�>�"�<Fy��n����F��8j��_|����^v�p�c�[VJ�>r,�=��2վ������$�~\(��ސ=x92>�z�>�V�>���>� ?�?&�?03*?�5?�>?�G?wxN?|�T?��Z?�t_?h�c?jvg?{�j?@�m?��o?Yr?l�s?�u?O�v?]'x?e3y?�z?G�z?�{?G+|?r�|? }?��}?��}?�!~?�a~?L�~?V�~?��~?�?56?>Q?�h?�|?�?��?�?I�?*�?��?!�?��?�?��?�?��?��?��?��?��?��?+�?|�?��?��?y�?6�?��?i�?��?O�?��?��?@�?|�?��?��?�?&�?C�?]�?r�?��?��?��?��?��?��?��?��?��?��?��?��?��?h��)�:?)�u?���>g�	�qR|�
~R�AYw�60�>LP^?	�?J�R?��>ے�DھĨ?�.�p�x��Rr��N�Iu��D¾������=���>���>Ƀ ?�@?��X?�Lj?a@v?�-}?�?n$?��{?l�u?�n?�	f?��\?��R?�}H?�)>?i�3?��)?��?Ta?�5?�n?6$�>mB�>�8�>6�>���> �>�6�>�>��>���>��y>��h>��X>f�I>�<>�2/>P$#>��>m>�>�"�=�0�=h�=��=��==F�=zh�=b\�=��=ހ�=3/o=d�^=�'O=��@=\h3={�&=�_=*�=<�=�n�<�<���<"��<�ϻ<)Ʈ<:��<�Y�<،< �<S�s< c<�=S<W�D<��6<{:*<i<�i<�-	<O�;Z��;��;=��;�t�;�)�;1˥;xH�;T��;���;��x;rdg;�SW;�`H;Cw:;�-;y!;C;k�;&;�,�:�\�:,)u��.�VY�>mr?6�W?��,>���Ykx��h������=�F?�d?X�?��g?��)?0>�>=胻�Z������dK�4�l�@Y}���J�t�Lha�;mG�1)�B��jKξ�8���3�N��=Ɲ<>�4�>���>��>��?D`?�.?}c+?�%6?W�??�G?�,O??�U?J[?��_?�$d?m�g?�k?�m?H5p?CNr?} t?#�u?<w?�Dx?�Ly?�1z?t�z?��{?�9|?��|?�*}?�}?�}?�(~?�g~?��~?��~?��~?k?-9?�S?�j?�~?+�?'�?"�?_�?�?��?��?(�?��?_�?z�?�?�?��?�?�?��?P�?��?��?��?��?H�?��?v�?��?Y�?��?�?G�?��?��?��?�?)�?F�?_�?u�?��?��?��?��?��?��?��?��?��?��?��?��?%v�Ei�!�U?��g?�+9>*�%�����@�m�	�� ??Hi?D}?z:F?��>t꙽�B����I��Ju�H���m���F����hF���ڽ(�=�"�>� ?�%?/mD?C�[?��l?��w?��}?��?R�~?]�z?[�t?YOm?�d?�[?Q?�F?��<?JG2?�3(?nd?+�?��?�?���>���>M��>���>���>a!�>Mk�>Co�>�$�>m��>��v>�'f>xlV>Y�G>j:>#>->�Q!>4>��>30>!c�=8��=��=�|�=��=ZY�=���=0��=���=`~=~l=�\=��L=ޜ>=3c1=*%=��=F�=B
=Ҝ�<m�<�n�<��<��<ά<*Ϡ<W��<�A�<���<�/q<Nq`<b�P<]\B<�4<}O(<�<d�<�<�n�;��;��;�k�;VL�;�'�;��;u��;6�;3�;��u;�d;��T;�F;k]8;��+;K�;��;A
;ӧ ;Rr�:6⌾"g~��2���>��{?1CC?��3=:J)�~�}�-]���ҾUQ>�!?�l?�F?[�_?O�?a��>��i����@.!���Q�4�p��~�D4~��Qr��]���B�-,$��Z���þѩ�����*7�͸�=NL>BV�>�
�>p�>�b?��?5!?�,-?%�7?��@?�I?<P?
uV?��[?��`?��d?�Yh?czk?E2n?�p? �r?dt?��u?Gw?�px?.sy?Sz?6{?w�{?IO|?��|?#;}? �}?0�}?b3~?q~?|�~?��~?��~?�?�=?�W?9n??��?S�?�? �?��?��?��?�?l�?�?�?��?��?)�?k�?_�?�?��?��?��?��?��?c�?�?��?�?h�?��?�?Q�?��?��?��?�?.�?J�?c�?x�?��?��?��?��?��?��?��?��?��?��?��?�@@��]��f�=u�n?zzM?Ú����D�k6~�Eg$���;7�?Yt?�*w?�4?�a�>h�)�Ũ��U�Tz���}�0g�r =����Ic����r�M&>
�>;t?��,?��I?�_?�Eo?Ny?P�~?<�?�&~?F�y?tms?Йk?#�b?Y?�O?n�D?k:?/00?)&?�i?�?��	?'Y?�F�>���>4��>�>���>;��>�>BC�>��>X��>�ps>�b>�QS>��D>�S7>۸*>�>5>�	>BI >���=,T�=���=���=2I�=�ݦ=N�=���=X��=cz=�i=&�X=�I=��;=��.=§"=)^=��=+=��<�
�<jH�<��<���<lD�<�r�<�r�<G6�<x_<�m<f%]<�M<��?<�52<��%<-S<Y�<�<n��;�t�;c�;�n�;���;|��;���;�M�;oދ;{(�;=>r;�la;&�Q;�5C;*�5;|);�N;	c;99;��:�
)?���#~�<0����?
�?l�#?��;D����VJ�����,T�>�5?mPu?�v|?�T?�B?
<\>! ���۾�,���Y�.�t�Č�%�|���n�
�X���<�Ċ�����
����h�dս]�E<���=�s`>	{�>BH�>��>�?��?��#?dt/?��9?k�B?��J?f�Q?��W?*�\?f�a?��e?�i?�l?��n?q?;�r?�t?n:v?އw?�x?ߣy?P}z?�9{?.�{?�j|?v�|?�O}?�}?��}?�@~?�|~?��~?{�~?e?&?KC?�\?yr?p�?ܕ?�?g�?�?N�?N�?<�?<�?n�?��?��?3�?�?��?��?��?b�?��?
�?�?�?��?��?�?��?�?{�?��?�?]�?��?��?��?�?4�?P�?g�?|�?��?��?��?��?��?��?��?��?��?��?iy>��k�٠-����>�m~?�m#?�g��Yb�R�s��x��ʨ/>�A:?�|?
�k?B�?	�0>A���KY#���a�L�}��z��6^�#b0�k��^�p���'�E3[>�>�>�6?V�4?��O?X!d?�@r?�{?
J?_�?�F}?8\x?H�q?�yi?S_`?ȞV?�{L?�,B?y�7?D�-?l�#?�
?p�?��?*��>VS�>��>�o�>���>׵>緩>bW�>��>���>iW�>�4o>F�^>G�O>:dA>94>�'>=,>h>Z_>��=���=�f�=sJ�=�7�=~�=@�=���=���=�#�=��u=?�d=�U=�=F=�|8=¯+=��=r�=�]
=f� =���<��<���<�!�<���<�?�<~��<�Ր<�ǆ<|�z<ani<�9Y<%J<e<< /<��"<��<�<bE<�P�;HZ�;z��;4��;�5�;�}�;���;���;�c�;u�;��m;�m];
N;��?;�o2;;&;��;��;��;�}?\`�>�<��l�T�⽭E?/^y?i-�>����}m^��4|��/��_!��r�>F K?)|?dv?�E?8<�>O>f<R��8���9���a���x�����z�c�i�#R�rN5��m��P�6�����H������"=��>�Kx>\H�>� �>'��>��?\?i�&?�!2?;<?3�D?�wL?\*S?cY?�^?4�b?�sf?p�i?��l?�Oo?��q?Ass?�u?Αv?��w?��x?��y?��z?�d{?L|?�|?T}?�g}?��}?�~?�P~?H�~?U�~?��~?<?�-?�I?Qb?rw?��?��?P�?3�?~�?g�?�?��?��?��?��?��?��?��?:�?W�?,�?��?!�?R�?Y�?=�?�?��?B�?��?2�?��?��?.�?l�?��?��?��?�?;�?V�?m�?��?��?��?��?��?��?��?��?��?��?ȶi?A�q�0���˾��&?��{?�\�>̡�K�w�p�\��j���"�>E$V?��?�-Z?�c�>;g)=�Oƾu�8�9Vm����̥t�܂R��!��jξD+���|=�O�>���>��?�B=?[V?��h?�Hu?�|?:�?�Z?|?�v?�co?
�f?1�]?�S?k�I?5??��4?��*?Q� ?T?m?VM?f��>���>g��>Bk�>��>�G�>i`�>5�>e��>���>�{>gj>�cZ>�oK>�{=>�v0>�R$>� >�s>��>���=���=���=�%�=\�=���=①=@q�=_�=�p�=��p=8`=��P=�0B=��4=o-(=Ձ=\�=��=�B�<���<Pu�<\K�<�.�<��<>ԣ<�t�<\ߍ<�<T�u<_�d<��T<�F<�C8<�x+<'�<)}<.
<'� <�Q�;	��;�=�;|��;�v�;$�;�h�;���;V��;�xz;i;Y�X;G�I;��;;��.;�";\;��;"��>��x?��%=��j�� B���7>m�i?�c?x�~>�S�ps��qo�xH����;��?�_?��?hl?01?��>w��<Fǖ����G��Ej��d|�#��cWv�-�c�KHJ�ub,����3վ���SI$�Hn'�QM�=Kl2>Ƒ�>|k�>���>" ?u�?��?9*?�5?��>?�G?�{N?��T?<�Z?w_?i�c?(xg? �j?��m?��o?Xr?I�s?ǎu?��v?�'x?�3y?9z?��z?<�{?�+|?��|?O }?}?�}?�!~?�a~?f�~?m�~?�~??C6?JQ?�h?�|?��?��?�?N�?/�?��?$�?��?�?��?�?��?��?��?��?��?��?,�?}�?��?��?y�?7�?��?i�?��?O�?��?��?A�?}�?��?��?�?&�?C�?]�?s�?��?��?��?��?��?��?��?��?��?/V?)p#?����o�(
#��^?t�`?�=�/������7�U:��~�	?�m?ʝ{?��@?z6�>3�ӽ���{M�D�v�z7� �k���C������������>�R�>�?8#(?�F?J�\?�im?N/x?~?{�?��~?��z?znt?��l?Ed?�}Z?*zP?�6F?b�;?:�1?f�'?
�?�R?�<?��?�>���>��>���>�ɺ>�]�>���>1×>w��>��>��u>� e>�vU>��F>:19>_v,>q� >d�>�5>r�>?J�=���=��=���=T �=���=s�=��=>�=��|=kk=�[=L�K=�==Δ0=T$=��=�O=lo=�|�<�`�<�t�<֣�<�ٸ<��<��<"��<���< �<�p<l_<;�O<zA<v4<��'<��<�<<�H�;���;���;�~�;�o�;�Z�;!.�;�ٗ;�N�;g�;x�t;��c;��S;8E;ņ7;��*;k�;��;�7��	E?w�I?J{�����0��ӈ�>�	~?�:?&4λ�2���~�ФW��%��6�<>-^(?7�o?��~?ɍ\?�?�T�>W��4`Ǿ��$�pRT���q�R�~���}�'>q��%\�A��#"��=�w���i{��)��Cw���\�=u�R>},�>t��>��>9h?�?�"?0�-?�W8?��A?��I?m�P?��V?�5\?V�`? e?�h?l�k?'[n?v�p?��r?�~t?v?D[w?e�x?U�y?<`z?� {?V�{?�W|?�|?�A}?��}?�}?�7~?�t~?��~?z�~?2�~?�!?d??2Y?�o?�?��?/�?��?��?�?=�?O�?o�?��?T�?N�?��?��?P�?��?}�?*�?��?��?��?��?��?n�?�?��?�?n�?��?�?U�?��?��?��?�?0�?L�?d�?y�?��?��?��?��?��?��?��?��?���?.M>L�f�M�5�4L�>�'}?�]*?GF���^��u����}r>�!6?��{?Q�m?'�?�5B>����\ �`�kh}��*{���_�-S2����p�y�6�4�NS>T��>c�?k�3?��N?�|c?f�q?��z?�3?��?�j}?��x?�q?��i?��`?U�V?��L?��B?�>8?�.?�$?�e?�?�?�(�>���>D��> ��><�>�N�>�(�>��>��>��>��>��o>�w_>�-P>�A>5�4>�+(>(�>��>8�>��=�A�=��=D��=&��=���=[�=���=[]�=�~�=�v=�e=��U=n�F=��8=*&,=4 = =D�
=9=PL�<v��<��<��<�5�< ��<��<x9�<�$�<��{<sj<��Y<��J<2�<<�/<[V#<[�<�q<��<#��;+��;x#�;i�;i��;[�;��;�	�;j;�1�;��n;c^;:�N;
D@;��2;�~&;��;o���U���z?|��>�<4���o�q>��??�'{?@�>������Z��8}���3��,7�h�>yH?�Z{?�{w?-�G?���>Z>�F��.����7�|�`�Gx����}z�g�j�|!S��s6������� ��6�M�~�����=&>��t>���>���>	:�>_�
?��?�`&?�1?Ǻ;?��D?3L?I�R?��X?��]?Wkb?�Pf??�i?\�l?�8o?�rq?bs?�u?ڄv?m�w?�x?j�y?e�z?H^{?��{?*�|?3�|?Wd}?��}?~?-N~?D�~?��~?,�~?�?�,?�H?xa?�v?�?	�?֦?ɲ?"�?�?��?��?e�?o�?��?��?��?��?$�?D�?�?��?�?G�?P�?5�?��?��?=�?��?.�?��?��?+�?j�?��?��?��?�?:�?U�?l�?��?��?��?��?��?��?��?��?�X�< ?FE`?e�����.ǫ���2?9�x?��>d���z��W�����.��>��Z?o�?�V?���>x�x<��Ѿ��<�Oo�<���:s�� P����~Ǿ�i��k�=&&�>���>��?��>?ЗW?��i?��u?��|?��?�<?l�{?g6v?��n?�mf?]?(S?a�H?��>?T4?5*?�V ?��?x�?[�?���>���>���>͞�>G3�>���>|��>���>'(�>�d�>υz>�ri>�Y>,�J>
�<>��/>��#>�_>��>�>n��=���=��=S�=��=8ϫ=�=Ӕ='��=��=��o=�J_=��O=�bA=�3=@{'= �==�=�7�<���<Ǎ�<�s�<>f�<?R�<�&�<+ӗ<�H�<z�<ݲt<��c<��S<�0E<I�7<��*< �<��<��	<� <�S�;���;+b�;�;���;P�;'Ě;l�;��;Coy;�h;i X;OI;�;;6.;~�!;�g��U����>�cs?e}��t)q�*e7��q>��n?��\?x!P>��
��nv���k�Z���=t?ewb?s�?߇i?��,?Dٵ> �/<�����;�!�I���k��|�?J�Qu��gb���H��*��

�A4Ѿˎ��� ����=f?8>F8�>Tз>��>�?ż?�?��*?/�5?�8??~�G?4�N?FU?|�Z?o�_?�c?8�g?j�j?-�m?0p?y8r?�t?��u?�w?p8x?3By?�(z?h�z?��{?�3|?��|?a&}?�}?��}?�%~?_e~?\�~?��~??�~?�?�7?�R?�i?~?w�?��?��?�?��?1�?��?��?h�?-�?O�?��?��?��?��? �?��?A�?��?��?��?��?A�?��?q�?��?U�?��? �?D�?��?��?��?�?(�?E�?^�?t�?��?��?��?��?��?��?��?��g�����@Vo?�A�>j�@���\���=�o?�/M?1�뻢+E�{*~��$�UH�;:?�ot?�w?J�3?t�>q}*�s����U�z���}�g���<���~&��G�p���&>�3�>g�?(�,?;�I?j�_?*Lo?�Qy?�~?�?�$~?��y?�is?��k?w�b?Y?�O??�D?�e:?+0?!$&?.e?��?K�	?�T?�>�>��>��>N
�>��>?��>|�>�=�>
�>���>Qhs>�b>fJS>��D>�L7>��*>^�>��>&�	>�D >L��=-L�=*��=Ř�=�B�=�צ=yH�=M��=~��=Zz=]�h=S�X=��I=��;=H�.=�"=�X=��=p=6��<��<�@�<і�<U�<F>�<�l�<`m�<R1�<@V<U�m<j]<��M<�z?<�/2<��%<�M<)�<�<r��;nl�;F[�;�g�;�}�;8��;�~�;nH�;bً;�#�;~5r;�da;��Q;�.C;��5;a);�-�>�q�����N�a?k�(?N��t~��5��
?N�?BG#?ε���wD�����$J��%���ۅ>�6?�au?Gm|?�sT?�?�[>M� ��+ܾ0�,���Y���t������|�B�n�S�X���<�}z�A����赾�fh�0�Խ{2I<(�=��`>��>&\�>���>��?��?�#?�y/?c�9?��B?h�J?��Q?��W?��\?��a?��e?s	i?�l?�n?(q?) s?�t?";v?z�w?��x?T�y?�}z?&:{?z�{?k|?��|?�O}?�}?��}?�@~?�|~?��~?��~?x?*&?YC?�\?�r?y�?�?�?l�?�?S�?R�??�??�?p�?��?��?5�? �?��?��?��?c�?��?
�?�?�?��?��? �?��?�?|�?��?�?^�?��?��?��?�?4�?P�?g�?|�?��?��?��?��?��?��?8��d�t�ߺ�>�mv?]�н3p|�� �X�?~5?˫�>��þ��q�H)f������>�M?d�?#a?��?:�=�ر��1��i��u�2�v���V�:�&�
�ھB�C�6� =[��>�	�>x5?�S:?"T?3g?(Dt?�$|?)�?ډ?��|?1:w?{.p?H�g?=�^?��T?J?�@@?��5?��+?��!?�G?_?�,?�t�>7g�>2�>s��>G�>>㋧>�M�>tđ>��>wW}>Vl>��[>)�L>��>>e�1>.�%>�>S|>0�>B��=g��=G��=���=���=pǭ=r��=!��=��=rb�=��r=��a=H0R=o�C=,	6=�g)=G�=��=��=q�<mw�<��<W��<`��<�U�<{�<���<��<���<��w<�Sf<SVV<�tG<�9<D�,<t� <��<^0<��<��;`T�;K��;C�;Uƴ;Z9�;p��;��;;
M|;��j;�{Z;�PK; 3=;D0;x�}?J'���+q����>	�~?%8*>�Q]��4S�J�=��^?Q�l?p��>�(ྂ1m���t��2�W�S��0�>ʁX?�?Ep?2o8?Mp�>N�=��K��oB���g�I{����ľw�T�e��M�Q�/�mM��۾a;��y1�$�W���u=#(>��>�/�>��>���> `?d�?�
)?�4?��=?�PF?o�M?�PT?MZ?��^?fVc?�g?@gj?Cm?+�o?��q?r�s?�gu?2�v?�
x?}y?5z?��z?��{?8|?C�|?�}?ny}?��}?�~?�[~?%�~?��~?�~?�?O3?�N?{f?{?ތ?K�?��?:�??�?��?q�?��?��?w�?��?Z�?��?D�?��?��?|�?�?]�?��?��?d�?%�?��?\�?��?E�?��?��?:�?w�?��?��?�?#�?A�?Z�?p�?��?��?��?��?��?��?7C?�iN�r ���\?u?z&��Ml��Ju���b?Ҳ\?H��=��4����<�3�����N?��n?��z?�>?��>_Q����WO���w�k�~���j��`B�h3�`£�#���3
>0j�>��?5)?��F?ə]?��m?�qx?a;~?��?$}~??]z?�5t?>�l?�c?�-Z?!'P?g�E?E�;?CO1?ZA'?|y?�?�
?�G?]�>Qa�>*��>ҏ�>.a�>���>�W�>�l�>�2�>��>hXu>��d>-�T>�cF>��8>4,>: >V/>��
>�M>i��=h�=ɗ�=�'�=d��= 2�=���=4��=���=�a|=#�j=��Z=�lK=�O==R-0=��#=&�={�=�!=!��<d��<���<`/�<�m�<��<��<ʟ�<xN�<{��<5�o<�^<QoO<�A<�3<K)'<V�<��<ڴ<`��;xM�;��;<�;r�;��;q΢;Ѐ�;��;K2�;�,t;9c;�rS;e�D;'7;��%?m?0�]����}'L?'�B?��ľ�����2�?��~?�95?5� �5U6��`��T��)���VN>^+?$q?>;~?��Z?E'?b��>B���<̾��&���U�r�r�A�v�}�6�p�][�@@��!�- ��f��8�v� H�<Ĺ�2�=��U>��>8��>���>'�?Z?�i"?�<.?��8?��A?�I?�P?�W?�^\?a?e?�h?��k?�on?5�p?_�r?8�t?�v?Uew?!�x?�y?�fz?J&{?D�{?\|?��|?�D}?X�}?j�}?�9~?|v~?/�~?��~?^ ?�"?F@?�Y?5p?y�?)�?��? �?��?Z�?z�?��?��?��?w�?l�?��?��?d�?��?��?7�?��?��?��?��?��?t�?�?��?�?q�?��?�?W�?��?��?��?�?1�?M�?e�?z�?��?��?��?��?��?�t?�ﻀ�{���l>`+|?�3�N�w�>�-A ?��?P�?�p���l���k��׾��|>�bF?��~?v\e?��?�3�=�|���],���f���~��dx�R�Y��?*���⾉fT����<�s>���>ş?�C8?U�R?�f?�s?>�{?�?ʥ?��|?|�w?�p?Luh?�C_?rtU?�IK?��@?{�6?�,?��"?
�?�?7�?���>~�>�9�>y��>�1�>�c�>[�>)�>nz�>��>	�~>?m>�]>��M>��?>_�2>�U&>$�>j3>�?>'��=���=��=���=Ф�= ��=ƌ�=%I�=�̌=�	�=�s=��b=>S=��D=��6=&A*=�p=�q=M6	=�`�<��<9(�<U��<��<�9�<pڥ<�V�<��<���<��x<�{g<�iW<0uH<��:<!�-<�!<�R<)�<�,<�F�;�t�;s��;�<�;���;r�;�T�;:h�;>�;"�};^�k;~�[;�UL;	&>;8���A�?�=8��y��z0>��?��>�R�*�]��<c�U?�r?��>v�Ǿ�*h��x���!��㺽]j�>�S?p,~?+�r?G=?;g�> ��=��w����/?�9�e��nz����?�x�Fqg���N��1�/��Ɂ�ҝ���9�B�x���V=�!>��>�?�>�w�>	��>qS?i�?�8(?�[3?�'=?
�E?�KM?w�S? �Y?��^? c?��f?n0j?um?Õo?��q?9�s?�Lu?��v?A�w?�y?��y?E�z?-x{?<|?��|?}?�r}?X�}?~?�W~?}�~?��~?W�~?D?@1?�L?�d?�y?��?K�?ɨ?y�?��?\�?��?��?8�?&�?k�?�?Q�?�?}�?��?^�?��?G�?r�?u�?V�?�?��?R�?��?>�?��?��?5�?s�?��?��?��?!�??�?Y�?o�?��?��?��?��?��?*��>U.L? >F�r�
�'�V?��"?�W�f�o������^?�g`?�]�=a'0�����7�z}��l;
?�2m?��{?I�@?rò>�Gս�%�j�M�k�v�4�w�k���C����`��s���z>���>˼?4(?)F?]?�pm?m3x?�~?��?7�~?�z?�jt?��l?�d?�xZ?uP?u1F?6�;?�1?i�'?4�?�M?8?��?���>%��>���>���>)ú>�W�>��>ὗ>}~�>�>�u>ue>�nU>��F>�*9>4p,>�� >�>�0>ʔ>�A�=���=o
�=���=��=���=���=m�=X�=��|=�bk=[=��K=B�==o�0=%N$=C�=�J=�j=�s�<�X�<?m�<���<?Ӹ<���</�<��<���<v��<Qp<�c_<��O<sA<�4<}�'<!�<w<&�<�?�;&��;���;�w�;$i�;rT�;<(�;`ԗ;�I�;�z�;��t;n�c;.�S;�0E;Wmv�l?��!?�0W�i���|E?�'I?g������IE���e�>a~?��9?p ��V2���~��xW�ǘ����=>ُ(?��o?��~?�r\?K�?���>�k����Ǿ"�$��eT�"�q��~��}�|5q�m\�c�@�]"��,��e��8�z������_v�~��=ξR>�B�>���>��>Jp?D�?	"?��-?�\8?2�A?j�I?��P?��V?U8\?��`?�e?��h?ߪk?i\n?��p?�r?�t?�v?�[w?�x?̂y?�`z?� {?��{?X|?I�|?�A}?��}?(�}?�7~?�t~?��~?��~?D�~?�!?r??>Y?�o?��?��?5�?Ǯ?��?�?@�?R�?q�?��?V�?P�?��?��?Q�?��?}�?+�?��?��?��?��?��?n�?�?��?	�?n�?��?�?U�?��?��?��?�?0�?L�?d�?y�?��?��?��?��?��)�+�u?C���7E{�i�w>��{?eB���Mx�����?��?�D?2a��Mm��<k�6sվ`��>G?�?*�d?C<?���=B줾��,�,g��
�_Ax��YY���)�|�ᾰ�R�n��<��t>gp�>��?xx8?��R?n0f?Ûs?��{?�?.�?��|?��w?P�p?�eh?�2_?�bU?�7K?K�@?[�6?n,?�"?S�?י?޷?{}�>Wb�>��>���>N�>�M�>kF�>���>Th�>��>Yv~>s!m>��\>��M>ڳ?>�2>�@&>��>3!>�.>���=��=�z�=��=��=���=%x�=�5�=ʺ�=��="�s=��b=5#S=�}D=��6=�+*=�\=*_=�$	=I@�<��<�<,��<�l�<#�<Zť<`C�<܍�<���<�x<=^g<?NW<�[H<�r:<�-<`u!<�?<`�<^<�'�;�W�;Ʋ�;�#�;r��;���;�@�;�U�;�,�;�p};]�k;�x[;�;L;��?�����/�?(�C�[gx�l�:>��?35y>�KS��\��w<e�V?�q?��>�ɾD�h�o�w��� ��ֲ�=�>�-T?�D~?�Zr?g�<?+8�>|�=�y��A���?��e�9�z�%����x��Kg�u�N�A�1��^�J�h]��k 9��u�0�Y=��!>���>���>>��>/��>3n? �?tM(? n3?-8=?B�E?�WM?Y�S?��Y?ݴ^?8c?��f?�5j?5m?�o?P�q?V�s?xOu?�v?J�w?�
y?g�y?��z?Sy{?;|?y�|?�}?�s}?��}?�~?X~?ڐ~?�~?��~?�?t1? M?e?�y?Ӌ?d�?�?��?��?k�? �?��?A�?.�?r�?#�?V�?�?��?��?a�?��?I�?t�?w�?W�?�?��?S�?��??�?��?��?6�?s�?��?��?��?!�??�?Y�?o�?��?��?��?��?��|�F�>��??|WQ�V����^?^6?'�(��j��I<�d?:A[?m�=��6�����.2��~��?eyo?�lz?p=?N�>!z������O��w�*�~��pj���A�/��Fe��8��Á>��>&n?j�)?�<G?k�]?4�m?݈x?�E~?��?�t~?!Nz?c!t?Fnl?z�c?OZ?�	P?��E?�p;?�11?�$'?�]?$�?o�
?m/?���>\5�>�d�>�h�>Q<�>٭>)7�>mN�> �>_��>�&u>�md>��T>;F>�8>��+> >�>'�
>,3>���=��=�l�=���=���=/�=6j�=��=�{�=u-|=v�j=MiZ=�BK=�(==�0=��#=�s=	�=b= ��<���<���<E�<IG�<|�<���<���<�1�<ș�<�Xo<ú^<IDO<��@<�|3<�'<n<��<�<]��;�;���;S��;qڻ;�Ϯ;���;ba�;�ތ;�;L�s;�	c;�FS;�>��o��)?�Y?��_�������N?�Y@?�d˾Z��Թ� &??�}3?;%���7�ہ���S�������T>b�,?K�q?~?�3Z??A?%c>�d���;29'���U��r��"�&p}��}p��[�9�?�Ϳ �o���a���}u������k:��=6�V>c�>�T�>2H�>R?W/?Ӎ"?�\.?��8?��A?��I?�P?QW?)m\?�a?	*e?��h?7�k?�vn?v�p?��r?�t?�v?�hw?4�x?��y?iz?K({?�{?�]|?�|?�E}?S�}?C�}?b:~?w~?��~?O�~?� ?�"?�@?;Z?qp?��?V�?â?B�?�?s�?��?��?��?��?��?w�?��?��?k�?��?��?;�?��?��?�?��?��?u�?�?��?�?r�?��?�?W�?��?��?��?�?1�?M�?e�?z�?��?��?��?�ξ��
�Ur}?����bs���>mXu?����4�|�����1?�~?�A�>�Ⱦ�r��Be�2��Jq�>�N?v�?zS`?{{?MC�=����VN2��j����Ѹv�6YV�<�%��Bپ�A�|P*=�>���>��?w�:?�]T?�]g?�_t?�3|?X�?R�?{|?X)w?�p?x�g?o^?��T?wJ?�$@?l�5?��+?��!?x.?�?�?~H�>0=�>S
�>���>�#�>�e�>�l�>�0�>��>͇>z'}>}�k>��[>�L>5�>>\�1>qc%>�>�`>~{>b��=�X�=�X�=�q�=���=業=8��=k�=���=BI�=րr=9�a=�R=�uC=��5=�F)=̇=)�=�l=M��<�I�<��<���<�k�<�3�<��<t�<�̎<�<�Rw<D'f<�,V<gNG<-x9<ڗ,<\� <�u<q<{m<E��;�(�;��;p�;\��;��;'m�;됑;�u�;;|;[�j;�QZ;�,j?IW�xD�}?;���ɻo�?,�>�D~?��>��^�c�Q����=��_?Q�k?�f�>��㾞�m��ct����YG;�D��>�5Y?�?��o?N�7?��>�D{=W��������B��g�rh{�R����w���e���L�d9/�����#۾)����/�w�R���z=�5)>�_�>��><��>�9�>^�?)�?K*)?�04?�=?#fF?2�M?aT?�Z?*_?Fac?'g?|oj?FJm?c�o?�q?"�s?�ku?��v?�x?%y?�z?��z?m�{?�|?��|?�}?hz}?��}?�~?�\~?��~?Z�~?�~? ?�3? O?�f?A{?
�?r�?ɩ?W�?X�?�?��?�?��?��?��?c�?��?K�?��?��?��?�?`�?��?��?f�?'�?��?]�?��?F�?��?��?;�?w�?��?��?�?#�?A�?Z�?q�?��?��?��?M*?�m���?��?�1h�ex��+�o?/�>�A�w\��V�=j<o?B�L?���ypE�d~���#���<+T?�t?=w?ӽ3?�x�>j\+� ��U��z�G�}�g���<�ܝ��镾�o���&>�c�>��?��,?��I?��_?�Ro?�Uy?��~?��?H#~?��y?Cfs?\�k?˫b?Y?��N?�D?�`:?&0?)&?^`?=�?��	?�P?�6�>t��>���>��>?�>B��>��>�8�>�>��>�_s>��b>�BS>��D>oF7>��*>��>��>5�	>@ >���=.D�=���=֑�=H<�=�Ѧ=�B�=��=�{�=�Pz=��h=��X=s�I=�;=��.=�"=<S=��=�=g��<r��<)9�<���<��<!8�<g�<h�<^,�<M<��m<n]<3�M<�s?<)2<��%<H<��<H�<x��;d�;S�;o`�;w�;�;�x�;C�;Vԋ;�;�,r;t\a;��U?l���clX��$K?ڛ�>�dq�L��U b?(?��� ~�o;���x?^�?��"?D�����D�����I�����c�>�I6?su?�c|?5VT? �?�Z>�q�8sܾE�,���Y���t�?��0�|���n���X�ٶ<�6j�����9ǵ�&h� Խx�L<���=a�`>2��>p�>���>�?ţ?;�#?^/?6�9?��B?�J?�Q?j�W?�\?��a?j�e?i?hl?"�n?:q?s?��t?�;v?�w?"�x?ɤy?~z?~:{?��{?Ik|?��|?(P}?7�}?��}?A~?�|~?��~?��~?�?9&?fC?�\?�r?��?�?#�?r�?�?W�?V�?B�?A�?s�?��?��?6�?"�?��?��?��?d�?��?�?�?�?��?��? �?��?�?|�?��?�?^�?��?��?��?�?4�?P�?g�?|�?��?��?9�?�K&�򅘾�n~?����ok\�R?F=c?!������AN���2/?v�y?���>�t����y���X��������>W�Y?{�?�HW?/��>Z�<�^ξ��;���n�����s�,�P�5��9�ɾ�!�ݮ�=�j�>{�>�[?Jj>?2:W?|ei?��u?@�|?�?�E?��{?�Rv?�o?&�f?�;]?nTS?�I?��>?�4?a*?d� ?��?��?�?�!�>�2�>�>���>{l�>�ȱ>��>Ś>}T�>V��>g�z>s�i>k�Y>c�J>�<>��/>F�#>��>J
>d<>�3�=�.�=�T�=���=RҸ=k�=x�=�=⭊=t�=�:p=1�_=)P=�A=�04=.�'=B=�8=�$=��<��<���<��<Ρ�<���<-Z�<+�<�u�<���<; u<��c<�)T<EoE<N�7<��*<?<�<�	<U6 <+��;�;m��;�J�;�;���;��;�2�;0�;"�y;Vgh;��Y�ءB?�`t��W�=I$m?Y2���X�*��>Z$u? "�sio���:��`>�hm?V�^?)�]>
��ԕu���l������<V�
?�ua?��?�Hj?B8.?|ظ>���<N��D.���H�GTk�y�|�A\�m�u���b��$I��+���
�gZҾ돾L0��:�"8�=��6>�n�>i�>�k�>�� ?�{?�d?�*?��5?^??)oG?(�N?�+U?��Z?t�_?��c?�g?=�j?��m?=p?�/r?t?6�u?Y w?�3x?�=y?�$z?6�z?̚{?=1|?��|?�$}?u�}?A�}?�$~?[d~?{�~?;�~?��~?i?o7?NR?�i?�}?0�?N�?f�?��?��?�?k�?��?R�?�?>�?��?��?��?��?��?��?:�?��?��?��?��?>�?��?n�?��?S�?��?��?C�?�?��?��?�?'�?D�?^�?s�?��?��?�q?w�b>��k��D?.�>}�|�j�����}?;��>��^��%@�薗>��z?�I3?{��Y�ymx�ff�7F�=.x0?rz?Kbp?B�$?��Y>%up��O���]�t�|���{��}a��4�z���Iւ�=����H>�2�>��?_2?a�M?U�b?�>q?�uz?�?f�?��}?��x?�@r?X:j?B2a?N}W?�`M?}C?��8?Í.?�$?�?��?*�?N��>���>oD�>���>8��>��>Ҿ�>N�>��>P��>�!�>�p>�A`>*�P>�B>j;5>��(>�%>�P>78>��=�=���=���=h�=�8�=��=ベ=�ߎ=J��=�w=�Uf=�[V=�|G=ݥ9=F�,=;� =�=�<=Ւ=)�<�k�<
��<�X�<5۴<7M�<F��<뾑<���<�l|<��j<ƗZ<�jK<�K=<7'0<t�#<	�<��<�<C��;���;k��;y�;;]�;u��;,��;���;A�;ç�;8ro;�;Y���y?�|Ⱦ-�#��Ao?r{'>h�Mg �ոv?x�>0))���t��K�-�6?�}?D�?'7w��V�{U~�(u9�V&T���>U�C?P(z?��x?��J?��>w�">��5��g��&5��)_��w����b{�o�k�=qT��7�BI��(N����S����y2�<��>�o>J��>���>�>,4
?��?]�%?�31?C;?�D?�K?؝R?��X?��]?�5b?�"f?όi?4�l?'o?_Xq?Ks?��t?�sv?`�w?�x?�y?��z?�U{?m�{?�|?��|?�_}?��}?�~?K~?��~??�~?&�~?+
?+?�G?T`?�u?@�?L�?1�?:�?��?��?~�?C�? �?3�?��?g�?��?��?�?+�?�?��?�?9�?D�?+�?��?��?6�?��?)�?��?��?(�?g�?��?��?��?�?9�?T�?k�?�?��?�:۾j?��d���=ĳe?z�&��,���>?�R=?sQ�I�x�Ǣ�P?��k?1Z>|��ST��sD�H�"�g
�>)�f?~�}?�0I?���>*_r����{G��St�x��&�n���H���ܙ�����XI�=M��>Q�>��$?~vC?d[?�l?�Xw?�}?_�?_�~?.{?�u?M�m?��d?iv[?|Q?�<G?9�<?��2?�(?��?�>?�?�d?�)�>�b�>=s�>DY�>��>M��>hӣ>�И>��>�ׄ>��w>`�f>��V>�>H>�:>v�->]�!>��>�3>��>{�=�5�=܏�=R��=zk�=�ȩ=��=��= ��=�~=m=1�\=�YM=�?=L�1=%�%=�=�T=b=T@�<<�<(��<��<�,�<>@�<^9�<-�<ם�<��<�q<�a<VfQ<��B<~U5<��(<�<� <��<Z�;=��;h)�;-��;_ɽ;9��;BY�;8�;�Q�;tp�;}v;_Xg��:�>��>(`���>�\B?q�=��*��P,?Y\?�Sn��}��4�Տ�>�z?�<H?$�=$$�'�|���_���ܾ*>QL?kFk?*�?��a?�q ?L٘>�8�~���l�lP���o�	L~��n~�r�r�	�^��C��Q%�����'ƾ ����c���y����=��H>���>���>d"�>��?�%?� ?��,?V]7?�@?��H?��O?�?V?T�[?Xx`?}�d?-;h?�_k? n?�zp?��r?�Tt?��u?�;w?�fx?�jy?�Kz?�{?ٷ{?jJ|?m�|?{7}?Ֆ}?q�}?1~? o~?��~?8�~?��~?g?�<?�V?ym?�?�?֠?��?��?2�?{�?��?��?>�?��?��?n�?t�?�?X�?O�?�?{�?��?��?��?��?]�?��?��?��?e�?��?�?O�?��?��?��?�?-�?I�?b�?w�?��?8�}���^?��t�v�+��u?�1�B�{�B�o>�
|?h�0���w�'���� ?��?�E?�F��	�l���k��׾}>~>��F?8�~?>e?�?�]�=;壾��,�Y�f�� ��Zx��Y�%*�
��U�S����<�s>���>��?�R8?śR?�f?@�s?.�{?·?�?��|?h�w?�p?�ph?�>_?joU?�DK?`�@?V�6?�z,?�"?K�?V�?��?g��>1v�>v2�>q��>+�>J]�>+U�>�
�>Ju�>6��>
�~>�6m>�]>p�M>�?>��2>�O&>��>>.>�:>,��='��=I��=C��=��=՟�=ꆢ=�C�=�ǌ=��=P�s=��b=l6S=j�D=A�6=;*=�j=�l=Y1	=�W�<���<> �<���<5~�<@3�<sԥ<lQ�<<ˢ�<��x<Osg<�aW<�mH<Ã:<ݐ-<�!<tM<�<8(<�=�;dl�;���;�5�;���;W�;�N�;�b�;&9�;��};��������x?P�=�����&�?�;��x�.\3>0�?me>�sR��G]��5%<&V?��q?Z�>�5ȾQh���w�m�!��������>��S?x3~?��r?�$=?4�>R��= dx�p���F?���e�uz����ܠx��fg���N���1����$`�����.�9�a�w�ƶW=l5!>���>U�>��>��>
[?%�?u>(?�`3?�,=?�E?OM?��S?��Y?�^?c?c�f?�1j?�m?�o?��q?�s?�Mu?[�v?��w?O	y?O�y?��z?�x{?�|?ۙ|?C}?s}?��}?5~?�W~?��~?��~?k�~?U?O1? M?�d?�y?��?R�?Ш?�?��?a�?��?��?:�?(�?m�?�?R�?�?~�?��?_�?��?H�?s�?v�?V�?�?��?S�?��?>�?��?��?6�?s�?��?��?��?!�??�?Y�?o�?��?�$��
>Ի?����?�["?U�d����0#m?q�>�6=�J/_��	�=	�m?O?za�;7�B�΅~��[&�Qs���?m�s?;�w?�^5?y��>�#��u�^�T�߼y�x!~�L�g���=�W��3�����?#>䴷>��?�g,?RoI?tp_?!o?z3y?�~?`�?�1~?c�y?��s?g�k?��b?�9Y?�*O?��D?8�:?�S0?�K&?��?�!?�
?�v?�>���>�*�>�@�>�%�>3Ӭ>zA�>)h�>�>�>���>_�s>�c>��S>�E>n�7>��*>�>i(>��	>�i >�=:��=�&�=R��=vv�=!�=Ou�=
��=Y��=Y�z=�@i=�Y=J=# <=��.=��"=v�=� =W7=�7�<KD�<�}�<���<?&�<�o�<���<��<Y�<�<�m<`]]<&�M<�?<c2<� &<=z<��<��<c��;`��;���;���;���;l��;x��;�s�;��;nI�;-�C?��}���O?sH���]���E?;��>��n�Y����_?�o,?������~�e��j�?e�?6�%?��۽��B�����K�D���f��>ت4?R�t?%�|?�]U?y`?%a>$
����پ��+�Y�Yst�$��,�|�3�n���X��==�������M����mj��tؽ.X,<��=�_>4��>μ�>>U�>gu?Od?�#?�M/?��9?��B?��J?�~Q?ێW?��\?Fwa?~|e?\�h?�l?�n?��p?��r?n�t?�5v?��w?a�x?��y?�zz?e7{?�{?�h|?��|?iN}?��}?��}?�?~?�{~?�~?��~?�?�%?�B?A\?1r?2�?��?�?>�?�?0�?4�?%�?(�?]�?��?��?(�?�?��?��?��?]�?��?�?�?�?��?��?�?��?�?z�?��?�?]�?��?��?��?�?4�?O�?g�?{�?���>�d8��-?T�6��a��{?���yS��2?	;\?5������[����6?\w?��>��
�{���T�������>��\?*�?QbT?���>�§;�־�=>��	p������r�!O������ľ���l�=�b�>���>$�?��??MX?n�i?�v?@}?-�?w0?�{?1v?��n?�:f?g�\?��R?ʵH?�a>?�4?9�)?p ?<�?Wf?��?�|�>���>m��>9P�>J�>fM�>0u�>�X�>��>0/�>u!z>+i>(Y>lIJ>�h<>{v/>�c#>�!>�>(�>^��=���=���=D�=�L�="��=���=\��=�I�=��=��o=q�^=�xO=�A=��3=�6'=M�=��=��=���<Ph�<�4�< !�<8�<�
�<��<��<6�<ND�<�Nt<�Xc<Y�S<K�D<A57<}*<�<I�<Mc	<���;\��;Dm�;��;���;�o�;�;ބ�;�ʏ;�΅;�t?��1�aӣ=4x3?ɼy��W=>��e?E�EP�&�?��p?�wp��Hs�3���>��p?�HZ?_)>>�V�Yzw�kj����4O=�?\�c?$�?�h?$M+?p��>\P;:��і��|J�Tl�*)}��1��)u���a��H�<�)��M	�g�Ͼ6V���>�K��yۢ=�{:>�<�>m��>���>�u?x?5�? %+?��5?k??׽G?O?�gU?�Z?=�_?�d?Ⱦg?m�j?��m?
)p?�Cr?Bt? �u?Iw?�>x?�Gy?d-z?��z?#�{?�6|?_�|?�(}?�}?Z�}?f'~?�f~?~�~?��~?�~?�?�8?IS?mj?x~?ӏ?۞?�?&�?��?^�?��?�?��?G�?e�?��?�?��?
�?�?��?I�?��?��?��?��?E�?��?t�?��?W�?��?�?F�?��?��?��?�?)�?E�?^�?t�?K�v?��|�Y�4?�EC<�dS��0_?�D>����t=��?�>5Xl��F,���>��~?"J"?��l���b�eXs�i����3>��:?��|?R�k?3[?��->�?����#��b���}�hqz�'�]�q0���ﾻo��8��2y\>^��>�q?��4?IP?�;d?7Rr?�{?�M?��?�@}?Sx?��q?0li?�P`?S�V?�kL?�B?��7?��-?6�#?��?O�?S�?ko�>�:�>���>�Y�>��>�õ>���>UF�>��>��>lI�>�o>��^>y�O>�NA>_4>��'>�>�W>]P>	��=���=�N�=�3�=�"�=�	�=أ=�}�=��=��=��u=��d=�T=�'F=:h8=��+=�=�=jN
=� =M��<���<�r�<.�<���<-�<(��<hŐ<���<��z<bTi<�!Y<�J<r<<��.<��"<߅<� <�6<W5�;�@�;�y�;F��;�!�;�j�;ԕ�;9��;NT�;l��>�-'>�5�X�?)d�|���k={?��;����x?<�j}?���>�[=��mk��ս/�E?�y?���>0���N�^��|�'�.�4�����>�xK?�H|?Q5v?ѶD?Y6�>��>;3T�Z����9�?)b�}�x������y�ži���Q��5�';���羪����G����xG%=F�>��x>�>�<�>���>��?n?�&?;22?�"<?��D?�L?4S?�Y?'^?��b?Kyf?M�i?��l?0So?�q?vs?4!u?�v?x�w?`�x?9�y?�z?�e{?/|?��|?�}?~h}?L�}?;~?�P~?��~?��~?��~?r?�-?J?tb?�w?ى?��?d�?D�?��?t�?+�?��?��?��?��?��?��?��?=�?Z�?.�?��?#�?S�?[�??�?�?��?C�?��?3�?��?��?.�?m�?��?��?��?�?<�?V�?m�?��>?����Х�%�:?�}�|�>/??��Q�%����8_?�?�k)��j���7<�Cd?@ [? B�=��6�~���1�"�x��?3�o?�]z?�<?{ڨ>G>��9��P���w�4�~��`j�ϽA�jq��(��uJ����>���>��?'�)?�IG?�]?�n?�x?�G~?��?0s~?~Kz?�t?jl?כc?_Z?�P?p�E?^k;?�,1?�'?�X?~�?��
?-+?���>�-�>f]�>�a�>�5�> ӭ>�1�> I�>*�>���>�u>�ed>�T>�3F>R�8>��+>Y >C>,�
>�.>��=��=)e�=���=��=!	�=�d�=ȍ�=�v�=]$|=��j=laZ=U;K=�!==q0=��#=n=��=�=A��<���<���<��<�@�<Nv�<7��<�{�<�,�<#��<�Oo<��^<�<O<��@<$v3<� '<th<`�<�<Qx�;��;��;��;�ӻ;Xɮ;ʦ�;�[�;�ٌ;t�*�ƃc?�(�9/?��>B}o��c*?��?bZ`�������N?��??��̾����羲�?�??03?�+��8�=���S��k���U>��,?��q?~?"Z?+?\�~≯����;0U'�l	V�?�r��$�;l}��tp�S	[�k�?��� ��w��儼� <u����*ے:v�=\�V>�.�>�h�>4Z�>Y!?x6?!�"?qb.?��8?��A?i�I?W�P?1W?�o\?�a?�+e?D�h?��k?xn?��p?��r?��t?lv?�iw?��x?	�y?�iz?�({?N�{?�]|?K�|?F}?~�}?i�}?�:~?;w~?ի~?d�~?� ?	#?�@?GZ?{p?��?^�?ʢ?H�?�?w�?��?��?��?��?��?x�?��?��?l�?��?��?<�?��?��?�?��?��?v�?�?��?�?r�?��?�?X�?��?��?��?�?1�?M�?e�?�m"����>�O���?�K)��+4?����E�_�Ѷ?��e?����.��}����+?<�z?3��> ��%y���Z��A��i��>m&X?�?�{X?.+�>j��< ˾�m:��*n�����t��zQ�l����˾	�%��*�=ݻ�>��>��?F�=?��V?�$i?��u?	�|?c�?�N?��{?�nv?�3o?W�f?+e]?kS?{II?��>?y�4?��*?Ҫ ?�?W�?�?Fg�>�t�>�Z�>��>��>���>��>�>��>���>�{>�j>+Z>�K>K)=>*0>$>�>�5>�d>�~�=�t�=��=R��=�
�=:�=wK�=�/�=Y؊=�7�=�p=��_=�NP=f�A=/h4=��'===be=(N=+��<�Y�<V�<
��<�ۼ<��<C��<�1�<��<�˃<[Ku<�Cd<kT<ЫE<��7<\-+<K<�;<T�	<�] <X��;,R�;���;���;�'�;���;�$�;/_�;D�|�af?���@2X�˝H?��q��f�=R�o?�"���\����>��v?6�0<d�m�d�=���O>��k?ك`?�ck>EF�X�t��n�+	��?�<=�?x`?~�?� k?iq/?���>���<!{���'�tH�%�j��|��l���u�x,c���I��+��)��wӾ����G!������=��4>(��>�i�>���>� ?=?�,?�*?B]5?M�>?�MG?�N?<U?K�Z?�_?��c?Y�g?n�j?��m?�p?n'r?��s?�u?��v?�.x?�9y?`!z?�z?�{?�.|?��|?�"}?�}?��}?�#~?_c~?��~?}�~?��~?�?�6?�Q?8i?l}?�?�?2�?��?g�?��?N�?��?<�?�?.�?��?��?��?��?��?��?4�?��?��?��?~�?;�?��?l�?��?Q�?��?��?B�?~�?��?��?�?'�?D�?]�?(�j��{?f�x�3I'?�=�\�tuW?�{>ԗ�3N<��?�q:>�mh���2�u�>��}?8�'?�_R�m�_�u�x���>i�7?�8|?�=m?a?6�;>�݅��r!�e�`���}�*�z��_���1�l��Uv��v�+V>��>L?��3?-LO?��c?7�q?[�z?�;?��?�]}?C�x?�q?��i?+�`?��V?o�L?�kB?78?��-?x�#?�D?<�?5 ?���>׳�>YQ�>���>��>w#�>���>���>�>�>���>�o>�@_>W�O>G�A>�j4>-(>gp>��>��>Iz�=h�=���=���=���=�j�=52�=}ј=�9�=�]�=`v=�Ie=fbU=�F=��8=?�+=# =��=��
=� =c�<�f�<���<�v�<��<L��<��<@�<��<�F{<�i<J�Y<�}J<&o<<"Z/<�-#<q�<�N<"<��;M��;���;�7�;���;�Ȫ;L�;��;��̾�?=>Δu>)�A�T0?%��i@
��/x?��f=���&6���{? ��>�"7���n�"
�cEA?�z? �>Ѿ���:\�!�|��\2�+H/��b�>� I?��{?Rw?'�F?tC�>�>NxJ�w��KZ8�a7a�v{x�����Vz�tZj���R��	6�V6�)�����~�K�=H����=\}>@v>�A�>��>��>�.?�?Њ&?��1?9�;?2�D?LL?S?��X?{^?�yb?�]f?2�i?�l?�@o?zq?Khs?Iu?��v?��w?��x?{�y?�z?�`{?��{?�|?��|?�e}?Ҿ}?~?O~?��~?8�~?��~?f?-?LI?�a?�v?V�?=�?�?�?C�?5�?��?��?x�?�?��?��?��?��?,�?K�?!�?��?�?K�?S�?8�?��?��??�?��?/�?��?��?,�?k�?��?��?��?�?;�?U�?1�T��<<?���C����<?L�|��>y�@?��P��C���A^?�?�%(��Pk�n�;Ӥc?�[?���=y6������2��X���h?�No?΃z?�X=?D�>����[��@�O���w�f�~�ډj�J�A�л��Ţ����|�>%4�>�M?�z)?$(G?�]?��m?|�x?�B~?��?w~?ORz?�&t?�tl?ԧc?$Z?�P?��E?�x;?	:1?�,'?ee?��?��
?*6?���>~A�>p�>ws�>~F�>��>!@�>�V�> �>���>F4u>�zd>��T>=FF>`�8>��+>." >>�
>�:>j��=���=�x�=�
�=Q��=��=(s�=[��=U��=�;|=�j=�uZ=MNK=�3==�0='�#=>|=)�=�=3��<��<���<��<�Q�<S��<��<x��<�9�<&��<;fo<��^<)PO<��@<�3<0'<�v<�<��<���;m*�;N��;���;5�;�ٮ;���;j�;�?��-��e?��~���,?o�$>�ep��(?{?YU_����f�M?�A?�ɾ��I7�*{??��3?�1��g7�y�{T�R۵���R>@J,?yq?�~?�_Z?̀?�>�>�H���5;�'���U���r���Xv}���p�u)[���?�{� ������ۼ�Z�u�LD�q�:���=6{V>���>�4�>�+�>�?$?у"?T.?�8?��A?��I?��P?�W?.i\?a?'e?��h?��k?�tn?��p?N�r?��t?�v?�gw?[�x?֋y?yhz?�'{?��{?3]|?��|?�E}?�}?�}?.:~?�v~?��~?-�~?� ?�"?@?(Z?`p?��?I�?��?9�?�?l�?��?��?��?��?�?t�?��?��?i�?��?��?:�?��?��?�?��?��?u�?�?��?�?r�?��?�?W�?��?��?��?�?1�?M�?��<X�ս,��>@uH���?*#'�H����R~?w�¾��[���?'�b?�Д���H8��x�/?�y?���>{6��  z�b�X�?᏾IO�>J�Y?b�?$W?��>dȴ<��ξ��;���n����2�s�@�P�����Qɾ�!�d��=���>���>�m?�x>?�DW?mi?�u?��|?��?�D?G�{?�Ov?�o?��f?$7]?]OS?sI?��>?�{4?\*?�| ?�?x�?��?`�>�*�>��>���>�e�>�±>2�>���>lO�>���>��z>)�i>��Y>)�J>H�<>[�/>h�#>1�>2>�7>�*�=�&�=<M�=y��=�˸=9��=��=���=⨊=��=�1p=!�_=�P=�A=u*4= �'=�=�3=�=�}�<V	�<���<���<���<W��<GT�<���<�p�<ឃ<c�t<��c<T"T<$hE<��7<��*<�<)	<�	<�1 <���;�;���;�C�;��;�~�;~�;��?��~��uk?�9�MD���A?��t���=��l?v���EX�2�>��t?�I��o��I:��b>I�m?T�^?Kf\>�P��u��l�ӹ��<��
?��a?
�?�2j?B.?ۀ�>� �<�Z��!M�j�H�-ak�H�|�>Z��u���b��I��+��
��8Ҿ%ʏ�8���L�i��=D�6>߅�>7/�>/~�>� ?e�?Gk?ٶ*?��5?�??sG?��N?�.U?1�Z?��_?��c?Νg?��j?	�m?ap?�0r?�t?��u?� w?4x?q>y?`%z?��z?�{?�1|?ٳ|?�$}?��}?i�}?�$~?yd~?��~?Q�~?��~?y?~7?[R?�i?�}?8�?U�?l�?��?��?�?o�?��?T�?�?@�?��?��?��?��?��?��?;�?��?��?��?��?>�?��?o�?��?S�?��?��?C�?�?��?��?�?'�?D�?��Y?0!\��st?b�}���9?��]���O���a?}�/>�� ɞ=��?h{>��m���)����>K�~?c' ?��v�v	d��r������D;>!<?�0}?�k?�5?Ñ(>�����$���b�~�j?z��]��z/�����^l����:��^>0��>/�?fC5?EP?�ld?�rr?�${?�S?K�?�5}?�Ax?�xq?"Si?L5`?�rV?YNL?��A?��7?�-?�#?��?��?(�?y?�>d�>ͳ�>91�>���>���>���>�&�>I�>0��>a/�>��n>`�^>_O>S'A>i�3>�'>��>�9>u4>	��=/V�=�!�=�	�=���=~�=��=�]�=[΍=���=��u=]�d=��T=��E=�A8=y+=��=�=�1
=^� =�Z�<���<�G�<#��<X��<m
�<�q�<`��<���<��z<�#i<~�X<��I<p�;<U�.<�"<of<��<�<��;��;
N�;r��;���;]G�;�t�;�{?�����>�e	>�0���?D\����2|?d�\��:�2�<��}?���>3�?��)j��[��w�G?�rx?k��>�0����_���{�V�-�QG�U��>FWL?�|?3�u?Z�C?�M�>��=��W��D ��d:�O�b�"y����V�y���i���Q�k�4�t���'義`����F��R���Z*=��>��y>X�>ƫ�>��>��?�A?�	'?�P2?|=<?c�D?}�L?FS?�Y?�4^?��b?��f?[�i?��l?Zo?ُq?/{s?�%u?Ɨv?��w?L�x?��y?�z?�g{?�|?!�|?<}?�i}?:�}?	~?�Q~?6�~?#�~?b�~?�?G.?`J?�b?�w?
�?ؙ?��?d�?��?��??�?��?��?��?�?��?�?��?D�?`�?3�?��?'�?V�?]�?A�?�?��?E�?��?4�?��?��?/�?m�?��?��?��?�?<�?��f?7Nl�9JX?����]=S�!?��S��>��+?r_�I�˾�;i?z?/V7�e�b���=o�j?,2S?"��<wX?����)�������?�r?�x?i�7?芛>����1��WS�6y��b~�߁h�z�>�� 	�-�����>�=�>��?<�+?��H?b�^?~�n?� y?	{~?�?qF~?�y?��s?��k?-c?�zY?2nO?�&E?=�:?�0?R�&?�?�^?/S
?r�?���>+M�>;��>͙�>�y�>"�>���>���>��>t��>t>�wc>��S>}dE>��7>-4+>
k>an>�0
>P� >A��=���= ��=�+�=�˳=dW�=��=��=L�=g{=��i=#zY=dJ=}Y<=�G/=O#=~�=�C=�u=��<[��<s��<C-�<V}�<���<�<5ޓ<S��<��<2Rn<��]<aN<3@<�2<�O&<��<<b<�n�;��; �;�;��;�;]��;mFݾ���>�����N?���'^F?wr�<�uc�d�=?"��>3�j��Ӿ�rZ?�2?x���A���˾�?��?9*?�x���i?�����0N����f8u>�D2?��s?�)}?��V?6w?�@j>9��hA־ф*�-X���s��f��|��lo�4�Y�?>����ڜ��\�����m���޽���;~V�=)�\>ּ�>W��>/j�>�?Y?�L#?b/?�W9?�iB?�]J?�SQ?giW?#�\?�Za?�ce?��h?��k?��n?f�p?g�r?©t?@,v?�{w?i�x?��y?Kuz?�2{?(�{?�e|?��|?�K}?{�}?��}?A>~?zz~?��~?��~?�?�$?8B?�[?�q?��?A�?��?�?��?��?�?��?�?=�?��?��?�?�?��?��?��?S�?��?��?�?��?��?�?�?��?�?x�?��?�?[�?��?��?��?�?3�?��=C�x�]G>��2>v"��t{?^�G��M�4|v?��G��|#?^2S?�$ʾ�J~��i��D�??�t?4\�>�K�A!}���O�9?f����>G-`?A?��P?���>����߾JA�"~q�����tq���L�u�OK������=���>���>�b!?��@?�Y?��j?�zv?NK}?;�??��{?��u?Rcn?^�e?>h\?�wR?�<H?f�=?ա3?��)?K�?'&?��?�8?%��>���>���>��>�P�>ܽ�>s�>4ڙ>x�>x��>hRy>�Sh>nsX> I>b�;>��.>��">g�>-->\n>���=c��=��=|[�=���=���=# �=	�=�ԉ=�F�=��n=D3^=v�N=�p@=�3=��&=�=pU=Q=��<(��<]}�<`v�<Rz�<�v�<GZ�<�<
��<hՂ<h�s<Θb<��R<�9D<w�6<�)<� <�&<9�<���;Q)�;/��;�_�;��;�ر;��;�	~�aTx?N{}��|?'�E��@>�" ?;�}�XJ�>��[?6��U�D���?�3k?,� (w���)��h�>?t?F�T?��>����qy�eAg�;���1�=��?RKf?��?�mf?��'?��>��J�1���]��oL��um��}���~��ut���`��F�dh(���� �̾"T��=}���׼ �=�?>=U�>ߟ�>i��>�7?ܼ?׀?ث+?^e6?F�??"H?�WO?��U?6[?Z	`?�=d?�g?rk?h�m?{Cp?�Zr?1+t?m�u?Kw?�Kx?�Ry?-7z?�z?}�{?=|?�|?}-}?-�}?��}?�*~?`i~?ԟ~?��~?��~?<?�9?mT?jk?R?��?�?n�?��?T�?��? �?M�?��?z�?��?�?.�?��?#�?!�?��?Y�?��?��?��?��?M�?��?z�?��?[�?��?�?I�?��?��?��?	�?*�?V�D��!?��)�^�T?̹}���_?Z�x�T+�eu?��k�S�{���r>��{?G\�&x�F��3?9�?��?B���m�_wk�/o־�>k�F?��~?�e?m�?w��=�M��Y�,���f����Px��xY�R
*�YV�"tS��.�<F_t>�+�>Q�?�a8?3�R?�#f?��s?�{?��?P�?��|?S�w?-�p?zlh?:_?ajU?w?K?0�@?0�6?�u,?"�"?��?Ǡ?��?��>Rn�>+�>i��>b$�>W�>QO�>0�>'p�>g��>
�~>?.m>��\>�M>D�?>��2>�I&>�>)>(6>1��=ʜ�=~��=��=L��=���=��=>>�=�=A �=��s=R�b=�.S=S�D=��6=�4*=Ae=Cg=e,	=PN�<��<B�<y��<Kw�<�,�<vΥ<�K�<���<���<��x<�jg<ZW<�fH<}:<��-<@~!<H<�<�#<5�;Ad�;L��;u.�;m��;<�;��#��9F?P�?��Q?�0�����=Qx?�p>�_ב�8�?u�>���x��<6>�?|�|>��R�]�C�E<�hV?��q?�>�>�ȾRwh���w�.R!�fQ��*_�>o�S?r:~?�ur?=?)��>�2�=>y���^?���e��{z�<��w�x��[g�F�N��1�x�~>�֏��na9��w���X=i!> ҁ>bj�>*��>2��>�b?�?hD(?f3?+1=?�E?�RM?��S?e�Y?H�^?c?+�f?�3j?(m?�o?��q?��s?NNu?�v?i�w?�	y?��y?�z?�x{?�|?�|?y}?Ns}?��}?X~?�W~?��~?��~?�~?g?]1?M?e?�y?Ƌ?Y�?֨?��?��?e�?��?��?=�?*�?o�?!�?T�?�?�?��?`�?��?H�?s�?v�?W�?�?��?S�?��?>�?��?��?6�?s�?��?��?��?!�?")t�ؽ?���z?B�P��1�>)�>��x�*�(?Bv�>O�t�Y�~x?]l�>� Q��9O��DX>��u?b�@?.����O���{��]��$z=�'?�w?3�s?/Y,?!g~>J	N�ֻ���Y��{��}��Vd���8���ff��5W%���7>U��>!�?��/?��K?�5a?bLp?��y?��~?)�?��}?�Qy?�r?!�j?�a?FX?Z/N?[�C?��9?DZ/?nX%?��?"??�?	?ͧ ?���>�t�>���>���>���>��>z.�>pf�>;M�>�ف>]r>K�a>�R>e�C>�@6>��)>H	>�$>��>
�=�o�=��=O��=�|�=i:�=��=[c�=��=�=`�x=M�g=�W=��H=o�:=�-=��!=y=�=�O=���<"��<��<At�<��<�B�<���<t��<�f�<��}<=l<��[<v�L<�_><(1<��$<�i<��<��<�@�;R�;��;j?�;j�;���;D�>��7����<��[��?I>o��ik?8
n�<�@�ڎ_?H�>{.z�
+v���m?b�?�O��9z������(?�/?�?�9�	�M����T�A�b����a�>$K=?D�w?��z?��O?ڀ?�>>w���~美1���\��/v������{�'m��~V��[:�����r�o���X^������P�<y�>1lh>��>��>���>(�?^�?X�$?Z0?��:?�pC?�CK?4R?ZX?�R]?��a?,�e?!Li?�Ll?H�n?�-q?)&s?��t?�Wv?M�w?"�x?��y?�z?-H{?��{?�u|?��|?�W}?�}?�~?F~??�~?��~?��~?]?�(?�E?�^?$t?�?�?+�?W�?�?�?��?��?��?��?F�?�?u�?X�?��?�?��?��?��?"�?0�?�?��?��?+�?��?!�?��?��?"�?b�?��?��?��?�?�U���?3�!�N�?C�O��٧�v^?]�n�a >��[?�4��R���I?hw2?��zu��oӽ�V?�g?�f2>��&�s��G?�i���)?l�i?��|?t�E?�>����v����"J�|u���[~m�ɋF�d5��c���I׽Le�=�ڥ> U ?=&?[�D?��[?o�l?��w?I�}?�?K�~?��z?��t?�?m?�d?l
[?�Q?��F?Kv<?142?	!(?TR?��?'�?�?Dw�>.��>$��>F��>���>�
�>	V�>T[�>��>�p�>�v>v	f>�OV>��G>��9>�&-><!>�>��>�>�B�=��=d��=Lb�=!۵=�B�=`��=n��=�s�=$�}=3^l=K�[=��L=,�>=IK1=��$=؊=��=Q�=n{�<�M�<�Q�<3q�<��<϶�<y��<(��</�<���<<q<S`<6�P<%BB<��4<�8(<��<��<��<�L�;d��;�{�;^P�;�2�;�;w?��S�ifF?oZ���z?,�q��Z�>���>7�|��N?�45?�+I�f��g�7?��T?�I��͡~����m�>�|?E9B?� =�S*��}��p\�i�о3m>m�"?�Pm?26?Z�_?�?,<�>��s��!��R�!��#R�_�p��~��'~�@2r���]�]�B��#�D�pEþ�/�����r)��M�=�M>y��>�V�>��>�?��?�L!?�A-?��7?A?,I?zHP?�V?o�[?@�`?�d?>`h?�k?7n?�p?��r?/gt?|�u?uIw?�rx?�ty?�Tz?�{?��{?GP|?��|?�;}?��}?��}?�3~?{q~?ڦ~?�~?�~?�?�=?�W?an?�?ʒ?l�?�?�?��?��?��?�?u�?�?�?��?��?.�?o�?c�?�?��?��?��?��?��?e�?�?��?�?i�?��?�?Q�?��?��?��?�?$�+?�w��-99>;C����?��[��}?�����ɾY�?h���jf����>�k?�"e���l�о1�$?�A|?Fi�>���zw���]�~���Q;�>�XU?��?��Z?�i�>��:=tľ8�1m�+��u�t��R���!�ׇϾ�-��Nt=^�>�#�>��?��<?�'V?5�h?�1u?٢|?M�?z_? |?H�v?�vo?Gg? �]?�S?�I?�M??L5?��*?x� ?sj?�3?�a?^��>���>\��>>��>��>+e�>�{�>�N�>zՐ>�>(�{>j�j>s�Z>Q�K>��=>��0>�n$>�>��>;�>��=� �=?�=�G�=�{�=!��=M��=Ɗ�="-�=熁=q=q^`=2�P=�QB=r�4=2J(=��=E�=�=$n�<���<���<#n�< O�<�*�<F�<ڎ�<���<��<^�u<�d<��T<�$F<$c8<�+<t�<��<�E
<'� <uz�;$��;Ra�;|��;���;��=?��q���{?z�w���Z?�c�"���S?dHk��az< �t?D߾t�b�˫�>7�y?QU=y�i�d�C�{.>��h?x�c?+�>7�����r���o��|��Ժ9��?�q^?�?�gl?��1?L��>�N	=�U������F��j�xL|�R��nyv�w�c�ۊJ�3�,�eC�y�վ30���t%���+�A�=y{1>*$�>u�>ˏ�>���>*�?|�?i*?�5?.�>?G?�kN?1�T?��Z?/l_?�c?�og?Юj?S�m?8�o?�r?2�s?:�u?��v?A%x?�1y?7z?��z?��{??*|?��|?T}?�}?P�}?N!~?fa~?�~?�~?��~?�?�5?Q?h?�|?a�?��?ʪ?5�?�?��?�?��?�?��?�?��?��?��?��?��?��?(�?z�?��?��?w�?5�?��?h�?��?N�?��?��?@�?|�?��?��?�?��|?0t�"�]?d�_�5Zv?��|���5?~J�;��R���_?��@>����ˀ=�?Bb>̖l�e�+��>C�~?O�!?Y�n��"c��9s�N����5>B ;?�|?a�k?9(?P�,>������#�*b���}��hz���]�D�/�K��L�n�<D���\>N��>#�?V�4?P?GDd?�Wr?�{?�N?�?�>}?Px?݊q?�gi?�K`?P�V?�fL?�B?k�7?��-?H�#?4�?��?�?g�>�2�>a��>�R�>c��>e��>՟�>�@�>ۗ�>0��>�D�>$o>�^>�O>HA>�4>��'>c>�R>�K>���=1~�=�F�=�,�= �=��=!ң=x�=��=/�=��u=��d=b�T=� F=�a8=t�+=V�=��=lI
=j� =���<���<k�<6�<��<'�<���<.��<���<�z<�Ki<�Y<AJ<� <<P�.<��"<f�<��<2<�,�;�8�;Fr�;+��;��;�&�����1��>�����;�>">]>4�*�?C�V���i{?;F~���n<_�}?-��>��=�6k���ѽ�IF?;�x?�-�>ַ��b&_���{��.����Vy�>s�K?�R|?&v?��D?k��>G>"�T��K��}�9��8b���x����"�y���i�j�Q��5��*�F��m���ұG������)&=^�>y>E��>�O�>���>7�?A!?�&?�72?R'<?��D?x�L?.7S?�Y?f)^?��b?{f?��i?6�l?aTo?�q?�vs?�!u?��v?�w?��x?��y?H�z?�e{?x|?�|?6}?�h}?v�}?_~?�P~?��~?��~?�~?�?�-?"J?�b?�w?�?��?j�?I�?��?x�?.�?��?��?��?��?��?��?��??�?[�?/�?��?$�?T�?[�??�?�?��?C�?��?3�?��?��?.�?m�?��?��?��?���>�O�.q?�t��c?��'�_0>?���:�?�G ?��e��ų��m?��>ow>�T^����=�n?��N?�Y�:��C�.f~�F�%���׸��?\�s?�uw?M�4?nC�>T&����{U���y��~��ug��f=�P��^�� nz��V$>I>�>� ?	�,?�I?`�_?w+o?g>y?��~?��?#-~?��y?O|s?I�k?r�b?�+Y?"O?��D?b�:?=E0?�=&?�}?�?
?�j?h�>��>��>-�>Z�> ¬>W1�>	Y�>]0�>l��>��s>h�b>qS>��D>�n7>�*>�>*>��	>S\ >g��=Au�=l�=f��=�c�=���=:e�=��=i��=h�z=�(i=��X=#�I=��;=��.=�"=�t=��=�)=t�<�,�<�g�<H��<D�<�]�<:��<���<�J�<��<j�m<oF]<��M<*�?<�P2<f�%<;j<ͱ<�<���;^��;:��;ڌ�;f��;�k���?C3���d�>8���tA?|}�v�Q?t(�H�[�a�G?�5�>`�o��㼾�`?+?�����h~��9��g?��?G�$?��ABC�  ��9#K����H#�>�/5?u?�|?�	U?z�?6_>v�����ھ�:,�	QY�j�t�e����|���n���X��=�������U���˳i�׽e�6<�=��_>��>���>n��>6�?�x?�#?�]/?��9?�B?U�J?��Q?�W?��\?y}a?�e?i?�l?��n?��p?a�r?��t?�7v?Z�w?�x?��y?�{z?b8{?��{?�i|?��|?�N}?/�}?�}?H@~?;|~?)�~?$�~??�%?C?c\?Or?K�?��?��?O�?��?=�??�?/�?0�?d�?��?��?-�?�?��?��?��?_�?��?�?�?�?��?��?�?��?�?{�?��?�?]�?��?��?��?��&o�<�>�l��֭>�2�����p?��]����<�k?~f��4���7?��C?���k�z�:�I�K?�n?�ur>�����~�ޡG��=5�g�>p4e?�I~?IVK?���>��A������E��s���~�o���I��"�gʶ��p��ϊ�=#�>_��>�#?��B?[zZ?k�k?ew?m�}?�?��~?�){?�Ju?]�m?�,e?q�[?��Q?d�G?.=?��2?p�(?g�?�}?[?k�?���>���>���>��>g�>N�>^ �> �>�Î>)�>�x>�+g>%_W>ݞH>��:>A.>~	">U�>aw>��>Px�=g��=��=�\�=Ķ={�=UR�=qY�=�"�=�@=}�m=�]=��M=�w?=�.2=��%=�O=x�=�=<��<�u�<�d�<Xq�<g��<���<臡<CQ�<��<�+�<�Dr<+sa<Y�Q<�;C<խ5<�)<T<�g<�=<���;���;-��;�U�;�%�;�MT��?�lo��d?��p�V�?O�_��Ա>��>l�����>��I?�5��B2�%?f�`?��M���{���s.�>k�x?��K?!�=NB �R�{��b���
t�=�?��i?��?�c?;{"?���>�*�uĴ�P��NZO�$!o�~�i�~��Ws�-_���D��)&��m���ǾW���G��&���q@�=�!F>L��>��>^+�>�_?��?|i ?%y,?7?�q@?5�H?��O?V?̒[?>Z`?E�d?\$h?�Kk?�	n?�kp?�}r?�It?��u?%3w?�_x?(dy?Fz?�	{?��{?�F|?L�|?�4}?|�}?i�}??/~?zm~?a�~?�~?��~?�?�;?(V?�l?��?��?y�?F�?\�?��?F�?z�?��?�?��?��?X�?a�?�?I�?B�?��?r�?��?��?��?��?Y�?��?��?��?b�?��?
�?M�?��?��?��?����K?�S��F�>Lɾ�H!?��j�yx?s��\���0?~T�?�n��2�>'�q?��"�WX~�|��>?�~?R��>� վߧt��ob��T��9��>� Q?�?�5^?8?�d�=ˀ��J�4��6k����v�gU��:$��pվ�`9��uG=�T�>��>��?a�;?8U?��g?W�t?R`|?r�?w?�W|?��v?��o?�wg?�0^?RTT?�"J?.�??��5?�_+?�x!?X�?��?��?���>u��>��>�;�>O��>� �>��>�כ>�U�>�>��|>:`k>iL[>@IL>XF>>�31>%>7�>�>m->���=N��=���=w��=0$�=@�=Z?�=��=���=���=]�q=�*a=:�Q=�C={5=f�(=/+=�B=_=�S�<���<�a�<f'�<���<i˰<���<��<�x�<씄<Q�v<�e<�U<-�F<9<V2,<�= <�<��
<[!<�T�;!��;7�;C��;,C�<S�?n&`��mq?�qk�;�F?�-;m�|�8b?+�_�)��pmz?����j�b��>�|?^~�=�kc��PL��J�=#�c?/�h?Ϲ�>w��L�o��r�m�����";�>;P[?h?fin?bk5?	�>[iN=ڞ����0aD�ϱh�$�{�@���*w�5e��K��9.����A�ؾBo��E�+��QC��W�=�w,>�ۆ>q��>���>)M�>�?�?'�)?�4?C->?,�F?N?ɒT??Z?	2_?D�c?�Cg?w�j?�_m?A�o?z�q?[�s?Gxu?p�v?�x?3%y?~z?��z?��{?D#|?��|?}?]}}?a�}?�~?r^~?\�~?��~?��~??�4?�O?kg?�{?��?�?.�?��?��?D�?��?4�?��?��?��?�?��?`�?��?��?��?�?k�?��?��?m�?,�?��?a�?��?I�?��?��?=�?y�?��?��?^��	Tv?��z�� i?�j�LS{?2�x��5(?�֙=��[�4�W?��w>ţ�m~�<��?t�7>�h�ws2�C}�>��}?t�'?�T��%`�~�t�;5�n� >��7?gE|?�#m?�.?�:>9I����!�v�`�י}���z��_���1��0�U�u�f_���V>�;�>d_?k4?XO?H�c?� r?��z?'=?v�?\}?P}x?T�q?4�i?k�`?��V?J�L?�fB?8?��-?��#?�??��?��?x��>��>�I�>��>9�>.�>���>1��>��>2�>��>��o>�8_>��O>^�A>/d4>*�'>�j>Q�>��>7q�=���=;�=B��="��=ld�=J,�=�˘=�4�=�X�=+Wv=�Ae=�ZU=��F=3�8=
�+=] =t�=��
=^� =��<�^�<p��<�o�<-�<?��<S�<�<���<�={<��i<n�Y<�vJ<Xh<<�S/<�'#<��<�I<bz<2��;��;���;�0�;�lZ?g���L�ۊ�>��Ͼe�B>azp>%�@��F?ó��k	��hx?�:Y=���	��[�{?�o�>=�7�jn��ЕA?|rz?�U�><|���i\���|�l#2��#.����><HI?��{?�	w?|�F?���>h�>�K�"G��Zs8�\Ga���x�&���Pz�MPj�@�R�.�5��%���龵���P�K��Ν�A�=��>�7v>�W�>`(�>y��>�6?��?ސ&?O�1?��;?O�D?�OL?:S?��X?�^?�{b?h_f?��i?B�l?,Bo?!{q?2is?u?;�v?�w?�x?��y?p�z?�`{?�{?%�|?��|?�e}?��}?:~?$O~?�~?P�~?��~?x?-?YI?�a?w?_�?D�?	�?��?H�?9�?��?��?z�?��?��?��?��?��?-�?L�?"�?��?�?K�?T�?9�?��?��??�?��?0�?��?��?,�?k�?��?��?�P�>��>hI� �m?5�q���_?O�!�(+�=�_?q���&�>;c$?�c�_[��DTl?i��>X�;��`��\�=w�l?�MP?d�D<�8B���~��$'�£��[?�ws?4�w?�5?5ږ>
!����0tT�g�y��/~���g�g�=�M������>z����!>�-�>~�?�9,?>KI?�U_?o?�(y?H�~?��?46~?�y?��s?S�k?�b?�GY?N9O?g�D?ӝ:?@b0?�Y&?N�?	/?S%
?��?ƕ�>x��>�>�>�S�>�7�>#�>_Q�>w�>xL�>�Ȃ>��s>U$c>�S>�E>��7>��*>0>m7>��	>�v >\,�=ۢ�=�;�=���=���=$�=%��=ɽ�=��=�z=yXi= )Y=�J=P<=�/=��"=�=�=�D=�P�<|[�<x��<���<�8�<逪<٪�<��<g�<3�<Y�m<�s]<-N<��?<Du2<�&<�<_�<j�<��;��;���;��;�]f?'/o�?{޽��>,Z���ZF?�`~���M?닼ׄ^�?D?��>n���ľ�!^?s�-?<���J�~�������?E�?��&?u�ҽ��A��� ;L�O;���>�'4?�t?�|?��U?��?%c>3Q�&پ��+���X��Xt��z���|�.o��Y��g=��*��A���R��B%k���ٽ�&"<���=��^>���>��>�"�>�^?^P?y�#?U>/?�9?��B?$�J?nuQ?ӆW?��\?+qa?-we?��h?�l?��n?��p?�r?$�t?�3v?�w?�x?^�y?iyz?l6{??�{?:h|?B�|?�M}?9�}?>�}?�?~?�{~?��~?��~?�?%?�B?\?r?�?��?ԣ?.�?�?$�?*�?�? �?V�?��?��?$�?�?��?��?��?[�?��?�?�?�?��?��?�?��?�?z�?��?�?\�?��?��?�,~?N	�'�!��N�>�@�g}�>�<���	�n?��_���<ƶi?���2�E�9?6B?5��VSz�(2�L�L?�nm?� l>�!�����F��n0�h�>��e?,,~?��J?�8�>��N�V���GCF��s�m��WQo��tI�i������$��-��=���>�h�>0$?�B?G�Z?t�k?�,w?��}?��?�~?� {?�>u?��m?me?2�[?ˮQ?)pG?�=?��2?��(?N�?m?LK?W�?�z�>T��>л�>���>1P�>�̯>?�>#�>㱎>��>��w>�g>,DW>��H>D�:>X�->�!>J�>�e>n�>�Y�=���=Y��=�C�=�=��=>>�=�F�=-�=� =Qom=��\=��M=d_?=?2=��%=_<=7�=�=���<UX�<}I�<�W�<�o�<�~�<^s�<&>�<Ћ<Q�<&r<�Va<��Q<�"C<��5<_�(<@<=U<q,<hp�;���;Bx�;�;�;��=6X���?�Am��b?��n���?�a�̖�>UA�>��(��>D�G?��7�$Q0��'?
�_?�gV��|��|�{n�>�y?8�J?A�=�G!��+|�r}a�W&�@E�=�A?�Pj?��?h�b??�!?J�>���g͵���&�O��Io��(~���~��:s�!_��D�6�%�3��uǾE�� �
�(?��⿽=~�F>+ؒ>˽>�k�>]|?E�?&� ?%�,?�+7?h�@?��H?p�O?k"V?՛[?b`?"�d?T*h?�Pk?Dn?�op?��r?�Lt?T�u?^5w?�ax?�ey?�Gz?.{?Ŵ{?�G|?�|?{5}?�}?��}?�/~?�m~?��~?_�~?��~?�?<?SV?m?��?͑?��?[�?n�?�?T�?��?��?%�?��?��?]�?f�?�?M�?E�?��?t�?��?��?��?��?Z�?��?��?��?c�?��?
�?M�?��?��?C#?L�J<?�%ѾY�>"�����?ԭc�S{?E��+�᾽�?�����j�{��>�n?F�C����޾��?*F}?@�>j�޾�v��3`���^]�>�+S?��?��\?=l?eYi=�l��([6��l�����tu���S���"� �Ҿ��3�{�]=�ч>���>0�?F<?	�U?/@h?��t?w�|?	�?�k?�<|?7�v?�o?h@g?��]?�T?��I?̏??�D5?!+?�;!?��?�m?
�?v[�>Y\�>�5�>6��>�f�>�>�Ŧ>%��>p�>�C�>�&|>��j>��Z>��K>�=>\�0>��$>�`>M�>�>a��=Wj�=�z�=(��=ѹ=��=C��=�ϕ=;m�=�=�q=��`=n.Q=q�B=�)5=ȗ(=��=y=k�=���<)U�<��<���<o��<8|�<�;�<7՘<9�<�Y�<�Rv<9e<+OU<�F<1�8<2�+<�<�<x�
<�� <���;�@�;���;�eE�1����q-?Ҫi��Lw?,r��.Q?F꾅�B��g[?��e�QY��w?b�˾��f�q��>FJ{?�v�=Z�f��-H�L	>�#f?\sf?��>d#���uq��iq�D���b��?��\?��?:om?2�3?S��>�N,=�n�����ozE�g[i�	|����v�Lzd��=K�Kv-����]׾EՔ�{�(�#�7����=��.>X��>+��>Ο�>J�>�_?i?��)?��4?�e>?��F?N?N?��T?�_Z?�N_?J�c?�Yg?h�j?tpm?��o?�	r?%�s?��u?��v?
x?O+y?�z?3�z?��{?�&|?}�|?�}?�}?S�}?�~?�_~?��~?��~?��~?�?D5?mP?�g?S|?��?@�?{�?�?޿?v�?��?Z�?��?��?��?��?��?p�?��?��?��?�?r�?��?��?r�?1�?��?e�?��?L�?��?��?>�?{�?��?#��#�'�:~?�p�*�X?�Z[��t?��}�ϧ:?
H��uKO��\b?hH,>�����=N�?|��=�m�(K)�h��>c�~?��?��x��9d�m�r�,Q��ܔ<>�V<?�;}?R�j?�?��'>����$���b��~��6z��x]��`/�kT�t�k����:9A_>�>W�?�R5?�PP?Bud?Mxr?�'{?�T?��?�3}?�>x?#uq?�Ni?�0`?�mV?4IL?��A?ͩ7?}z-?�#?��?i�?ǟ?"7�>z�>P��>'*�>{�>[��>�}�>!�>z�>X��>�*�>v�n>w�^>�WO>o A>��3>~'>B�>�4>�/>���=�M�=��=��=��=(߯=7��=xX�=>ɍ=��=ќu=�d=A�T=u�E=Y;8=�r+=9�=�z=�,
=�� =�Q�<~��<
@�<,��<�y�<e�<Fl�<'��<���<}z<�i<��X<X�I<��;<�.<'�"<�`<�<�<���;�	�;iF�;V�s��iA?Vb��ڿ����? ��G��>4>�3/�h�?T7��"��Y|?Ы���*����<�~?pż>�@���i��C���H?jWx?}��>�룾+'`��{��c-��"��P�>�}L?��|?��u?�C?���>/��=�}X�}f ��}:��b�Sy����t�y�`yi�T�Q��4������o?���AF��ٓ��<+=��>#z>��>��>4/�>o�?uH?�'?V2?&B<?{�D?�L?2IS?OY?7^?��b?��f?��i?�l?8[o?�q?|s?u&u?s�v?l�w?��x?3�y?z�z?�g{?|?a�|?s}?�i}?c�}?-~?�Q~?Q�~?:�~?v�~?�?V.?mJ?�b?�w?�?��?��?i�?��?��?C�?��?��?��?�?��?�?��?E�?a�?4�?��?'�?W�?^�?A�?�?��?E�?��?4�?��?��?/�?m�?��?Sw��[>X�?�2e�_{?�|�^$q?�>� �>@��>�}}��*?C�?'n�������s?�<�>\H���V�؇&>�Ur?ǯG?�A#�J��2}����X��<��!?��u?��u?�0?σ�>ψ:�����W��z���}��e�;�}���Ñ�
�N��W.>���>��	?.?��J?�f`?��o?Ζy?�~?B�?�~?��y?5's?SGk?Zb?d�X?1�N?}YD?i:?�/?p�%?g?q�?��	?�?���>��>l�>b��>}�>�4�>߬�>�ܕ> ��>�A�>O�r>{8b>��R>HND>5�6>B*>[�>�>�l	>U��=�0�=���=�a�=��=�˲=i�=?�=4%�=	'�=z�y=Xbh=
DX=pCI=�L;=�M.=�5"=��=z=+�=�N�<zk�<��<��<�w�<�̩<U�<1�<�Ո<2�~<�l<&�\<�:M<�><׸1<3b%<��<�7<F<�
�;K��;���;�%���	z?Z�U�A�>��A�}C>�㫾}o+?Ľw�M`?@�2�N�U�T?�һ>�u�����_�g?>Y?����|�E���0 ?��?V5?����H�����F�[����>^b9?��v?{�{?5PR?�$
?C�N>��yJᾅ�.���Z��gu�X��'C|���m���W�{�;��M��i�������c�z�˽Ѕ<���=g&d>"(�>���>,�>/G?w?�C$?�/?X:?�C?��J?t�Q?��W?4]?D�a?�e?�'i?&-l?��n?�q?Os?��t?Hv?��w?R�x?��y?�z?{@{?��{?�o|?��|?�S}?#�}?��}?@C~?�~~?c�~?�~?�?K'?TD?y]?@s?�?q�?��?ְ?r�?��?��?{�?r�?��?�?��?R�?:�?��?��?��?q�?��?�?%�?�?��?��?%�?��?�?�?��?�?`�?��?�:=��Ti?Ԏ�H瘾��?�/(��?�,l�R
��II[?�p���5>�Y?�"8���L?��/?b���t�5���*X?u�e?�(>��(����{�=�r���
�?acj?-�|?#�D?4��>�*��.�����J���u��}��-m��F�ќ����0Jҽ�	�=8�>� ?��&?$�D?\?n�l?O�w?��}?B�?�~?K�z?�t?�)m?Hqd?�Z?��P?�F?�Z<?�2?E(?_8?��?1�?��?�K�>���>6��>���>_�>>�>�7�>�>�>,��>�W�>2�v>��e> 'V>�{G>�9>�->0!>>�>�>��=uW�=���=�<�=
��=�!�=�i�=��=6Y�=�}=�0l=��[=c�L=X^>=)1=�$='m=^�=��=�K�<s!�<-(�<�J�<"u�<f��<b��<9t�<)�<sl�<��p<�'`<ԗP<�B<��4<>(<�l<��<iu<��;���;CQ�;�j,?���>]�u�TQt?��N�U A?�DV�y?�s��?�>��{�e�?8�1?"�K�@���):?��R?F�����~�b$	�%2�>��|?��@?���<�+��~�m�[��;�O#>��#?��m?b?e�^?pD? a�>���;����4"�ҍR��p���~��~�r��A]��_B�ә#������¾������������=;N>%#�>h��>��>b�?N�?!o!?�_-?5�7?P$A?�@I?WZP?��V?�[?�`?k�d?<ih?��k?�=n?��p?դr?�kt?Y�u?�Lw?�ux?uwy?�Vz?n{?A�{?�Q|?��|?�<}?��}?��}?�4~?r~?_�~?��~?��~?# ? >?X?�n?�?��?��?9�?.�?��?��?�?,�?��?"�?#�?��?��?4�?t�?h�?�?��?��?��?��?��?f�?�?��?�?j�?��?�?R�?��?K_+>q�_?o�i�K��>�
��:e��S�>f�C�R�?h,�+ۊ���}?@̾bqY���?��`?j_�����3ɭ�J�1?��x?>�� ��z��~W�拾��>��Z?]�?�KV?���>N��<�Ѿ;<�^0o�S���Qs�`)P����Ǿ|G��˖=ɐ>ϧ�>��?v�>?,�W?��i?��u?M�|?��?�>?��{?m<v?F�n?vf?o]?g1S?��H?�>?{]4?]>*?�_ ?1�?ơ?J�?���>���>>��>���>M?�>A��>��>���>x1�>�m�>�z>.�i>�Y>u�J>o�<>0�/>��#>�i>�>�>���=	��=��=>`�=W��=�ګ=��=�ܔ=X��=M��=��o={Y_=M�O=�oA=4=_�'=Z�=�==VH�<i��<;��<W��<�r�<�]�<n1�<Aݗ<]R�<̂�<�t<�c<�S<>E<z�7<I�*<��<��<��	<Y <�c�;���;�c|?$j��x�Ѿ%X`?-~�5�?�]��n?$%���<ב=?�gv���>e�j?
���U�n��>��s?��ڼQ�p�8��,n>%�n?�7]?pS>�1
�Bv�l�r2�۹=�?�Ab?��?��i?8-?�z�>ձC<�#��6�.`I��k�b�|�N��u��|b���H�<�*�v)
�rѾ���~|�����1�=^�7>��>��>{��>H?)�?
�?�*?ѫ5?N0??H�G?��N?�@U?��Z?<�_?l�c?
�g?��j?ūm?p?�6r?�t?[�u?�w?i7x?OAy?�'z?��z?��{?"3|?@�|? &}?��}?R�}?�%~?(e~?-�~?��~?�~?�?�7?�R?�i?�}?i�?�?��?�?��?*�?��?��?c�?)�?K�?��?��?��?��?��?��??�?��?��?��?��?@�?��?p�?��?T�?��?��?D�?��?Ԇk?Is>2g�=w?$�C�y� ?��(��T?��}��`?�X}�~L*���u?(ْ��Z{�v>@�{?�惼�8x����۬?��?'z?��x8m��Pk���վ�g�>�F?K?e?�W?Y��=ص��+�,�wg����Fx��dY���)�����R�_��<m�t>�X�>�?�p8?��R?(,f?��s?�{?��?��?��|?>�w?S�p?hh?I5_?YeU?O:K? �@?�6?�p,?8�"?��?8�?$�?ρ�>sf�>�#�>a��>��>�P�>xI�>���>k�>���>{~>�%m>�\>��M>m�?>9�2>D&>~�>�#>V1>6��=m��=�~�=���=���=A��=4{�=�8�=p��=���=��s=#�b=/'S=;�D=�6=�.*=�_=�a=r'	=E�<\��<G�<��<ap�<b&�<zȥ<HF�<���<%��<��x<�bg<NRW<y_H<Kv:<T�-<kx!<�B<�<�<R,�;\�;���>��}�S��>G̈́>m4%��=G?q�@�4z?`W�s���
x?�#?�����x�?Y2B���x�M9>��?<}z> S��\�Kf<ߪV?m�q?�{�>�ɾl�h���w��!�H��r��>T?^A~?8dr?u�<?e�>ѱ=p�y��0�Wv?�a�e��z�����x�=Qg���N�a�1��g��ླn���!9��v�0wY=��!>��>��>E��>F��><j?��?ZJ(?Dk3?�5=?'�E?&VM?��S?�Y?��^?&c?��f?5j?�m?G�o?��q?�s?Ou?��v?��w?O
y?-�y?f�z?'y{?|?X�|?�}?}s}?��}?{~?X~?͐~?��~?��~?x?l1?M?e?�y?΋?`�?ܨ?��?��?i�?��?��?@�?-�?q�?"�?U�?�?��?��?a�?��?I�?t�?w�?W�?�?��?S�?��?>�?��?��?6�?s�?�S?�7�	���[?#��F1{?|�z�"�?PXi�4K?�bp>��l�5�B?"J�>-|�}�ƽ��}?���>�	^�UA��b�>A�z?�Q4?�#��tX��x��N��9�=$�/?6Cz?Щp?�C%?jH\>��m�����r]���|��|��a�K05�����C���¼(|G>��> �?��1?ˢM?��b?-q?wkz??��? �}?U�x?�Kr?QGj?|@a?V�W?
pM?#C?h�8?
�.?��$?�?{�?i�?F ?���> [�>���>j��>��>�Ъ>�^�>ɣ�>���>|/�>��p>�Y`>� Q>��B>�N5>�(>�6>�`>�F>���=�2�=^��=#��=�|�=�K�=��=���=}�=��=��w=�nf=sV=��G=
�9=�,=�� =6�=�K=�=LC�<O��<���<�m�<��<�_�<N��<�Α<}��<%�|< k<��Z<�K<`=<^:0<G�#<��<O<J'<���;���;�����2��Tw?�`��RF=��E>Q#M�ZN�Д�>�*[���x?>�¾<&��An?��1>��~��C	��(v?'��>+�'�\u��R�M�5?�N}?��?��r�gwU�~r~�:�W�W�|��>�C?�z?��x?rK?�p ?�%>�3�����4���^��gw����g{�7�k�ИT��%8��z�<��󲫾X�T�x�����<�B>�no>�D�>�d�>gJ�>�
? �?��%?�#1?�4;?-D?&�K?F�R?V�X?U�]?�/b?�f? �i?�l?�o?6Uq?GHs?�t?qqv?��w?v�x?��y?k�z?�T{?��{?|?�|?�^}?�}?~?�J~??�~?��~?��~?�	?�*?xG?1`?�u?&�?5�?�?*�?��?��?s�?:�?�?,�?��?b�?��?��?�?(�?�?��?�?7�?B�?)�?��?��?5�?��?(�?��?��?'�?g�?΁ټ�|�/�?��`>��2��3`?{�f��JQ?:F���<��)?�|� -�>`�1?
�[�ܳؾKpf?	�
?�N3��ce�r�h= �h?ޕU?�<=��<��M��`,�Œ�{?Ϫq?�y?�G9?Y��>QR��	��cR�e�x�>�~�i���?��
��@���!��
�>o��>�)?j�*?-VH?E�^?��n?��x?l~?��?�S~?�z?��s?�l?�;c?=�Y?��O?TTE?| ;?y�0?ڸ&?:�?��?z
?��?L/�>��>F��><��>���>�V�>ּ�>�ۖ>ƪ�>� �>�jt>q�c>�+T>�E>B8>�i+>	�>��>f\
>�� >���=�;�=f��=�h�=M�=0��=A�=!�=��=�h{=R�i=׾Y=�J=�<=\/=�Q#=x�=?p=H�=8��<V��<p%�<�k�<Y��<���<S�<��<�ŉ<S5�<��n<�^<`�N<�I@<i�2<#�&<��<�2<�/<���;�f�;�����>U�R?�y�iX7?Q#�����>sk�1}U?/�� �??���=�[g��U8?��?��g�߾?0W?�6?JM����+Ծ� ?�?��,?����D=���W�O��騾��k>��0?qBs?�q}?��W?g�?�Up>'ڽ6�Ӿȓ)�ŋW�_�s�YT��}��o�:Z���>��`�����#ѹ�/�o���?p�;���=�Z>���>b�>{��>��?]�?#?
�.?e-9?hDB?�<J?%7Q?lPW?W�\?�Ga?(Se?d�h?T�k?ӑn?��p?3�r?��t?&v?5vw?Ùx?��y?�qz?�/{?��{?Fc|?��|?%J}?�}?s�}?%=~?�y~?ϭ~?�~?V?Q$?�A?=[?Pq?o�?��?U�?��?��?��?��?��?��?(�?��?��?�?��?��?��?��?L�?��?��?�?��?��?|�?�?��?�?v�?��?�?Z�?[[���~?9��Ḽ�ȸ>�龔�>93�����F�o?��^�,M�<�j?�.�w3��U8? C?�m��t�z���7�KL?+�m?�op>zP���~��^G�_�3�2�>�Ze?d@~?�(K?}H�>��E���쾉�E���s�T��~so�ѫI��;����b��.��=9�>�>��#?X�B?؅Z?m�k?a"w?ٝ}?[�?"�~?�&{?�Fu?��m?a'e?�[?��Q?�|G?1(=?��2?��(?��?Hx?V?��?~��>���>J��>3��>�_�>sۯ>��>��>轎>��>�x>�"g>�VW>іH>@�:>A�->�">?�>�q>��>vn�=:��=���=�T�=���=��=�K�=vS�=�=�6=؃m=�
]=Y�M=�o?=�'2= �%=�I=��=��=!��<Yl�<\�<3i�<��<���<W��<'K�<,܋<�&�<;r<ja<��Q<�3C<s�5<�	)<�M<�a<;8<X��;c��;����b?�)�=��U�O�?��n���c?�:p���?@:`��P�>M��>�����>�GI?��6�;�1���%?�e`?�P�[�{�����8�>��x?��K?��=�� ��|���a��p����=��?j?g�?�b?�O"?�>�4�,�����JqO�(.o� ~��~�sNs��_�F�D��&�[�"�Ǿz����g�#�����=�YF>ԡ�>��>@�>�h?��?�p ?�,?�7?�v@?��H?`�O?_V?��[?�\`?w�d?E&h?nMk?2n? mp?�~r?}Jt?��u?�3w?7`x?�dy?�Fz?S
{?�{?G|?��|?�4}?��}?��}?e/~?�m~?~�~?+�~?��~?�?�;?6V?�l?��?��?��?M�?b�?��?K�?}�?��?�?��?��?Z�?c�?�?J�?C�?��?s�?��?��?��?��?Y�?��?��?��?b�?��?
�?M�?��e��V�>z8?�{�5*?:��*�2>��~��?e[���}?����Ǿ�?-����f�%��>v�j?��g�6����Ͼ4X%?�+|?Ǝ�>�龏�w�D�]�z꠾wز>	�U?��?��Z?m��>�7=��ľGB8��m������t�}�R�o!��KϾ�-�v=(��>�O�>Ȣ?�=?|2V?��h?�6u?o�|?��?�^?�|?�v?�ro?�g?I�]?��S?��I?qH??*�4?��*?�� ?�e?W/?~]?$��>���>���>G��>R�> _�>v�>]I�>dА>I�>B�{>�j>��Z>�K>�=>j�0>�h$>R>݆>w�>�=l��=��=[@�=u�=霬=���=c��=(�=;��=Rq=YV`=��P=�JB=��4=D(=�=�=��=e�<Z��<˒�<�f�<KH�<�$�<Z�<X��<��<��<}�u<<�d<D�T<�F<|\8<ڏ+<��<3�<�@
<�� <�q�;mZ�>��f?�~1���7��8??�Mr��|?�w�|�[?�}����QS?`�k�t�<wt?��ྑ(b�`��>y[y?QK=j��pC��w0>��h?��c?�:�>� �s���o��;�N�:b?Ր^?��?�Rl?��1?�.�>��=�����7��F�Oj��Q|����Crv�:�c��|J�l�,��2�؎վ9���5%���*�ů�=U�1>P;�>_�>���>� ?��?�?=#*?�5?��>?G? oN?7�T?a�Z?|n_?��c?�qg?U�j?��m?^�o?�r?�s?��u?��v?�%x?2y?�z?E�z?�{?�*|?ʭ|?�}?�}?x�}?p!~?�a~?�~?�~?��~?�?6?Q?�h?�|?i�?��?Ъ?;�?�?��?�?��?�?��?�?��?��?��?��?��?��?)�?{�?��?��?x�?5�?��?h�?��?N�?��?��?@�?M��<{?S�z��O�C�~?��Z��<?�KA��nd?���z<Q?����;��\n?���=PT~�B�.>K~?.w:=b9t����o�>�?M�?�w���xi��n�F�侈�b>�dB?�V~?v�g?�?M�>�:���Z)��,e��~�`)y�"6[��X,��羁�]�2yr<kTk>�@�>�#?�7?K�Q?�le?�s?�{?�s?�?��|?0�w?=q?�h?.�_?��U?��K?'aA?G7?��,?�"?�O?�?+?0B�>�>N��>rZ�>a��>M�>#Ѩ>�~�>8�>+�>�K>��m>H�]>�~N>&V@>H 3>�&>5Q>ݛ> �>���=tV�=k3�=,�=B-�=,%�=�=C��=,3�=!i�=��t=�c=��S=�%E=,x7=;�*=+�=a�=R�	=u =XT�<u��<ad�<��<���<]S�<�ǚ<��<	�<�uy<u$h<�X<[I<�;<�.<��!<�<*I<؋<;��;�N~?9�D>�����?m^�=��4�-?�'�� �>�^�����3}?Q#.�m����x?���U?|���=�?��>�K���b����xP?B�t?��>�/���e�B�y�n�&����a��>\�P?�}?^�s?��??�)�>���=wk��8��K=�fVd�	�y�����%y��Fh�;P�9�2����8(㾼n����>���=%E=��>��>��>���>�)�>Թ?C?<�'?��2?��<?apE?M?��S?poY?�|^?��b?��f?
j?+�l?~o?"�q?X�s?A=u?:�v?��w?��x?�y?��z?�q{?�|?��|?�	}?8o}?�}?G~??U~?e�~?�~?��~?�?0?�K?d?�x?�?��?J�?�?9�?
�?��?H�?�?��?B�?��?2�?��?f�?~�?M�?��?:�?g�?l�?N�?�?��?M�?��?:�?��?��?3�?�F?K=?��L�O����J?��|���~?xn~���~?�V`�t��>�ә>h|r���8?G.�>��y������{?���>t�X�G2G���>:�x?sx9?q���T��z����U�=�G,?�Iy?r?F0(?�Cj>��`�Z���[�44|�Ts|���b�n�6�����,������hA>l��>\q?4�0?o�L?��a?��p?�6z?��~?��?\�}?#y?D�r?�j?��a?u�W?h�M?=rC?% 9?|�.?s�$?�6?��?��?LK ?/F�><��>�-�>�`�>Vb�>5+�>���>`�>��>.u�>�Jq>P�`>4rQ>C>۱5>U3)>�>��>��>�F�=S��=*V�=��=h�=\��=�^�=�=2>�=�O�=$#x=��f=3�V=� H=h :=R6-=`1!=�=��=d�=T��< �<�a�<6��<�R�<^��<��<-�<R��<k}<��k<'([<*�K<��=<��0<�X$<��<�Q<-p<�|�;5!"?�,�a��g�}?76���>M�=\�|2�����>�Cd�/,t?0'��zo1��h?.�d>3R}�6��s?��?�� �kWw���p��t0?5~?�?��[��^R��~�#[=�V�h���>��@?�5y?ӿy?b�L?W�?��/>��)�6{��`O3�s�]���v�}��!h{�Rl��`U�!9��t�<��t���WzX�\^�����<�>[�l>���>�9�>�>�>��	?aU?�V%?Z�0?m�:?��C?��K?�cR?�VX?M�]?Vb?� f?�oi?�kl?o?,Eq?Z:s?i�t?�fv?}�w?��x?��y?}�z?�O{?�{?({|?��|?\}?��}?�~?�H~?��~?��~?��~?�?*?�F?�_?u?��?×?��?Ա?M�?`�?;�?	�?��?�?s�?G�?��?v�?��?�?��?��?��?.�?;�?#�?��?��?1�?��?%�?��?��?%�?Qxs?��ƽ±y��1?��'>U�(���Y?�ra�6�J?�����)0?}�~�GM�>h�6?:+X�C��2�c??��/��eg�vj$=�Mg?�W?�6s=��:����<m.���0�m�?��p?Җy?��:?��>�	�{Z���Q��x�٬~���i�x�@�r�
�����'����>�*�>�?��*?�G?�X^? Zn?��x?�^~?y�?�_~?�(z?��s?b3l? _c?��Y?��O?�{E?�';?�0?��&?�?��?
?��?]l�>���>���>��>�>=��>��>��>MЌ>D�>\�t>��c>eT>��E> C8>N�+>e�>f�>�
>�� >�=�x�=�=x��={5�=���=��=.I�=�6�=z�{=V9j=l�Y=w�J=��<=f�/=�~#=&=��=R�=L<�<�6�<�_�<���<��<_%�<�C�<�5�<��<pX�<��n<�I^<��N<�~@<k!3<��&<<Z<�T<�;:8����~��a>�EI?]�|�x�@?lv�8��>�6���Z?V����9?J��=��j��W3?�#	?�Ee�E@龶BT?�%:?�۾.���g۾C
?^�?�-/?}.~�Sa;����S9Q�y$��n�c>s>/?��r?"�}?@�X?I?o�u>�нo�Ѿ��(���V��Us��C��7}� p�0fZ�U�>���������κ���q����S��;���=�|Y>#R�>�o�>|E�>8�?��?z�"?�.?{9?$B?� J?QQ?�:W?k�\?P7a?�De?��h?v�k?a�n?��p?�r?t�t?� v?�qw?��x?�y?�nz?2-{?@�{?La|?A�|?�H}?��}?V�}?.<~?�x~?�~?z�~?�?�#?WA?�Z?q?+�?Ô?"�?��?[�?��?��?��?��?�?��?��?��?��?{�?��?��?F�?��?��?	�?��?��?z�?�?��?�?u�?��?�?#��>�+[�����:�~?�m�l����c�>:�X��>ƻ��<S����o??�^��3�<D�j?��ى3��D8?�.C?oH��}�z�(�7��L?�m?��p>{E�x�~�fG�D�3����>�Ve?pA~?�-K?�V�>��E���쾐�E�3�s����Guo���I���֍������#j�=�2�>���>e�#?��B?��Z?��k?�!w?��}?R�?J�~?'{?OGu?I�m?�'e?��[?��Q?7}G?�(=?��2?o�(?��?�x?�V?"�?���>���>5��>��>�`�>7ܯ>��>��>���>w�>x>�#g>|WW>��H>�:>	�->�">��>Wr>F�>�o�=@��=}��=qU�=���=Z�=�L�=!T�=��=�7=�m=�]=H�M=�p?=u(2=��%=jJ=I�=>�=B��<fm�<]�<j�<���<^��<��<�K�<�܋<+'�<<r<ka<��Q<�4C<E�5<�
)<aN<�b<�8<~��;��w��I���b?I�=cU���?��n���c?�Jp���?�&`��	�>��>������>oYI?�|6��1�*�%?�o`?DRP��{�7����>W�x?%�K?��=�� ��|���a�ہ�q��=�?�j?��?�b?�T"?)�>�����ϫ��nO��,o��~�w�~�xOs�3!_��D��&�0]�Y�Ǿ�����o�(���V��=�SF>���>{��>�=�>�g?��?�o ?�~,?7?Wv@?�H?��O?V?]�[?z\`?8�d?&h??Mk?	n?�lp?�~r?bJt?~�u?�3w?%`x?�dy?}Fz?H
{?��{?G|?��|?�4}?��}?��}?`/~?�m~?z�~?(�~?��~?�?�;?4V?�l?��?��?��?L�?a�?��?J�?}�?��?�?��?��?Y�?c�?�?J�?C�?��?s�?��?��?��?��?Y�?��?��?��?b�?��?
�?�@-��m�0��>E�B?��x�4 ?�����>��U�l=�>�-V���~?Y@��8��3�?U⣾cc�o��>�h?�Zz���� �Ǿ�D(?�{?2w�>�>��Lx��H\��'��04�>@�V?$�?7�Y?K��>}=��Ǿ�;9���m�"��}t��9R��� �\�;!�)�:]�=��>��>�#?Ds=?�V?��h?�Yu?��|?D�?�W?�|?�v?�Vo?��f?я]?��S?�vI?�#??��4?��*?�� ?*D?!?�>?���>W��>v��>�S�>�ݾ> 3�>�L�>�"�>6��>n��>�l{>�Jj>jIZ>yWK>�d=>�a0>�>$>J�>|b>��>���=���=���=T�=�E�=�p�=R~�=
_�=k�=a�=w�p=�`=�P=�B=��4=�(=�n=��=(y=5$�<��<�Z�<�2�<��<]��<?��<)b�<΍<���<V�u<v�d<��T<��E<-8<�c+<�}<k<.
<u� < w<��z�>xfm?J&��o�E�G?%�u���}?U]z�s`?:��忽f�N?wn���;=�r?J6�z�_��b�>*;x?&=�k���@�ߕ>>=Cj?-Ub?�By>gm���s��o��k�<�?|l_?��?�k?m�0?.��>�#�<�Η� �#MG��rj�v|� }��>v��c��J�-,�Y����Ծ�$���s#�I$�OÒ=3>�߉>��>(�>R> ?��?	�?�L*?<05?��>?+G?��N?��T?%�Z?�~_?-�c?~g?�j?�m?��o?�r?4�s?O�u?'�v?�)x?�5y?�z?��z?P�{?|,|?~�|?!}?]�}?��}?f"~?Xb~?��~?��~?H�~?G?t6?uQ?�h?}?��?ԝ?��?`�?>�?��?0�?��?%�?��?�?��?��?��?��?��?��?.�?�?��?��?z�?8�?��?j�?��?P�?��?��?�2|�p��u�r?�.m=�^��{?�DM��+?�2�R�Z?��~���Z?J�U��:1��s?
`e<��|�koZ>��|?s <�v�V"���>��?I?�h����k�ަl�{�۾\<u>�5E?��~?�f?1?�;�=		��iy+�<Wf���~�Q�x��Z�
�*�4侘>W��U�<�q>3��>�.?j�7?�KR?(�e?�hs?~�{?R�?)�?�|?�w?��p?ďh?p`_?��U?�hK?�A?d�6?"�,?z�"?�?I�?e�?���>_��>�f�>���>pY�>�>+~�> 1�>Q��>>�~>�qm>�:]>�N>�?>��2>�y&>}>R>�\>*�=���=���=��=jͻ=�ˮ=���=�i�=+�=&�=�t=�-c=�kS="�D=�7=f*=�=�=T	=$��<���<4X�<���<���<Z`�<k��<{x�<H��<�ą<��x<�g<`�W<��H<��:<̼-<��!<�s<�<*I<��/>��w?D��>�����>�=H>6����=?WT7�e�?�����&��Zz?y�8�������?n>$��z��$>��?�E�>P��/_���~��NT?&�r?�S�>XCþ�Ag�یx�;#���ȽF��>)�R?~?s?�>?�k�>�B�=��s�6
�ܟ>�Z*e��Gz���c�x�7�g��QO�v2�����K�2����_;���~�ߒQ=��>��>��>�>Y�>�%?�o?�(?<3?G=?éE?J6M?��S?ǕY?n�^?�c?��f?'j?Xm?��o?��q?�s?(Hu?��v?��w?�y?D�y?�z?7v{?�|?#�|?�}?�q}?c�}?=~?�V~?ޏ~?+�~?��~?�?�0?�L?�d?}y?��?�?��?Y�?|�?D�?��?t�?(�?�?_�?�?H�?�?v�?��?Y�?��?C�?o�?s�?S�?�?��?Q�?��?=�?��?��?Q�ƾ�� ?��Z?B.�E���T�`?b��D5y?��x�s�?n\l��H
?��V>.gj�$TF?wf�>��|�8?���9~?�>p�_��?��~�>0&{?X2?�T��Y�D+x�������=�1?�z?� p?�'$?W>��r�U����]���|�;�{��Ja���4�I>���/�������I>��>m?{02?��M?}�b?Oq?z?�?7�?��}?��x?�6r?�.j?Q%a?�oW?�RM?LC?��8?�.?��$?�?y? �?]��>ٞ�>�/�>��>���>�ݶ>���>�>�>؅�>�z�>D�>��p>�+`>��P>�B>�)5>[�(>�>_B>�*>"��=��=��=�|�=>U�=!'�=��=�t�=�ю=+�=ogw=�>f=�FV=CiG=��9=6�,=Z� =,�=�.=	�=B�<�U�<i��<�E�<Wɴ<�<�<͎�<���<W��<�S|<S�j<-�Z<�VK<�8=<�0<B�#<�{<��<�<��k?�fG?Ӥ���;��t?�����h<�Oj>-To���<���>pW�DNz?��;��!�i$p?q9>2�ɯ�!8w?�f�>�b*�8t��eF��7?��|?�?DV{�
�V�<:~���8�Q�/z�>�pD?Kz?m�x?�eJ?{��>�!>[~7��#��l5��V_��w�^����z�M�k�:MT�D�7�Z�����|�d1S�<Y���<�p>B�p>���>��>��>yI
?��?�%?�B1?�O;?$D?�K?��R?H�X?=�]?�;b?�'f?.�i?�l?to?=[q?�Ms?	�t?auv?�w?l�x?S�y?��z?�V{?9�{?x�|?D�|?`}?��}?�~?eK~?܅~?��~?^�~?\
?D+?�G?s`?�u?X�?`�?C�?J�?��?��?��?L�?'�?:�?��?l�?��?��?
�?.�?�?��?�?:�?E�?,�?��?��?7�?��?)�?��?��?n�?��?�L#>y��ؚ�>��>s�J�N[n?{r�S�`?��"���=Jq?'��.��>�#?>d��ں���l?nJ�>Ni<�k�_�a��='(m?�P?-�'<�~B�E�~���&�л˛?�s?��w?�5?�e�>��!��%���T���y��*~���g���=�N��3|������rW">n]�>��?�I,?XI?M__?qo?�,y?�~?��?�4~?[�y?%�s?�k?]�b?�BY?/4O?8�D?��:?(]0?�T&?}�?g*?� 
?~~?���>���>�7�>�L�>N1�>$ެ>�K�>�q�>�G�>Ă>"�s>Ec>b�S>�E>g�7>��*>b*>2>��	>�q >�#�=ٚ�=n4�= ��=D��=�=��=���=7��=۲z=Pi=K!Y=_J=�<=V /=��"=s�=�	=�?=�G�<GS�<Ջ�<���<R2�<�z�<��<���<b�<��<��m<�k]<�N<��?<�n2<�&<m�<.�<��<aS?�#�I�|������Ag?�~n��?�Ⱥ�?/�>����E?><~��fN?�`���^��D?5��>�Wn�pnþ�z^?�O-?n����~�����I6?��?|t&?��ս�$B����)
L�����!��>1V4?Ǵt?��|?��U?ժ?)`b>x���nپ�+���X�bt��|�,�|��o�
Y�Y=�u�k ��\1��c�j�(VٽV�%<I�=��^>з�>l��>�4�>�f?mW?��#?�C/?ڎ9?�B?݇J?�xQ?��W?I�\?Tsa?ye?_�h?l?��n?��p?��r?��t?;4v?}�w?j�x?ԟy?�yz?�6{?��{?|h|?{�|?N}?e�}?c�}?�?~?�{~?��~?��~?�?�%?�B?+\?r?"�?��?ۣ?4�?�?(�?-�?�?#�?Y�?��?��?%�?�?��?��?��?[�?��?�?�?�?��?��?�?��?�?z�?��?��??�&�lg4���m?�飾*(���?/_!��?�N�����8�^?*�n��>r�[? �4�p��`I?`�2?�l�!�u�H�Խ͇V?�!g?�3>��&� ���2?��1��?ݲi?��|?��E?�)�>�������|J��wu�ǌ�i�m���F�?�Jx��j�׽B�=3ʥ>�M ?J7&?ҚD?;�[?�l?�w?��}?r�?��~?��z?��t?\Am?{�d?[?�Q?l�F?x<?�52?�"(?�S?N�?��?0?z�>Ȼ�>���>���>΃�>��>�W�>"]�>��>�r�>��v>9f>�RV>(�G>��9>)->>!>�!>��>P >�E�=���=���=�d�=Xݵ=�D�=L��=8��=<u�==�}=al=��[=u�L=��>=sM1=��$=��=��=��=s~�<�P�<?T�<�s�<M��<븬<o��<���<�0�<��<.q<�U`<��P<�DB<��4<�:(<�<��<J�<Z���f�R���B��5?;Ƽ>͆r��0w?kHT�ݻF?��Z�i�z?R�q���>ԯ�>��|�h?�j5?��H�H��^7?Q�T?�㐾��~�����>�|?jQB?�(=�;*�;�}��~\��Ѿ
>!�"?Im?�7?'�_?%$?'Z�>6�r������!�IR���p�ԓ~��(~�5r�Ȇ]�N�B���#��!��Pþ�:����;�*��(�=��L>ڢ�>�O�>��>#~?;�?�J!?�?-?��7?�A?�*I?ZGP?�~V?��[?��`?n�d?�_h?Zk?�6n?��p?b�r?�ft?=�u?>Iw?�rx?�ty?|Tz?j{?��{?0P|?m�|?�;}?��}?��}?�3~?qq~?Ѧ~?�~?�~?�?�=?�W?]n?�?ǒ?j�?�?�?��?��?��?�?t�?�?�?��?��?-�?n�?b�?�?��?��?��?��?��?e�?�?��?�?i�?��?�?j菉���HB�<�vn?��Z�R��>Q�7�߁��mu�<���>ܣ5�=�~?G�8���T��{?�~�:R�H ?�[?����Mp�7���8?��v?jS�>���}�{�Q"T��뀾��>i$]?��?q�S?�|�>�8;uM׾��>��;p������r���N��L��ľ���%�=a��>[h�>�?
�??�0X?ij?v?�}?��?-?ް{?v?6�n?�,f?d�\?��R?֥H?�Q>?
4?��)?g ?��?nX?@�?�c�>�~�>�q�>�:�>*ս>{:�>nc�>�G�>8ߏ>� �>*z>��h>NY>13J>T<>!c/>�Q#>->i�>��>'g�=Up�=]��=H��=\8�=v�=��=օ�=::�=ʤ�=ro=��^=�aO=t�@=��3=1$'=��=��=�=��<SN�<��<�
�<F�<��<�Ѣ<6��<���<�5�<�3t<�?c<�xS<]�D<� 7<!j*<[�<ג<�S	<��[�nZr���:b�?�<���+��"m?���C+~?��A�u?e4�	�=�1?}jz���H>R�d? `�ޡN��j?�:p?;���|�s�H�1���>
>q?�Y?�C9>M�p�w�dj�.� �\ ]=��?d?��?�Ch?��*?^�>
-�:[������J��zl�7}��*��u� �a���G�:�)�z	��OϾ�����|�0����.�=\;>f��>T��>�>\�?7'?Y�?�6+?n�5?�x??��G?�O?$qU? [??�_?�d?�g?�j?��m?�,p?�Fr?�t?i�u?Ew?{@x?-Iy?�.z?��z?�{?�7|?�|?U)}?��}?��}?�'~?	g~?͝~?=�~?T�~?�?�8?pS?�j?�~?�?�?�?6�?��?j�?��?�?��?M�?k�?��?�?��?�?�?��?K�?��?��?��?��?F�?��?t�?��?W�?��?�b�E�s�u�%���<?��>�}�96\?����P�>�n��t2?+Ir��hr?6Zξ���i}?���ss��:�>�eu?�n���|�X ��y�?�~?�v�>��Ǿ��r��Me��B���H�>�N?��?�[`?��?:��=.峾%E2���i�����v�v^V��%��Qپ>3A�V�)=
 �>���>�?Ş:?/[T?�[g?�^t?3|?&�?��?�{|?"*w?�p?��g?��^?�T?fxJ?&@?��5?��+?��!?�/?)�?�?�J�>(?�>0�>���>_%�>Ag�>%n�>2�>T��>@·>�)}>��k>��[>��L>�>>��1>�d%>~ >b>�|>���=�Z�=�Z�=�s�=P��=y��=���=ml�=1��=pJ�=	�r=E�a=�	R=dwC=��5=rH)=:�=}�=�m=���<�K�<��<���<>m�<;5�<�<pu�<7Ύ<I�<Uw<Z)f<�.V<6PG<�y9<k�,<ѝ <,w<�<Z^e��G��~)C?%�,?�f�X�>D�?5Q�"Sg?��`���7?�T��!����Ij?��V�w;��}?�U��f�o��ґ>�I~?��><�^���Q����=��_?[�k?d��>ҥ�4�m�jt�����l<�T��>�-Y?�?��o?9�7?���>��{=r���{����B���g��f{����N�w�{�e�
�L�T=/����9,۾y����/���R��Iz=�()>Z�>���>y|�>\5�>z�?|�?�()?5/4?��=?"eF?Q�M?C`T?�Z?�_?�`c?�&g?oj?�Im?�o?��q?��s?�ku?��v?�x?y?fz?v�z?X�{?�|?��|?�}?\z}?��}?�~?~\~?��~?T�~?z�~?�?�3?�N?�f?>{?�?p�?ȩ?V�?W�?�?��?�?��?��?��?c�?��?K�?��?��?��?�?`�?��?��?f�?'�?��?]�?��?F�?��?}o~���P��E%>�v?6�:)��T~?�dp�OX?�Z�ՙs?�~��|;?�����N���b?�(>���}g�=,�?��=	3n��(����>8�~?h?�Rz�id��fr�a�����=>Ì<?�F}?��j?|�?W�&>z���%�E�b�~��-z� e]�`F/��
lk�$�;��_>�/�>}?!b5?�\P?�}d?�}r?!+{?V?�?�1}?�;x?Zqq?hJi?�+`?|hV?DL?��A?��7?mu-?�#?�?Շ?f�?�.�>���>Ҥ�>#�>it�>��>x�>��>�t�>�{�>R&�>��n>��^>@PO>�A>��3>x'>��>�/>�*>��=VE�=��=@��=4�=�د=Q��=�R�=!č=��=��u=ߋd=��T=P�E=�48=�l+=w�=Zu=�'
=� =VI�<t��<�8�<6��<bs�<]��<�f�<<⒆<rvz<%i<��X<�I<��;<��.<G�"<�[<i�<���e?Ǥ|?-w��*xt�>@?�z�Q���<	?G�Yi�>0�=�O.���?���e����|?�ߤ���%=d~?ٕ�>l@��i��+��BPH?�;x?n4�>Ǧ��rS`�I�{�a)-������>X�L?n�|?3�u?ݵC?գ�>J3�= Y��� �E�:���b��$y������y�oi��Q���4�}��H��5���F��`���,=�,>�Nz>R1�>j��>z@�>�?FO?�'?_[2?�F<?��D?��L?TLS?"Y?�9^?��b?R�f?��i?s�l?h\o?�q?�|s?<'u? �v?�w?P�x?��y?ܲz?8h{?h|?��|?�}?�i}?��}?Q~?�Q~?l�~?R�~?��~?�?f.?zJ?�b?�w?�?�?��?o�?��?��?F�?��?��?��?	�?��?�?��?F�?b�?5�?��?(�?X�?^�?B�?�?��?E�?��?4�?��?W@!��K���6[?��$?�5^�I�Ǽ�8?q�w���?���-|?�{V�4n�>�&�>��v��H.?�4�>�pv�7qA�7�y?���>��S���L��h>��v?�9>?�����Q��1{�})�"`�=��(?�Jx?�Ks?��*?
�w>�T�L���Z���{���|���c�T&8��1�ל������;> 4�>eS?H�/?6L?�ya?]zp?�z?y�~?��?��}?M<y?z�r?��j?��a?� X?�N?T�C?�j9?4/?$3%?�{?l?s	?$� ?���>�;�>��>E��>���>I��>q�>?�>Z(�>s��>��q>Ga>C�Q>�{C>�6>�)>��>��>��>��=�/�=	��=���=I�=
�=败=9�=��=���=٤x=rfg=�YW=7iH=��:=�-=��!=5P=��=\,=�F�<�u�<���<,?�<���<��<�W�<�k�<{A�<ܗ}<��k<ؚ[<�[L<�+><��0<��$<�?<�<��F?M�?p7?�C��<����?t	1�_Q�>w�a;2�Ƽ[�1���?
�k�¬n?����v�;�U�b?\��>d{�aQ`�ܷo?+�?���zMy�����Q+?�~?�	?�vE�|UO��Z��b@��cy�;H�>��>?�hx?Jmz?��N?�H?i�9>�� ����x�1�[]��pv�%����{���l�V���9��a��u�Q���^ \�HJ���ǻ</$>��i>���>E�>V@�>?4	?��?��$?��0?��:?:�C?�_K?Y5R?p.X?e]?��a?!�e?EXi?�Wl?u�n?�5q?-s?��t?�\v?ҥw?�x?e�y?אz?�J{?��{?{w|?z�|?PY}?%�}?�~?G~?�~?5�~?��~?�? )?�E?�^?pt?$�?V�?\�?��?�?#�?�?��?��?��?U�?-�?��?b�?��?
�?��?��?��?&�?4�?�?��?��?-�?��?"�?��?�_�>��I?��r?�׽0>y�j�?� >U|'�#Y?��`�wJ?����ⰼn�0?$�~�]��>JF7?��W���C�c?�?gO/�ߡg�J8=Eg?0�W?��y=8j:�O����.�m�5�H?��p?�y?h�:?�Y�>����1��tQ�}x�ð~�o�i���@����D������E'>���>b|?lq*?`�G?5P^?.Tn?h�x?V]~?��?�`~?7+z?��s?-7l?Vcc?4�Y?a�O?Q�E?`,;?��0?�&?%?�?ɟ
?~�?�s�>���>x�>��>��>���>��>��>�Ԍ>?H�>5�t>d>�kT>��E>I8>ޝ+>��>;�>��
>� >��=��=�	�=ɣ�=];�=t��=��=�M�=@;�=��{=�@j=�Z=�J=��<=$�/=�#=+=��=��=RD�<:>�<zf�<!��<��<�*�<I�<[:�<��<�\�<��n<�P^<��N<�@<G'3<3�&<)$<�^<s?�b?����֒~�s�i>:H?��|���A?t��D�>*?���[?���!9?��=��j�T�2?��	?�d��w꾁�S?ʍ:?xھQ��YDܾ~�	? �?:u/?�wx�7';�P���cQ�����,�b>/?�r?	�}?��X?�/?�;v>E�ν�eѾ��(��V��Ls��A��;}�1p��qZ��?�Q��T���'����#r���	z;�!�==PY>�=�>f]�>75�>��? �?��"?�.?9?! B?&J?XQ?#8W?(�\?W5a?Ce?f�h?*�k?@�n?��p?9�r?��t? v?�pw?>�x?��y?gnz?�,{?��{?a|?�|?|H}?��}?4�}?<~?�x~?��~?g�~?�?�#?KA?�Z?�p?#�?��?�?��?V�?��?��?��?��?�?��?��?��?��?z�?��?��?E�?��?��?�?��?��?z�?�?��?�?u�?��w?��v?��>lWJ�-����z?߮�Ռ޽��>Xy���>�ⱽ��۾�+j?d�d�D��=S�e?Z�&�_0,�l�>?�f=?�9�K�x�����O?��k?�|Z>`r�S��}D��#����>��f?�}?�7I?���>n�q����vG�?Qt�ɽ���n�̑H����̣������$�=/��>e�>ȿ$?DtC?�[?�l?�Ww?��}?V�?��~?�{?su?��m?��d?7w[?�|Q?w=G?�<?��2?Տ(?ɽ?F??f?re?R+�>�c�>ot�>dZ�>��>L��>Wԣ>�ј>π�>�؄>�w>��f>=�V>�?H>�:>{�->P�!>c�>U4>�>��=�6�=��=z��=�l�=�ɩ=o�=��=���=��~=�m=�\=�ZM=�?=Z�1= �%=�=�U=�b=�A�<��<n��<�<�-�<DA�<S:�<	�<���<X�<��q<�a<�gQ<��B<�V5<��(<}<�!<r�>^·�/�m���i�T?�J>"�a��{~?>�f�_sZ?�i�R?�Ag����>EH�> c�d��>�tB?Ep=���*��:,?/g\?e�m��}��F��i�>�z?HH?詔=$�׻|���_�m�ܾ��>�C?kBk?��?ǻa?�w ?��>�8�5������hP�ùo�xK~�<o~���r� �^�s�C�8T%�@��-ƾ~���m��z����=��H>���>'��>c�>b�?Z$?� ?��,?�\7?M�@?X�H?U�O?'?V?�[?�w`?+�d?�:h?__k?�n?�zp?i�r?�Tt?r�u?�;w?�fx?yjy?�Kz?�{?̷{?_J|?c�|?r7}?Ζ}?k�}?�0~?�n~?��~?4�~?~�~?d?�<?�V?wm?�?�?Ԡ?��?��?1�?z�?��?��?>�?��?��?m�?t�?�?W�?N�?�?{�?��?��?��?��?]�?��?��?��?e�?\�;?B��>j��A}��d">l�`?�h�"g�>�|��.μ�$���S�>��B���?�,��ވ�{}?��;� Y��u?��`?����)��䱬�I2?��x?���>�5�J�z��JW�|9��y�>��Z?��?�&V?��>�u�<{nѾW�<�Ao����DEs�ZP�_��D�Ǿ��ୗ=���>C��>��?��>?ڎW?9�i?��u?��|?8�?�=?]�{?'9v?H�n?~qf?�]?V,S?��H?�>?ZX4?W9*?�Z ?|�?C�?��?���>��>���>���>�8�>��>S��>J��>h,�>�h�>@�z>�yi>2�Y>=�J>��<>��/>�#>md>��>�>���=���=8�=Y�=���=kԫ=��=�ה=Y��=��=��o=lQ_=��O=�hA=��3=S�'=��=l=(�=D?�<���<`��<z�<�k�<�W�<�+�<�ח<CM�<~�<I�t<�c<j�S<�6E<م7<�*<��<<�<.��n�;�b�Q{>��|?5����Yվ�8a?�_~�=�?pw��o?�&���<��<?�v��M>�cj?���]U����>�s?��p� �7�� p>b�n?��\?vQ>�
��Zv���k���e==�D?�^b?��?��i?�-?�"�>��8<!q���!��uI�ٹk��|�L���u��qb���H�a�*��
�|PѾ�掾u=�F����=�8>�$�>㾷>!��>�?��?��?��*?�5?�4??4�G?R�N?CU?J�Z?��_?i�c?ũg?&�j?�m?<p?�7r?�t?�u?tw?�7x?�Ay?H(z?�z?L�{?h3|?}�|?5&}?އ}?z�}?�%~?Fe~?F�~?��~?/�~?�?�7?�R?�i?~?q�?��?��?�?��?.�?��?��?f�?,�?M�?��?��?��?��? �?��?@�?��?��?��?��?A�?��?q�?��?T�?+M4������y�!l���I?�^�>��y��d?���ǟ�>�$�C;?��u�E�n?W�����|?�F��k�u��6�>�&w?�˼�C	|������?�Y?���>���dfq���f�`þ��>�iL?��?�za?�b	?A�=]X��^ 1�PQi��j��w��W�,�&��c۾xaE�W=>7�>�b�>;�?_:?#�S?g?�0t?v|?/�?��?|�|?�Ew?=p?��g?9�^?��T?
�J?�S@?/6?��+? �!?�Y?\?=?���>���>�M�>���>�_�>��>���>Sb�>�ב>���>�x}>�4l>�\>qM>'�>>$�1>R�%>V1>��>�>���=���=A��=���=�κ=�ޭ=;ӡ=i��=�+�=t�=s�r=S�a=�LR=еC=�!6=�~)=��=S�=i�=�<�<U��<Q+�<���<��<�m�<��<z��<���<��<�w<�rf<AsV<�G<"�9<��,<%� <�< |�2Y�:�_�4�P?*J?�=n��_>�_�>a�G���`?e
Z�;�.?@��������n?�Q��3�',~?j#���"r�nq�>��~?�3>�5\��YT���=K�]?�/m?wo�>Ƙݾ+�l� Du�t���d�pq�>4X?W�~? Vp?2�8?׳�>�(�=Mƅ���
�-B��Ng�3{������w�f�fKM���/�d���Uܾ������1�h[��r=Yc'>s��>��>���>{��>�C?mm?��(?E4?��=?�AF?V�M?/ET?N�Y?��^?�Nc?g?�aj?>m?Ժo?��q?,�s?eu?��v?�x?�y?�z?*�z?}�{?,|?[�|?�}?�x}?b�}?n~?r[~?Ó~?��~?��~?e?3?�N?Rf?�z?��?0�?��?&�?.�?��?d�?��?��?n�?��?T�?��??�?��?��?y�?�?[�?��?��?c�?#�?��?[�?��?D�?�gl��&��}L��>>� ?����G%�c�}?��q��TZ?ɔ\���t?��}��S9?cm3��EP�5�a?/�1>���-�=��?�>�m���)�*R�>�~?d_ ?(�u�,�c�\�r�P���:>s<?w*}?�k?�S?�)>~f��a�$��b��
~��Dz�T�]�>�/�����l�p��:�^>H��>��?a:5?0>P?�gd?^or?�"{?AS?��?�6}?�Cx?${q?�Ui?8`?uuV?^QL?�B?��7?��-?Ō#?`�?��?��?^D�>	�>3��>`5�>���>N��>T��>�)�>R��>��>	2�>��n>�^>YcO>^+A>/�3>��'> �>=>N7>W��= [�=5&�='�=���=6�=���=/a�=[э=`��=�u=3�d=o�T=�F=�E8=�|+=\�=7�=�4
=� =�_�<@��<�K�<9��<%��<��<.u�<q��<t��<؍z<�(i<�X<��I<k�;<	�.<y�"<�i<tľ䎦��?��{?����n�r��~C?8�녧���?>��x�>q>M�0��?q�����Q|?� =��C�|`�<��}?���>h?�eKj�M�����G?�x?0�>Dâ���_��{���-����)��>�@L?%||?B�u?�D?��>N��=m{W�V1 �nV:�$zb��y������y���i���Q�v�4���M;�'t��8�F����N�)=�>��y>���>o��>��>;�?�=?$'?�M2?�:<?��D?c�L?9DS?�Y?U3^?]�b?��f?o�i?��l?UYo?>�q?�zs?9%u?a�v?�w? �x?��y?߱z?]g{?�|?��|?}?ui}?"�}?�~?�Q~?&�~?�~?V�~?�?>.?XJ?�b?�w?�?ԙ?��?`�?��?��?=�?��?��?��?�?��?�?��?C�?_�?3�?��?&�?V�?]�?A�?�?��?E�?��?4�?�bR�@)���r��yV?59+?
FZ�)�V�Iz=?�Py���?�����|?��X��f�>͗�>��u���0?j�>Q>w�%Z6�
Xz?��>)U�CBK��Zp>�iw?�=?�ʽ�gR�=�z� �gݚ=Z�)?f�x?2�r?�D*?Lt>Y�W������Z�i�{�2�|���c��7�N� ��Ɖ�(�~�<>���>�?�50?�aL?��a?Əp?Uz?t�~?��?��}?S2y?��r?�j?�a?X?��M?�C?�X9?!"/?�!%?k?/?�	?Uy ?���>!�>�{�>���>���>Ul�>��>�,�>�>Q��>��q>�*a>��Q>XcC>�5>�u)>��>d�>i�>��=��=��=�h�=�0�=��=⟥=�%�=�v�=���=E�x=Ig=8>W=�OH=j:=�z-=+q!===��=�=	(�<.Y�<ٴ�<Y&�<o��<,��<�C�<Y�<(0�<�w}<��k<�~[<�AL<�><~�0<͙$<Y,<(�?X/@?��?��?�O>�m��ҥ?Z%,�vh>���<��9�����?Ij�Kp?�؍�9��[d?Ą>�{�V�}�p?!�?:���x�\����,?�~?��?��J��P�]D�N�?�6du�Q�>�*??��x?�Cz?�PN?w�?�N7>:�"�-�꾾12��>]���v�����{���l�\�U�k�9�(�������=[�������<"�>��j>�	�>�b�>[~�>�O	?K	?Z%?�0?L�:?��C?~lK?�@R?K8X?�m]?�a?��e?�]i?u\l?��n?�9q?P0s?��t?e_v?�w?��x?��y?7�z?�K{?��{?`x|?@�|?�Y}?��}?X~?rG~?p�~?��~?��~?#?W)?F?_?�t?B�?p�?s�?��?�?2�?�?��?��?��?\�?3�?��?g�?��?�?��?��?��?(�?5�?�?��?��?.�?��?#�?��=NdT>��8?�[y?�B��93}�j�?�qh>K�3� a?�og�dR?�c� ��<��(?������>��0?,\��;׾�f?�
?��3�ze�q�q=�3i?�PU?�4=&&=�/F�y,���"�?��q?�y?�9?b�>$3���	��R��x���~��i�=�?�� 
����4��_5>�ȳ>>?�+?cH?˪^?2�n?��x?�m~?��?rR~?�z?9�s?gl??7c?K�Y?ەO?%OE?Q�:?`�0?�&?h�?��?�u
?G�?>'�>C��>��>q��>0��>�P�>2��>}֖>ӥ�>O�>bt>[�c>C$T>�E>�
8>�c+>Q�>��>oW
>&� >��=�3�=���=�a�=���='��=��=D�=�=�_{=��i=��Y=��J=3�<=y/=�K#=��=$k=��=`��<��<��<yd�<���<a�<��<��<���<�0�<�n<�^<�N<�B@<��2< ~&<�<��?�nz?["1?H�g�A���>�S?8Qy��6?>8��P��>n=��T?��g�@?�q=
�f���8?��?Hh��ݾK�W?�A6?�c侐��g6Ӿ`�?+�?ȁ,?��B�=����ˣO��Z����l>�0?lUs?�i}?T�W?��?�o>�q۽XԾe�)�F�W�+�s�}V��}�ݲo���Y��u>�tP���������6�o�\�� ��;��=![>��>d�>g��>��?t�?V#?��.?C29?�HB?�@J?k:Q?GSW?֥\?�Ia?Ue?	�h?��k?�n?�p?#�r?s�t?�&v?�vw?K�x?�y?3rz?,0{?��{?�c|?1�|?WJ}?,�}?��}?E=~?�y~?�~?0�~?i?a$?�A?I[?[q?x�?�?[�?Ư?��?��?��?��?��?*�?��?��?�?��?��?��?��?M�?��?��?�?��?��?}�?�?��?�?�-\?��h?��~?g�?�1�ܿ)���r?�����\���?�T����>Y+�����Tb?�k��>f_?t�0���"��EF?�5?��
�L�v�,��͞T?"�h?a�>>��$���
�@����B ?��h?(>}?�F?��>�U��%��QI�d!u�Μ�P�m��,G�O�����U�ݽVs�=S��>���>��%?;CD?�[?�vl?>�w?i�}?b�?}�~?<�z?�t?,\m?k�d?,[?�.Q?-�F?ə<?;W2?IC(?�s?��?��?$?��>���>��>F��>ޭ�>M4�>}�>��>/4�>��>�w>uAf>D�V>��G>#:>xQ->�c!>�D>_�>�>>O~�=���=3�=���=�=cl�=Q��=���=Q��=�9~=��l=�/\=��L=T�>=,w1=�&%=۰=`=>=���<��<���<���<�ƹ<��<G�<3��<�Q�<���<�Jq<��`<��P<CrB<g�4<sb(<��<��?,
�>�"нz\�TK8���??1>�>u.n���y?�5Z�i M?�x_��c|?��n��@�>���>x�}��g�>mj9?�E�s�!��4?�W?s2���2~����H�>�{?�D?��G=�k(�ͅ}�)�]�ÎԾb�>�]!?�l?�S?�4`?Z#?ɛ�>�Fa��#���� �؛Q��ep��~~��>~��kr���]�{C�R^$���_+ľ���J���B��f�=6�K>��>3˿>'7�>)I?.�?&!!?2-?��7?*�@?�I?�1P?�kV?��[?�`?׻d?�Th?�uk?N.n?��p?"�r?{at?��u?)Ew?:ox?�qy?�Qz?{?��{?tN|?��|?�:}?v�}?��}?�2~?�p~?/�~?��~?��~?]?u=?�W?n?��?��?=�?�?�?v�?��?��?	�?d�?�?�?��?��?%�?h�?\�?�?��?��?��?��?��?b�?�?��?�?��d?�`?�/?�'��O����ݼ��r?ߌT�SE�>?��<�N��g=Xq�>f0�l ~?�C=���=���y?����CO��?��X?t��p-�_����::?�.v?E�>,��?/|�)�R�z�2�>^^?�?CS?���>�1���پf?�F�p�����6r�pAN�����¾5��&5�=��>�`�>H` ?�@?�mX?>j?7v?D)}?/�?�&?^�{?�u?"�n?�f?j�\?��R?�H?4>?��3?��)?f�?�j?�>?�w?�4�>�Q�>�G�>�>���>A�>]B�>�(�>.>l�>Z�y>.�h>��X>�	J>d-<>?/>�/#>��>:w>\�>|4�=#A�=iw�=Y��=?�=�R�=�s�=g�=��=#��=u@o=t�^=�6O=r�@=Pu3=�'=�j=��=�=	��<��<���<���<Fݻ<�Ү<���<�d�<@�<x�<� t<kc<�LS<��D<��6<�F*<tt<�i�>$����R�@�v��\���?�m��̮��p?+���|?���M�w?V�9��N�=Ya,?��{��u^>�=b?�A�J�K���?E�n?�	��Y�t���/��l�> r?DBX?Q"0>|��?x��?i�������v=4�?�d?��?��g?�*?�>:�0�q���ɣ�:K�g�l��P}�F���t�~a�ɉG��P)������ξ�3����:��ƥ�=
9<>%�>Fr�>Ӆ�>��?�Q?�!?�W+?�6?r�??O�G?-&O?I�U?[?K�_?!d?��g?� k?v�m?3p?MLr?�t?��u?�w?�Cx?�Ky?1z?��z?�{?$9|?u�|?�*}?��}?��}?�(~?�g~?`�~?��~?��~?J?9?�S?�j?�~?�?�?�?U�?�?��?��?"�?��?Z�?v�?�?�?��?�?�?��?O�?��?��?��?��?H�?��?v�?��?��=��>���-a��oD�o?��?`��Z�I?�����>��ž ?��i��hx?���S���dF?ҖX��rn����>�lq?��%�Qm~������?#
~?Ǹ�>�־��t�;b�I����`�>e5Q?Y�?�^?L�?7C�=4���4�4�pLk�K����u���T��$��*վ@�8�K�I=U��>� �>;�?[�;? U?�g??�t?uc|?F�?�u?:U|?�v?;�o?�rg?3+^?qNT?�J?%�??�~5?�Y+?�r!?��?��?��?>��>Z��>��>�3�>���>���>�>cћ>�O�>�y�>G�|>�Vk>WC[>�@L>q>>>�,1>#�$>Ξ>�>�'>���=���=���=��=c�=�8�=�8�=s�=٥�=E��=5�q=(!a=m�Q=��B=ps5=N�(=�$=�<=�=[I�<״�<�X�<��<��<�ð<�~�<]�<�r�<Z��<�v<@�e<�U<��F<P9<+,<(7 <ގ~�v}��3w�@��4)$?ϊH?4�S��V<��?/a��
r?`l�Z�G?�Ͼ��w���a?�]`� ��C5z?=P��M�j�(L�>۠|?��=G�c���K����=R�c?��h?�ѕ>e���p��r� ���_׼��>v[?�l?6Rn?�A5?ֲ�>�6K=|���$��{D���h���{�����"w�S�d���K�E'.�����ؾ�H��|e+��;B�ل=p�,>���>��>���>�`�>�?q?��)?�4?�2>?ΫF?-N?T�T?$BZ?�4_?��c?�Eg?>�j?�am?��o?��q?_�s?(yu?3�v?�x?�%y?�z?
�z?�{?�#|?ȧ|?T}?�}}?��}?~?�^~?{�~?��~?��~?)?�4?�O?xg?�{?��?�?6�?��?��?I�?��?8�?��?��?��?��?��?a�?��?��?��?�?k�?��?��?n�?-�?��?b�?��?�G�v�5��hg��s�g���`�z?_X�L�P�ղ~?Z���:?N@���c?>����Q?�v���:���n?̍x=<;~�	�1>/5~?6�/=�it��`���>4�?�0?�P���i�|�n��
�A=d>��B?�^~?I�g?��?�>���g�)�*Be���~��y�7"[��=,�KD�5z]��y<�k>�m�>t6?�"7?ݳQ?,ue?
!s?�{?�t?^�?��|?%�w?jq?��h?f�_?��U?��K?�[A?!7?��,?.�"?K?V?�?�9�>�>���>eS�>���>۴>E˨>py�>ݒ>X�>�B>u�m>g�]>�wN>IO@>�3>%�&>�K>��>J�>���=N�=�+�=�$�={&�=��=.��=˱�=.�=dd�=�t=֙c=N�S=�E=�q7=�*=o�=
�=Z�	=� =�K�<s��<�\�<�	�<-��<\M�<���<��<<�<�ly<h<��W< I<�;<l.<��!<�^ ��@4�Z�ھ`7�>�~?5�M>���3?�>�=
���.?N�(�՟�>Ӽ���P}?�.��:�?�Q�|�&��=��?�I�>ztK�`�b�o��@�P?�t?�C�>�湾�4e�Z�y�KW&�P��m0�>;�P?:�}?��s?��??V��>Uu�=��k��Y��c=�{ed���y�c���y�g<h��P���2����㾏M���>�6z��/F=[#>&�>d��>��>�:�>w�??6�'?��2?z�<?ptE?�M?�S?'rY?\^?��b?O�f?�j?��l?:o?(�q?<�s?>u?�v?)�w?/�x?��y?	�z?�q{?�|?�|?�	}?go}?H�}?j~?^U~?�~?��~?��~?�?!0?�K?d?�x?�?��?P�?�?>�?�?��?L�?�?��?D�?��?4�?��?g�?�?N�?��?;�?h�?l�?N�?�?��?M�?��?��r��%}��Ri�u��z�?3a?0[%��!��9e?���Zw?v�v���?�n�g�?��>>nh�ڢI?"�>�}�-����~?��{>��a���<�f*�>�{?�{0?��'���Z���w�D�	����=vK2?R�z?�o?#?�R>Rw�/��Y~^�v�|���{�x�`��4�q��Hꀾ����<L>���>v?��2?t)N?��b?�nq?#�z?_?��?�}?,�x?�"r?jj?�a?�TW?�6M?��B?�8?�d.?i$?c�?k`?�j?u��>6t�>s�>�q�>��>延>ݎ�>!�>�i�>�`�>���>jp>&`>��P>�_B>5>�(>_�>E&>�>VV�=e��=���=eU�=�0�=��=���=W�=L��=~ф=�7w=�f=*V=�BG=�o9=ґ,=G� =@s==�l=���<[*�<��< �<_��<�<�p�<V��<y�<�"|<�j<�WZ<`/K<8=<��/<��#<��>Bk>���>O�e?��O?�{�^nC�ڎp?���D�Y'�>�w��qU=싷>��S�u�{?�3ؾ���R�q?I>���ѽK'x?r\�>��,��&s�a�;��q9?��|?H�?
�����W�{~��7��J�C2�>�ME?ɍz?�kx?�I?q=�>�^>`�:������5��_���w�~����z�Nk��T�o|7�b����� A����Q��˩�OL=��>
�q>6�>�=�>��>%s
?�?��%?Z_1?Fi;?;:D?{�K?��R?!�X?1�]?Gb?^1f?��i?p�l?�#o?�`q?`Rs?Du?yv?/�w?/�x?��y?��z?X{?��{?с|?o�|?a}?ߺ}?�~?L~?n�~?��~?��~?�
?�+?H?�`?	v?��?��?f�?h�?μ?��?��?]�?6�?F�?��?v�?��?��?�?3�?�?��?
�?=�?H�?.�?��?��?8�?��?V#{��T�ލ�C�>{?��>�y��>�>�&?88a�˹y?�{�Z�n?�9���j>�� ?�*~�A8?�Q?Ɠl��0���r?�Y�>�aF�]X�{�>݀q?�(I?� �m�H�y}��G ����<�s ?e�u?�v?�p1?���>Q6��#�uW��z���}��6f���;�8/�t뒾��W�I,>g��>�	?	�-?^�J?�9`?�o?̄y?n�~?\�?�~?�y?�8s?�[k?�pb?��X?!�N?�rD?�:?��/?��%?�#?�?
�	?|?���>�D�>a��>C��>��>�Q�>$Ƞ>q��>ԋ>X�>'�r>�_b>1�R>YpD>��6>�_*>��>ǵ>�	> >�Z�=���=���=�:�=��=D��=i��=~>�=�>�=M�y=#�h=jX=�fI=�m;=�l.=R"=t=��="�=�y�<B��<"��<Z6�<���<��<�<%�<��<��~<�'m<�\<�^M<�?<�1<B%<}.x?.�a?��u?�ep?3G>��m���^���w?�Z�i�>�Qa�ƿ<>E��00?�0y�l<]?����nQ�TR?ϟ�>�t�y}��Kf?)�!?����}�4٩��V?��?��?D��v�G�����yG�|����>E�8? Hv?��{?f�R?��
?PR>��	�M�߾5.���Z��;u����Y|�q+n���W���;���W��"����d��ν5%z<��==:c>��>Fj�>���>� ?Y�?�%$?o�/?��9?3�B?��J?��Q?�W?9]?ӥa?�e?�i?E&l?��n?�q?�s?��t?�Dv?��w?İx?��y?�z?�>{?��{?�n|?��|?�R}?S�}?��}?�B~?F~~?�~?��~?n?�&?D?@]?s?�?L�?v�?��?Z�?��?��?k�?e�?��?�?��?J�?3�?��?��?��?m�?��?�?"�?�?��?��?$�?��?=�.?
��>�g?#_j?��Y?H����h�!�A?Q{�8B�QVB?�M���3?Hsо7��J.C?�{��J�>ŬE?�GL���h[?�?�	$�@m�1�Q���a?��]?���=��3�H����4��虽9?Imn?Y�z?U�>?���>�齅#���N��vw����k���B����z����Y���H>���>��?q�(?!�F?r]?��m?!ax?�3~?��?�~?�gz?�Ct?A�l?�c?�AZ? <P?��E?h�;?d1?�U'?7�?�?;?2Y?\-�>���>���>���>e{�>L�>�n�>���>�F�>��>�{u>��d>$U>��F>��8>Z+,>Q >1E>(�
>�`>���=X9�=u��=zD�=�д=�J�=���=�Ƒ=���=�|=�k=նZ=ӊK=�k==MG0=�$=��=l=G5=h�<'��<:�<�L�<���<k��<�͟<���<�b�<xǀ<��o<�	_<�O<%A<d�3<�A'<��:?ˤg?�fU?f��>v����r����>�'?G��#�Y?��&�5�?�6���i?L�}�Ϧ%?c�G>x!s�Ҫ"?9J?��[��i��gJ?�D?V��������/��>Ӫ~?Cs6?=�ͼ�E5��F��U��l����I>Q�*?��p?)V~?�B[?p�?`�>^P����ʾ%&��;U�ncr��	��}��p���[��W@��^!��q ��ｾ>�w��B��§�P{�=}�T>�<�>���>��>L�?/�?�O"?$&.?��8?\�A?��I?��P?�V?xT\?a?Ke?M�h?�k?ujn?��p?��r?݈t?�v?�bw?��x?�y?'ez?�${?�{?
[|?��|?�C}?��}?��}?9~?v~?˪~?~�~? ?\"?@?�Y?p?U�?	�?��?�?�?H�?k�?w�?��?��?n�?d�?��?��?_�?��?��?3�?��?��?��?��?��?r�?�?��?h�{?u�z?�+~?$�l?���>�Y�����~?���d�����>��<T�>�Aܼ����;o?u_����<�Lj?M����2���8?��B?�q��2�z��5�VeL?��m?R�n>�����~�:*G���2����>�xe?9~?MK?n��>I��O��2F�q�s����go���I�b��EQ��o���mI�=qd�>(�>��#?H�B?ĎZ?��k??&w?��}?��?�~?�${?�Cu?5�m?b#e?��[?��Q?
xG?�#=?f�2?n�(?��?0t? R?ڕ?_��>��>���>/��>Z�> ֯>��>J�>���>��><x>pg>�OW>��H>j�:>��->��!>��>Mm>��>�f�=��=���=`N�=�=:�=�F�=�N�=��=�.=Z|m=�]=ܮM=�i?="2=��%=�D=�=k�=H��<e�<RU�<�b�<�y�<��<>|�<hF�<�׋<x"�<`3r<�ba<3�Q<�-C<��5<�)<��8���K>9k�=Ӆþ��v��Z��a?_��=)uV���?�5n�}-c?��o�O�?v�`�'>�>+�>���L�>s�H?X7��(1��0&?7`?>�R�A�{�,#�C�>�x?EFK? ��=�� ��|�ظa��⾲��=��?�*j?�?H�b?
."?�М>)���Z��J��!�O�A8o�M#~���~�XGs�G_���D��	&�xL�ȨǾ�v��.1�;
��6�=��F>���>�>P�>�o?5�?[v ?��,?$7?�z@?�H?R�O?�V?�[?�^`?+�d?�'h?�Nk?Qn?�mp?~r?9Kt?9�u?h4w?�`x?ey?�Fz?�
{?M�{?WG|?��|?,5}?Ք}?��}?�/~?�m~?��~?>�~?��~?�?�;?@V?�l?��?��?��?R�?f�?��?N�?��?��?!�?��?��?[�?d�?�?K�?D�?��?s�?��?��?��?��?Z�?��?��?�[�>�>?g�;?3��>H���.M}�gI!>R�`?�h�S�>���[qԼ]�����>f�B���?��,�&����v}?xξ��X�,�?Ȅ`?�͝����s����U2?��x?m��>�A��z�LDW�5$�����>��Z?c�?#"V?J�>C��<�zѾ��<�#Co�����Cs��P����թǾ2���ɗ=��>���>��?b�>?+�W?'�i?B�u?�|?H�?y=?�{?�8v?��n?�pf?�]?�+S?�H?K�>?�W4?�8*?0Z ?��?��?r�?���>)��>���>ƣ�>�7�>[��>���>���>�+�>>h�>(�z>�xi>>�Y>Y�J>޹<>!�/>,�#>�c>^�>C>���=���=F�=9X�=ߜ�=�ӫ=#�=�֔=���=�=��o=nP_=��O=�gA=��3=�'=�=�=��=&>�<���<h��<!y�<k�<�V�<�*�<ח<�L�<w}�<2�t<�c<y�S<6E<�7<\�*<x�l���*���-��bn�ȳb�J>��|?�>����վ4Ta?�e~���?nz�[o?�,&��l�</�<?��v�u�>�Xj?���+PU����>��s?�6�q�%�7�"^p>��n?��\?DQ>�
��]v���k������=�K?ybb?��?ŗi?b-?�>�n7<�z���%��xI�l�k���|��K���u�pb��H�m�*��
�WLѾ�⎾�5������=,8>�'�>r��>m�>�?x�?e�?��*?��5?T5??��G?��N?�CU?��Z?̸_?��c?��g?V�j?=�m?`p?�7r?�t?0�u?�w?
8x?�Ay?V(z?%�z?V�{?q3|?��|?;&}?�}?�}?�%~?Ie~?I�~?��~?1�~?�?�7?�R?�i?~?r�?��?��?�?��?.�?��?��?f�?,�?N�?��?��?��?��? �?��?@�?��?��?��?��?A�?��?q�?(���Ϸ���)���־j�q��D*���8?݄�>��}�8�Y?cR��$�>���/?�<q��Xs? dӾ`��p�}?��"���r� ն>��t?c����/}�����?��~?6m�>��ɾw�r���d�'����ՙ>i{N?��?�
`?�?�4�=�ᴾ6�2�#,j�~����v��*V�E�%�=�ؾ	@�F.=-�>D[�>y�?�:?�vT?pog?Jkt?�9|?�?l�?Mv|?_"w?�p?��g?�t^?z�T?�kJ?C@?�5?��+?��!?�#?��?�?36�>�+�>���>o��>�>�W�>�_�>�$�>���>t>�}>��k>c�[>�L>$�>>N�1>VV%>��>]U>�p>�r�=dF�=�G�=b�=���=��=T��=_�=��=�>�=zmr=3�a=��Q=fC=t�5=c9)=6{=s�=�a=��<�6�<~��<a��<L\�<v%�<b٤<�g�<���<u؄<?w<�f<�V<y>G<Zi9<�,<�Q���~�����gh�:����*??G�0? Ud�Y>^t?�pS���h?(ib�i�9?`Y������v)i?DLX������|?�C��o�A�>(~?�a>X�_�W�P����=�e`?�Ek?;��>nS�k0n��+t��T��/1����>�Y?m*?�}o?�b7?���>�,u=�F��Q>��C� �g�Cu{������w�w�e�߮L��/����M�ھ�@��x-/�P��n|=�)>���>�ϱ>,��>_�>�?�?T7)?�;4?-�=?�nF?��M?�gT?�Z?P_?�ec?�*g?�rj?:Mm?��o?R�q?�s?�mu?/�v?�x?>y?u	z?a�z?#�{?V|?�|?#}?�z}?*�}?�~?�\~?�~?��~?��~?&?�3?O?�f?V{?�?��?ש?c�?c�?�?��?
�?��?��?��?g�?��?N�?��?��?��?�?b�?��?��?g�?'�?��?^�?��3Z�ضI�1 r�u�j��+���W~?f�	�y�D�*�?}b�_E?�I���i??����J?$�߽��A�Hk?t�=x�Eo>�~?��=�r�@�����>7�?j�?^����g���o�%B꾕�W>��@?�	~?0�h?��?��>🗾P(�qd��}~��{y���[�C@-����!b�k33<�g>x��>�}?��6?�BQ?�#e?y�r?Vh{?�j?ݹ?A}?� x?�&q?g�h?��_?�V?��K?��A?W?7?�-?*#?py?�-?dE?���>b�>��>)��>���>��>}�>��>X�>h�>��>�2n>A�]>B�N>=�@>WX3>c'>��>I�>s�>^��=��=�w�=�k�=�h�=k\�=~6�=&�=�_�=���=�t=��c=�T=dE=&�7=0�*=b==��	=�5 =���<��<���<zM�<#��<�<w��<b6�<t3�<��y<�mh<KX<�FI<�M;<�L.<8#=t��h��"�����>��?���=��}��#?���<f��	#?���b��>���<��_x~?fH'���ʾ�~?,���*U}����=�d?G�>��G�3e�EPK�N?�u?��>�精�c�3Cz�[�(�U���s�>V�O?�I}?O�t?�"A?��>\��=v�e���w<���c���y����[y���h�̈P��w3�w��N� ���A�>��Ss==$*>j�}>�֫>|M�>h��>�v?��?ڋ'?s�2?J�<?�LE?��L?��S?�WY?Dh^?|�b?ʪf?\j?G�l?�so?)�q?��s?~6u?\�v?}�w?E�x?E�y?W�z?�n{?|?�|?�}?�m}?��}?~?2T~?{�~?�~?�~?P?�/?{K?�c?�x??w�?�?۳?�?��?��?-�?��?��?1�?��?%�?��?\�?u�?F�?��?5�?b�?h�?J�?�?��?K�?.����m��z�i�c���˾'�?d)\?�,�Wf��$pa?����x?��x�K�?O�l��P?�NR>J�i���F?(��>r}��㛽�O~?���>*`��>���>�?{?|�1?� ���Y��x��D�A�=yP1?3�z?�p?^�#?HV>��s�l���^��|���{�m8a���4�^��0󁾂p��vLJ>���>� ?8@2?��M?N�b?�Tq?k�z?�?��?�}?��x?�2r?;*j?� a?�jW?^MM? C?��8?�z.?�~$?:�?ut?�}?���>��>G(�>��>)��>`׶>���>>9�>���>v�>��>'�p>�#`>a�P>(~B>:#5>R�(>�>!=>�%>~�=]��=��=vu�=dN�=� �=�ۤ=7o�=�̎=`�=�^w=�6f=�>V=bG=֌9=��,=�� =Ɗ=�)=\�=��<�M�<߻�<�>�<�´<�6�<&��<B��<r��<�J|<��j<IzZ<^OK<�1=<t0<��\?*�>�N>���>��j?�H?���'=��ps?���.l;��p>f?u��n�<�:�>��V��z?��Ͼ$!��up?��>�A�2���ew?�F�>��*��s��]D���7?�|?5L?q�|�d�V�0~�f�8�=�O�9��>�D?�Wz?(�x?FJ?���>�e >8#8�>h󾒆5�ng_���w����`�z�_yk�@T��7���U���-Ҫ�
�R�F߫�b��<�>1�p>nץ>���>c��>@Q
?��?)�%?�G1?�T;?,(D?��K?��R?�X?��]?�=b?`)f?ƒi?d�l?�o?I\q?jNs?��t?vv?��w?��x?��y?	�z?	W{?��{?��|?|�|?@`}?(�}?~?�K~?��~?��~?r�~?n
?S+?�G?`?�u?`�?h�?J�?O�?��?��?��?O�?*�?<�?��?n�?��?��?�?/�?	�?��?�?;�?E�?,�?��?��?7�?�o�>�����s������E�>w�z?���>�ly�*{>}�?V�a�z?��{��0o?��:�/o>���>(~���?h�?z�l��ŕ���r?�1�>+�F�53X���>��q?q�H?��
I�l}�� ����<� ?�u?�v?�E1?�O�>�7��K��W���z�b�}��&f��~;�^�g����'V���,>D�>��	?�-?��J?dB`?ܧo?8�y?ܴ~?(�?9~?��y?z5s?Xk?�lb?��X?g�N?�mD?�:?+�/?�%?X?��?��	?�?>��>�=�>Ĉ�>��>%��>^L�>� >��>�ϋ>�S�>9�r>)Xb>F�R>�iD>��6>#Z*>��>�>d�	>� >�R�=&��=�=%4�=�=���=C��=�9�=:�=��y=h�h=�bX=`I=�g;=�f.=�L"=n	=�=��=lq�<���<��<�/�<|��<�<��<! �<p�<v�~<�m<��\<�WM<O?<&�1<nZd?Few?d`?'6u?{@q?�eP>w,m��f�.x?@�Y���>�^[��+7>�y��JL/?M�x���]?�u���P�j�R?A&�>U�t�	.��1ef?kW!?�	�M�|�_��?��?�?���Q�G����0KG�����̈́�>�8?\Wv?��{?��R?��
?/pQ>1Q
��3��M.��Z�BDu�]���U|��"n�	�W���;�ݍ�_���B���d�A�ͽ�u}<�0�=gc>^џ>�|�>(��>(?�?H+$?z�/?c:?C?8�J?��Q?��W?]?Χa?��e? !i?�'l?��n?�q?�s?��t?KEv?K�w?@�x?��y?u�z?!?{?��{?�n|?��|?�R}?{�}?��}?�B~?`~~?�~?��~??'?D?J]?s?��?S�?|�?��?_�?��?��?n�?g�?��?�?��?K�?4�?��?��?��?n�?��?�?#�?�?��?��?$�?��~?#?+�>���>�c?X�a?�X��en��q9?VZ�<^r���H?S��:?/S߾ս��>?�G|����>�A?WrO��N��r]?|S?�'�7�k���::_c?D2\?���=�j5�����*3��:��[�?|o?�z?ӷ=?���>���8�;�O��w���~��j�)0B����@H��$���:�>�ˮ>K!?�V)?G?F�]?_�m?�yx??~?  �?0z~?�Wz?�.t?�}l?ɱc?�#Z?�P?��E?߃;?E1?U7'?�o?��?�
?K??!��>�Q�>��>��>HT�>��>JL�>;b�>�(�>���>�Fu>2�d>��T>qUF>��8>�,>�. >�$>��
>�D>��=4�=���=��=N��=�%�=H�=���=׍�=tO|=�j=��Z=^K=/B==� 0=��#=�=-�=3=H��<���<Z��<� �<'`�<���<���< ��<nD�<#��<�xo<��^<B`O<��@<ؔ3<*�=d�H?�?o?��^?NX�>CC�O*w�=��>�{0?d��	T?�����?8�/�$]f?��~�� +?��->�"q��'?�?^y^��q �PM?��A?�4Ǿ���O;��?��~?�4?����6��l��qT����}�P>��+?FMq?�-~?4�Z?��?���>�l����̾o�&�ίU��r�N��~}���p�#D[���?�E� �` ��#��Ppv��N��v�8�
�=zV>ř>�	�>��>P�?�?Av"?H.?i�8?��A?��I?��P?�W?�c\?ha?�"e?j�h?��k?rn?e�p?F�r?ލt?v?�fw?4�x?֊y?�gz?�&{?��{?�\|?7�|?)E}?��}?��}?�9~?�v~?a�~? �~?� ?�"?b@?Z?Jp?��?9�?��?,�?�?b�?��?��?��?��?{�?p�?��?��?f�?��?��?8�?��?��? �?��?��?t�?�?/|?��?Aq?.x?;�v?�>֏J��H���z?�1�gܽ��>@F�k�>�E����۾>j?��d�h�=D�e?�f&��G,���>?�x=?�#��y�CX��O?'�k?��Z>�e� R��D��A#�;��>��f?e�}?�=I?~��>n?q��q�rG�.Ot�����n�B�H�î�լ��~ 콘�=ύ�> �>4�$?>rC?9 [?�
l?NWw?m�}?M�?��~?�{?�u?��m?O�d?�w[?�}Q?<>G?��<?I�2?��(?��?�?? ?f?�,�>�d�>�u�>k[�>��>4��>1գ>�Ҙ>���>gل>O�w>�f>a�V>�@H> �:>h�->-�!>1�>5>2�>7�=28�=;��=���=�m�=�ʩ=H�=��=��=��~=�m=��\=\M=�?=N�1=�%=�=JV=�c="C�<��<���<(�<�.�<3B�<1;�<�	�<l��<�<��q<a<�hQ<��B<�W5<I@H�Ί��pB�>J�}>���� �m�-��"�T?�I>	�a�b�~?+�f���Z?��i��?�,g�s��>���>�e�s��>��B?2[=���*��&,?t\?�m���|�?W��F�>z?MRH?�#�=3$���|�z `��ܾW�>�;?�>k?:�?��a?�} ?��>�7�
���B��eP��o��J~��o~��r�ʏ^���C��V%����2ƾ_	��Ow��{����=3�H>���>��>��>+�?F#?� ?��,?�[7?��@?��H?��O?�>V?��[?�w`?�d?�:h?'_k?�n?bzp?E�r?�Tt?V�u?s;w?�fx?gjy?}Kz?�{?��{?TJ|?Z�|?k7}?ǖ}?e�}?�0~?�n~?��~?1�~?|�~?b?�<?�V?um?�?�?Ӡ?��?��?1�?y�?��?��?=�?��?��?m�?t�?�?W�?N�?�?{�?��?��?��?��?]�?��?������?0�]?߅Y?��?��������Hu<O9o?>�Y����>����� ����<, �>�4��~?�9��P�M�z?�辠�Q�{�?��Z?�.���e�ܚ��w8?�v?ur�>�@��{�o�S�O>��70�>hK]?��?��S?��><�:��׾+�>�Lp�����tr�L�N�&1�N�þ4*���=�0�>���>� ?�??�;X?�j?� v?}?�?�+?��{?�v?2�n?(f?��\?��R?��H?�L>?�4?��)?� ?�?�S?�?q[�>�v�>nj�>�3�>�ν>Y4�>�]�>|B�>*ڏ>��>R�y>f�h>�Y>�+J>KM<>�\/>�K#>�>U�>��>U^�=h�=���=(��=�1�=�o�=B��=|��=>5�=&��=qio=��^=
ZO=~�@=�3=('=]�=e�=�=���<�E�<��<R�<|��<��<�ˢ<�~�<i��<�0�<�*t<[7c<&qS<B�D<<7<�er���Q��I ����"Z�S/s�����?�K�������m?P����}?2���v?�L5�!~�=�80?��z�o�L>Q0d?�-N��?X�o?A���mt��1�ه>�eq?oZY?�7>�����w���i�9� �P�a=;�?n2d?��?--h?&�*?z��> �9+U��b���J�B�l��;}�L(��
u�q�a���G�V�)��		�!.Ͼ�ό��=�����j��=�I;>U��>	�>�-�>��?�.?�?�<+?�6?R}??��G?�O? tU?�[?��_?�d?��g?��j?I�m?�-p?�Gr?�t?&�u?�w?
Ax?�Iy?/z?�z?l�{?�7|?V�|?�)}?��}?��}?�'~?&g~?�~?S�~?g�~?�?�8?|S?�j?�~?�?��?��?<�?��?n�?��?�?��?P�?m�?��?�?��?�?�?��?K�?��?��?��?��?F�?��? ux��d��@B7>�U>w�J���Y��5M���?��?���2C?fC⾦D�>_𵾽�?S�f�Q�y?�2��p���?S�l���l�	�>�p?�4��~����:?�}?��><�ھfxu��3a�������>T7R?�?�K]?�?s}}= ?����5���k�[��3�u��oT�8~#���Ӿ�6���S=S��>���>�C?�;?_U?+h?N�t?�r|?K�?�p?�H|?��v?��o?Yg?s^?h1T?>�I?X�??a5?�<+?�V!?��?��?�?׈�>d��>Z^�>��>ڊ�>�ղ>��>��>2�>^�>�W|>�&k>�[>�L>o>>01>5�$>->��>d>^��=���=$��=���=���=��=6�=`�=숋=X܁=�q=�`= XQ=!�B=�M5=K�(=�=�=n�=��<��<+�<{��<&̽<P��<�\�<��<fU�<�s�<ăv<�fe<�yU<��F<��8<��v���r���{�fz���z����a?4vP?��L�^� ��%?Y�e�
�t?�Jo�m�L?�`ݾ&�\�f�^?&.c�Z[�Iy? >þ��h��!�>��{?E��=�>e�dJ��
>6�d?d}g?�T�>�y��p��r���n��H� ?�/\?a�?��m?�r4?ʾ�>�l;=�������D��i�:�{�V����v���d���K���-�s��ؾ���9�)��<��W�=��->�|�>���>8�>���>�6?�D?��)?��4?�L>?��F?-,N?ϧT?fQZ?	B_?4�c?�Og?�j?)im?:�o?fr?^�s?~}u?��v?�x?�(y?qz?*�z?�{?/%|?*�|?�}?�~}?v�}?�~?B_~?�~?h�~?F�~?�?�4?'P?�g?|?ʍ?�?Y�?Ե?Ŀ?`�?��?I�?��?��?��?��?��?i�?��?��?��?�?o�?��?��?p�?/�?��?&:��
s�.+"�j���P��f}�:ȍ���p?:�=�a���y?�@J��S(?ϐ/�'�X?�~�Go\?�{b�n/���s?�Yz;I|�
?c>��|?��W9c>w�\��ކ�>��?8�?ѣ��Bl�;l��پ�x>��E?"�~?^�e?x�?��=H5����+��f�M�~��x���Y�{�*�؈㾞�U�|��<�Gr>�C�>�d?�8?nlR?��e?xs?��{? �?�?A�|? �w?��p?�h?�R_?9�U?�YK?�A?��6?��,?^�"?��?2�?��?���>�>FQ�>���>iF�>w�>^m�>^!�>���>��>C�~>rYm>K$]>�N>k�?>e�2>�h&>��>�C>�N>R�=���=���=G��=��=ܹ�=%��=@Z�=�܌=��=�t=ac=�US=¬D=�7=lT*=��=��=�E	=�}�<��<DA�<���<Ϛ�<�M�<8��<zh�<c��<���<��x<�g<	�W<�H<��:<��/?�Ԡ��F���S� ���>�u?S;�>]#����>q0]>����@?>P:�UL?�W۽�+���y?��:��i����?��-�ٝy��o'>  �?�Ä>PQ�pi^�$�:�U?��r?&�>Kž��g�Rx�,�"��½���>�?S?
~?�r?4�=?�t�>5K�=��u�:h�a�>��Te�xZz����4�x���g�s*O���1���I��:���:���{�T=�_ >UY�> ��>�;�>qM�>�;?H�?�%(?K3?�=?_�E?s@M?��S?��Y?2�^?�c? �f?�+j?9m?�o?��q?s�s?]Ju?��v?r�w?=y?��y?�z?'w{?Y|?ט|?b}?\r}?��}?�~?JW~?*�~?m�~?�~??1?�L?�d?�y?��?4�?��?h�?��?P�?��?}�?/�?�?d�?�?L�?�?y�?��?\�?��?E�?p�?t�?U�?�?��?m7=>c�Q�k���]|�K�}��*����>��w?��쾦
���v?j�z��h?�xi��{?ry��)?%Α=5
[��tX?\t>������<c�?TX5>d�h��2��f�>�}?11'?��U�GS`��t���">8?�P|?�m?�?�!:>I���<�!���`�@�}���z���^��n1�����pu��{���V>�d�>|p?(4?�bO?��c?r?~�z?1>?��?_Z}?�zx?�q?[�i?6�`?N�V?��L?bB?8?_�-?*�#?�;?��?��?��>��>0C�>���>N�>��>���>J��>S�>��>��>�o>�1_>a�O>?�A>z^4>��'>�e>��>a�>/i�=z��=շ�=ŕ�=~�=�^�='�=ǘ=<0�=�T�=MOv=?:e=�SU=`�F=L�8=��+=? =��==�
=?� = �<}W�<���<wi�<l��<�}�<Wݛ<_�<���<�5{<&�i<z�Y<4pJ<Rb<<q�{?G�?����+�~�>g�>?}�n?,��0
c�/|Y?�1���2R��*�>bҾ��G>S�k>�D@��Y?=��i����x?�)M=���i�ۼ �{?�g�>,�7�B<n��G���A?t]z?���>�#��&�\���|���1�� -��S�>]kI?>�{?��v?�nF?��>?>��K������8�~Ua���x�V���Kz�NGj�t�R���5�O����Aܦ�{KK�c���s=��> bv>�j�>�9�>���>d=?��?;�&?�1?�;?�D?�RL?
S?%�X?^?�}b?af?.�i?z�l?;Co?|q?�is?�u?Պv?��w?��x?Q�y?Ǫz?6a{?U�{?]�|?�|?�e}?!�}?Z~?@O~?2�~?d�~?��~?�?%-?eI?�a?w?f�?K�?�?��?L�?=�?��?��?}�?��?��?��?��?��?.�?M�?#�?��?�?L�?T�?9�?��?��?�Cm?��"�)�'�M�2�#�:.�)�Y?��&?�]����s9:?TDx���?��x[|?4W�?��>��>9�v��/?���>��v��K>���y?@a�>0AT�
-L�=�j>�w?��=?
���O�Q��{�2���=C )?�\x?@6s?��*?Кv>�\U�{$�R�Z���{���|���c��8�7�`�����jt;>6c�>3g?H0?yBL?a?s�p?gz?��~?s�?��}?y9y?еr?��j?��a?�X?�N?$�C?�e9?�./?0.%?w?�?		?� ?���>4�>ߍ�>���>���>U{�>���>�9�>t#�>޲�>N�q>?a>��Q>�tC>n	6>�)>�>��>��>���= '�=��=8{�=#B�=��=ﮥ=�3�=ރ�=ڐ�=�x=^g=�QW=�aH={:=��-=�!=�J=��=�'=>�<�m�<���<8�<���<��<4R�<[f�<�<�<��}<i�k<�[<�TL<%><�B�>�?	�??DL?��D?Y�?a?<B�p���?��/��y>��!<-���H!,��
?YLk�fo?�����:��Kc?��>m�{�oh]���o?I?�m��,y������+?2�~?��?k�F��O�}T��-@�Ax��̟>˽>?/wx?�az?˞N?>?i9>�/!�w�龱�1�x]�)yv�9����{���l� V���9�\Q�XT��p����[��ϼ����<�X>�j>uҢ>�0�>�Q�><	?��?�%?d�0?F�:?i�C?AcK?�8R?=1X?wg]?��a?��e?�Yi?�Xl?��n?�6q? .s?��t?�]v?l�w?��x?ٺy?;�z?K{?%�{?�w|?��|?�Y}?P�}?�~?!G~?*�~?M�~?��~?�?0)?�E?�^?zt?,�?]�?c�?��?�?'�?
�?��?��?��?W�?/�?��?d�?��?�?��?��?��?'�?4�?�?��?��?Q?��H?�A>́��i=�?n�~?���=���b�>��>��C���j?�do��Y\?ծ��g�=��?���~��>�'?��a���þ��j?
;?f�9�cra��?�=�k?�Q?��<��@���~�_�(�30i��?�s?�0x?/�6?��>���� ��S�0ny�YH~�(h��l>����H䙾j���>`A�>�I?u�+?AI?�'_?e�n?�y?�~?u�?�=~?l�y?V�s?�k?��b?'`Y?�RO?�
E?G�:?T{0?nr&?�?�E?-;
?��?[��>�#�>Lb�>u�>W�>��>m�>��>�d�>u߂>I�s>Lc>�S>p>E>B�7>+>+L>�Q>'
>T� >�V�=L��=�`�='�=���=�6�=���=|א=�̆=q�z=�i=�OY=�<J=�4<=�%/=z�"=ޮ=(=\=|�<��<��<��<�Y�<<��<Ǟ<W��<v�<��<�#n<[�]<�8N<��?<j����?Li}?��}?X�?�fI?��Ž�~���=��a?Nbr�+�$?��̾g�>�P�}sJ?g�~��DJ?��n; �`��CA?@��>�l���˾Mf\?�!0?@���w�ƾ5�?��?�Y(?4pý�@�]��#+M������z>aB3?�It?��|?<>V?��?s~f>��콼�׾+��X��)t�gq���|�H;o��TY���=��z�L���u����dl�1ܽZb<*��=e�]>�4�>O"�>���>�7?�-?�n#?6#/?)r9?B?�qJ?deQ?�xW?��\?�fa?�me?��h?��k?i�n?:�p?w�r?&�t?0v?�~w?G�x?�y?swz?�4{?��{?�f|?'�|?�L}?e�}?��}?�>~?{~?(�~?E�~?Y?1%?�B?�[?�q?�?k�?��?�?Ⱥ?�?�?�?�?J�?��?��?�?�?��?��?��?W�?��?�?�?�?��?��?�75��Qw?�X?� ?�8?�z?��;?L����S�]Y?�|"���Ͼ,?��:��H?|����f���P?5v��uv>.�P?��A���^DS?�)'?3:��aq���a��\?cAb?�>��-�\��D�9�8&νY?+Ml?P�{?�B?�P�>�8ǽ� �0�L�b�v��M��5l�I�D�n��!A��ý�>>�>�?5�'?U�E?g�\?;m?�x?�~?�?m�~?��z?��t?~�l?*&d?ݟZ?q�P?qZF?&<?��1?ߴ'?u�?�r?X[?c�?���>��>�5�>�-�>
��>���>�ڢ>��>ޥ�>��>�!v>�Xe>�U>�G>�^9>�,>5� >u�>vX>��>6��=r��=�E�= ��=oM�=���=��=+�=!	�=�4}=��k=�M[=*L=s�==��0=}$=�=ks=z�='��< ��<=��<m��<�<�/�<�;�<S�<\<T �<�Rp<ˣ_<$P<e�A<Կ�c3����?j_G?X1?PS>��-���`�G�?�<?��|���i?��=�W[/?`iH�_s?�fy��?�A�>}yx��j?VH'?ݠS�w���A?�SL?i���E��M��u��>͠}?L<?r�;;0�%�~���X���ľ�'5>�'?Y8o?0�~?�G]?�?+��>gۖ��cž"$���S���q���~���}��yq��z\��pA�
�"�f��o���|�݄���˴�ns�=.8Q>���>��>�=�>j0?�`?��!?��-?�58?kA?u~I?��P?�V?[$\? �`?��d?��h?f�k?pRn?�p?d�r?#yt?v?�Vw?�~x?y?o]z?,{?;�{?V|?z�|?0@}?a�}?��}?�6~?�s~?�~?��~?��~?*!???�X?Do?��?t�? �?��?��?��?"�?8�?[�?��?E�?A�?��?��?H�?��?v�?%�?��?��?��?��?��?l�?>S]��v�>xMt?�?��?,�a?�2>{�d��;��??-�/�=H�>H�Ҿl�>;�<�q�_�r?�Z���@���m?:x�x,8��3?+�F?���Ě{�p�I��vI?Wo?�	>^�� �~��AI�t�>�%f�>rBd?��~?xpL?���>��(�����D��0s�_��|�o��fJ�[���r��a����l�=ڤ�>��>_#?_B?�2Z?h{k?<�v?=�}?�?I�~?�:{?fbu?��m?�Le?��[?^�Q?��G?PR=?|3?��(?m ?X�?�z?m�?���>� �>��>.��>j��>��>mH�>�>�>��>8�>TSx>Xeg>ؔW>��H>�	;>�..>*2">?>��>��>���=���=J+�=��=A�=qF�=Tz�=�~�=?E�=��=��m=K]=��M='�?=�[2=��%=w=ξ=��=-��<T��<b��<��<���<���<ʰ�<Ow�<C�<�L�<0�r<<�a<tR<mC<�� ���m�����_ñ=��d<
��|������j?�7=�]L���?�[s�wZi?+t���?�[��?�>�?x��3��>��M?�1�86�xB!?2�b?��<�h�z����i��>��w?��M?�y�=�6�F�{�:c�~��|��=h?7Gi?e�?��c?�#?��>@=�_���)����N���n�~���~�6�s�f�_��E�ƙ&����Ⱦ۝���d���E�=��D>?�>��>���> &?��?V< ?OQ,?�6?*S@?:�H?��O?pV?̀[?�J`?�vd?xh?mAk?� n?�cp?�vr?�Ct?��u?�.w?�[x?�`y?0Cz?k{?��{?�D|?��|?[3}?C�}?Y�}?T.~?�l~?��~?z�~?��~??~;?�U?�l?_�?y�?H�?�?8�?��?+�?b�?��?�?��?��?L�?W�?��?B�?<�?��?m�?��?��?��?��?V�?��c�7#���>\�@?�=?�<�>���Z�}��g>o�a?+�g��+�>V�ؽaz �f�p�
´>�B���?��-�↾DX}? �Ͼ��X��?7`?�랾Q��f���}�2?\�x?�ͷ>Õ�d�z��W�ߌ����>G�Z?��?�V?=��>�]v<[�Ѿj�<��Qo�O���8s�Q�O�����tǾ�V���=A.�>���>��?��>?��W?��i?s�u?3�|?��?�<?�{?�5v?I�n?�lf?�]?D'S?��H?��>?9S4?Q4*?�U ?��?��?��?x��>W��>���>���>;2�>���>���>┚>X'�>d�>c�z>�qi>v~Y>�J>��<>��/>	�#>�^>��>>��=���=��=�Q�=��=;Ϋ=�=?Ҕ=[��= �=V�o=^I_=N�O=�aA=�3=Hz'=�=0
=H�=26�<���<���<�r�<'e�<<Q�<�%�<Jҗ<)H�<My�<r�t<��c<��S<�/E<�t�>9Z���k��(���+��xm�J�c�t�>l}? ���ؾRb?W�~���?����o?�'����<�<?��v��>�j?����T���>[s?&W�l1q��U7�r>j�n?��\?��O>��
��rv�X�k������=}?|b?��?Q�i?��,?7˵>��-<Y����@���I���k���|��I�~u�fb�{�H���*�"
��.Ѿ�Ŏ�n�����1�=�G8>�;�>�ӷ>��>�?��?$�?��*? �5?@9??�G?��N?FU?��Z?̺_?f�c?�g?��j?c�m?_p?�8r?�t?פu?w?�8x?GBy?�(z?v�z?��{?�3|?��|?i&}?�}?��}?�%~?ce~?`�~?�~?B�~?�?�7?�R?�i?~?y�?��?��?�?��?2�?��?��?i�?.�?O�?��?��?��?��?�?��?A�?��?��?��?��?A�?OǽI�~�_h�)n<=�ǭ=8���^�f���<�pe'?�n?ܯ���N?� ��ݴ>�Ҿ�%?$Tl�{�v?,��u����~?
H�Z�o�\%�>��r?&��~����7�?YR~?��>�PҾ�:t��c�3����t�>aP?{�?1�^?p�?Aב=��04���j�����*v��LU�U�$�4D־�
;��+A=���>�0�>1�?�];?;�T?,�g?n�t?�V|?�?-z?p_|?� w?��o?��g?�A^?fT?5J?q�??��5?Jq+?�!?��?��?�?���>��>���>�T�>}Ͽ>��>S"�>��>�g�>鏇>#�|>�}k>�g[>�bL>D^>>CJ1>�%>��>>E>>N�=���=���=��=�;�=�U�=�S�=�%�=s��==�=r=9Ga=ܦQ=�C=!�5=��(=*?=�U=�-=7t�<���<�}�<]A�<��<��<���<E-�<��<ɥ�<��v<�e<�U<x�F<��~?Rr��Z�d�������fs�Iuݾ��,?ůA?�=Y�H�J=��?-)]��~o?�Ui���C?��ľ^����d?�]��(���{?����Pl�*ߣ>�}?�=�wb��vM�{ �=8�b?�gi?9x�>"{쾢�o��s�F������>A�Z?�Y?@�n?��5?(J�>�X=[���D���D�:�h�u�{���7Cw�"+e�L��p.�W ��uپ�㖾��,�@�F�)Ђ=�+>ቆ>_��>(s�>��>y�?N�?|u)?�r4?E>?'�F?�N?�T?�5Z?�)_?'{c?�=g?�j?N[m?0�o?��q?J�s?�uu?!�v?�x?w#y?�z?N�z?��{?I"|?��|?Y}?�|}?��}?j~?^~? �~?|�~?z�~?�?Z4?�O?Dg?�{?t�?Μ?�?��?��?6�?��?*�?��?��?��?y�?��?[�?��?��?��?�?h�?��?��?l�?+�?z�H?�*��x��T0�g���-Y�q�z�ٵd���t?��=�
\�	|?`)P��%/?N�5���\?�6���X?N_I�
[3�:-r?���<�}���Q>�3}?ۡ{<yHv�[|���>�?�'?	��Yk�m��jݾ�q>�D?�~?Hff?(�?c6>៾�+�:f���~��x�uSZ�V++����:�X��$�<}�o>ZB�>��?۾7?+R?��e?CYs?�{?�~?.�?��|?��w?��p?4�h?�m_?�U?MwK?_&A?��6?i�,?_�"?�?-�?��?��>���>�{�>�
�>-l�>���>���>�@�>ۧ�>���>��~>e�m>Q]>�+N>p@>��2>��&>0>!a>ej>�C�=u��=���=���=��=�ݮ=���=Wy�=���=x3�=�4t=Ec=g�S=3�D=4-7=tw*=;�=�=b	=9��<���<�n�<�<<¿<�r�<]�<?��<�͏<E҅<�y<��g<b�W<)�H<�?(�>?W�s�ޖ9��uI�����M>s�y?p8�>���T�?��3>7�ִ:?�V4�y}?L��1�K {?��6�.����?W����z�E�>E�? ��>^O�s�_���ȍS?IVs?�w�>�B����f���x���#��Ͻu-�>�qR?��}?�2s?�v>??^�>�*�=�9r����C\>�R e�Y5z�)��6�x�7�g�$xO�_@2�C+�������O<�����YO=�9>6Ӏ>̓�>���>���>??�\?�(?5-3?<�<?S�E?F,M?"�S?#�Y?ė^?��b?��f?�"j?�m?d�o?��q?h�s?�Eu?ͳv?&�w?ay?	�y?��z?Ju{?�|?r�|?,}?Pq}?��}?�~?�V~?��~?��~?��~?�?�0?�L?�d?ay?k�?
�?��?I�?o�?8�?��?k�? �?�?Y�?�?C�?�?s�?��?W�?��?A�?m�?q�?R�?�?r?�M>TO�#����|��}���(�4u�>��v?#��=��>v? �z�;<i?�j�G^{?��x��(?�J�=O�[���W?�x>��[�x<��?X,8>,�h���2��R�>ط}?R�'??�S��`�u��A�8� >	�7?bC|?�'m?�6?�;>8��B�!���`�ۘ}�:�z��_���1�l:���u�M����V>z4�>L\?�4?0VO?�c?	 r?�z?�<?��?Y\}?�}x?��q?�i?.�`?��V?�L?�gB?�8?��-?S�#?�@?b�?��?���>-��>
K�>��>K�>0�>���>��>��>��>׊�>�o>:_>�O>y�A>7e4> �'>�k>(�>x�>�r�=P �=��=o��=:��=qe�==-�=�̘=�5�=�Y�=�Xv=�Be=�[U=ގF=E�8=�+=J =P�=x�
=� =	�<�_�<���<�p�<8�<7��<:�<��<���<7?{<��i<��Y<�wJ<�Ц�G�z?��?�'��s���>�@?�m?�ㆾ#�a�חZ?����.K��>�Ͼ�A>�Kq>A�SC?����	��_x?Ui[=q������K�{?3��>9|7�\rn��j��A?Fvz?�s�>�]��:b\���|��,2��R.���>�AI?ٰ{?w?��F?g��>��>�K�L<��Wo8��Da�Ɓx����Qz��Qj�b�R���5��(����	�����K�.❽�=:�>I0v>T�>D%�>���>P5?Է?�&?t�1?)�;?��D?OL?�S?E�X?^?�{b?_f?��i?
�l?�Ao?�zq?is?�u?�v?��w?�x?��y?`�z?�`{?�{?�|?��|?�e}?��}?4~?O~?�~?L�~?��~?u?-?WI?�a?w?]�?C�?�?��?G�?8�?��?��?z�?��?��?��?��?��?-�?L�?"�?��?�?K�?T�?9�?��?]Wr>�g?�ա��92��(T�BM+�\&��4U?��,?�Y��cw���>?�y�i�?ǩ��&}?�Y�[��>pp�>s�u�2�1?{��>ww�>33��z?2˭>J�U���J�ۆr>��w?C�<?FUν�R�e�z�}��Ȏ�=��)?K�x??�r?C*?�as>�aX�и�'[�}�{�}�|��c���7��� �쉉��9���<>��>�?�E0?�mL?��a?ؕp?�z?��~?D�?��}?}/y?�r?��j?i�a?
X?��M?�C?�S9?/?�%?8f?�?
	? u ?���>u�>�t�>գ�>U��>bf�>4�>f'�>6�>���>&�q>�"a>}�Q>`\C>��5>�o)>"�> �>��>���=	�="��=.a�=�)�=!��=ꙥ=^ �=�q�=��=O|x=�@g=t6W=�HH=Tc:=�t-=Wk!=�7=��==K�<Q�<G��<N�<���<��<4>�<�S�<=+�<wn}<i�k<�v[<�:L<D�x�sm�>3?�7?mC?�=>?�_?��?Z�<����[�?o�*�ϒa>�=�
R�S��?��i���p?�叾�l8��d?v�>�|��%S���p?�;?$�_�x�~��%�,?��~?n{?aL��JP��=��q?��At����>�U??�x?!8z?�1N?�?��6>ky#�����K2��O]��v����ٚ{��l�\�U�B�9������y�����Z�� ��3��<�>��j>m�>;v�>��>�W	???�%?{�0?�:?#�C?(pK?�CR?;X?p]?6�a?��e?�_i?�]l?��n?�:q?;1s?�t?`v?��w?h�x?o�y?��z?CL{?-�{?�x|?y�|?-Z}?�}?|~?�G~?��~?��~?��~?5?g)?'F?_?�t?K�?x�?z�?��?�?6�?�?��?��?��?_�?5�?��?h�?��?�?��?��?��?)�?6�?�?��?�0�Q�a?�H5?Fm=�mf�HF��+?��?S�6>������>z~�>��L���o?A~s�f�a?�%��Q>�}?e���@?�+"?�d������5m?���>�S=��_��2�=��m?�lO?MU�;[C��~��I&�Uj�x"?g�s?��w?�R5?Ys�>߻#�H��m�T�w�y�$ ~��g�K�=�ԛ�v���A�n:#>J��>��?/l,?�rI?�r_?�o?v4y?Z�~?V�?N1~?��y?��s?P�k?��b?y8Y?�)O?i�D?�:?�R0?�J&?t�?� ?�
?�u?�|�>���>�(�>�>�>$�>�Ѭ>@�>�f�>?=�>y��>#�s>uc>��S>#E>�7>�*>>	'>|�	>^h >��=(��=�$�=���=�t�=��=�s�=���=��=�z=�>i=�Y=,J=a�;=,�.=d�"=�=>�=6=y5�<+B�<�{�<���<�$�<�m�<.��<���<�W�<��<��m<N[]<9�M<o^9� ���4?�?'oy?U�?�6V?������{���Yi?�m���?LT����>(��#�C?�}���O?>3��`�\��F?hE�>��n����_2_?�O,?���ϑ~��ľ��	?��?��%?G�ܽ��B����֣K�������>ն4?��t?ʹ|?VU?�U?�`>la��&ھ��+��!Y��ut����	�|���n���X��9=����i����붾']j�
Uؽ0G-<���=2+_>��>���>�Y�>vw?"f?��#?OO/?�9?̢B?��J?xQ?��W?t�\?�wa?�|e?��h?�l?S�n?��p?��r?��t?�5v?Ãw?��x?Ƞy?�zz?|7{?+�{?i|?��|?vN}?��}?��}?�?~?�{~?�~?��~?�?�%?�B?D\?4r?4�?��?�?@�?�?1�?5�?&�?)�?^�?��?��?(�?�?��?��?��?]�?��?�?�?�?��?8a{��>>�#?��>?5��>�{?�,q?�.P?�A���b�c�J?�F��t����:?J6G�h�,?f쿾V�)�H?r�y�	s�>��I?öH����pX?n ?)� ���n�P����_?�T_?`��=܊1�����6��'��.q?Ųm?�T{?'�??ἰ>fFݽ����N��'w��$�9uk��bC��g�NO��ˋ���j	>5_�>?.�(?udF?'1]?��m?�Ex?v'~?��?~?Zyz?B[t?��l?��c?�bZ?^P?F?��;? �1?�v'?m�?�8?�#?�u?<c�>���>���>*��>5��>�<�>���>�>h�>҃>ݵu>��d>�LU>ïF>�9>mT,>�w >�h>l>�>��=!o�=���= s�=l��=4s�=Tǜ=��=Ḟ=��|=L<k=v�Z=ϻK=l�==�q0=o3$=g�=�3=U=�K�<J3�<�J�<^|�<0��<��<'��<�ٔ<4��<|�<F�o<�?_<�O<%�A>81}��Χ�ǐ*?��]?I�I?S��>w���wm�*�>i?�r�`?<�.��� ?��<�vUm?�s|��?�;d>�'u���?��?�'Y�X���~G?�OG?BŸ�������F�>�V~?Cn8?��r�D�3����V�Q��F�B>o)?�Cp?[�~?��[?"�?�k�>n���Ⱦ�h%�[�T�Hr�F�~�6�}�Tq���[���@���!�S� ��ξ���y�.~����4�٭�=�S>ħ�>��>��>��?��?�%"?� .?�r8?��A?r�I?��P?��V?�C\?o�`?�
e?8�h?e�k?bn?z�p?0�r?a�t?�
v?�^w?[�x?�y?vbz?�"{?�{?IY|?P�|?�B}?��}?��}?D8~?Ju~?&�~?��~?��~?�!?�??uY?�o?�?Փ?T�?�?��?*�?R�?a�?~�?��?`�?X�?��?��?W�?��?��?.�?��?��?��?��?��?�(���v4�T?�??�t?<[z? t?�T�>T�O�����K|?#���������>Ԩ �@V�>#,��ܺ㾩�k?+c��a=~>g?9$�Y.�k�<?�??./ ��~y�$�/�N?�Bl?��`><>��7�cWE���'���>�}f?��}?�I?`w�>��d��-��G��t����"�n���H���I|���Sｗ�=O�>�o�>��$?�CC?��Z?~�k?SHw?6�}?��?.�~?w{?�)u?��m?��d?��[? �Q?�OG?��<?˷2?��(?�?�O?i/?�t?`H�>\�>w��>�r�>�'�>��>��>��>���>t�>R�w>��f>�W>@YH>Ι:>��->�!>��>OF>?�> #�=T�=.��=��=��=�ߩ=��=�%�=s�=[�~=:m=��\=puM=u4?=I�1=y�%=�=h=t=�a�<h$�<+�<�*�<�E�<�W�< O�<l�<���<��<��q<�#a<��Q<L�m?�5�d�O�jМ�_Q�>F�U><뚾S�p�����X?	�->gQ^�!?�i�R]?זk��h?~He� )�>�?�>��ݧ�>�}D?t;���,��W*?��]?�^e��|����1%�>n�y?�;I?��=\#���|���`���޾K>ڈ?��j?��?�b?�!?�#�>&s.�o�����| P��o��>~�7z~�$s�͸^�V%D���%�����ƾgy��5M	�{փ�}d�=�H>e�>4J�>���>6�?p
? � ?k�,?�J7?��@?��H?W�O?�4V?ī[?p`?;�d?�4h?Zk?:n?�vp?��r?�Qt?��u?K9w?�dx?�hy?Jz?f{?��{?jI|?��|?�6}?/�}?��}?�0~?�n~?V�~?��~?;�~?*?k<?�V?Qm?��?��?��?��?��?!�?l�?��?��?5�?��?��?h�?o�?�?T�?K�?��?y�?��?��?��?��?�?ek}��v���"?Mf?�.b??>���|��A�Fs?sS��ө>֦	=�$�$�~=E�{>�x/�	�}?�>�~9�'�y?�(�9�N�K?݌X?![��� �K����:?�v?pc�>�\	��@|���R�,�x��>�)^?�?M�R?3��>��k�U�پm�?�>�p����x)r�+N�&��A�¾�v���=@R�>���>
r ?�@?*xX?{Ej?�;v?�+}?��?�%?�{?��u?�n?f?��\?��R?�H?�.>?��3?��)?��?f?:?7s?e,�>/J�>A@�>"�>,��> �>�<�>|#�>!��>� �>��y>��h>?�X>�J>�&<>�8/>'*#>j�>'r>��>�+�=�8�=�o�=:��=��=iL�=9n�=�a�=��=���=�7o=l�^=/O=}�@=�n3=��&=e=b�=�=�w�<��<���<k��<~ֻ<x̮<��<P_�<*݌<��<"�s<8c<IES<*nP?�>xx�ѶE���߾~��=Q�:ww�d�����?ul��%O�ԁq?���:�|?@��g'x?�f:�{] >�+?��{�s1b>��a?'��؄K�"�?��n?����l�t�rC/�+c�>�Fr?�X?r�.>�d��Ux�i�ie��FX{=w?�d?��?��g?S�)?&��>�H\���'��UOK���l��T}�����t��sa��{G��@)���mξ����� ��=ik<>�>���>b��>F�?�X?Y(?�]+?� 6?�??5�G?�)O?E�U?�[?��_? #d?��g?%k?��m?'4p?HMr?�t?f�u?�w?<Dx?nLy?�1z?�z?:�{?i9|?��|?�*}?Ƌ}?��}?�(~?�g~?y�~?��~?��~?[?9?�S?�j?�~?#�? �?�?Z�?�?��?��?%�?��?\�?x�?�?�?��?�?�?��?O�?��?��?��?��?[�?����3e�'�멸> ��>���B���`���>��1?�I}�dS0?�ʳ��8O>R��q�?y�]�2}?s���pо��?����(�g���>Jl?��[�U��~WԾ3x#?a�|?�g�>18�}w��}^�������>��T?��?tO[?=��>�G=�þ=�7�b�l����%u��4S���!�[о�'/�n=���>r��>�P?��<?JV?�h?% u?��|?�?�b?�'|?��v?��o?g?�]?��S?	�I?�_??U5?y�*?�!?{?�C?q?H�>�>L��>���>�)�>�z�>-��>�a�>Y�>��>o�{>��j>��Z>ͫK>m�=>�0>9�$>.>�>��>)4�=��=O3�=�`�=,��=���=���=���=�>�=P��=�5q=�z`=��P=�jB=`�4=�_(=v�=��=�=(��<��<j��<��<$g�<QA�<�<4��<�	�<[-�<� v<��d<�U<~SG�C�`?P��;~���n�T6m���de&��
�>i2b?I8�խ�"�9?s�o��z?�2v�SJX?�����'�1�U?6�i���;ªu?9�پ��c�U��>�z?�qx= �h�E�~'>Zh?(�d?jƅ>�?���r��bp�a���g��?^?1�?�l?�\2?߸�>~�=C�����$JF��i�(:|�7����v��d�&�J���,��}��&־���S&�F/���=��0>�҈>���>�M�>���>��?G�?�*?��4?T�>?(�F?a_N?��T?vxZ?d_?�c?�ig?{�j?�|m?1�o?"r?(�s?��u?��v?F#x?�/y?�z?��z?��{?F)|?��|?�}?F�}?��}?� ~?�`~?��~?��~?f�~?�?�5?�P?Yh?�|?D�?��?��?#�?	�?��?�?v�?�?��?�?��?��?{�?��?��?��?&�?x�?��?��?v�?UW�>;��>�\k�<2L��W��WS����!�ݢ~�X���;�X?��>��s�"�l?��.�,�	?�5�XkE?ny���i?OP���;��y?L ���%x��j�>v*y?m��"�z�:3���	?�?Kv?�i����o�؛h�qʾ���>�NJ?kf?��b?}�?o��=H̫��^/��rh�*G�/�w���W�(��޾̶J���=��{>Fj�>�?Gu9?yS?O�f?��s?��{?�?�?P�|? iw?�hp?�h?r�^?aU?9�J?g�@?-A6?x,?s,"?��?�L?n?��>��>���>�<�>2��>(�>l�> ��>[�>�.�>�}>&�l>k\>�TM>@?>�2>9�%>�o>��>G�>�<�=��=���=3�=��=�%�=�=�ٖ=�d�=��=M3s=UUb=D�R=�D=�k6=��)=��= =�=Q��<���<��<w6�<���<)��<
`�<�< 6�<�D�<�x<��f<��V<s�]��nh?�g�>�f��m�c�s��JF��ӽz_?�?�v��>�S�>1;��W?��P�4�"?.�f�ִѾqur?<�J�^��/?O�{�:�t�k>=�?�qO>��X��W�2�G=�[?�o?��>��վ�#k�rNv� ��1 ��E$�>^�V?��~?�(q?�:?���>δ�=uE��#h	�0A�j�f��z����"x�r�f���M�x0�OF�(�ݾ.,��2�4��e�νh= %>���>V�>X��>���>��?�!?��(?��3?��=?F?��M?�"T?�Y?��^?�7c?g?Pj?/m?��o?��q?E�s?n\u?G�v?x?y?��y?��z?�~{?|?��|?b}?�v}?��}?�~?Z~?��~?��~?��~?�?p2?�M?�e?}z?a�?ߛ?J�?�?��?��?<�?��?n�?U�?��?@�?o�?1�?��?��?o�?��?T�?}�?�?^�?xx뾇~z?ؑ��W�|��g���X��x��`���X=}�?�3R�ms9���?��h���M?FOQ�IPn?�k��{D?���πG���g?K >���ݼ�=�p?�6�=K�p���#�d!�>|n?�1?QƆ��vf���p���5�L>��>?��}?͡i?D�?�u>�����&�S�c��S~���y�֊\�P .�;���f���;�Cd>`/�>�?^6?��P?f�d?r�r?"N{?b?J�?	}?]x?�Fq?�i?}�_?g0V?~
L?��A?k7?�<-?�H#?ҡ?�T?}j?���>$��>#Q�>��>�)�>M�>Y6�>�ݝ>';�>jE�>v�>nzn>92^>��N>��@>Ď3>$5'>A�>b�>��>�D�=?��=G��=���=4��=��=oh�=��=	��=꺃=1u=�/d=�[T=��E=q�7=�'+=%G=~9=�	==] =���<�S�<���<o��<+�<��<�'�<�b�<�\�<kz<!�h<W�X<�Qc��:S>�t?~�!>5ھ!��p����>+�?��=\�z��y0?����Ծ�2?Ge��>���=�$��V?sk ���پ��}??Bj��5~�6G�=��~?C�>l�D��!g��f��R�K?��v?M��>
Ǭ�Z:b���z�v�*��5��M�>ON?~�|?�u?L@B?j��>F��=�6`�!��Ш;��Oc��sy�O����y�C�h�n�P��3� �,l�ઢ��5C����f�5=�q>�`|>5!�>��>T�>�5?Z�?�X'?��2?�z<?;*E?��L?GoS?�@Y?T^?��b?��f?�i?��l?�io?p�q?��s?�/u?��v?��w?��x?��y?�z?�k{?�|?f�|?}?l}?Z�}?�~?+S~?��~?V�~?k�~?�?/?K?Kc?Jx?z�?9�?ݧ?��?�?��?n�?�?��?��? �?��?�?��?S�?m�??�?��?/�?^�?d�?F�?X�~��??�(	?��)�s�2�}�m�j������?�Mb?x�#��𲾰f?y��^�v?Exv��?4to���?�L:>�g�W>J?a�>��}�T�s���~?:�x>*�a�T�<��8�>�{?�"0?$�)��[�O�w�h�	�)� >ք2?�z?��o?`�"?�-Q>�*x���>�^�\�|���{���`���3�z��������ݕ�ˇL>��>��?q�2?�5N?q�b?utq?��z?�?a�?�}?D�x?�r?j?<a?�OW?�1M?P�B?�8?�_.?d$?��?�[?*f?��>Bl�>���>�j�>?��>���>�>y�>�d�>�[�>H��>}ap>1�_>��P>�XB>� 5>��(>��>!>�>=M�=���=�}�=
N�=�)�=���=λ�=�Q�='��=�̄=�.w=3
f=qV=�;G=�h9=��,={� =�m==Ph=���<C"�<���<�<ٟ�<��<�j�<��<9t�<�|<n�j<PZ<s��HW)�(X?EVR?�#�>>\�>��d?@Q?�Y�'�D�7�o?Õ� =��N�>ef���l=l�>�S�@�{?' ھi��9r?�>����1˽pRx?�:�>�3-�/�r��x9���9?w|?d?r��>�W���}�W|7�$�I�>�vE?�z?J^x?�I?d��>Ь>�;�d���g6���_��w���l�z�	Dk�f�S�(m7�����쾳��F�Q��Q���/=-�>�q>�K�>'Q�>��>�z
?�?��%?�d1?�m;?_>D?�K?��R?�X?��]?Ib?23f?R�i?ґl?%o?�aq?ISs?u?�yv?Ǿw?��x?)�y?�z?�X{?�{?�|?��|?Da}?	�}?�~?-L~?��~?�~?��~?�
?�+?H?�`?v?��?��?l�?m�?Ӽ?��?��?`�?9�?I�?��?w�?��?��?�?4�?�?��?
�?>�?H�?/�?Դ��쨽7�}?Q�J>e���+�/^��b�>�wl?u6?��l���=��#?2�o���~?�p�|}w?D�J��>��>־z��"?l�?�r���p��w?�(�>DN�&�Q��G>�t?EC?�Ӈ���M��C|���G7Q=eJ%?�-w?��t?��-?u��>X�G��y��Y�A{�V6}�g�d���9�J���2��2B3�~�4>�k�>�'?�
/?�zK?��`?�p?��y?��~?b�?��}?�fy?��r?pk?�b?�kX?4VN?�D?ڸ9?/?�}%?P�?b?a	?�� ?p2�>��>� �>(�>��>7۫>�X�>��>_r�>���>RHr>��a>.OR>F�C>?r6>��)>-4>�L>�"	>wU�=���=A�=i��=!��=k�=(�=���=B׏={ޅ=f,y=��g=�W=��H=|�:=��-=��!=7�=.=cs=	��<���<B�<���<��<�p�<­�<���<؋�<E"~<�}l<�\<��I?� �:J>��z?L_?��=?��_?�}?�'�>��X�!�¾p�~?��D�JA�>�����G�=�邾?ir���g?�gN��iE�[\?ax�>��x�t����k?J�?���!{��"���%?�o?�-?�E.��L�t���|C�u@��q�>��;?�w?{?��P? �?;AD>B��(l�dG0���[���u�5����{�zom�{�V�&�:��X�lq��1�����_�j�Ľ"��<�>��f>�q�>���>�5�>��?��?��$?�00?]_:?�PC?%(K?�R?X?@]?h�a?�e?�?i?RBl?�n?�%q?/s?��t?Rv?��w?/�x?��y?�z?�E{?g�{?�s|?#�|?lV}?��}?� ~? E~?n�~?̳~?K�~?�?6(?E?(^?�s?��?�?��?,�?��?��?��?��?��?��?6�?�?i�?N�?��?��?��?|�?��?�?,�?�?���>u7Y��Y??K X?�Mr>^��>�4-?pX|?��=��~��?�3�>GK;�7�e?h2k���V?�����Z=x#?���z��>�,?,�^���ξ��h?0�?[6��~c�A��=�wj?��S?R�	=��>����~*�C�ü�A?cUr?��x?>8?�`�>�b�)�
��$S��"y�Ck~�N�h��?��U	�֜��ѻ��.�>%�>v�?�p+?9�H?��^?��n?��x?�w~?K�?NI~?�z?1�s?��k?�c?�Y?�wO?�0E?��:?A�0?y�&?��?ug?[[
?=�?���>0[�>{��>K��>g��>(-�>㕡>E��>���>� �>�.t>��c>��S>qqE>��7>r?+>�u>,x>:
>Ѯ >��=i�=���=�8�=�׳=}b�=oɛ=[��=?��=*{=�i=��Y=qJ=�e<=�S/=$)#=��=�L=u~=!��<{��<���<]:�<���<�˪<��<�<w��<Y�<bn<c�]<�q?y��*��4	?ٺx?��?�x}?�<?Dh,�K���
�=}WZ?bv��.?���",�>:-��=P?y��9E?��=Md�;�<?���>�@j���վ/�Y?n�3?-�꾂U�?�;��?��?�*?ձ����>�M��5�N�
��cAs>e�1?v�s?f9}?�W?��?K�k>!B��վAR*�HX���s��b���|�S}o�_�Y��>���������鸾G;n���߽+i�;ݑ�=6B\>	��>���>CI�>��?S�?`A#?:�.?�N9?�aB?�VJ?�MQ?'dW?��\?�Va?9`e?��h?7�k?j�n?j�p?��r?C�t?�*v?qzw?o�x?Ǚy?�tz?82{?��{?e|?��|?~K}?,�}?w�}?>~?Fz~?w�~?��~?�?�$?B?�[?�q?��?3�?��?�?��?��?��?��?��?8�?��?��?�?�?��?��?��?Q�?��?��?�?��?I�x?ogn�������x?�U?��?f�5?��y?��>?���ܘU��W?�b�2�Ծ�-?�<�G� ?�3����_�Q�O?��v�x)|>j�O?7�B���8�S?�b&?����q�%�T�o]?o�a?�m>�$.�����P9�`,ʽ}?�wl?�{?��A?���>�ɽ�� �X�L�Y�v�YI�rl��hD����訾����O�>9H�>�6?��'?��E?��\?�Dm?�x?�~?�?a�~?ƕz?}�t?z�l?wd?��Z?�P?�RF?��;?�1?��'?o�?�k?�T?4�?��>��>]+�>$�>��>�~�>�Ң>6��>���>�>Ov>Me>��U>}�F>XU9>�,>ٶ >��>3Q>ݲ>�y�=���=;�=��=�C�=͵�=U�=p#�=�=�'}=h�k= B[=yL=��==��0=wt$=�
=�k=��=8��<��<
��< ��<^��<�&�<�3�<��<��<��<TFp<�_<��m>܊�>���a�s�|�?ZAJ?,4?��b>�+�~ib�b?X�	?�/}��h?��;�p�-?%G�Ezr?��y�iq?77�>�x���?'Q&?�JT�C��.�B?e�K?�5�����j���>��}?�;?yb;��0��~�w�X��'ľH�6>#N'?Xo?�~?� ]?��?B9�>,̘���ž�1$���S���q��~�q�}�Pmq��h\�o[A��{"���f>��_z|�U����7���=�Q> ��>%+�>X�>&<?�j?�!?��-?�<8?IqA?��I?X�P?�V?(\?S�`?��d?�h?��k?ETn?{�p?Ƶr?Vzt?v?�Ww?tx?�y?^z?�{?��{?fV|?��|?z@}?��}?2�}?�6~?t~?�~?�~?��~?A!???�X?So?��?��?
�?��?��?��?(�?=�?_�?��?H�?D�?��?��?J�?��?x�?&�?��?��?��?��?�8?�;��ƎF��A ?�f|?�5z?k�}?��m?	��>��X�fx���M~?�)
���*��>���>~������n?��_�ty�<k�i?r{��\2��S9?5BB?U����dz��U3���L?��m?�m>a����~�B�F�$%1�,�>ǚe?�0~?��J?t�>��L�Į���2F���s�J���Xo���I�&����������(�=��>wR�>!$?��B?��Z?��k?�*w?ޡ}?��?��~?&"{?�@u?!�m?�e?��[?s�Q?�rG?|=?H�2?m�(?��?�o?�M?��?;�>Z��>���>N��>�S�>
Я>:�>��>���>	�>u�w>=g>+HW>j�H>��:>��->�!>�>Ch>�>^�=��=O��=OG�=_��=	�=8A�=�I�=��=\%=�sm=��\=p�M=�b?=�2=ɿ%=G?=�=��=N��<�\�<�M�<�[�<4s�<ց�<iv�<�@�<�ҋ<��<�*r<�Za<�a1���v?��!�Ս]�+�ՊX>`> Y���>v�Sh��`?e�=�W���?��m�sb?�Do��?�\a�Lq�>ZA�>��|�>�@H?5�7�0�0�j�&?�_?�%U�#|����X�>�y?AK?s��=!!��#|�בa�Kn���=y&?�Cj?�?h�b?j"?Gx�>D�)��������O��Co��&~���~�6?s�[	_��D���%��;�8�ǾV����
�_4����=s�F>V̒>f��>jb�>x?z�?�| ?/�,?)7?@?��H?��O?� V?~�[?�``?�d?r)h?1Pk?�n?op?v�r?Lt?��u?
5w?>ax?�ey?PGz?�
{?��{?�G|?��|?`5}?�}?��}?�/~?�m~?��~?T�~?��~?�?<?MV?
m?��?ȑ?��?X�?l�?�?R�?��?��?$�?��?��?]�?e�?�?L�?E�?��?t�?��?��?��?�F�o�?a�{���֊?��b?�i^?�|?,&��
����U���q?EV����>.��<`���A=��>*�1��X~?y<���C�6z?����P�+�?��Y?"��)A�/_��}�9?_fv?���>Qj��|�lAS�15|���>�]?��?cQS?���>��B�ؾ	1?��~p����bKr��dN�0��wþ��vϨ=Д>�>D ?�??�\X?Q2j?�/v?�%}?|�?s(?�{?I�u?��n?�f?#�\?��R?Q�H?L<>?��3?��)?!�?.r?�E?X~?�A�>B^�>;S�>
�>��>� �>}K�>o1�>2ʏ>��>`�y>I�h>2�X>8J>8<>I/>D9#>��>H>ݺ>xB�=)N�=���=���=��=a\�=}�=�o�=%�=~��='No=3�^=fBO=}�@=�3='=�s=�=��=c��<J+�<��<F��<
�<�ܮ<K��<tm�<S�<�!�<�t<nc<�){�*�I?�4:>�u�)TK�n��P���YU��u��K�m�??é�����o?(��`L}?���XBw?�8�}X�=�-?
E{� �X>9�b?�0�ݸL�x�?=Ao?�-��W�t�aF0���>Y�q?H�X?��2>ŗ�!x�vi�������o=n�?��d?��?�g?�=*?�y�>$Q׺�G���s�!K���l��I}�� ���t�ߑa�n�G�j)�����ξ�g���v�.������=�;>��>tQ�>`h�>ٱ?�E?}?�N+?�6?c�?? �G?� O?�}U?�[?��_?�d?B�g?G�j?f�m?;1p?�Jr?ot?}�u?�w?�Bx?/Ky?l0z?(�z?j�{?�8|?�|?/*}?P�}?w�}?](~?�g~?7�~?��~?��~?0?�8?�S?�j?�~?�?�?�?L�?
�?z�?��?�?��?W�?s�?�?�?��?�?�?��?N�?��?��?��?ln���?mG����b��ƽ��>���>�L���?���b���>��3?��|�(O.?����H�E>���q0?�]�`t}?k��;�?�����$g����><�k?��_���v�Ҿm$?]m|?" �>d�(Dw��5^�+�����>U?��?[?OE�>B=��þ@�7�K�l�&��Z�t�LS���!�� о^r.��p=o��>~��>l?��<?�V?��h?�'u?��|?	�?la?�$|?��v?�~o?Jg?��]?6�S?F�I?X??�5?��*?L!?�s?�<?�j?��>^�>4��>@��> �>�q�>z��>�Y�>�ߐ>��>�{>%�j>�Z>�K>B�=>l�0>az$>�%>C�>о>�&�=S�=�'�=�U�=#��=���=�=���=97�=L��=�(q=�n`=Y�P=�_B=��4=iV(=��=��=��=w��<���<���<�|�<�\�<�7�<-��<환<��<0&�<9�u<�d<���6˼��]?�/�~�R�l��sk�����c)�r��>��c?~6�$p �N};?ؖp�h-{?��v��dY?**��
���T?Jtj���;�Hu?�ܾ�>c����>��y?cli=�Ni��}D�d{*>oNh?l]d?���>�<��T�r�{7p����
K��pe?3^?j�?��l?.&2?�5�>U�=��������kF�"�i�B|����҇v�
d��J���,��d��վ�r�� �%�&�-�fb�=11>���>e޴>j�>���>+�?4�?�*?G�4?�>?G?�dN?�T?n|Z?�g_?�c?clg?ëj?�~m?��o?�r?u�s?��u?��v?$x?�0y?\z?*�z?�{?�)|?�|?�}?��}? �}?!~?*a~?��~?��~?��~?�?�5?�P?ih?�|?P�?��?��?+�?�?��?�?z�?�?��?	�?��?��?}�?��?��?��?'�?y�?��?��?=�O��'?���>N�r���?�+���\y�#_�u�|�+���Q?�8�>w���h?�'��Y?2d�xn@?{�w�&1l?���~��0{?��ʽ��v���>�5x?����`{��p��\?׊?�7? ��p���g�N�ƾ�>4XK?ۀ?Q3b?n�
?�|�=e���+0�Y�h�Y��Xw���W�Q�'�)�ܾ�H�;�=H~>�a�>s�?D�9?r�S?��f?�t?A
|?��?��?��|?�Ww?aSp?bh?��^?��T?��J?�q@?�$6?��+?V"?�t?�3?V?I��>���>�x�>��>���>���>0ç>ā�>	��>,�>��}>�dl>�?\>v,M>]?>��1>n�%>"Q>2�>��>�=q��=���=;��=|��=��=���=���=�H�=��=�s=;(b=JxR=s�C=�G6=��)=N�=��=ɵ=�q�<{��<Y�<��<�Ѿ<���<?�<fƙ<��<f*�<��w<ʢf<��?��P�� q?:�>��)���s�Kx�s�O��#��X?C�?xyr�VɅ>�'�>!|A�6T\?YiU�i�(?�(��>zž�ep?�DN��I�o�~?�Ԇ���s�1�z>[=?��A>xxZ��V��t=Oh\?� n?�ޮ>�پP�k���u����*����>�>W?��~?�p?��9?m��>:�=J����
�U�A���f��{���� �w��Yf�ȚM��!0����@ݾIu���i3��z`���m=<&>��>Tg�>sg�>�=�>g?�F?��(?X�3?I�=?�*F?&�M?�3T?��Y?��^?Cc?�g?�Xj?j6m?#�o?�q? �s?�`u?��v?6x?�y?z?�z?��{?�|?��|?�}?�w}?y�}?�~?�Z~?,�~?�~?Z�~??�2?AN?f?�z?��?�?m�?�?�?��?O�?��?}�?a�?��?J�?w�?8�?��?��?t�? �?W�?��?��?-nY=N؝�~�o?v۾���pX��G��q�	�k���!�d~?0V�F�5�?�a��UD?~�H�<!i?d����K?���tA�~k?�ѻ=��~�|�>��~?��=�r��t���>��?!�?�Ꮎ\$h�y�o�V�龍�X>��@?
~?��h?�?R�>�	�� /(���d�΂~�]ry���[��%-�,M�˟a�yo:<(h>��>��?��6?_NQ?,e?��r?gk{?�k?5�?D	}?��w?�"q?�h?6�_?� V?��K?[�A?1:7?�-?>#?�t?P)?A?���>0Z�>4
�>��>���>��>���>���>/
�>��>��>J*n>^�]>�N>^�@>�Q3>i�&>^|>�>��>Z��=���=p�={d�=�a�=V�=�0�=��=�Z�=ፃ=,�t=��c=9T=�\E=��7=�*=�=�=��	=N1 =��<��<+��<�F�<���<���<��<-1�<�.�<лy<weh<��?�s�uĴ>QJg?��<k��� ��m��C&�>��?�#�=&�}��,"?0i=����G$?���I��>�1�<��%X~?�(���Ⱦ��~?�T���7}��ؾ=hp?�ݢ>FH�)�d�p C�iNN?i�u?���>�����c�71z��c(�Ӹ��E��>��O?IR}?�st?� A?<��>��=6f�28�	�<���c�c�y�����Uy�H�h�D{P�Jh3��f��,��o��$�@�\����T>=�]>�!~>Z�>�`�>���>�~?��?ؑ'?��2?�<?�PE?x�L?܌S?cZY?�j^?��b?��f?�j?��l?�to?0�q?r�s?D7u?�v?�w?��x?��y?��z?o{?P|?��|?}?�m}?��}?3~?PT~?��~?2�~?*�~?a?�/?�K?�c?�x?ʊ?�?�?�?�?��?��?1�?��?��?3�?��?'�?��?^�?v�?G�?��?5�?c�?h�?�t^?�rr��`?��>`�6�?�}�����Ww����)!�>]9o?q@���u�o?�}���o?S2p��}?Ku�{ ?���=�3a��R?��>��~��Ȓ�l�?3�T>��e��7��A�>#�|?�h+?'A�I�]�.v������>x}5?Ƿ{?�9n?�O ?|�D>ջ�������_��U}�B{���_��2�f���_ {��J��R> G�>ƍ?�e3?��N?kcc?�q?�z?90?�?ap}?.�x?��q?0�i?��`?�W?�L?�B?�M8?�.? "$?�s?Y?[+?	A�>��>8��>��>�O�>Ka�>�9�>3ў>&�>��>X��>��o>Ȏ_>4CP>F�A>�4>T=(>��>��>t�>���=�Z�=�=���=ν=N��=ll�=��=[l�=���=}�v=9�e=&�U=c�F=}9=Q8,=�D =�%=��
=�)=�e�<��<�.�<]��<�H�<�ħ<W�<�H�<�2�<�{<%(j<�_�>y_�������To?9D3?"L	>�MռM�>JKR?d�b?sK���)V�0e?.���7���>��4h>���>glI�~?�x�N�U�u?|a�={���Zx��fz?p��>7�2�	�p�*4��$>?�g{?+.�>r���gZ�)]}��4�`�:��t�>�G?"9{??�w?��G?��>*a>�-D�rh���b7�]�`��0x���Ӎz�ݽj�CHS�U�6�
���4�b���;N����=X{>3t>�m�>�U�>9�>��
?�n?4O&?q�1?�;?�uD?�(L?�R?��X?��]?8eb?�Kf?��i?U�l?35o?�oq?j_s?�u?݂v?��w?��x?�y?E�z?O]{?��{?o�|?��|?�c}?9�}?�
~?�M~?��~?R�~?��~?�?r,?�H?Va?�v?�?��?æ?��?�?�?��?��?]�?h�?��?��?��?��?!�?A�?�?��?�?E�?N�?��b?I�R�+%K>�k?��8��T,���O�&��'6��bX?s�(?��[��C)�F�;?��x�k�?2��.�|?�X��?�>M��>dcv�#�/?��>��v�J�:��z?j�>�T�x�K�Rm>�9w?F�=?l�ŽjR��{�^����=3d)?Eqx?�s?:�*?%�u>�SV��S���Z��{���|���c�u�7�;� ���� ��k�;>0��>z}?H0?bPL?�a?K�p?dz?|�~?�?��}?H6y?��r?޽j?��a?X?��M?N�C?�_9?9)/?�(%?�q?�?	?3 ?è�>�+�>ԅ�>���>���>�t�>���>�3�>��>���>��q>
6a>b�Q>mC>6>.~)>��>��>D�>���=��=(��=�r�=c:�=}��=7��=�-�=~�=n��=ʑx=�Tg=IW=�YH=ss:=��-=Ny!=�D=��=_"=>4�<�d�<l��<00�<���<��<�K�<h`�<7�<f�}<��k<�z���V?n�z�t^�>=�?UO=?�p?��B?*�?��?@��$��?Y.��r>y�<�o�Y�%�kd	?y�j�ҋo?�����:���c?��>�{�}!Z�I;p?��?����y�~愾�,?��~?�N?E�H��O�aM���?�	�v��a�>o�>?��x?kTz?|N?}�?G8>�!�� �/2��&]���v�l���{��l��V���9��>��.�hK��+�[��E�����<l�>->j>�>G�>�e�>�D	?��?�
%?�0?��:?�C?agK?)<R?c4X?6j]?�a?�e?�[i?�Zl?�n?#8q?/s?��t?n^v?�w?)�x?[�y?��z?sK{?y�{?x|?��|?�Y}?�}?$~?EG~?I�~?h�~?��~?
?A)?F?�^?�t?6�?f�?j�?��?�?,�?�?��?��?��?Z�?1�?��?e�?��?�?��?��?��?'�?5�?���=7d�M8��jk?<�%?�u&�0]���MϽ�r�>b�?�Dl>/�!�>?��>h�R���r?Wv�[�e?��*���>~?���U0?��?^g������n?Ʒ�>��?��a]�#��=�n?��M?/o���D�5B~���$�%4�;!�?�Bt?*=w?I4?`֒>N�(�}�|dU���y�<~��@g�5=��������t���%>?Ը>`?k�,?лI?��_?r?o?LJy?��~?h�?(~?�y?qs?
�k?ιb?�Y?O?��D?-p:?F50?.&?�n?!?)�	?a]?�N�>D��>c��>��>]��>8��>��>�H�>� �>���>�ys>$�b>pYS>��D>Z7>��*>��>�>�	>�M >x��=+\�=��=���=�O�=��=�S�=���=2��=lz=,i=��X=L�I=h�;=��.=��"=�c=�=�=��<	�<P�<��<���<�J�<Hx�<x�<;;�<�h<�m<��~�e�?�@I�&ɾsC?��?�t?e�~?o^?§%=�y�o6��5�m?�h��Z?a����>���8�>? �|�+�S?:�]�'Z�^nI?�P�>ϓp�\����"a?[�)?ٍ � 5~�d*���L?��?|�#?x�C�u��$�J�qE���̄>
�5??u?�|?:�T?�k?�\>s���r�۾��,���Y�իt�����|�Ǽn���X���<���l���+��}�h���ս�A<S�=JC`>�d�>^4�>O��>�?��?��#?�n/?��9?.�B?��J?&�Q?�W?��\?>�a?ȇe?/i?&l?n�n? q?M�r?J�t?�9v?C�w?��x?j�y?�|z?v9{?��{?�j|?=�|?�O}?��}?��}?�@~?�|~?u�~?f�~?S?
&?>C?�\?or?g�?Օ?�?a�?�?J�?K�?9�?9�?l�?��?��?1�?�?��?��?��?a�?��?	�?�?�YJ���G?>���>pF~?c?C1�>���>�a?Żb?���n�u8?5�=�����I?�S�';?���˽޺=?4v|��ӭ>�_A?�O�������]?�?j�'�V�k�@�?;�]c?�[?�ݶ=_�5�A����2�\~��?�/o?�z?��=?��>4���Ue��O���w���~�)�j�
B�������pª�!U>Y��>�5?�g)?G?��]?�m?�}x?�@~?��?�x~?VUz?+t?�yl?(�c?�Z?�P?��E?�~;?�?1?Z2'?�j?��?��
?;?��>IJ�>gx�>M{�>�M�>��>�F�>�\�>�#�>��>B>u>�d>^�T>_NF>��8>��+>�( ><>��
>�?>]��=& �=1��=��=͢�=��=�y�=e��=�=ZF|=��j=�~Z=�VK=[;==/0=��#=��=�=n=h��<���<���<��<Y�<r��<���<���<p?�<~��<,po<���qP ?e��{o��V�=
�J?K]p?�M`?;;�>Ӹ���w��k�>��1?t��uS?�x�L�?��.�$�e?�~�)�+?y�)>`�p���'?4L?�^����mM?!�A?�SȾ���mK��?:�~?�Q4?���7��r�DT��~��]�Q>C,?�aq?�&~?�Z?׮?Ѥ�>[�����̾~�&���U�<�r����z}���p��7[���?�� �7�����6/v�����9v�=�BV>Sۙ>��>��>X?�?�|"?�M.?O�8?��A?Z�I?
�P?s
W?Kf\?�a?�$e?�h?E�k?[sn?|�p?8�r?��t?�v?1gw?��x?M�y?hz?W'{?-�{?�\|?q�|?\E}?ۢ}?��}?:~?�v~?y�~?�~?� ?�"?o@?Z?Tp?��?A�?��?2�?�?g�?��?��?��?��?}�?r�?��?��?g�?��?��?9�?��?��? �?�Hq�x�w?�B-�:ܾ�IN?z?	�W?��d?lW?��?��,�sW.��p?X���p���	?C���b ?�:�l�����`?/m���>��]?�D2��� �"�G?��4?j\�g-v�潗oU?��g?z�9>�p%�:���@�1T
��?=i?!}?KIF?:��>�H���!��٥I�(Fu�&��L�m���F�����[���۽���=��>���>�%?phD?��[?�l?�w?�}?��?��~?A�z?��t?�Pm?��d?�[?� Q?��F?w�<?I2?w5(?$f?��?s�?4?t��>���>���>O��>��>�#�>Pm�>&q�>\&�>��>�w>�*f>*oV>ݾG>�	:>T@->�S!>�5>}�>�1>5f�=��=K�=�=���=�[�=���=��=���=� ~=�l=�\=-�L=M�>=ve1=E%=��=�=�=���<p�<Iq�<���<s��<RЬ<7Ѡ<@��<�C�<���<�2q<��>����_u<?�g�B���@[><+
?���>�̒�(CX�h�<��u;?
$�>�p���x?�W�XaJ?�z]���{?p���>�K�>=u}����>��7?]G�/M ��5?2V?lw��Za~��Z����>�{?>\C?16=1)�H�}��]�@Ӿ��>��!?��l?.H?��_?$�?���>��h���$!���Q�M�p�߇~�o5~��Tr�9�]��B��1$��`���þ]������e8����=�<L>JN�>t�>�i�>�_?(�?�2!?�*-?e�7?7�@?I?�:P?tV?�[?/�`?/�d?^Yh?�yk?�1n?��p?ɛr?�ct?��u?�Fw?�px?sy?�Rz?{?[�{?0O|?��|?;}?�}?"�}?W3~?q~?t�~?��~?��~?�?�=?�W?6n?��?��?P�?�?��?��?��?��?�?k�?�?�?��?��?)�?k�?_�?�?��?��?��?��i���>�]�=��r��>>�b?.2?ix}?�<N?�U)=�q�Y��wI?}�-�E>Wh>� ����j>�E�=jp�|Gw?�&R�������q?���F�?���,?��L?�Lݾ;�|��{g�;E?
�q?=J�>n��F ~��AL�ӼP����>�pb?��~?�{N?���>fr���NC��nr������p���K�dZ����������=��>�y�>y"? �A?(�Y?�k?�v?-o}?��?X?�Z{?��u?Z#n?{�e?\?J'R?��G?y�=?�P3?g7)?_`?��?��?��?<�>Lf�>�h�>�@�>��>=]�>���>-��>�(�>�u�>�x>{�g>��W>@/I>za;>�.>�~">�L>)�>�#>)�=�G�=^��=B��=I�==��=�Ş=�ē=p��=��=�:n=��]=�SN==@=��2=�J&=u�=%={=�n�<~�<��<{�<f�<2�<���<ݾ�<�G�<Ȋ�<��r<Ay?4!m�q~?X6����{��[��*/��0�������5����t?����.�;�F�}?�Vy�~q?02y�]�~?��Q���>,1?�x���>�]T?>�)�=���?�f?����_y�Zn#��`�>,Xv?��P?cn�=�R��z�e�������=T?6�g?K�?}�d?G�%?�v�>�C���Ю��7���M�b4n�M�}�[�~�d�s��`���E�l'����ʾ7M�����Ⱥ����=51B>�>n�>r��>�?�0?X�?N,?��6?2@?lVH?��O?��U?�^[?-`?�\d?h?�-k?��m?;Up?jr?�8t?	�u?^&w?�Tx?�Zy?�=z?�{?l�{?aA|?��|?�0}?��}?Z�}?�,~?.k~?e�~?Z�~?�~?@?�:?0U?l?�?�?�?ͬ?�?��?��?6�?{�?��?��?��?7�?D�?��?4�?0�?��?d�?��?��?O22?
����U?jb������>p�>?	/<?};�>pP��fW}�E >�a?D�h�Σ�>�G㽥0ڼ�Z��e��>U�B� �?p-��f���r}?�Eξ(�X�՜?�z`?�����o���`2?|�x?-x�>vL�K�z�e>W����c��>��Z?�?�V?���>a��<ޅѾf�<�Eo����FBs�%P�����Ǿ���_�=��>���>��?��>?`�W?�i?��u?U�|?W�?Z=?��{?a8v?V�n?mpf?m]?#+S?��H?��>?#W4?'8*?�Y ?_�?1�?��?���>G��>&��>���>87�>���>���>��>5+�>�g�>(�z>�wi>^�Y>��J>�<>k�/>��#>"c>��>�>���=���=h�=jW�=��=�ҫ=|�=X֔=+��=��=��o=�O_=�O=,gA=�3=�~'=e�=/=�==�<���<���<Mx�<Yj�<V�<%*�<y֗<L�<�|�<2�t<�7?G[���?���>4�X�ޯl�Mv*�8�-��Dn��b��1>S�|?���2־dma?/k~���?&}��$o?�H&�.��<~�<?��v��3>Nj?���CU�&!�>��s?x�\q�A�7���p>��n?��\?#Q>�
�M`v��k�h���N=R?�eb?��?B�i?-
-?2�>426<c���:)�	{I�޼k�2�|��K�ԃu��nb�Q�H���*��
��HѾ�ގ��.�*����=� 8>e*�>�÷>��>�?O�?#�?6�*?�5?�5??!�G?"�N?5DU?��Z?�_?��c?-�g?��j?c�m?�p?�7r?t?F�u?�w?8x?�Ay?b(z?/�z?_�{?y3|?��|?A&}?�}?��}?�%~?Me~?L�~?��~?3�~?�?�7?�R?�i?~?s�?��?��?�?��?/�?��?��?g�?,�?N�?��?��?��?��? �?��?@�?��?��?��z?/�~���u?�6��&�w�����(*D>�`>WY?��#X��N���?�|?�����A?�,߾�4�>�'����?�Ef��=z?�"��0*꾽�?�@p��Ul�Zs�>��o?��7�g�~����˧?r�}?v�>�h۾�u��a�������>�cR?l�?�)]?�`?��y=k���R�5�h�k�Z����u��ZT��b#�ѕӾ�5��U=��>+�>�U?�<?�jU?�h?X�t?�u|?��?�o?oF|?��v?��o?�Tg?�
^?Z,T?�I?(�??�[5?�7+?�Q!?��?�?��?���>��>�V�>��>G��>�ϲ>�ߦ>���>f-�>TY�>O|>;k>�[>�L>�>>�1>O�$>�y>d�>�>x��=���=k��=���=0�=��=h�=��=䃋=�ׁ=]�q=b�`=rPQ=�B=FG5=4�(=T�=9=��=��<t{�<"#�<��<LŽ<�<�V�<�<BP�<o�<�zv<��J�GSĽ�N��v?�����	t�>B{�ʾy��}{��/	�Q?��Q?�^K�.� ��<'?fff�&Wu?�o���M?��߾��W���]?2�c���K���x?��ľ[vh�}�>-�{?)��=6�e�ڱI��>�3e?rMg?׌�>H$����p���q�Q�������� ?�O\?��?��m?�N4?�g�>��8=������E�*i���{�ڦ���v�v�d��|K�1�-�rb�,�׾j��޹)��;��Ƈ=�.>���>���>�J�>x��>+>?8K?��)?í4?"Q>?��F?�/N?٪T?TZ?YD_?8�c?�Qg?��j?|jm?a�o?fr?<�s??~u?��v?}x?)y?�z?��z?5�{?w%|?h�|?�}?�~}?��}?�~?`_~?+�~?~�~?Z�~?�?5?4P?�g?(|?Ӎ?�?_�?ٵ?ɿ?d�?��?L�?��?��?��?��?��?j�?��?��?��?�?p�?��?��>��+��N�>�� ?"�a��X�:�ᾠ<��Ď.������߾��_?�j>i2p���p?� 6�w�?�H���J?){�Ǎf?�ȗ�a!���x?��q��Py����>�z?@�S�y�4�?��?��?ܓ����n�܈i��BξӇ>�2I?�G?Śc?��?�c�=�l����.�O�g�*3�<�w� xX���(�te߾}M����<~y>c�>?�?9?�6S?Ɋf?��s?��{?�?��?��|?[{w?�p?�4h?��^?�*U?y�J?Ҭ@?X_6?6,?<I"?ª?\g?��?�!�>,�>3��>�e�>���>��>��>��>o/�>�J�>�~>\�l>
�\>�M>h?><B2>�%>,�>��>z�> q�=x3�=f$�=�/�=<B�=WJ�=Q7�=���=���=�Ă=�fs==�b=��R=/D=��6=��)=C=C$=�=@��<�)�<���<�a�<> �<�۱<��<��<vT�<7a�<�=x<[�n�^�=?��i�gW]?н�>sK	���e��xm�B;�s-��8f?���>m2y���>��>�4��pR?��K���?+�H��޾�}t?��F�NMt���?�yh��(v��WZ>��?F�]>s�V��pY�d3=��Y?��o?p��>�Ѿ�Nj���v��I�����[^�>`�U?��~?�q?}L;?4}�>�ˡ=�q��3����@��Xf���z�R��
Ix���f��7N���0�t��v�޾X|>6��+k��c=b�#>��>v�>���> |�>>�?��?>�(?�3?k=?��E?M?�T?U�Y?��^?�+c?��f?Gj?!'m?ڦo?��q?�s?�Wu?d�v?��w?y?4�y?��z?�|{?[|?.�|?%}?�u}?��}?~?iY~?��~?�~?y�~???2?�M?�e?Dz?0�?��?%�?ɴ?ݾ?��?'�?��?^�?G�?��?6�?f�?)�?��?��?j�?��?P�?z�?�y���E>�OܾC�x?X�����}���d�ƜU�|�w�b�b���=�?�	B�<���?<�g���K?�O��Rm?���I�E?�H��9=F�^{h?���=�{���=5X?oӰ=K q��"��>�~?"x??h���f�*�p�,o��O>vE??3�}?&li?�.?m�>�甾'��c��]~�V�y�he\��-��뾭7e��<e>g��>` ?y*6?
�P?u�d?
�r?T{?d?�?H}?�x?�?q?9i?f�_?�&V?� L?��A?<a7?63-?�?#?��?�K?'b?���>��>�B�>���>I�>%A�>%+�>\ӝ>O1�>3<�>:�>Rjn>-#^>��N>y�@>��3>�)'>��>z�>O�>�3�=8��=Y��=���=C��=��=6]�=3�=O��=ݱ�=) u= d=BMT=�E=��7=�+=0<=L/=��	=hT =g��<ZD�<���<0{�<��<���<N�<�X�<[S�<6 z<FO�T.{?�g���q>bAr? �>B�u�������>W�?�]=�\{���-?����#ھI�?���=��>!bk=SQ"��,?��!��]־�1~?���?~�:u�=D?���>�rE�{�f�򘀽)%L?T�v?�~�>((���b��z��&*����<�>�N?�}?-�t?H B?�H�>^�=�ka��<�f�;��lc��y������y�m�h���P���3����,徖k���B�0��;�7=��>��|>J�>���>)"�>�D?M�?cd'?��2?��<?2E?p�L?:uS?�EY?�X^?��b?�f?�i?Q�l?�ko?f�q?��s?e1u?�v?��w?��x?c�y?׷z?�l{?&	|?ߐ|?z}?`l}?��}?%~?fS~?ˌ~?��~?��~?�?+/?&K?ac?]x?��?G�?�?��?�?��?u�?�?��?��?$�?��?�?��?U�?o�?@�?��?0�?_�?���z�f?#ew��W?W�>��,���{���?t�@a	����>;�k?%��־�dm?��~��q?(%r�?p~?l�s�FJ?�D>�c�l�O?E��>ȫ~�s��|W?�D_>�d�d�8�-C�>�|?L�,?�m:�$]��v�'��M~>u�4?a�{?�n?�!?�gH>���J��x_��<}��`{��!`�3�b���H�|���e�9�P>ە�>�C?'*3?��N?Bc?I�q?p�z?�+?��?~w}?c�x??�q?��i?��`? W?� M?��B?�a8?&/.?�4$?�?�/?(<?a�>F �>���>�&�><i�>`y�>cP�>k�>3�>q-�>�̀>p>.�_>�_P>�B>��4>^T(>�>��>�>M��=�z�=D2�=��=D�=���=��=��=��=���=��v=�e=��U=��F=)9=P,=[ =T:=�
=�;=���<���<�K�<"��<�a�< ܧ<�4�<�\�<�E�<��{<Ňk=���>����H�	��i?��<?��;>���<�[�>X?p�]?��ƾx|Q��fh?ơ���ͽ�!�><'�����= S�>�GL�g{}?	N�Zc�a�t?5i�=����Œ�D�y?�X�>�[1��@q�T&�|�<?��{?�� ?������Y�Y�}�@d5�T�>�>r�F?�{?��w?�gH?���>9	>��A�d��67�j[`�3x�����z�Z�j��zS���6������pᨾ�1O��Ť���=�>B|s>��>s�>���>�
?UT?�7&?��1?�;?�eD?�L?��R?R�X?��]?2]b?�Df?��i?�l?�0o?�kq?�[s?�
u?B�v?p�w?��x?k�y?̤z?\{?��{?y�|?��|?c}?��}?(
~?YM~?��~?��~?��~?u?8,?�H?*a?rv?�?ט?��?��?�?��?��?~�?S�?_�?��?��?��?��?�?>�?�?��?�?C�?/g����b?�kR��I>�k?��1�<,�˟O���%�>�0��X?t�(?��[�+%���;?,�x�M�?�����|?�W���>Vݴ>�lv��/?���>��v��%;��z?A�>a�T�'�K�m>Y5w?��=?$KŽ�
R�){�֒��Ö=�\)?ox?y s?L�*?��u><8V��N���Z��{�Z�|�Ԭc���7��� �?#�������;>G��>�z?F0?�NL?ɋa?��p?�
z?O�~?�?7�}?�6y?%�r?h�j?H�a?�X?x�M?��C?�`9?�)/?<)%?Nr?4?�	?� ?ĩ�>�,�>���>δ�>M��>bu�>G��>�4�>��>I��>��q>7a>S�Q>�mC>�6>�~)>c�>i�>��>и�=��='��=�s�=A;�=K��=���=a.�=�~�=	��=�x=�Ug=
JW=�ZH=Kt:=e�-=	z!=\E=��=�"=X5�<�e�<_��<1�<j��<v�<�L�<a�<�7�<��}<�_?v��?{��w�>g�?Z�=?��?wC?��?#�?�@�"����?F.���r>�{�<]��&�[�	?G�j��~o?�����':�3�c?)K�>5�{�Z��3p?1�?:���y����T	,?1�~?�Y?�H�E�O�.N�b�?��w�Q�>�>?��x?�Uz?�N?��?i]8>6�!�)��	2��$]���v�J����{�Q�l�#V�}�9� A��2�O��F�[�TU��:[�<ˍ>8j>Q�>�D�>�c�>�C	?��?�	%?Ѝ0?�:?��C?�fK?�;R?	4X?�i]?��a?��e?~[i?SZl?��n?8q?�.s?}�t?X^v?�w?�x?L�y?��z?hK{?p�{?�w|?��|?�Y}?z�}? ~?AG~?F�~?e�~?��~???)?F?�^?�t?5�?e�?i�?��?�?+�?�?��?��?��?Y�?0�?��?e�?��?�?��?��?��?'�?K|�>3�>�,ʽF�)�p?N�?�ڲ����������>E?V�>�N~�Đ�>,��>M:V�=�t?.�w�b�g?�F.���/>d�?�c��-	?�e?kbh�#���g�o?Ja�>�TA��M\��� >HUo?3�L?J "�X�E�~�!�#��C<�u?��t?��v?��3?*<�>��+�����U��z�z�}�:g���<�����ɕ�#n�W*'>�|�>�?-?��I?��_?�Uo?�Wy?]�~?��?p"~?^�y?bds?&�k?[�b?�
Y?	�N?Z�D?�]:?X#0?�&?�]?��?��	?N?�2�>}��>��>  �>��>"��>��>�5�>��>���>3[s>��b>�>S>�D>C7>t�*>��>��>��	>�= ><��=@�=���=8��=�8�=�Φ=�?�=`}�=y�=FLz=��h=k�X=��I=��;=��.=��"=bP=�==
=���<+��<.5�<��<G�<�4�<"d�<Fe�<�)�<8H<�Db?��|��~?[R�m��XK?�?�4q?&m}?�c?됚=w��!��Kp?��e��&?�E��$��>��ؾ"�;?;2|���U?<<���$X�bpK?���>��q�^���Lb?��'?Id�;�}������?��?}�"?�t����D����I�]J�����>�a6?|u?�^|?�FT?��?{Z>S��b�ܾg�,���Y���t�%��ؐ|�%�n��yX��<��a�$���ǵ��5h���ӽ��N<(��=��`>���>hz�>��>�?q�?{�#?<�/?��9?�B?�J?��Q?�W?f�\?Ջa?e�e?�i?&l?Ƹn?�q?�s?#�t?3<v?g�w?h�x?�y?P~z?�:{?��{?kk|?�|?BP}?M�}?
�}?A~?�|~?˰~?��~?�?B&?nC?�\?�r?��?�?&�?u�?�?Y�?X�?D�?C�?t�?��?��?7�?"�?��?��?��?d�?��?�?�?."3���1?]�|��k�>��y?eg?=�>���>_�W?,�j?�?�t��w-?q�=C�'�P?��Y�x�A?���r���8?��}�aA�>.�<?�S�|���u`?�?�+�k�i�W�<	e?#Z?��=��7�C��p1��f�@�?.�o?�+z?�O<?�S�>�����zP��x���~�k*j�lA�� [��C'���b>hU�> �?��)?vG?��]?9n?l�x?�M~?��?(n~?�Bz?�t?�[l?*�c?��Y?]�O?�E?�Y;?�1?�'?�H?��?��
?�?���>��>�D�>�J�>< �>���>e�>77�>e �>
q�>| u>^Jd>y�T>F>�8>��+>��>3�>V�
>�>�e�=���=�K�=)��=�t�=���=�Q�=|�=.f�=�|=b�j=�FZ=�"K=�
==��/=߷#=i[=��=��=E��<ņ�<���<���<%*�<aa�<�{�<yi�<��<q��<��=��6��M8?����d���]>�X?�7w?ٴi?�	?��̾:�{���>�D<?��~� �K?���"P?-'�`ea?�w���1?�,>�Cn���,?�4?��a��2���_P?,r>?fGо������]�?H??�(2?e�@�W�8����3�R����HY>�k-?i�q?�}?�Y?��?6X|>o6ý��ξ��'�'IV�r�r�%-��^}��Vp�D�Z�T�?��x �|������_t��`����:ir�=x�W>z�>۬�>��>z<?�N?n�"?;u.?�8?o�A? �I?u�P?�W?$x\?'"a?^2e?ܻh?��k?C|n?9�p?��r?��t?�v?�kw?��x?��y?�jz?�){?T�{?�^|?�|?�F}?�}?��}?�:~?�w~?(�~?��~???#?�@?oZ?�p?ԃ?x�?�?[�?*�?��?��?��?��?��?��?�?��?��?p�?��?��??�?��?��?O�?c�}��?��K�qی�8&c?�o? +C?< U?m�?Zt?���?��Gh?�M������?]�)��?ŏr� ����Z?f3q�ڬ:>��X?��8���v�L?�/?�/�vMt�䐵�݂X?Ȥe?c{&>��(����(|=��x��~�?��j?[�|?��D?N�>OU�����g�J���u�z��m���E�<z�լ��(ѽ��=��>i� ?n�&?_�D?"\?��l?q�w?h�}?k�?]�~?4�z?ֺt?�$m?�kd?�Z?s�P?��F?DT<?�2?5 (?2?�?Ğ?��?�A�>���>e��>?��>=W�>��>�0�>I8�>�>BR�>��v>��e>�V>�rG>��9>O�,>/!>��>�> >a	�=�M�=÷�=4�=��=~�=c�=�z�=>S�=��}=/&l=(�[=n�L=V>=@!1=��$=nf=�=��=�@�<^�<��<�A�<m�<֍�<X��<�m�<�<�f�<�
K���	>��~�T�?v�� ��>��%?[? _4=�FH��5M�Qf*?N=�>�{v���s?a�M��??CLU�Զx?kpt�P?M��>ϵ{�Ԙ?|1?esL����[�:?(R?  ����~�����E�>�|?$a@?LI�<K#,��~�\[�-;;}�$>o$?��m?�?��^?�?]��>?���*	���W"���R�;�p�T�~��~���q��2]�5NB�I�#�6��i¾Y��|m�q���=_MN>u>�>	��>�+�>:�?�?�v!?�f-?6�7?�)A?!EI?a^P?�V?!�[?η`?��d?Ekh?p�k?Z?n?P�p?��r?�lt?8�u?�Mw?�vx?xy?MWz?�{?��{?R|?�|?1=}?ț}?��}?�4~?8r~?}�~?��~?��~?6 ?1>?)X?�n? �?��?��?@�?4�?��?��?�?0�?��?%�?%�?��?��?6�?v�?i�?�?��?��?	:��-���<i?�콩H[��_�>>Qu?��~?`�?�(c?(�<>�rc�/"Ѿ��?5��IZ�<�>Whվ�5�>r�<�[�nr?1�Z�����Bm?�-�ߙ7�\�4?`F?h�l}{���G���I?�)o?i>}>�����~��I�5p=����>>ed?�y~?WHL?�o�>�K,�U��E�}?s����k�o��OJ�/��6������L�=�֝>���>{p#?�lB?�<Z?��k?�w?l�}?b�?�~?J8{?_u?��m?�Ge?��[?H�Q?{�G?"M=?^3?��(?�?��?v?$�?���>���>V�>K��>>��>�B�>19�>��>^3�>�Jx>"]g>-�W>��H>�;>�(.>[,">��>��>0�>��=a��=�#�=���=��=O@�=�t�=\y�=L@�=Ix=��m=�C]=O�M=<�?=�U2=��%=sq=��=�=0��<���<���<Ԝ�<߯�<K��<�<�q�<4 �<H�<�p�H�_?
�L��H~?���kl�w\���}�=7l�<��o�{�x�꾖�i?��)=&�M�O�?��r�³h?"�s���?̺[�|�>P)?���I�>jM?wf2�+�5��!?m�b?�]?�={����j��>>x?�YM?9I�=���Ɣ{��b�<E���=�I?�`i?��?)�c?�b#?^��>9���������E�N�T�n��~�ި~�(�s��t_�w	E�Ɖ&�O����Ⱦ}��&�Q�����=��D>���>�>��>S.?�?�B ? W,?�6?�W@?�H?Z�O?bV?^�[?�L`?�xd?*h?�Bk?n?ep?�wr?�Dt?c�u?X/w?N\x?May?�Cz?�{?ұ{?1E|?��|?�3}?p�}?��}?u.~?�l~?ʢ~?��~?�~?)?�;?�U?�l?h�?��?O�?"�?=�?��?/�?e�?��?�?��?��?N�?Y�?��?C�?=�?��?n�?��?��y�.�>S�b�W�"?�z��[��"?�`?I\?��	?��������r:ep?B�W�Y�>L�;~
�K�=hш>M3�}�~?��:�tLJ���z?����P���?� Z?+*���S�����9?��v?��>*��C�{�֖S��W~�!!�>�]?8�?��S? ]�>�.�8�JؾH�>��ep�����_r� �N���|þ�k�
l�=���>��>( ?^�??ELX?�&j?6(v?�!}?��?5*?Ϊ{?~�u?֪n?� f?о\?��R?x�H?wD>?��3?��)?� ?�y?�L? �?wN�>~j�>�^�>�(�>OĽ>�*�>�T�>�9�>(ҏ>_�>O�y>N�h>\�X>� J>�B<>�R/>{B#>>I�>R�>]P�=[�=���=���=7'�=f�=&��=x�=Y-�=͘�=�[o=��^=/NO=u�@=̉3=�'=x|=�=R�=���<�8�<f�<���<��<��<�¢<v�<X�<q)�<Ye��5i?��y��qE?+(S>?t���N�f�������W�9st�S�����?����{	�|�n?���ۥ}?��Űv?¸6�Yw�=|�.?`�z�סR>��c?� �sM�% ?��o?�]���Ht���0��`�>��q?M�X?�(5>��C�w�ӫi�J ��h=)?1_d?  �?	h?�x*?2�>���Τ��C�o�J�
�l��B}��$���t��a��G�'�)�`����ξΛ�����T���yJ�=��;>���>�0�>K�>ɤ?C:?6?�E+?�6?`�??��G?bO?�xU?�[?�_?�d?��g?��j?Y�m?s/p?3Ir?t?R�u?�w?�Ax?lJy?�/z?��z?�{?G8|?��|?�)}?	�}?9�}?'(~?Ug~?�~?v�~?��~??�8?�S?�j?�~?�?�?�?D�?�?t�?��?�?��?S�?p�?��?�?��?�?�?��?M�?��?$7�0z?B�b��G?]S�j�W�Mg���>L��>�8=]�5�J�h����>�v<?��z�Ji&?�R����!>�o��b ?I5Y�uT~?*K�L�¾��?&m���
e���> j?.�n����:�̾Dy&?��{?8�>���\�w�B]�4����>��U?W�?=QZ? ��>�-=n�že�8��Dm�u��ͱt�v�R�$!��ξ��+���z=��>���>r�?Q4=?APV?�h?Du?~�|?��?�[?�|??�v?�go?��f?	�]?#�S?��I?A:??�4?�*?4� ?�X?�"?�Q?���>���>Ȼ�>8r�>_��> N�>3f�>�:�>z>D��>�{>Woj>mkZ>9wK>]�=>%}0>�X$>O>�x>n�>���=���=x��=�,�=�b�=勬=���=�v�=c�=tu�=��p=5@`=�P=�7B=�4=�3(={�=��=��=L�<'��<3}�<�R�<�5�<5�<)ڣ<Fz�<|�<�
�<3?�Z>q���n�=�[Q?9�	����R1e�7d�ν�u4�6�>�yi?�A-�2M���B?��s�_�|?��x��z]?�|���齧aQ?��l�
_�<o�s?²侷'a�L��>9�x?��/==�j��zB���5>9mi?@8c?!�> �%Ts�C�o�����I�;%�?��^?{�?vl?�T1?�?�>�"�<Fy��n����F��8j��_|����^v�p�c�[VJ�>r,�=��2վ������$�~\(��ސ=x92>�z�>�V�>���>� ?�?&�?03*?�5?�>?�G?wxN?|�T?��Z?�t_?h�c?jvg?{�j?@�m?��o?Yr?l�s?�u?O�v?]'x?e3y?�z?G�z?�{?G+|?r�|? }?��}?��}?�!~?�a~?L�~?V�~?��~?�?56?>Q?�h?�|?�?��?�?I�?*�?��?!�?��?�?��?�?��?��?��?��?��?��?+�?|�?a O>8A?�Nm�r�>?�>��}��k��~�g+��h�뾬�t�H�"�f]??���>Җ|���]?����>a����4?G�r���q?�˾+���.}?����s��װ>��u?����|�w����9?q?���>؂ƾ�]r�"�e��T��6B�>μM?	�?��`?b�?��=�=��|	2�h�i�m�c�v�~�V�*(&���پq�A�u�&=>��>�u?Ȇ:?�HT?�Ng?*Vt?�.|?�?�?|?C/w?� p?��g?�^?#�T?ЀJ?.@?�5?4�+?��!?_7?��?�?
X�>�K�>G�>��>0�>]q�>�w�>�:�>���>և>R8}>:�k>a�[>��L>�>>N�1>�n%>~	>mj>��>/��=th�=Qg�=��=D��=���=-��=Cu�=k�=R�=L�r=��a=�R=�C=U�5=hR)=�=�=�u=���<�Y�< ��<���<tx�<�?�<��<x~�<�֎<�<��z?��'���>��*���}?��>I�g}���~��Cc�_��}�E?�*?�(h���&>���>�aO�E1f?Y~_���5?V���O��dk?u�U��|�;P}?�����>p����>�i~?��!>rV^�� R�>�=v_?��k?�ۤ>=��p�m�Ғt��W���C���>��X?�?��o?
�7?�B�>O9�=`��K��7�B���g�~]{����T�w�S�e���L��V/���c۾^Ș��10�XTT�N�x=R�(>�3�>Sy�>�]�>��>4z?��?5)?�&4?��=?�^F?��M?G[T?�Z?�_?u]c?�#g?�lj?�Gm?5�o?2�q?}�s?�ju?}�v?�x?7y?�z?��z?ф{?1|?�|?F}?z}?��}?k~?M\~?��~?/�~?Z�~?�?�3?�N?�f?/{?��?d�?��?M�?P�?��?}�?��?��?�?��?`�?��?I�?��?��?�?	�?_�?�n?����5����=�`F?�Z-���w�L�-������W�JP{� fn��3t?�V.=c]���{?z%O�R�-?h�4��\?�#}Y?��M��2��}r?���<��|���T>�}?
P<�tv��@	�>%�?T�?U�����k���l�N�ܾ�r>��D?��~?kHf?ɐ?@K>�I���3+�$1f���~�C�x�Z?Z��+�����X�*��<�]p>�o�>p?��7?�6R?�e?�^s?�{?�?x�?��|?��w?��p?Ηh?.i_?؛U?&rK?0!A?��6?\�,?t�"?:?��?\�?���>»�>It�>��>�e�>W��>݈�>(;�>���>���>��~>��m>7I]>?$N>�@>g�2>��&>�>�[>�e>�:�=��=#��=b��=�ٻ=n׮=���=�s�=r�=�.�=,t=�<c=�yS=�D=�&7=Nq*=��=��=]	=���<T��<�f�<��<O��<l�<^	�<���<�ȏ<pͅ<�Է>cF���r?�����!?�_<?ջ����;��YK�C�	�n	C>4�x?���>���5?�:>�k���;?Ig5��?U���	���z?�f7���B�?�%� iz���>��?ŀ�> rO�:�_�����7�S?3s?ε�>&���C�f�ϱx��#�}�̽���>#�R?�}?�!s?�T>?a�>��=��r�V��3t>�6e��;z������x���g��jO��02���M�ᾼ՞��;��"����O=nm>��>��>��>��>�?�c?�	(?v23?�=?_�E?�/M?;�S?אY? �^?��b?��f?B$j?�m?��o?��q?J�s?�Fu?x�v?��w?�y?y�y?Q�z?�u{?|?��|?b}?q}?�}?�~?�V~?��~?�~?��~?�?�0?�L?�d?ky?s�?�?��?O�?t�?<�?��?n�?#�?�?[�?�?E�?�?t�?��?X�?��?B�?EpN?�8X�x�?Ƈ2��r?��<��Cl���y�}�o�"��|HG�ƨ]>�@~?�|���` ��|?H�s���\?�^�+�u?f�|�B�6?mE;I0R��&`?�S=>���R/�=��?m�>��l�gd+��!�>��~?Z�!?\hp�STc�zs�gI���\6>W;?w}?tk?��?� ,>����#$��@b�R�}�`z�P�]���/�_mﾔ$n�͞��}M]>�(�>��?�	5?	P?�Ld?�]r?�{?�O?x�?�<}?Mx?�q?mci?G`??�V?�aL?OB?6�7?w�-?L�#?c�?�?��?�^�>�*�>���>�K�>���>��>ᙩ>9;�>���>J��>O@�>�	o>�^>�zO>AA>p�3>|�'>�>qM>�F>���=�u�=�>�=.%�=?�=-��=)̣=}r�=w�=_�=��u=0�d=��T=MF=�Z8=2�+=��=�=aD
=�� =�z�<���<~c�<+��<���<� �<݆�<源<Ů�<d��	���Z?|y7��k��v�?R �>Z_�>��f�;�f� ?.�y?���C~p�S�G?�h�����F?���f��>��>�]3���?�#��R���{?w��q�y$�<͛}?�_�>�(>���j�Ǧͽ��F?H�x?;o�>Yu���S_�`�{�<x.�ٌ�k��>��K?�\|?�v?ItD?���>�� >�zU�b����:��Hb��x����<�y� �i���Q���4��G���ܤ�qG����/'=>&>y>��>�c�>T��>��?'(?(�&?�<2?
,<?�D?�L?Z:S?YY?�+^?Нb?�|f?y�i?��l?�Uo?��q?�ws?�"u?@�v?��w?f�x?�y?��z?Rf{?�|?3�|?n}?�h}?��}?�~?Q~?Ҋ~?̼~?�~?�?.?/J?�b?�w?�?��?q�?O�?��?}�?2�?��?��?��?��?��?��?��?@�?\�?0�?��?$�?.�}�o�r�|?~���y/?@I?*� �Km��z�_c���ɾ;>?��[?|-����n"a?^��@�x?�x���?�l���
?��S>�j��F?�A�>1}�^
��H~?9�>%`���>�T2�>7{?r2?���	�Y�x�3_��Y�=�<1?�z?�p?$?�gV>GWs�����^���|�B�{��>a���4�L�����ܬ��a(J>���>[?�:2?��M?S�b?�Rq?E�z?`?��?��}?��x?4r?�+j?0"a?UlW?OM?�C?W�8?�|.?H�$?��?v?7?���>���>�*�>X��>n��>�ٶ>���>;�>e��>�w�>@�>	�p>�&`>��P>��B>j%5>]�(>�>�>>�'>��=;��=���=�w�=�P�=�"�=�ݤ=q�=zΎ=��=�aw=9f=wAV=�dG=�9=�,=�� =��=�+=�=��<bP�<l��<A�<Ŵ<�8�<��<	��<��<>���>�P">�e�; f:�E�K?�^]? �>9R>�E�>}Dk?�qH?_P�3�<���s?���؏;��n>/?s���<��>��V��vz?NϾ�\!�BZp?��>�<�y��cVw?/��>'�*���s��E���7?�|?�j?0U|�`�V��3~�&�8��FP�@б>!�D?ZSz?��x?�PJ?���>� >v�7�
Q��}5��a_�K�w����1�z��|k��DT�+�7�~�����qݪ��S����_>�<B�>��p>Х>���>z��>�N
?A�?�%?F1?S;?�&D?o�K?��R?�X?׼]?=b?�(f?<�i?�l?Ao?�[q?Ns?��t?�uv?e�w?��x?��y?�z?�V{?j�{?��|?i�|?0`}?�}?�~?zK~?�~?��~?k�~?h
?N+?�G?{`?�u?]�?e�?H�?N�?��?��?��?N�?)�?;�?��?m�?��?��?�?.�?�?��?�?`�_�3Պ�3�B?0�N��;�y?���=����7��'
�9�=�f?��?�	h��MZ=�+?Y�r�H�?���Uy?�(O���>M��>چy�h'?��>}	t�S`�x?�F�>�LP�(P�6lS>��u?�YA?���?0O���{�K��/n=[�&?�w?�t?Z�,?�6�>�!L��]�ϘY�<o{��}��}d��9��N��쌾hh)�_�6>�h�>%�?a/?X�K?k!a?�>p?	�y?s�~?��?n�}?�Wy?�r?��j?}�a?QX?�:N?��C?-�9?�e/?gc%?��?YI?rI	?� ?��>Z��>���>��>���>G��>�:�>r�>X�>�>Xr>�a>'R>ؿC>TO6>1�)>�>T0>�	>T$�=�=p�=���='��=�H�=�=�o�=z��=�ą=A�x=ͷg=M�W=��H=Z�:=��-=��!=�=�=)Z=��<-��<Y�<��<x�<+P�<B��<,��<oq�<6m���hv?q>&���9?���`>]~?E�U?�2?0�W?,%?Y��>#�Q��Gؾۢ?c�=��[�>)@r�d@=�$h��f?�3p�gj?��d�"�A�M�^?���>��y�ۓ|�+Cm?��?V;��{z��ɐ���'?�C?�\?>�6�1=M����dB��7��(;�>D�<?��w?��z?c�O?��?.�@>p3����&�0��Z\��v������{�E<m�G�V�.}:�� �R��Pװ�Z�^������Y�<d!>1h>i�>`]�>���>��?�?��$?N0? y:?kgC?�;K?R?$X?6M]?��a?�e?�Hi?�Il?��n?�+q?$s?�t?7Vv?��w?��x?��y?�z?mG{?��{?�t|?S�|?sW}?��}?p~?�E~?�~?M�~?��~?5?�(?gE?g^?t?Ά?�?�?J�?׻?��?��?��?��?��?A�?�?q�?U�?��? �?��?��?��?��a��$?����4C=�z-��wc?��2?Y��<-�r�
h?�"�	?t�?-@>q����>��>Z�M��,p?�s�.�b?�&�%@>ƌ?��� ?s!?:Ie��4���}m?Q��>��=�u�^���=��m?@#O?�8�;TWC�x~�C&�-��b?n�s?ʒw?�$5?���>V�$�)����T�x�y� ~��g���=��~�����h}�C�#>*�>& ?�|,?`I?D|_?-!o?F8y?��~?.�?�/~?��y?�s?�k?��b?�3Y?c$O?:�D?��:?rM0?�E&?��??5
?rq?�t�>a��>�!�>8�>��>�ˬ>f:�>�a�>P8�>۵�>��s>ec>)}S>�D>.y7>��*>�>�!>��	>�c >?	�='��=n�=���=Sn�=� �=An�=y��=<��=��z=6i="	Y=��I=��;=��.=��"=�}='�=a1=�,�<�9�<Ft�<���<��<�g�<t��<O��<�R�<i|�>0�J?�����?�A<���꾜S7?z�?��x?h�?d�W?�ịs{���2�Q�i?�Hl��;?�8���#�>O���B?��}��}P?+Q�rw\���F?��>�=o�l#��Љ_?d�+?���m�~��˽��n?A�?gv%?��߽��B�����rK�M�sH�>�4?��t?��|?�8U?--?;`>v����Jھ�,��3Y�<t�v����|���n���X��*=�I��ո��6ʶ�Lj���׽2�0<<Y�=�[_>
��>���>�k�>i?0m?��#?�T/?ǝ9?�B?W�J?��Q?o�W?��\?�ya?�~e?k�h?f	l?��n?��p?��r?s�t?f6v?_�w?�x?>�y?{z?�7{?w�{?Hi|?-�|?�N}?�}?��}?@~?|~?�~?�~?�?�%?�B?P\?>r?=�?��?�?F�?��?6�?9�?)�?,�?`�?��?��?*�?�?��?��?��?^�?��?Yꢽ��?�RC���@?)A�Ƨ�>^+}?&?)��>��>��^?�be?>Xl�d�p�δ4?� b=.E�P&L?��U�U=?�6�?i��]�;?��|�"�>l�??�Q����S�^?�y?��(��k�x<�c?G_[?���=Ue6����N2�oF��̴?�lo?jsz?�&=?���>��������O���w���~��wj�,�A����n���7����N>�j�>�d?��)?�6G?��]?!�m? �x? E~?��?[u~?YOz?#t?5pl?��c?�Z?!P?�E?�r;?N41?''?�_?K�?�
?e1?���>�8�>�g�>�k�>J?�>�ۭ>�9�>�P�>m�>���>�*u>�qd>&�T>M>F>��8>��+>� >>v�
>S5>���=���=#p�=��=��=��=�l�=v��=�}�=�1|=c�j=�lZ=FK=�+==�0=��#=v=i�=�=<��<���<3��<�	�<^J�<^�<���<r��<4�<Q0?	���{%�6G(?�-���'l���>�WO?�r?zc?;�>�P㾆y���>�T5?*���P?�v���?BN,��hd?9���-?�>�p��\)?I�?,�_����Z`N?܌@?��ʾ���U)�7�?o?ޡ3?~L"���7�S��S��;��VT>܀,?�q?;~?�@Z?�S?��>�Ƽ�V�;6,'���U�c�r�j!��q}���p��[��?�N� �����絼�@�u������P:Kj�=l�V>�>�K�>�?�>�?	,?�"?NZ.?n�8?��A?��I?��P?�W?�k\?�a?')e?׳h?��k?3vn?��p?]�r?��t?bv?�hw?��x?[�y?�hz?"({?��{?]|?��|?�E}?>�}?2�}?R:~?w~?��~?E�~?� ?�"?�@?5Z?lp?��?R�?��??�?�?q�?��?��?��?��?��?v�?��?��?j�?��?��?;�?��?!�K?�?o�|�'�~?OH����b�`?�]q?2-F?_eW?	�?Zy?*����<��i?�Ï��	����?��'���?�j�����&p[?0�p���4>?Y?j�7���p�K?��/?�d�ɑt��9��]X?o�e?�#)>�l(�8��z�=��{��U�?�[j?�|?��D?���>�����z��
�J���u�{~��1m��F�����-��-�ҽ���=�զ>Ͽ ?j�&?��D?�\?��l??�w?�}?9�?]�~?��z?�t?�*m?prd?R�Z?��P?7�F?�[<?2?�(?�9?�?P�?��?�M�>��>	��>G��>�`�>��>�8�>@�>m��>Y�>d�v>��e>)V>i}G>��9>_->�!>j>\�>�> �=~Y�=���=b>�=���=k#�=ck�=q��=rZ�=_�}=�2l=��[=>�L=`>=�*1=��$=�n=��=��=�M�<�#�<*�<oL�<�v�<���<כ�<�u�<l�<�?��O��A&>�#����?tt�����w��>C"?vY
?5��<՜J�K�X�,?~��>s�u��st?+	O�RBA?�wV�-y?��s�'�?�>�{��l?�2?K�K�A��Z
:?��R?�H����~�:A	�	��>�{|?��@?\��<Y�+�~�
�[�Cξ	#>��#?6�m?�?��^?RN?Jw�>���������-"�߈R�F�p�Ԥ~��~�"r��D]��cB�ߝ#����(�¾鈀����u��av�=�N>}�>N��>�>X�?~�?�m!?�^-?��7?8#A?�?I?�YP?ΎV?i�[?��`?��d?�hh?M�k?=n?��p?��r?mkt?*�u?�Lw?�ux?Wwy?�Vz?W{?-�{?�Q|?��|?�<}?��}?��}?�4~?r~?Y�~?��~?}�~? ?>?X?�n?�?�?��?7�?-�?��?��?�?+�?��?!�?"�?��?��?4�?t�?g�?�?��?]�p?�I��� �f@ ?U��RW�/�>w?�~?��?�e?�O>@Ua���ؾe�?���]q<��>��ھ]i�>û;TQ�Q�q?��[�ޡ�?�l?X��l�6���5?��E?�J�E{�opC��gJ?f�n?7�y>��
�~���H���:��
�>�d?>k~?%�K?��>�3��뾑PE��Zs�U���o��$J�x���ķ�jO�����=�3�>�#�>�#?e�B?PZ?�k?w?}�}?��?��~?�3{?�Xu?8�m?h?e?��[?��Q?͗G?qC=?��2?#�(?|?�?�m?!�?W��>n��>���>i��>΁�>~��>8�>*/�>P؎>�*�>:x>�Mg>�~W>r�H>\�:> .>!">��>;�>f�>���=��={�=�y�=X߶=�4�=�i�=jo�=7�=g=�m=�4]=j�M=M�?=}I2=~�%=g=�=�=b��<S��<
��<I��<D��<���<	��<�g�<���<z[���t��W[?f�G��9}?�v
���i����W��=�C= ���z�q���g?�oh=ٰO���?�q��ug?j�r���?��\����>ng?���֓�>�L??�3��4���"?b?b�C�JK{����Z�>�Bx?m�L?�Q�=��N�{�F�b�TD澲C�=��?K�i?^�?"oc?�#?�>;��挳�#��O�"�n��~�z�~�ys�P^_�k�D��k&����vȾ�?�����N���}�=+SE>p*�>U.�>m��>�=?��?�N ?�a,?`7?�_@?I�H?��O?�V?-�[?�P`?5|d?Xh?�Ek?sn?$gp?�yr?Ft?��u?�0w?U]x?1by?_Dz?r{?g�{?�E|?V�|?�3}?Ó}?��}?�.~?m~?��~?��~?5�~?G?�;?�U?�l?y�?��?\�?-�?G�?��?6�?l�?��?�?��?��?Q�?[�?��?E�?>�?��?o�?�`>��q���>+0�\?��}���g�M%?��g?�c?��?
|�hR�<�7��s?VR� `�>�$=��*�`�=3Bv>��.�B�}?��>��r5��vy?a���IN���?�*X?q���4�h��)�:?)�u?���>g�	�qR|�
~R�AYw�60�>LP^?	�?J�R?��>ے�DھĨ?�.�p�x��Rr��N�Iu��D¾������=���>���>Ƀ ?�@?��X?�Lj?a@v?�-}?�?n$?��{?l�u?�n?�	f?��\?��R?�}H?�)>?i�3?��)?��?Ta?�5?�n?6$�>mB�>�8�>6�>���> �>�6�>�>��>���>��y>��h>��X>f�I>�<>�2/>P$#>��>m>�>�"�=�0�=h�=��=��==F�=zh�=b\�=��=ހ�=3/o=d�^=�'O=��@=\h3={�&=�_=*�=<�=�n�<�<���<"��<�ϻ<)Ʈ<:��<�Y�<،<��y�觾��r?��}���R?�
>}Xy�HzC�d�پ_t�ϚO��x�?���2�?ih��C��jr?����i|?�h��|x?�E;��>��*?��{��e>Qga?,���K�F$	?�dn?��,)u��.�VY�>mr?6�W?��,>���Ykx��h������=�F?�d?X�?��g?��)?0>�>=胻�Z������dK�4�l�@Y}���J�t�Lha�;mG�1)�B��jKξ�8���3�N��=Ɲ<>�4�>���>��>��?D`?�.?}c+?�%6?W�??�G?�,O??�U?J[?��_?�$d?m�g?�k?�m?H5p?CNr?} t?#�u?<w?�Dx?�Ly?�1z?t�z?��{?�9|?��|?�*}?�}?�}?�(~?�g~?��~?��~?��~?k?-9?�S?�j?�~?+�?'�?"�?_�?�?��?��?(�?��?_�?z�?�?�?��?�?�?��?P�?��3�O�S���m?�N���y?!�-���D�0��=�	?�
?��>�H%���p��h�>�H?��v��Z?�����5�=?>��n�>MS��G?����m��.�?s�����a�V�>�zg?�k�����ݞþ1�)?%${?� �>Y�j�x��[�?t��>�^W?��?�&Y?7�>`Y=6ɾQ�9�3�m����Lt�K�Q��< ���̾��'����=iɌ>�8�>�l?�=?u�V?� i?Smu?��|?��?{S?�|?~v?�Fo?��f?G|]?��S?bI?�??��4?��*?� ?)1?��?N-?r��>��>�}�>�7�><þ>J�>�5�>��>���>D͆>I{>n)j>"*Z>E:K>~I=>H0>'$>2�>�M>b{>.��=K��=���=r��=�*�=�W�=g�=WI�=8��=3N�=t�p=0�_=�rP=��A=:�4=w (=�W=i~=re=���<��<�:�<��<(��<�ݯ<k��<�K�<h��<�66��?b4�>��B�]>�;?�#���~��W��EW���}��}C�8�>q�p?��)�z;L?��w�^�~?�{��c?׆�w�����K?��o��y=Zq?)��]�p��>(�w?���<��l��|?��F>�k?}�a?��r>4��;;t�P�n��c
�W*b<	�?��_?i�?!gk?� 0?�`�>��<������Y�G���j�f�|��u��!v�{bc���I�b�+�Ay��Ծ�����t"��� ����=��3>=�>C�>�s�>` ?�?�?$d*?�D5?��>?;G?��N?�U?¡Z?�_?=�c?�g?9�j?T�m? p?�"r?��s?S�u?��v?,x?�7y?\z?]�z?��{?�-|?t�|?�!}?�}?4�}?�"~?�b~?%�~?�~?��~?�?�6?�Q?i??}?Ď?�?�?v�?Q�?��?>�?��?/�?��?$�?��?��?��?��?��?��?1�?�{z��@3�qob?�K|���\?�G�����q����;4�F=����0j� �7�&�,?��?�P��6R?Do����>��ھt@(?��m�� v?����@��~?{L=���p����>a;s?@���}�K���`?N~~?
.�>��Ͼ}�s��c�t���b��>�O?�?�_?�o?k�=l㷾�3�W�j����Mv���U��$���־�z<�%�;=��>ϩ�>/L?e1;?r�T?�g?�t?�N|?��?�|?f|?�
w?��o? �g?P^?}uT?�DJ?<�??]�5?��+?И!?e ?��?N�?��>���>!��>�i�>��>[)�>4�>���>Ew�>w��>[�|>�k>�[>yL>�r>>�]1>�)%>d�>�.>�L>v/�=��=T�=�+�=;P�=i�=�e�=J6�=�̋=��=�+r=�_a=�Q=�0C=�5=r)=tP=�e=�<=��<���<˕�<�W�<�(�<Z��<���<>�<���<pS>7�?!��̕->����?�=2�D�_�r��˲��p���ξ�Q2?Y=?Ԝ\�(��=�?�yZ���m?0ng���@?Ŋ��������e?�b\�'�սt�{?#0��	�l�l��>�k}?��>��a��rN���=�b?G�i?�֛>>m��&o�xjs�Bw����B4�>DyZ?�L?A�n?zV6?�R�>�w`=$���c.�Q�C�Wh�J�{�!��,Xw��Le�cFL���.��R�&�پ:H���O-��tI�`}�=K(+>�B�>Fn�>�9�>P��>��?�?�c)?�b4?m>?�F?9�M?�~T?�-Z?�"_?�tc?A8g?k~j?AWm?��o?��q?��s?Psu?!�v?Bx?�!y?�z?,�z?��{?o!|?�|?�}?-|}?Y�}? ~?�]~?��~?7�~?>�~?�?-4?|O?"g?�{?[�?��?�?��?��?*�?��?!�?��?��?��?t�?��?W�?��?��?��?�?ɶ���iF?��^>�h���>�?�oR��ge��������=�5���3����g?9*>�{j��9u?�?��?d=$���P?��|��cb?�G��/'��v?���,�z���>_>{?��ټ��x�����?7�?>�	?=����m�W�j��9Ӿ���>�G?.?ԇd?$�?�m�=�Q��vd-�dbg����x� Y���)�f.ᾈQ���<8cv>#�>="?߫8?��R?�Lf?�s?��{?.�?��?|�|?	�w?�p?�Vh?P"_?oQU?�%K?{�@?��6?�\,?�n"?�?1�?�?�`�>QG�>�>���>��>38�>V2�>�>�V�>�o�>wW~>�m>�\>ǷM>^�?>�r2>�,&>��>s>H>���=Zs�=�_�=g�=�u�=az�=d�=;#�=^��=��=�s=��b=	S=0eD=��6=m*=�H=�L=�	=� �<qk�<���<���<U�<��<Ͱ�<@0�<|�<�Uo?#�!?��y��T?�[u���K?N�?^<㾐�Y��c��+��=)�m?�Q�>�q|��u�>��>�a*�]/K?�^D��?�!���v?��A�������?(JO���w�tyD>��?��p>'nT���[��ɳ<5�W?nq?]w�>e̾�2i��|w��! �����j��>x�T?:\~?�r?oV<?r�>TZ�=�|�����?�`�e��z�����zx��&g�p�N��J1�&���߾�뜾�%8�K[r���\=�h">�F�>�Ӯ>���>���>D�?:�?�a(?�3?�G=?�E?dM?��S?��Y?�^?@c?�f?8;j?�m?�o?��q?^�s?Ru?Q�v?E�w?Jy?��y?��z?qz{?3|?P�|?�}?7t}?t�}?~?X~?5�~?U�~?��~?�?�1?LM?>e?�y?��?}�?��?��?��?y�?�?��?J�?6�?y�?)�?[�?�?��?��?d�?��?�M?�Ax?�5�%�V>5���y?`枾�U}��-f��%W��+x���a��0=ݺ?9�I�&�:�f�?PEh��L?�oP�
�m?����BE?1��j�F��h?�X�=����=-d?sõ=��p��Z#� �>w?W�?������f�r�p��Z�M>�??i�}?��i?�]?��>Ƈ����&�7�c��X~���y�5w\��.��E뾡�e���;ɬd>]�>�?�6?t�P?��d?�r?=Q{?"c?��?}?Zx?%Cq?0i?��_?b+V?XL?a�A?�e7?�7-?D#?�?P?f?N��><��>�I�>��>Q#�>�F�>x0�>Z؝>�5�>�@�>k�>�qn>T*^>i�N>��@>Y�3>(/'>��>/�>��>�;�=���=q��=X��=j��=���=�b�=*�==*��=,(u=�'d=2TT=f�E=��7=g!+=eA=$4=�	=�X =7��<�K�<���<|��<�$�<���<a"�<c]�<;�M?$�y�sWL�kOz?Te��`c>�[s?hd>Qྌ�
��K{��4�>��?�<=��z�X/??dͼ�G׾�?������>K~=+#�WA?;=!��׾u~?��w��~�	%�=a�~?��>OE���f��N��M�K?��v?�+�>]���.eb�y�z�E\*���J��>�tN?�}?��t?�B?��>�R�=��`�i�C�;�_c��zy�����y���h���P���3�����J徬�����B�������6=��>�|>�6�>]��>��>�=?&�?�^'?�2?�<?O.E?4�L?frS?ICY?~V^?��b?O�f?��i?�l?�jo?w�q?��s?�0u?U�v? �w?|�x?��y?�z?=l{?�|?��|?H}?5l}?��}?~?JS~?��~?m�~?�~?�?/?K?Vc?Tx?��?A�?�?��?�?��?r�?�?��?��?"�?��?�?��?T�?n�??�?��?�o?�b�>u�� �Y?�o�/�c?6§>f�;��x~�����x� 8�*��>j�p?Q��|���;q?��}���n?�+o�!j}?��u�S�?ߖ�=M:`�7&S?0��>����C�w�?B�O>�Bf��76��A�>�}?7�*?+�D��U^���u�_��>��5?��{?�n?e�?� C>܊���3 ���_�b}��2{���_�m2��?���z��<���R>��>�?׃3?��N?tc?��q?q�z?�2?�?�l}?��x?��q?��i?��`?VW? �L?�B?D8?.?�$?}j?�?�"?�0�>���>ǌ�>��>�B�>5U�>k.�>�ƞ>+�>~�>���>>�o>�_>�4P>��A>��4>�1(>Ŝ>��>�>��=KJ�=��=���=���=��=
a�=��=~b�=z��=e�v=P�e=V�U=��F=�9=`,,=�9 =b=F�
=� =�T�<���<[ �<���<!<�<.��<��<�>�<�ۇ�ikl�1�n�О?������G�q?9C.?y�=�pJ�
qr>�JO?��d?�ޭ��lX��Gc?�_��T��'��>����H*>�ގ>��G��P~?���|���Nv?�M�=Q���a�q�z?���>K�3�%+p��H���>?�={?8��>f�����Z�]E}�B4��P8��k�>P�G?&O{?�w?��G?���>�>�hE����g�7�_�`�m?x�����z��j��.S��6�t��E��*"��q�M�"
���=��>Ўt>��>E{�>�(�>��
?�{?�Z&?��1?�;?�}D?{/L?!�R?-�X?{�]??ib?,Of?��i?��l?�7o?�qq?&as?u?,�v?��w?��x?��y?�z?�]{?��{?�|?��|?&d}?��}?�
~?N~?)�~?�~?�~?�?�,?�H?la?�v?�?�?Ϧ?ò?�?�?��?��?b�?m�?��?��?��?��?#�?C�?�?��?�q�>��2�0�4�w?��l�C��>	U?t;]�:dH���c�Sr?��61��`F?�<=?�M�|G��J?��|�t�~?�u~�$�~?�;`�Cl�>�/�>��r��k8?�t�>�|y��E�`�{?��>�X�BG�Cۃ>�x?m�9?�\�O�T�^z�y��F�=�=,?�Fy?�r?F8(?kjj>��`�:S���[��2|�yt|���b���6�b���6��`����	A>���>!n?��0?l�L?q�a?��p?;6z?n�~?��?��}?�y?߄r?��j?F�a?F�W?@�M?sC?� 9?Q�.?C�$?N7?v�?S�?�K ?}G�>y��>�.�>�a�>_c�>.,�>���>;��>O�>�u�>bLq>��`>msQ>0C>�5>S4)>Ӎ>��>v�>9H�=���=wW�=��=��=i��=�_�=�=?�=�P�=�$x=�f=y�V=�H=�!:=Y7-=T2!=�=z�=)�=���<r�<3c�<]��<�S�<^��<��<
 �<`�Y�[���8?�p��n�>��k���?<�y?O?Ţ�>�)?'#|?�!?�h,��R�B�}?>u�T�>n��=^��½�>\[d��t?cң�}�1��h?˅e>YM}��6��s?��?W� �t]w�bBq�f0?J7~?;?�N[��UR�G�~� d=�!i�v��>��@?�3y?��y?�M?.�?��/>��)��o��K3���]�^�v�W���h{��Sl��bU��9�jw����촭��X�jr���Y�<?>w�l>%��>�6�><�>\�	?>T?�U%?w�0?��:?�C?��K?#cR?mVX?�]?�b?� f?Koi?�kl?�o? Eq?3:s?H�t?�fv?d�w?}�x?��y?m�z?�O{?�{?{|?��|?\}?��}?�~?�H~?��~?��~?��~?�?�)?�F?_? u?��??��?ӱ?M�?_�?;�?	�?��?�?s�?F�?��?u�?��?�?��?��?P{󾜢~�w�=�6�>�־�����?]�>~0���
�DS����>�:w?���>/>v���L>�?:�f���{?�O}��r?��?�Tn�>��>�4}�W�?(?
�n��Ռ��Pt?%��>�I��NV�ߠ*>�r?cG?��0�P�J�@}�2]��	=�"?%v?��u?�40?���>#<�zE�÷W���z�օ}�l�e���:��k�/S���{K�. />���>� 
?6.?��J?�w`?�o?��y?Ƚ~?��?�~?��y?� s?w?k?gQb?2�X?��N?�OD?��9?��/?B�%?�?�?R�	?)� ?қ�>��><_�>��>Oq�>�)�>���>,ӕ>��>,9�>f�r>�)b>бR>TAD> �6>�6*>�~>:�>�c	>S��=!�=��=T�=�=���=�]�=�֚=��=�=Тy=�Rh=�5X= 6I=[@;=QB.=�*"=��=�p=p�=�>�<Z\�<
��<��<Pk�<���<���<^�<F3a��1ӽ'�~?"_�h�h?��t��|��m?v�q?�W?��o?�v?�ބ>g�g����4�z?��S��,�>U�5�>�䦾6�)?e'w��a?�����M�+�U?ظ>�v�z옾B h?}h?F��k|��6��Q� ?	�?ʗ?����#I����$F�ౌ�o��>a�9?��v?d�{?�R?��	?�hM>	�4���.�T[��xu���{:|�L�m�щW���;�d/��+���A���Bc��ʽ�"�<��=/�d>�P�>T��>�L�>�U?o+?3O$?$�/?< :?�C?��J?n�Q?	�W?�]?<�a?��e?�*i?�/l?��n?�q?s?G�t?VIv?̔w?K�x?��y?��z?A{?��{?Ap|?7�|?�S}?r�}?��}?{C~?~?��~?9�~?�?h'?mD?�]?Rs?,�?�?��?�?{�?��?��?��?w�?��?�?��?T�?<�?��?��?��?r�?�F��H-�%�R?dᓾ�V�>K�V��A?�#V?�e>4N��>%,+?}�|?t�@=F���?��>��<�^@f?��k�'�W?����n='�"?���vn�>o>,?�_�7;��h?{�?A�6��7c�x"�=e�j?�mS?�q=�?���8*��ø���?�mr?;�x?��7?l�><C�}�h@S�U-y��f~�ŏh�?��8	�`���Ό�\(>;�>��?]�+?�H?m�^?�n?��x?�y~?0�?�G~?K�y?��s?^�k?c?Y?~rO?R+E?��:?)�0?�&?�?�b?�V
?�?���>�S�>G��>���>�>''�>A��>���>���>V��>H&t>�~c>�S>gjE>F�7>R9+>�o>�r>"5
>2� >|��=d��=F��=�1�=	ѳ=u\�=�Û=!��=b�=!{=��i=��Y=2jJ=2_<=HM/=@##=�=�G=�y=K��<C��<���<>3�<炷<�Ū<��<��<�����o<?S�?�u��s?���'��I?݃y?��?S�}?�[>?�O"�s���d�==i[?�u�k5-?��߾�S�>��	��uO?���=�E?hm�<_�c�|c=?$#�>Ój�e:ԾC$Z?K3?���J���̾IW?��?5U*?�կ�'5?�T��$YN��}���Rt>w2?�s?1}?��V?A�?Y�j>J��־�m*��X�r�s��d���|�=to�ȣY��>�B��
���tȸ�X�m�r4߽:��;���=s\>6��>���>([�>�?g?�G#?� /?�S9?'fB?ZJ?QQ?gW?�\?�Xa?be?g�h?��k?��n?~�p?��r?�t?�+v?{w?��x?<�y?�tz?�2{?��{?Te|?��|?�K}?W�}?��}?&>~?bz~?��~?��~?�?�$?,B?�[?�q?��?;�?��?�?��?��? �?��?�?;�?��?��?�?�?��?��?��?R�?���j>>�"w?�d�F^`?�~��U>��?�x5?�9�>��?Y<m?�V?�T��H#f�{E?
�O*��i??�K��11?��ɾy
��,E??~z��-�>FAG?��J�m���Z?�8?��"��m�P7����`?S\^?8e�=q�2�����u5�'2��Z�?B#n?>{?9??��>p_�g����N�Ww�d�u6k��C� ��(\���ҳ��#>*"�>�l?��(?'�F?5X]?ܩm?KVx?�.~?��?��~?�nz?@Mt?U�l?R�c?�NZ?�IP?]F?.�;?�q1?�b'?�??&??�d?�B�>���>���>ֽ�>}��>\$�>�}�>���>,T�>l��>
�u>K�d>U.U>h�F>_�8>�;,>�` >qS>p>5m>���=�N�=u��=W�=T�=�Z�=���=�ԑ=���=3�|=Tk=��Z=b�K=	~==>X0=�$=S�==�A=(�<*�<�+�<�_�<~��<�ɫ<	ݟ<Ĕ<?jL?��{?[���������>1��=�\z��GǼ��4?��c?V�P?sh�>7{�P�p�NA�> �"?���.p\?��)��?��8�cBk?�<}��E#?<@S>|�s�W� ?!$?D�Z�_"�f@I?@�E?DR�����}f��ݴ�>N�~?_>7?�8���4��4���U��廾dG>z4*?��p?Eg~?��[?�4?��>�Ĭ�Eʾ��%�	U��Gr���/�}�d�p���[��~@��!�4� ��H����x�'���(���\�=]bT>V�>QY�>�f�>ߴ?(�?�>"?K.?{�8?�A?��I?��P?W�V?�M\?9�`?5e?��h?/�k?gn?ڼp?��r?��t?�v?)aw?��x?Ćy?dz?�#{?9�{?WZ|?9�|?pC}?1�}?k�}?�8~?�u~?��~?E�~?��~?1"?�??�Y?�o?=�?��?o�?��?չ?<�?a�?n�?��?��?h�?`�?��?��?\�?��?��?1�?
|�>�(f?Ɂ�>��q��2x?T_.��پ�O?��y?��V?)�d?�h?\�	?�2,���.�y|p?�Z��V�r�O
?	6��� ?��;�q���՘`?e3m�{^>�]?�}2�� �A�G?[4?N��%v�Ei�!�U?��g?�+9>*�%�����@�m�	�� ??Hi?D}?z:F?��>t꙽�B����I��Ju�H���m���F����hF���ڽ(�=�"�>� ?�%?/mD?C�[?��l?��w?��}?��?R�~?]�z?[�t?YOm?�d?�[?Q?�F?��<?JG2?�3(?nd?+�?��?�?���>���>M��>���>���>a!�>Mk�>Co�>�$�>m��>��v>�'f>xlV>Y�G>j:>#>->�Q!>4>��>30>!c�=8��=��=�|�=��=ZY�=���=0��=���=`~=~l=�\=��L=ޜ>=3c1=*%=��=F�=B
=Ҝ�<m�<�n�<��<��<ά<*Ϡ<W��<m p?+�>�g�0˧>��z�Dn;?�g�Y��s`>�?���>��~�W�@n=�D�:?�>�Up�H�x?lW��
J?y8]�"�{?zDp�U��>���>Bh}�eC ?@�7?�CG�o �C�5?u�U?6⌾"g~��2���>��{?1CC?��3=:J)�~�}�-]���ҾUQ>�!?�l?�F?[�_?O�?a��>��i����@.!���Q�4�p��~�D4~��Qr��]���B�-,$��Z���þѩ�����*7�͸�=NL>BV�>�
�>p�>�b?��?5!?�,-?%�7?��@?�I?<P?
uV?��[?��`?��d?�Yh?czk?E2n?�p? �r?dt?��u?Gw?�px?.sy?Sz?6{?w�{?IO|?��|?#;}? �}?0�}?b3~?q~?|�~?��~?��~?�?�=?�W?9n??��?S�?�? �?��?��?��?�?l�?�?�?��?��?)�?k�?_�?�?�z?�`c?!Ӿ��վ�
?0�R���b���>#1q?��?��?�^?a�> �g��E����?����a=�˕>,hʾ9��>F�=I���s?\mX����+�n?4t�:�9�@j2?�H?�龯�{�\EP��H?��o?$�>��� |~�2�I�6�B���>��c??�~?��L?��>݁�c�辺�D��s���p���J��7����m� ����=-�>�1�>�-#?G8B?�Z?(gk?��v?�}?A�?��~?�A{?�ku?g�m?gYe?��[?��Q?I�G?�`=?�3?�)?(.?��?:�?��?���>m�>G�>���>���>5�>�X�>�M�>��>ZE�>+lx>�|g>��W>8�H>f;>{@.>�B">�>��>-�>h��=���=�@�=��=��=�W�=y��=���==S�=��=��m=b]=�N=��?=(n2=�&=Ɇ=y�=��=��<���<b��<���<�ɺ<Mҭ<J��<���<�D\>�>뾡8i��h?�W�$�?Bw����q������Q=ӝ�������A}��[ھgm?��%<��H�Z�?f�t�%k?uKu�q�?�3Y��>�?������>KO?� 0�2�7���?��c?�6�)�z�3#���>��w?�TN?�|�=,b� U{��c�R�b��=�}?��h?��?��c?��#?^�>>2��ޱ�]k���N���n�V�}�ĳ~��s��_��@E���&�A��5ɾx������Ƨ���=k6D>��>���>�v�>�?|?* ?8A,?��6?�F@?T~H?r�O?�U?�y[?7D`?qd?�h?@=k?"�m?�`p?
tr?HAt?��u?�,w?4Zx?z_y?Bz?h{?��{?*D|?�|?�2}?Ē}?��}?�-~?\l~?j�~?<�~?��~?�?V;?�U?�l?E�?b�?5�?�?)�?��? �?Y�?��?�?��?��?H�?S�?��??�?9�?��?�j5?�&>�v�/m�>��3�E.?&o|��̆�]M?� d?�_?�?V������j���5r?�0U�~I�>e��<0���LY=���>��0��5~?��<�>�?��z?+��ٌO��Q?�'Y?Xa���4�[D��5:?}Cv?Pɦ>+���$|�S�t�z�<��>��]?i�?�+S?>�>j��$GپvR?��p����J>r��NN�X���¾�5�갩=b�>2G�>�U ?��??rgX?�9j?J4v?�'}?��?U'?��{?��u?}�n?;f?E�\?��R?%�H?7>?��3?��)?B�?{m?+A?
z?a9�>V�>�K�>�>���>��>�E�>
,�>%ŏ>1�>��y>�h>|�X>J>U1<>�B/>l3#>�>4z>"�>�9�=�E�=�{�=���="�=4V�=Ww�=8j�=� �=ی�=�Eo=*�^=�:O=��@=y3='=n=��=͚=W��<�"�<8��<���<A�<|֮<k��<�g�<��4��|��c��
;n?�|��\L?Q*>��v�0I����@@����S��^v��BE�H�?%ƥ������p?���k}?���Z�w?'9�4��=��,?�v{��D\>Y|b?���%BL�`�?>o?	"���t�l�/�>܋>L	r?eX?�1>��3x��Si��:���6t=ķ?��d?��?�g?�*?�!�>�4�v������|-K��l��M}���!�t�J�a�)�G�2Z)�h��S�ξ!G���7����_e�=|<>���>$f�>�z�>"�?;M??�T+?�6?֏??�G?,$O?��U?�[?��_?�d?��g?��j?��m?\2p?�Kr?It?:�u?�w?ZCx?�Ky?�0z?��z?��{?�8|?Q�|?d*}?~�}?��}?(~?�g~?Q�~?��~?��~?@?9?�S?�j?�~?�?�?�?Q�?�?~�?��? �?��?Y�?u�?�?�?��?�?�?��?��W�^�1��CU�}�l?��L�?ty?KN/�c�C�$D�=�P?��?�[>N$�!�p��R�>@�H?��v��?�~���=hj;�d>�>��R��R?�E��|���~?i����a����>[Tg?+��8��%þ�*?�{?~��>���_�x��h[�� �����>"sW?C�?GY?��>��=�fɾ9�9���m�e��0Ft���Q�X/ �b�̾9�'�J_�=%�>�M�>�u?	�=?��V?Oi?�ou?9�|?��?�R?�|?}|v?�Do?��f?�y]?�S?�_I???q�4?A�*?�� ?�.?��?5+?s��>��>&z�>J4�>��>L�>�2�>>
�>D��>�ʆ>�D{>d%j>]&Z>�6K>5F=>E0>;$$>��>jK>y>ߤ�=H��= ��=���=`'�=�T�=3d�=�F�=��=�K�=<�p=C�_=oP=Z�A=�4=��'==U=�{=c=��<�}�<7�<k�<���<�گ<���<OI�<5?z�08�8�?9��>���jf>֎:?a�$���~���V��wV�%_}��PD�tʬ>�q?N��!̈��L?%�w��~?�{��`c?y
�n㔽��K?N p�-��=�4q?�����]��K�>�xw?��<��l�4P?�ڄG>�k?�ga?]$r>x��QHt���n�D
�f�j<կ?g�_?d�?�\k?�0?06�>�h�<m.������G�!�j�Ռ|��t�(v��\c��I���+�*q��Ծ����6V"�� ����=m�3>UH�>g�>�|�>d ?9?�?�f*?]G5?�>?�<G?2�N?WU?	�Z?7�_?6�c?�g?��j?��m?�p?0#r?�s?��u?�v?`,x?�7y?�z?��z?��{?�-|?��|?�!}?,�}?G�}?#~?�b~?2�~?�~?��~?�?�6?�Q?	i?C}?Ȏ?��?�?x�?S�?��?@�?��?1�?��?%�?��?��?��?��?��?��?��o���}��o�i3j?��~�d?�ֽ��~�Od�yU=�f�=���Cf���=�?�&?}K?f���mN?{9 ��o�>QUѾ-�$?sl��#w?��U,����~?��I���o����>2lr?�k��~��=�y�?AK~?+>�>k�Ҿ�It�Z�b��X�����>�vP?��?<�^?��?���=�J��i04���j�֥�{%v��BU�`�$��'־	�:��B=��>F�>�?�d;?��T?��g?ۣt?X|?B�?�y?g^|?r�v?��o?o�g?�?^?�cT?�2J?��??C�5?�n+?��!?��?ͳ?�?���>K��>��>,Q�>Y̿>��>��>Q�>Je�>���>�|>�yk>(d[>j_L>[>>>G1>%>��>�>�;>�=���=��=e�=�8�=S�=Q�=9#�=��=�=�r=ZCa=A�Q=,C=�5=��(=v<=S=V+=�o�<���<�y�<�=�<m�<�ް<���<�*�<���a8>33~?��ξm��=pm辉�~?��ý=�e�����~�Z�s���߾;�+?^fB?��X��];=�g?��]�w�o?$�i�xD?�ž������c?4:^�u|��e�z?W���o�k�݆�>�}?G��=�b��NM�l�=��b?�Qi?:�>L��՗o� s�������I��>��Z?�[?ӥn?��5?� �>O�V=����i���D�Їh�"�{�o���?w��%e�gL�bi.�m��eپ�Ӗ�ap,�?*F�)�=`�+>���>e��>)|�>��>�?y?Hx)?1u4?o>?�F?�	N?��T?�6Z?�*_?|c?t>g?σj?�[m?��o?l�q?��s?�uu?q�v?Dx?�#y?1z?{�z?��{?k"|?Ħ|?s}?�|}?��}?{~?^~?�~?��~?��~?�?a4?�O?Ig?�{?x�?ќ?�?��?��?8�?��?+�?��?��?��?z�?��?\�?��?��?��?(M�;(����-?r8�>��'�`6�>8�?��_�0Z�h辧�ž��0�q��X�ھ�a?�a>�ho��wq?�]7��B?���BzK?fP{���e?�]���!�Xx?�@a�m�y��>]Iz?��3���y�I���?�?�H?�����n�׵i�<�ξd�>��H?aA?޽c?O.?~t�=����yY.���g�5/���w��X���(���߾aN�]z�<7	y>�0�>;�?A9?�)S?��f?��s?��{?�?��?�|?�~w?��p?�9h?_?�0U?GK?��@?"e6?�;,?�N"?�?|l?��?�*�>�>���>�m�>i��>��>;�>EƜ>55�>;P�>�~>��l>ݡ\>�M>�o?>gI2>�&>h�>��>��>6{�=�<�=&-�=�7�=�I�=hQ�=�=�=���=N��=ʂ=�ps=o�b=j�R=�6D=��6=i�)=�#==*=��=���<�3�<���<Gj�<(�<	�<͉�<��<C6??_?��;?��p�e<A?��k�M�Z?[H�>:��hd�H(l��9��#���mg?O2�>=�y�Q�>��>�2��gQ?�J��X?#C����2�t?�AF���x�Ӝ?��d�*fv��!W>��?ߴ`>8�V���Y��	=�UY?�p?{�>X�оp%j��v���������>�U?��~?]�q?�s;?F��>�Y�=
�����n@�dHf���z�I��_Px���f��FN��0���Q�޾���"�6�<:l�9�b=w�#>�߂>)^�>7y�>�h�>��?�?��(?�3?�e=?c�E?{M?T?N�Y?=�^?�)c?��f?QEj?�%m?��o?n�q?�s?Wu?��v?�w?�y?��y?U�z?�|{?
|?�|?�}?iu}?}�}?�~?FY~?�~?��~?c�~?,?2?�M?�e?9z?&�?��?�?ô?ؾ?��?#�?��?\�?E�?��?4�?e�?(�?��?��?i�?��=���>��?J�ᾔ==�a��xn?u`�[����V���E��p���l�l�I���}?ۅ�wXG�ÿ?L�`��JC?(�G���h?���lhL?I��?g@���k?��=�~�9�>�~?��=y�r�P��Հ�>��?�/?�����Ph��o�n��b.Z>�A?~?�wh??s?�>)s���U(�-�d���~�iy�(�[�]-���w&a�B�A<�h>��>��?,�6?�YQ?}4e?��r?wn{?�l?��?F}?��w?q?��h?p�_?��U?{�K?+�A?57?�-?R#?�o?�$?�<?Vz�>JR�>��>��>;��>|�>���>��>�>��>��>�!n>|�]>��N>��@>�K3>o�&>�v>�>��>V��=��=2h�=3]�=[�=�O�=�*�=3ܗ=�U�=#��=W�t=��c=�T=�UE=�7=��*=�
=m=߻	=�, =u��<���<���<�?�<7�<�{�<G�<�[?7�i?1�-���e��?��t��w�>0�e?�
C<_��Lv"�}ױ�Q4�>a�?c�>�6~��� ?HP5=����+�%?�	 �x�>��`<��6~?��(���ƾ� ?����}�,��=�{?*��>G�H�ܖd���:���N?��u?��>X����c�!z��'(�Ro���l�>��O?�Z}?xct?��@?�k�>�/�=��f�SY�P�<��c�;�y�l��hOy�Ѝh��mP��X3�V�Z便N��7�@�"���5?=֑>�P~>��>�s�>˵�>=�?��?՗'?�2?��<?�TE?�L?��S?]Y?m^?��b?c�f?}j?��l?vo?6�q?V�s?
8u?��v?��w?G�x?%�y?�z?\o{?�|?��|?P}?�m}?
�}?W~?oT~?��~?I�~?>�~?s?�/?�K?�c?�x?Ҋ?��?�?�?�?��?��?4�?��?��?5�?��?(�?��?_�?w�?G�?��`?q�y?o?�s���4?��V�A�v?�I>*�V�֣���z���~�T�/�/@�>�y?Te�%���
x?�y���f?V�g�sVz?��y�j+?t=��Y�u�Y?xk>���Iy�<��?*A.>�i�!�0�U�>}�}?,=&?�<Z���`��t���%>�8?q|? �l?G}?ٹ7>_���@'"�
a��}���z���^�C*1�za�2t��[ûPX>���>
�?�D4?ӁO?��c?	r?��z??A?��?gU}?�rx?'�q?��i?ă`?/�V?A�L?�TB?�8?�-?<�#?</?��?r�?.��>��>�/�>
��>���>(�>�>ʁ�>�ԓ>.Չ>2z�>�uo>_>��O>&�A>�M4>�'>(W>�>��>nQ�=Y��=8��=���=7l�='N�=��=���=�"�=2H�=8v=�$e=�?U=�tF=կ8=J�+=�=��="�
=� =Z��<]B�<#��<,W�<f�<n�<�Λ<�u�>��a>+�I��h���35?���<��C}?G?a&Y�?�K��;�=��9?�q?
�l���e��V?~U}��d���>�=پ�-V>��^>�#>���?a��R�*y?Zv)=���5��"D|?dZ�>��8�]�m�,� �I�B?Yz?k��>W��']�ۡ|�XZ1��"*�l��>�I?��{?U�v?�F?��>�m	>�XM�4���8�:a�7�x�����<z��,j���R�U�5�1���R����^�J��$����=�h>��v>-��>bl�>L �>�Q?��?�&? �1?X�;?��D?>\L?CS?Y�X?I^?6�b?�ef?S�i?�l?]Fo?�~q?[ls?�u?��v?'�w?��x?y�y?ȫz?b{? |?�|?��|?{f}?��}?�~?�O~?y�~?��~?�~?�?M-?�I?�a?&w?}�?^�?�?�?Y�?G�?�?��?��?��?��?��?��?��?1�?P�?%�?Ǩ`?opB?�O�b�`�N�?Y!~�0�?��.?e׾ 6d�!�u��Z����+?[�S?FB7�󯃾�[?���:{?��z���?:Ii��-?	�p>"�l�[�B?�y�>|��sǽí}?㼌>� ^��_A�E�>M�z?i[4??��`nX���x�XW�q��=��/?�Az?a�p?<I%?�a\>��m��� p]��|��|��a�35����ۓ���¼�pG>��>�?,�1?y�M?��b?j,q?kz?�?��?R�}?��x?GLr?�Gj?�@a?�W?�pM?�#C?��8?��.?��$?�?��?�?� ?v��>�[�>���>$��>��>OѪ>[_�>Y��>���>�/�>��p>vZ`>^Q>��B>�O5>��(>}7>a>yG>~��=�3�=9��=��=d}�=�L�=`�=&��=��=@�=��w=�of=�sV=j�G=ĺ9=��,=V� =̯=eL=m�=>D�<1��<���<�n�<��<-`�<믜<�x���&�;�z�Q�>�=��=��K��4;?v>h?���>���>�&?��q?��=?�2�r�2�8cw?؍��_I=�D>k}L�G'#����>{<[�+�x?�]¾�P&��8n?h2>x�~���	�|#v?��>��'��u��GR�߭5?dP}?r�?��r��qU��s~�!:���W�T�>�}C?> z?< y?�K?9u ?K)%>�3�:����4� �^��fw�����{�I�k�<�T��'8�m|�����T�T��#����<�<>bio>�B�>�b�>�H�>�
?@�?Q�%?#1?D4;?�D?��K?�R?�X?�]?`/b?�f?Ӈi?߀l?co?Uq?-Hs?i�t?^qv?��w?h�x?��y?a�z?�T{?��{?�~|?��|?�^}?�}?~?�J~?<�~?��~?��~?�	?�*?vG?0`?�u?%�?5�?�?)�?��?��?s�?9�?�?,�?��?b�?��?��?�?(�?�?�֐= ��̂`�mV����A?3�.�Bɹ�z?G�>���.7��K	�"ʮ=XNg??>\h���e=)&+?p�r�n�?T���8y?J�N�"D�>��>�y�"�&?`��>;�s�ba��x?���>+P�e P��R>�u?"vA?�ޙ�BO���{�E�1Nl=~&?_�w?7#t?	�,?W_�>��K�	O���Y�Dl{��}���d�M%9��X�)��7*���6>_X�>9�?y[/?�K?@a?�<p?��y?��~?��?�}?�Xy?a�r?�j? �a?�RX?<N?��C?��9?Ig/? e%?E�?�J?�J	?�� ?\
�>���>��>;�>���>Z��>�<�>�s�>�Y�>��>Ur>їa>�)R>G�C>�Q6>N�)>�>*2>K
	>�'�=���=5�=H��=���=�J�=/�=�q�=H��=Lƅ=a�x=��g=�W=7�H=��:=)�-=��!=��=�=�[=!��<��<��<V��<��<LR�<=��<�[��h�����v?�'��:?���Z\[>��}?g�V?�2?�X?�?e�>|:R�s�־�?�`>���>Ii{�T�=(j���?�Yp��=j?�]c��2B�rd^? B�>�y�Õ}��+m?� ?��6�z��"��	�'?�F?!{?/�5��)M�ْ��vB�j����> �<?��w?��z?�O?��?+�@>_�������0��T\��v����d�{��?m�ǟV�r�:������ⰾ٫^��½F��<�>\�g>�ߡ>�V�>p��>�?��?��$?0L0?Vw:?�eC?�:K?�R?*X?\L]?�a?k�e?�Gi?^Il?'�n?4+q?�#s?��t?�Uv?ßw?̽x?׵y?�z?NG{?��{?�t|??�|?bW}?y�}?c~?�E~?��~?D�~?��~?/?�(?bE?c^?
t?ˆ?	�?�?H�?ջ?��?��?��?��?��?@�?�?q�?U�?��? �?��?WM�{7W��(o��@?>��=��]�C����l?	#?��\��g��H�潽��>��?�u>��~�FB�>�%�>ڼS�Ns?��v�s^f?��+��#>x?0��O
?B?�ug�I����o?�|�>�@@��]��f�=u�n?zzM?Ú����D�k6~�Eg$���;7�?Yt?�*w?�4?�a�>h�)�Ũ��U�Tz���}�0g�r =����Ic����r�M&>
�>;t?��,?��I?�_?�Eo?Ny?P�~?<�?�&~?F�y?tms?Йk?#�b?Y?�O?n�D?k:?/00?)&?�i?�?��	?'Y?�F�>���>4��>�>���>;��>�>BC�>��>X��>�ps>�b>�QS>��D>�S7>۸*>�>5>�	>BI >���=,T�=���=���=2I�=�ݦ=N�=���=X��=cz=�i=&�X=�I=��;=��.=§"=)^=��=+=��<�
�<jH�<��<���<lD�<�r�<�4�Ϡ
�s��>��[?��~�ß?r�K�y����\E?��?V�s?�^~?;�_?�mN=��x��о��un?��g���?�;��X(�>�M߾��=?�|�"GT?)o�e|Y�4J?���>�p�����wa?�
)?���#~�<0����?
�?l�#?��;D����VJ�����,T�>�5?mPu?�v|?�T?�B?
<\>! ���۾�,���Y�.�t�Č�%�|���n�
�X���<�Ċ�����
����h�dս]�E<���=�s`>	{�>BH�>��>�?��?��#?dt/?��9?k�B?��J?f�Q?��W?*�\?f�a?��e?�i?�l?��n?q?;�r?�t?n:v?އw?�x?ߣy?P}z?�9{?.�{?�j|?v�|?�O}?�}?��}?�@~?�|~?��~?{�~?e?&?KC?�\?yr?p�?ܕ?�?g�?�?N�?N�?<�?<�?n�?��?��?3�?�?��?��?��?G�o�Y�o��ɪ�Mty?(^�X�?Ɯv���?�*s?��>��3>Oު>�	M?�,q?j���Bx�+�"?�>��$��`W?�`_��WH?|������a2?Ȉ~��*�>�~8?��V�?�羱�b?%�?�j.�mh�*F=7�f?(WX?q��=��9����7,/��-@�2�?l�p?!�y?g;?�2�>�5�����?Q�fhx�Ǹ~�Ⱥi��@��H�Z���󺝽Z>z��>V?=R*?�G?B>^?�Gn?��x?
Z~?��?�c~?20z?�s??l?lc?u�Y?��O?�E?6;?H�0?i�&?-'?��?�
?p�?Â�>���>��>��>��>���>H��>��>ތ>�P�>o�t>Cd>zT>,�E>jU8>]�+>M�>9�>�
>�� >*�=��=��=װ�=�G�=�ʧ=�*�=�W�=bD�=��{=�Pj=GZ=��J=��<=�/=��#=W5=-�=��=�T�<�M�<�t�<~��<��<�6�<�S�<���>���>fVq?�f>U�L���L?Oa���fV���>�Pd?�|?�Rq?bH?ܵ��N~���y>|�E?d\}��C?�`
���>}^���\?����7?���=�k��y1?_-?Cd�����)S?�c;?Q�׾���޾,�?Mx?)	0?�l�ծ:�ӷ�r�Q�������`>M�.?|zr?.�}?h�X?.{?��w>�f̽9�о�t(��V��9s�X=�1C}��p��Z��?�� �(���+����r�\轍�^;6Y�=f�X>P�>�7�>��>�s?�?�"?��.?��8?B? J?4Q?�2W?z�\?B1a?�?e?O�h?y�k?�n?��p?v�r?/�t?�v?�ow??�x?ϑy?�mz?;,{?j�{?�`|?��|?H}??�}?��}?�;~?_x~?Ҭ~??�~?�?�#?1A?�Z?�p?�?��?�?��?M�?��?��?��?��?�?��?��?��?��?x�?��?��?��W��l��� ?l>V?O�{�Ly?��m�h�ּex?;eV?�?�v6?��y?&>?�*��=U�wX?S��Y�Ӿ6�-?w�;��� ?w��\Ja��P?�v��{>��O?(sB��B���S?Z�&?S���$q�~LW���\?��a?4�>�.����dc9���ʽi?@ol?��{?W�A?˵>�Jɽk� ���L�ɞv�EJ��#l��oD�'��|����½v�>!:�>�0?��'?��E?��\?�Bm?�x? ~?�?ɜ~?��z?~�t?��l?� d?"�Z?��P?jTF?  <?��1?�'?��?Gm?&V?n�?C��>�	�>t-�>&�>��>���>TԢ>��>��>o�>�v>ZOe>.�U>��F>@W9>֙,>�� >7�>�R>5�>|�=	��=7=�=���=�E�=���=��=�$�=l�=[*}=ܛk=hD[=�L=y�==r�0=-v$=�=om=�=ɯ�<z��<C��<��<K �<�(�<25�<�?z?Z�u?"i]?� �x�5�t�h>'ռ>����w��?,�I?
�3?-�_>W�+��b�ץ?�H	?�}�%i?�3<��.?b[G�'�r?5�y�S+?�щ><0x�O?R�&?;)T����FlB?��K?�૾g��,;���>8�}?��;?��+;׊0�a�~��X� Pľ�l6>�?'?�Qo?��~?[(]?��?�R�>�i����žM)$�K�S��q�C�~�{�}��oq�Ll\��_A�D�"���H��.�|�.���RQ�����=�qQ>���>P%�>�R�>�9?�h?C�!?�-?w;8?
pA?ނI?c�P??�V?L'\?��`?�d?w�h?�k?�Sn?+�p?�r?zt?�v?�Ww?Lx?�y?�]z?�{?��{?RV|?��|?k@}?��}?'�}?�6~?	t~?�~?��~?��~?<!???�X?Po?��?}�?�?��?��?��?'�?<�?^�?��?G�?C�?��?��?I�?��?w�?l5?��?_�{?�=>�VW�ojd?,m�{��N1?|�?H�i?q�r?��z?���>��@�R��*x? Qܾu����>4���#�>x]��Wu;�'g?��g����=$c?��*�lk(���A?�n:?��x����Q?�\j?aO>X�!��}��C���Xh�>;g?��}?�9H?�%�>U���P6H�եt�R��kn��H�8���.���<��=sŢ>�	�>�)%?��C?�?[?�6l?�rw?��}?��?��~?;�z?qu?ām?n�d?
Y[?�]Q?�G?4�<?�2?q(?�?�"?�?#K?L��>i4�>�G�> 0�>�>�k�>>��>԰�>�a�>ໄ>kw>Y�f>3�V>�H>Y:>F�->��!>.v>b>�i>/��=��=~b�=��=$D�=T��=f�=+�=t=��~=��l=�x\=b-M=e�>=ޱ1=b]%=��=�5=GE=�
�<L��<���<���<x�<��<��<��4?s L?�F6>ט{�Sp
?�0�X[?��N���8��`=���>"�>��L��.g�
L(���L?S }>:g�a}?��a�3DU?�e��+~?�{j�t�>&*�>��~�m)�>`�>?"�@��I'�vp/?ANZ?m�|�=�}����I�>��z?�F?H
�=��%�d}�0_�W�پ��>9�?`�k?�w?�a?��?	ǖ>�H��x��r����P�P�o��`~��[~���r�D^��C�t�$�L(��^ž/;�����d�<��=��I>A�>��>��>��?�P?�� ?z�,?({7?4�@?��H?�P?-QV?��[?��`?�d?IEh?hhk?�"n?_�p?V�r?�Yt?��u?j?w?=jx?bmy?Nz?�{?��{?L|?��|?�8}?ߗ}?X�}?�1~?�o~?J�~?��~?��~?�?�<?W?�m?R�?K�?��?��?��?M�?��?��?��?M�?��?��?w�?}�?�?^�?T�?oz?��?�E?y��0�|�}�>��=9�q�v2M>lkd?�n?�}?��O?#S=Ip�����co?�r,���=�n>����8p>�e�=Oe���v?/�R���v� �q?����>��6-?q,L?c޾��|�^=e��bE?�kq?�e�>�F�~��L�+`O��e�>��b?��~?�TN?(<�>s���'h�wnC��}r����̏p��|K�O>��R���1����=�F�>Y��>��"?ηA?~�Y?�#k?��v?iq}?L�?$?UX{?W�u?Ln?�e?+\?4"R?��G?K�=?�K3?d2)?�[?M�?&�?��?�3�>�^�>ya�>�9�>N�>"W�>��>��>�#�>?q�>A�x>A�g>&�W>(I>�Z;>�z.>�x">G>�>>< �=�?�=���=+��=oB�=��=Կ�=a��=z��=��=�1n=��]=*LN=O�?=J�2=�D&=ߺ=��=��=�e�<�<��<9��<��<��<���<FL\�<�
��\"�;VP�x?�Wk�?�~?�Ш���z��,羐]������e����e����2t?�����3=�Z~?2�x���p?*�x�6?+�R��ǆ>�I?Ո�Yݨ>��S?�w*�d�<��n?[�f?gU���y��#�BQ�>]xv?�P?S>�=���	�z���d�8N�T��=؉?yh?��?h�d?[%?E�>��������U�{�M�I@n�>�}���~�t�s�4`�R�E�$\'�.��Poʾk,��\^���6�=OcB>�Ԑ>���>���>G�?�7?��?,?�6?�@?JZH?�O?��U?{a[?@/`?�^d?�h?n/k?�m?YVp?�jr?j9t?��u? 'w?Ux?[y?(>z?{?��{?�A|?��|?�0}?"�}?��}?�,~?Lk~?~�~?p�~?�~?Q?�:?<U?l?�?�?��?Ӭ?��?��?��?9�?~�?��?��?��?8�?F�?��?5�?0�?Ux�>�/?��<�Q}����>���r/?p�v�\���p?Q�Y?*�U?� ?{+��}���U=�{m?��[��'�>������y�<��>��6�5�~?9�7�7�Y��A{?�}侊�R�UW?-�[?�Y��B}�4Y��L�7?Pw?sn�>�k�Ӯ{��eT��Ł�K��>3�\?_�?�T?��>�ae;��־L{>�s'p������r���N��o��dľ�9���=澓>�1�>��?T�??�#X?

j?"v?�}?�?u.?ѳ{?,v?B�n?G2f?��\?Y�R?X�H?bX>?�4?�)?� ?��?^?��?�m�>U��>{�>�C�>`ݽ>3B�>�j�>�N�>��>�&�>Mz>i>Y>C<J>{\<>k/>�X#>
>Κ>��>Br�=�z�=���=@��=�@�=�}�=@��=���=�@�=���=�|o=��^=�jO=9A=��3=�+'=�=3�=�=m��<�X�<�&�<��<��<��<&٢<!p���N�������0�`?)u�^l:?V��>\�o�EV�ԗ���4f]� Eq�لT<��?n.��5�kBl?j��=f~?{���:u?�@3��=22?�$z�6D>e?���A4O�t�?��p?�L��q�s��`2�(��>�q?��Y?QC;>�����w��-j�lK��UW=�S?\�c?��?�`h?�+? V�>as ;��������J��jl�d1}�s-�u���a���G�;�)�x/	�
zϾ*�����~���1��=��:>�f�>A�>��>�?�?!�?�/+?�5?Bs??��G?@O?bmU?��Z?c�_?,d?��g?*�j?X�m?+p?mEr?�t?{�u?vw?�?x?�Hy?(.z?0�z?��{?;7|?͸|?)}?[�}?��}?�'~?�f~?��~?!�~?<�~?�?�8?`S?�j?�~?�?�?�?0�?��?e�?��?�?��?K�?h�?��?�?��?�?�?>�����S@��J���r?�0V��w|?��$�� L�'.d=|w?��?�&�=�X+���m�Xr�>�C?Hxx���?A���z��=3 P����>�|U��~?� ��U����?
����c�K��>wih?��|������ƾݪ(?Qo{?Q��>���lex�D\����ͷ>��V?p�?w�Y?��>�}=�Ⱦ�]9��m�S��4qt��$R��� �|d;&6)�n;�=�-�>ٲ�>�5?M�=?h�V?3�h?`^u?8�|?��?�V?�|?�v?�Ro?z�f?�]?�S?�qI?y??��4?�*?� ?�??�
?�:?���>���>?��>�L�>>׾>-�>1G�>o�>>��>�ۆ><d{>�Bj>�AZ>cPK> ^=>X[0>	9$>��>}]>�>A��=���=9��=R�=�>�=�j�=�x�=�Y�=���=q\�=��p=�`=��P="B= �4=�(=7i=s�=`t=N�<���<�R�<`+�<��<&�<w��<iL��t�8P)��(?OS�>�5���)>RD?%~�;��e�\�P(\��~�T3>�|�>:n?O�$��v�8�H?�kv���}?��z�Pa?�F�:���}�M?7�n�?�J=�?r?��쾋%_�8��>�x?Y��<��k���@�q�@>xrj?"b?v�w>���Y�s���n��+���*< �?q�_?��?-�k?��0?�k�>���<����4��bG��j�
{|�]{��7v� �c��
J��,����~ԾM���5#�E`#�s/�=�I3>���>�Ƶ>o:�>�F ?�?{�?bR*?>55?'�>?�.G?��N?��T?��Z?�_?"�c?�g?��j?O�m?��o?�r?�s?
�u?��v?b*x?6y?z?>�z?��{?�,|?��|?6!}?��}?��}?�"~?vb~?֙~?��~?[�~?W?�6?�Q?�h?"}?��?۝?�?f�?C�?��?3�?��?(�?��?�?��?��?��?��?��?�F�B9q�3`}��Խ��h?�6~���b?���u�����"1=���=�Ο�Dg�Oy<���'?�
?]��}.O?�@�z��>J6Ӿ�E%?dol��v?�C辡k����~?�OG�s�o�@��>Y�r?3��a~����0�?�U~?���>�$Ҿ�3t�hc��ʹ�[R�>MWP?��?b�^?	�?�;�=/��k4���j�<��C-v�RQU�,�$�Q־�$;���@=y��>k'�>>�?�Z;?��T?z�g?V�t?8V|?��?^z?�_|?�w?r�o?��g?�B^?2gT?86J?��??ї5?_r+?�!?�?�?�?���>���>*��>V�>�п>��>�#�>�>�h�>�>�|>mk>�i[>sdL>�_>>�K1>%>˹>& >L?>9�=T��=o��=_�=>=�=UW�=U�=�&�=���=?�=�r=�Ha=|�Q=
C=��5=.�(=c@=�V=�.=.v�<���<\�<�B�<+�<E�<ț�<��=Rn���>>/�~?�!վC��=e���:�~?�� �d�����!��5s�Onܾ�>-?$]A?�{Y��RQ=F_?r�\��_o?�3i�\�C?oOľ�"���$d?��]��п��{?u����l����>r$}?u$�=�hb�l�M�C�=/�b?�qi?��>V�Ɓo�@ s����V�����>8�Z?�X?�n?E�5?�\�>��X=kx��o��D�A~h�@�{�^���Dw��-e�L�=t.��#��|پ�ꖾ<�,���F�C��=�+>ᄆ>٩�>o�>�>��?��?9t)?�q4?K>?L�F?N?h�T?5Z?_)_?�zc?<=g?��j?[m?��o?��q?�s?tuu?��v?�x?\#y?�z?9�z?y�{?9"|?��|?N}?�|}?��}?c~?^~?��~?w�~?v�~?�?W4?�O?Bg?�{?r�?̜?�?��?��?5�?��?)�?��?��?��?y�?��?[�?��?��?�w�s�T�wP��I%?�d�>�b/��R�>��>/rc��$V��۾ԃ���s,�'��n[�n�^?��r>v�p�� p??�4��r?�l�I?7�z�wg?�홾�: ���x?n��qy���>��y?��J�/z���
��?��?�m?\g��o��`i�_�;Nv�>`cI?M?�{c?��?ݍ�=_ԩ��.�kh��6���w��cX�ם(��)߾�M���<��y>���>��?�,9?BS?�f?	�s?��{?��?�?��|?@xw?�{p?d0h?��^?�%U?Q�J?��@?3Z6?1,?TD"?�?�b?D�?S�>O�>���>�^�>[��>f�>���>���>N*�>F�>�	~>��l>3�\>txM>Fa?>�;2>�%>��>��>��>*h�=+�=��=j(�=~;�=D�=y1�=&��=�}�=��=�]s=}b=@�R=�'D=�6=`�)=�=�=�=��<^!�<ƫ�<�Z�<X�<cձ<}�<64a?t??��X?}C?�l��{:?Q�g��__?���>�G��5g���n��2=�d�W�� e?���>P�x�cY�>,{�>�A5��ZS?{nL�K�?R�M��\ܾ (t?��G�P�p��?��k��u�t1]>��?~v[>:W��&Y�YW =c�Y?�o?Hڶ>coҾUsj�c�v���;<�����>L�U?��~?��q?�);?�&�>�j�=��������@�2gf��z�r���Bx���f��)N���0����t޾;͛���5�:;j��}d=�%$>��><��>���>'��>��?P?+�(?+�3?�o=?� F?��M?�T?�Y?8�^?�-c?d�f?�Hj?y(m?�o?��q?��s?�Xu?�v??�w?�y?��y?!�z?A}{?�|?m�|?[}?�u}?��}?8~?�Y~?�~?�~?��~?P?(2?�M?�e?Nz?8�?��?,�?δ?�?��?+�?��?a�?J�?��?8�?h�?+�?��?��?su�>�Q��y�>�}?���5�h��zV�P�e?O����iQM���;��j��]q�0�ƽ�|?$���bM��-?��\��>?�C���e?����O?��W�<�=�m?��=��~���(>r~?�N=�s� ���P�>��?�J?5蓾�(i�9�n���َ`>�B?�F~?��g?Pt?P>y���)��e���~��:y��Z[�M�,�c�羭�^�j-e<��j>���>� ?��6?��Q?�]e?}s?q}{?�q?I�?w�|?��w?Eq?�h?��_?�U?.�K?�jA?�7?��,?'�"?�X?O?4'?}Q�>�+�>��>jg�>���>��>�ۨ>��>��>��>Y\>i�m>Ƹ]>e�N>�b@>,3>�&>s[>i�>�>��=�e�=�A�=p9�=�9�=�0�=��=S��=�<�=�q�=��t=)�c=�S=�2E=[�7=��*=��=3�=v�	=� =-d�<1��<r�<��<�ǲ<j^�<(`?��?X:t?
�=C�o��?VRz�W��>��\?Q�g�)��p�-�W̾��>�~?��3>�>���?���=���O�+?�%����>�49��Q��}?=�,�����[?g4ݽ�}|�,]�=��?K��>�nJ�1\c�:���O?�u?�f�>b޷���d���y��'��3�����>a�P?�}?t?t8@?���>Tc�=��i����J=��:d���y����A1y�HZh�0+P��3���f�ǫ��^]?�&ц�J�C=N�>9>�j�>R��>)
�>ǫ?�?;�'?��2?T�<?�hE?��L?@�S?rjY?�x^?��b?6�f?*j?��l?�{o??�q?��s?�;u?��v?��w?��x?K�y?��z?�p{?�|?4�|?]	}?�n}?��}?~?U~?4�~?��~?��~?�?�/?�K?�c?�x?��?��?>�?�?0�?�?��?C�?��?��??�?��?0�?��?d�?|�?�o?9:E?��k?��<?�e�!?�B��1}?�w�<��d�� }��	u���rd>���>�|?Zľ<�w6{?�<v�xa?1�b���w?��{��?2?̭�<�6U�{�]?֝O>�����M=��?iy>��k�٠-����>�m~?�m#?�g��Yb�R�s��x��ʨ/>�A:?�|?
�k?B�?	�0>A���KY#���a�L�}��z��6^�#b0�k��^�p���'�E3[>�>�>�6?V�4?��O?X!d?�@r?�{?
J?_�?�F}?8\x?H�q?�yi?S_`?ȞV?�{L?�,B?y�7?D�-?l�#?�
?p�?��?*��>VS�>��>�o�>���>׵>緩>bW�>��>���>iW�>�4o>F�^>G�O>:dA>94>�'>=,>h>Z_>��=���=�f�=sJ�=�7�=~�=@�=���=���=�#�=��u=?�d=�U=�=F=�|8=¯+=��=r�=�]
=f� =���<��<���<�!�<���<�?�<�ˇ=�5#?D��>$-�Wz�"2M?r�&�/��?rZ�>�7��9���@<;"+?��v?f|&�q{l��M?�E�w
���>� �>�7>e�7���?I��� �خz?��<$��	�7;�}?\`�>�<��l�T�⽭E?/^y?i-�>����}m^��4|��/��_!��r�>F K?)|?dv?�E?8<�>O>f<R��8���9���a���x�����z�c�i�#R�rN5��m��P�6�����H������"=��>�Kx>\H�>� �>'��>��?\?i�&?�!2?;<?3�D?�wL?\*S?cY?�^?4�b?�sf?p�i?��l?�Oo?��q?Ass?�u?Αv?��w?��x?��y?��z?�d{?L|?�|?T}?�g}?��}?�~?�P~?H�~?U�~?��~?<?�-?�I?Qb?rw?��?��?P�?3�?~�?g�?�?��?��?��?��?��?��?��?:�?W�?�K?�x?��d?���<Q�u�#y?	���:?6?y�b�q���|�6Th���ܾ�|?�F`?�&�R���Ćd?����gw?�4w�յ?��n�P�?=zB>�lh�K"I?��>}��h��j�~?@�}>s@a�u?=��K�>�{??�0?r[&��Z�.�w�L2
�<��=02?&�z?�o?�F#?��R>��v�{z��j^���|��{���`��'4��2��K��������K>>��>�e?�w2?�N?m�b?�iq?]�z?T?4�?t�}?��x?�%r?�j?�a?�XW?2;M?��B?Z�8?�h.?"m$?R�?4d?-n?Z��>�z�>��>�w�>v��>��>���>�%�>:n�>�d�>� �>qp>�`>�P>�eB>X5>��(> �>�*>�>�]�=_��=��=r[�=*6�=1
�=�Ƥ=�[�=���=oՄ=�>w=Tf=�#V=�HG=*u9=�,=� =�w=.=�p=���<1�<;��<�%�<���<!�<g�M���r���������>}k>��y���.�TIT?rV?���>ו">+�>��f?K^N?����UDB��q?���4���ɍ�>�����B=�>�aT�9W{?Ý־�^�l�q?��>�t�q�սpx?�J�>f,�]Ks��-=��+9?b�|?U
?����~W�?~���7�H�K�ǳ>�+E?��z?�vx?<�I?���>��>�i:��Z����5���_��w�	��N�z�4Vk�sT��7����j4��h\���R�0���=�^>�[q>)$�>�-�>%��>�l
?�?��%?�Z1?ce;?�6D?~�K?�R?ڝX?4�]?GEb?�/f?j�i?L�l?�"o?�_q?�Qs?�u?|xv?��w?��x?Y�y?g�z?8X{?��{?��|?A�|?�`}?��}?�~?�K~?W�~?�~?��~?�
?�+? H?�`?v?�?��?a�?c�?ʼ?��?��?Z�?4�?D�?��?t�?��?��?�?2�?{���o��>�r>U�4��4�k�d? �T�}Y>+:j?o�k���.�]rQ�3�'��-\��1W?�N*?��Z���E�T�<?�y��?����|?��X�y9�>@��>"v��t0?cF�>h w�*�7�'Cz?�Ư>7�T��rK��8o>�Ww?f@=?��Ƚ�GR���z�iG��u�=�)?�x?�
s?�]*?K�t>�W��x���Z�.�{���|��c�I�7��� �s找J�gK<>U��>ǎ?B-0?.[L?Δa?��p?}z?��~?��?z�}?�3y?z�r? �j?��a?�X?V�M?ŭC?e[9?�$/?H$%?�m?�?6	?�{ ?ȡ�>�$�>��>��>���>oo�>��>[/�>��>���>.�q>/a>��Q>�fC>m�5>�x)>��>$�>��>���=�=7��=nl�=^4�=���=���=�(�=�y�=8��=�x=hMg=FBW=�SH=�m:="~-=5t!=�?=��=C=�,�<m]�≮�<*�<۝�<[�<�To�f�k��x�mU5�)j\?��徂?�(z�V��>��?MO;?f3?�0A??�?ũ
?�!?�L����?��,�Gl>��<��,��� ��i?�Pj���o?�ƌ��x9��#d?��>[�{�m�W��pp?�?�b���x�����d,?��~?�?�J�}�O��G�!�?���u�Lՠ>,??!�x? Jz?
aN?(�?j�7>w|"��]�$2��5]�2�v�X����{���l�%�U�U�9��0��=.���^[��ڻ��$�<��>Zhj>,��>MX�>+u�>�K	?�?%%?<�0?ϵ:?ƜC?�jK?�>R?�6X?Xl]?��a?��e?]i?�[l?�n?9q?�/s?I�t?	_v?��w?��x?��y?�z?�K{?��{?>x|?#�|?�Y}?��}?D~?aG~?a�~?}�~?��~??O)?F?�^?�t?>�?l�?p�?��?�?/�?�?��?��?��?[�?2�?��?f�?��?�?!|z�KU�n#������[>y��> c��i�¾�=}?0��>�!�����e\����>ۅz?���>�Oy��Vy>�?M/b�=#z?�{�~No?I�:�y&p>aO�>Z~��(?wp?��l�Dk���	s?5��>/�F�4 X��K>γq?��H?�d�]I��h}�����v�<� ?ʰu?`v?�:1?45�>�P7�wU��$W���z��}��"f��x;���q���^�U���,>0�>-�	?��-?�J?�D`?M�o?�y?7�~?�?�~?�y?�4s?Wk?vkb?��X?:�N?�lD?�:? �/?��%?>?��?�	?�?g��>�;�>��>z��>���>�J�>���>d�>c΋>�R�>?�r>QVb>��R>HhD>w�6>�X*>r�>��>B	>�  >�P�=Q��=f}�=�2�=��=\�=���=�8�=9�=��y={�h=aX=i^I=�e;=Qe.=^K"=-=�=��=go�<։�<^��<2.�<���<��<XhS�l�\��YO��:�<�z?�k���q?��l�-���d?�1w?{
`?Qu?vq?��R>��l���h��Kx?+Y����>��Y��5>cܵ�6/?B�x���]?wj���P�w�R?+��>'�t�wڠ�	wf?�9!?�4	�5�|�_���o�?��?wp?�O���G�T���?G��Տ����>?�8?%[v?N�{?�R?��
?OGQ>�w
��C�T.��Z�XFu����pT|�� n��W�V�;������������d��ͽ�H~<\I�=)rc>l֟>��>;��>�)?n?�,$?��/?~:?C?�J?t�Q?V�W?]?L�a?.�e?�!i?�'l?�n?�q?�s?��t?tEv?n�w?_�x?�y?��z?5?{?��{?�n|?��|?�R}?��}?��}?�B~?f~~?
�~?��~?�?'?!D?M]?s?��?U�?~�?��?`�?��?��?o�?h�?��?�?��?L�?4�?��?��?��3��o~�8���-��R?⹒�F�>��V�'CB?�U?bc>_T�-l>��*?=�|?#^E=e��?�X�>Χ<�CWf?��k���W?4��q=�v"?���٦�>�(,?!$_�l�̾�i?��?�7��.c����=�j?�dS?�=�$?���F0*��k����?�pr?)�x?�7?ޛ>�^����CS��.y��e~���h�?�R5	��X�������5>)�>N�?f�+?��H?��^?ܿn?�x?�y~?-�?�G~?��y?1�s?��k?�c?{~Y?�qO?�*E?��:?��0?�&?��??b?^V
?{�?���>�R�>d��>���>:~�>j&�>���>W��>
��>���>8%t>�}c>/�S>�iE>w�7>�8+>!o>1r>�4
>�� >l��=g��=Z��=�0�==г=�[�= Û=|��=��=�{=��i=�Y=KiJ=\^<=�L/=�"#=k�=@G=!y=4��<?��<���<]2�<��<�Ī<B86?��	؟�9�;?؃?JCu�SLs?|�P�&�>�?ۛy?ڧ?C�}?��>?�!���]7�=��[?:�u��-?mk߾��>F�	��\O?\��v�E?t,�<��c�Pw=?R��>��j�'Ծ�/Z?�3? 쾛I�[t̾d?7�?<K*?�8���<?����6SN�(l���tt>C#2?V�s?0}?o�V?B�?j�j>����־"q*��X���s�+e��|�so�:�Y��>�B�����Uĸ�W�m�9%߽B��;�	�="y\>�>��>]]�>�?G?hH#?n/?rT9?�fB?�ZJ?hQQ?\gW?[�\??Ya?Xbe?��h?��k?ϛn?��p?��r?-�t?�+v?!{w?�x?K�y?uz?�2{?��{?\e|?��|?�K}?\�}?��}?*>~?fz~?��~?��~?�?�$?.B?�[?�q?��?<�?��?�?��?��? �?��?�?;�?��?��?�?�?��?��?��`>x�.�֓4���s=LM}?�U�[�R?.��K�>%�?�
'?!��>Э?��f?��]?V3���tk�%�=?N<�
�ӦE?paP��7?�ؾS���@?y�{��1�>4�C?��M��� �@K\?�?��%�{�l��Fû�bb?u�\?vx�=��4����_�3��w��?N�n?��z?�<>?�X�>y���:O��w�2���j��xB�"P�����{��<�>�9�>L�?H$)?��F?�]?N�m?�mx?�9~?��?�~~?�_z?9t?h�l?��c?�2Z?=,P?��E?r�;?]T1?VF'?Q~?�?|�
?L?p�>�h�>e��>���>�g�>��>R]�>2r�>�7�>���>au>��d>�U>�jF>m�8>\,>�? >�4>��
>�R>��=x �=K��=�.�=缴=8�=D��=u��=���=�j|=��j=�Z=,tK=�V==�30=��#=��=�=�&=��<���<���<�6�<3t�<L��<i�y?+;?�u5?��?�F�.���?���<��t��5o=�A?ĩk?GSZ?Cw�>����1u����>��+?����W?�"�ƴ?��2�h?1~�i`(?��:>Q#r���$?9!?�@]��h���K?�<C?��þ���&ﾱL?��~?ۆ5?+���6�yZ�q�T�����SAM>yN+?sq?�A~?!�Z?=O?@	�>�k��B�˾�{&��vU�/�r���N�}��p�si[�	*@��,!��= �X���U4w�$���8���=[}U>ǁ�>��>���>�?7�??c"?U7.?��8?��A?>�I?��P?��V?9\\?�	a?.e?l�h?|�k?Tnn?�p?m�r?f�t?�v?�dw?��x?p�y?efz?�%{?��{?�[|?��|?�D}?,�}?D�}?�9~?`v~?�~?��~?L ?�"?8@?�Y?+p?p�?!�?��?�?�?U�?w�?��?��?��?t�?j�?��?��?c�?��?�p?7>̩=��B?o ??K~���?PN��/��s�d?gn?�A?�TS?B�?�w!?F�A�@��eg?���ǁ��Q�?�*���?��w�,�����Y?W�q�ǩ>>�X?3{9�4i�J	M?+�.?��ct�)��A�X?�le?�$>�7)�O��W<=�
����??6�j?�|?E]D?Ԡ�>���_���K�h�u��w��m�Y�E��]�b����9н��=�N�>I� ?�&?�E?,\?��l?��w?d�}?��?��~?��z?b�t?� m?gd?4�Z?Z�P?r�F?O<?2?7�'?�-?e�?K�?q�?�9�>�~�>"��>f��>�P�>�ܮ>�*�>�2�> �>�M�>ߜv>��e>CV>�kG>X�9>�,>k!>(�>�>\�>� �=�E�=8��=-�=���=f�=g]�=mu�=TN�=ϵ}=�l=:�[=L=$O>=�1=��$=�`=��=��=�7�<�<�<�:�<Pf�<���<�W�>(�{?^?��%?A�G��=�a5�zO?�/w���ٌ�>`(?�{?��`=��F�U�N��(?(�>��v�ms?-�L�:�>?�}T��cx?h�t��O?��>��{��d	?�q0?�L��H�<;?��Q?d+���
��%�u(�>�|?�@?���<oi,�c*~��1[� �̾4�%>6?$?N�m?�?K�^?]�?���>P���;S���t"�d�R�q�c�~�+~�>�q��&]��?B�/v#�w���G¾l8��8/������=�~N>�T�>R��>�=�>V�??�?<}!?pl-?(�7?�-A?�HI?�aP?��V?� \?�`?��d?�lh?�k?�@n?i�p?�r?ymt?��u?0Nw?wx?xy?�Wz?6{?��{?IR|??�|?d=}?��}?��}?�4~?Ur~?��~?��~?��~?F ??>?5X?�n?)�?�?��?F�?9�?��?��?	�?2�?��?'�?'�?��?��?7�?w�?�K?�Ue?�P?o�~?!	����/���D?�觾y!<�t�?iV~?7/w?��{?k�q?F>IZS����6}?������H�>����}��>�^Z���龞m?��a�4=4[h?%7"�� 0��i;?g@?52����y��W*��M?9�l?��e>�N�� ���E���+�4^�>O!f?=~?�:J?���>L[�E(�0�F���s�����o��$I��]��#��9��v��=g[�>���>#R$?'C?u�Z?��k?2<w?[�}?��?��~?Q{?3u?�m?�e?D�[?2�Q?D^G?�	=?��2?��(?��?�\?�;?��?�^�>���>���>��>�9�>Է�>���>��>���>i��>��w>��f>�)W>�lH>8�:>��->�!>��>8T>5�>F;�=�j�=!��=3+�=3��=��=�*�=d4�= �=� =�Qm=��\=�M=�G?=2=��%=")=Pv=j�=�z�<w;�<�.�<�>�<mX�<�h�<r�R��>( ?�pͽ*K��:?ŭ#���q?�-���U�F�U4�>N5>����7s�js�!;\?�>Й[��y?	k��w_?�#m�̢?�c�'�>O��>������>�F?��9�'d.���(?��^?�^��n|���x��>�vy?E�I?�ި=G"�	`|���`�gIྂ��=��?Ϧj?=�?[b?�m!?d�>��&�Ѷ��[�s�O��qo�35~���~��s���^�oMD�й%�7���Ǿ�ӄ���	��爼8�=�}G>�&�>��>\��>��?a�?`� ? ,?�<7?��@?�H?�O?�,V?��[?�i`?ܑd?/0h?Vk?�n?�sp?M�r?fOt?��u?�7w?kcx?ygy?�Hz?j{?׵{?�H|?��|?-6}?��}?v�}?)0~?Dn~?�~?��~?�~?�?D<?}V?4m?߀?�?��?p�?��?�?a�?��?��?.�?��?��?c�?k�?�?Q�?���;d?�hx?\�?��;�t��0g>˥�>5�{���r=b$S?e{?~ox?~�>?3�C�jw�$9^��A}?�:�d0B>��->摾�=8>�>Gk�"�y?r�L�˽��t?mt�@D���'?�LP?��Ҿ�}�+{�rB?��r?V�>���މ}�@6N���\�O��>�2a?t?p�O?���>�0��λᾗ1B���q�t��Mq�8ZL��O�Q�����	�k?�=x_�>��>M�!?�0A?kPY?7�j?>�v?t[}?��?�?�o{?�u?�Fn?I�e?�E\?�SR?	H?��=?�}3?@c)?�??��?e?r��>��>Ϩ�>D}�>�"�>���>�Ť>5��>�T�>,��>"y>�h>=X>nI>�;>��.>��">	|>k	>M>�u�=���=��=U)�=Ղ�=ͪ=���=Y�=ܱ�=�%�=Ån=��]=˔N=�?@=5�2=$&=^�=�0=�.=g��<�g�<1F�<C�<�J�<;J�<)0����	�w���I�x�-���?�cy�жv?�M:����(��R[A��w��*� ��;|��*�y?���2�/��Z{?�G|��bu?}�{�%�}?JlK�p�`>��?�~�7�>�X?b$�q|A���?�Ni?�s��/x�D'���>q5u?�S?��>�����y��Cf��}�N�=�z?�	g?R�?��e?��&?Tz�>�ҋ�/8���1�M���m�1�}���~�~>t�߂`��SF���'�	Q�ȶ˾Ol�������ʼ<�=gz@>y��>g1�>��> r?��?��?J�+?��6?��??�4H?�oO?��U?KH[?K`?�Kd?!�g?� k?��m?kKp?|ar?-1t?��u?� w?�Ox?\Vy?:z?��z?��{??|?��|?�.}?k�}?�}?q+~?/j~?��~?��~?`�~?�?F:?�T?�k?�?ɐ?��?��?Ʒ?t�?��?�?a�?��?��?��?(�?8�?��?*�?��a��_->ٞ�>�G������?�ѾgD?��m��徥��>��L??cI?���>Y�;�-��N�=D�g?I�b����>����`����8ȼ�Z�>��<�ř?6w2�Iv�v|?�0پG�U���?�^?Nz��w�������4?(x?��>r���%{�J�U�����Ѥ�>��[?�?%U?�>:�<MԾ��=�f�o������r��yO��3��ƾY���ҝ=y[�>$�>f?=??��W?u�i?��u?�}?��?%6?=�{?W"v?w�n?Rf?��\?	S?��H?�|>?�44?g*?�8 ?��?�}?��?���>��>���>_t�>S�>em�>:��>�t�>1	�>�G�>�Oz>N@i>hPY>oJ>ً<>5�/>&�#>q>>��>��>e��=���=���=t'�=uo�=_��=�ğ=M��=�c�=Rˀ=ιo=f_=��O=J8A=`�3=JV'=��=�=E�=2 �<F��<�]�<2G�<�<�<�+�<�x��M|�rOe�5r}��X;"�M?"�i�|3$?\��>��d��b�Ѕ�'��f�Byj���=��~?ctھ�����f?`o�@g?l��)Hr? �,���d=��7?��x���)>L�g?��JYR�#��>�r?Y�<��Sr�95�c�}>d�o?au[?coF>���?w�ok�z!���7=�?�(c?��?`�h?�,?l��>R��;̉��a���J�Ll�g}�=�cQu��!b��QH�0*�ڤ	��fо�����-r�=�t9>�Č>NO�>���>uJ?��? �?
+?K�5?�S??s�G?*�N?UXU?y�Z?_�_?9d?ʵg?��j?*�m?!#p?�>r?�t?C�u?�	w?�;x?*Ey?4+z?��z?~�{?O5|?#�|?�'}?�}?��}?�&~?f~?��~?��~?��~?a?F8?S?5j?G~?��?��?��?�?��?I�?��?��?x�?;�?[�?��?�?��?�?i�_�!r0�3�ɾ��O�.�:�k�x?��`���~?���B�U�l�����>.�>�We=�3�7�i����>!�=?Ygz�!%?���1p>�>i�a�>��X��v~?�3������?�!���d�I�>ȶi?A�q�0���˾��&?��{?�\�>̡�K�w�p�\��j���"�>E$V?��?�-Z?�c�>;g)=�Oƾu�8�9Vm����̥t�܂R��!��jξD+���|=�O�>���>��?�B=?[V?��h?�Hu?�|?:�?�Z?|?�v?�co?
�f?1�]?�S?k�I?5??��4?��*?Q� ?T?m?VM?f��>���>g��>Bk�>��>�G�>i`�>5�>e��>���>�{>gj>�cZ>�oK>�{=>�v0>�R$>� >�s>��>���=���=���=�%�=\�=���=①=@q�=_�=�p�=��p=8`=��P=�0B=��4=o-(=Ձ=\�=��=�B�<���<Pu�<\K�<�.�<��<�p�>�z9�ZCk��}��/?70n>�\���:�=��N?��q��>�c���b�0���Q6���>\gj?v�+���T���C?Kt��}??Ey�+^? ����P�P?,m�ޖ=�{s?�0���`�"��>��x?��%=��j�� B���7>m�i?�c?x�~>�S�ps��qo�xH����;��?�_?��?hl?01?��>w��<Fǖ����G��Ej��d|�#��cWv�-�c�KHJ�ub,����3վ���SI$�Hn'�QM�=Kl2>Ƒ�>|k�>���>" ?u�?��?9*?�5?��>?�G?�{N?��T?<�Z?w_?i�c?(xg? �j?��m?��o?Xr?I�s?ǎu?��v?�'x?�3y?9z?��z?<�{?�+|?��|?O }?}?�}?�!~?�a~?f�~?m�~?�~??C6?JQ?�h?�|?��?��?�?N�?/�?��?$�?��?�?��?�?��?��?��?��?��}� '~�b�t���{�����	e?�#}��#_?X���(��u�	�<��}=k���h�Y�9�r�*?��?Mx��Q?�����>��׾d'?#Em��_v?���s>� �~?|HA� hp��a�>��r?��,�}����6�?Un~?�=�>��о0�s��dc��A�>�	P?��?X�^?3?E[�=LV����3���j�7��h@v�BuU���$�e�־��;���==�<�>���>�`?�A;?��T?�g?��t?�Q|?��?�{?�c|?	w?�o?�g?K^?�oT??J?f�??��5?�z+?L�!?�?��?m�?���>��>ʹ�>�a�> ܿ>c"�>{-�>a��>�q�>��>K�|>��k>�v[>�pL>Pk>>nV1>*#%>0�>�(>uG>l%�=}��=��=�#�=�H�=�a�=�^�=20�=ǋ=?�=�!r=�Va=b�Q=)C=��5=�)=J=�_=7=ȅ�<��<ߌ�<�O�<� �<)�<]�?͜�=���ə9>�i?����>k���%n?|�v���a�������q�u=ԾQ0?��>?b[����=�?wz[�Bdn?�$h�l�A?=�����V e?��\�Y�̽�e{?�����l��:�>�O}?��>�a��N��e�=YUb?ؿi?���>�/�!Ko�Ms��/�7�	�U��>I�Z?~Q?�n?A.6?���>'_]=��6R��C��fh���{����pPw�Q@e��6L��.�7@�I�پ#��c-��gH����=�a+>.]�>���>�N�>S��>�?��?5j)?�h4?�>?��F?'N?5�T?�0Z?j%_?Ewc?<:g?$�j?�Xm?��o?�q?��s?*tu?��v?�x?�"y?*z?��z?�{?�!|?0�|?�}?a|}?��}?(~?�]~?Ε~?P�~?T�~?�?>4?�O?/g?�{?d�?��?�?��?��?.�?��?$�?��?��?��?v�?��?Y�?��?pqN?�g���X�����g!?t	�>��2���>�}�>.
e��TT��F־�7��(~*���kp辫�]?ňz>q��o?D�3��8?"���H?��z���g?盾Bz�y?u���`�x��~�>`�y?�T��,z�(
�b?��?i?2*���@o��;i��;��>+�I?R?�^c?ό?���=�3��y�.��#h��9�Q�w��PX��(���޾I�L��m�<�Ez>d��>�?�:9?xLS?b�f?��s?E�{?��?;�?��|?cuw?xp?P,h?b�^?>!U?��J?ڢ@?uU6?],,?�?"?��?�^?A?��>��>��>^X�>B��>���>p��>���>�%�>�A�>{~>:�l>��\>�qM>�Z?>�52>��%>��>�><�>�_�=m#�=u�=�!�=F5�=F>�=,�="�=�x�=���=�Us=�ub==�R=k!D=��6=��)=K==��=���<z�<n��<�S�<��<xϱ<ib?,)^?�^	?c�U?�F?E�j��v7?;
f��2a?#��> ���h�
�o�m�>���~�Dd?; ?A8x���>>��> a6�0T?�BM���?p�R��Yھ��s?�AH�=m�/r?P�n�}�u���_>j�?�/Y>�W�9�X�.�'=Z?��o?\%�>�Ӿ��j���v����,!��RG�>q�U?��~?�pq?m	;?]��>%�=0�������@��tf���z����|<x��f�!N���0�����U޾����!�5��]i�Le=IU$>"'�>Ȟ�>G��>ٜ�>��?�?��(?��3?�s=?�F?څM?pT?�Y?a�^?�/c?�f?Jj?�)m?�o?��q?Ͷs?lYu?��v?��w?y?	�y?z�z?�}{?�|?��|?�}?�u}?��}?X~?�Y~?2�~?0�~?��~?`?62?�M?�e?Wz?@�?Û?1�?Ӵ?�?��?.�?��?d�?L�?��?:�?i�?,�?��?b�n?qZ�>M�*�b>u�}?ne��D��<� _?�=�ґ~��F��J4�9�f�Xt�-��uz?��@�|�Q�+�~?owY�r1:?%�?��[c?����gR?�� q:��n?t�n=�)~���3>�%~?�(=Ίt������>��?(�?w䖾i�i�!on����re>�B?{d~?Y�g?�?�>�뛾��)��Pe���~�Xy��[��+,���x']�o�~<�l>��>\C?-7?��Q?�ze?�$s?�{?Vu?�?e�|?�w?��p?��h?#�_?c�U?�K?mXA?�	7?.�,?��"?�G?9�?�?44�>��>���>�N�>6��>�ִ>EǨ>�u�>�ْ>�>�<>��m>�]>~rN>�J@>�3>�&>�G>$�>��>\��=XH�=G&�=��=�!�=��=-��=��=�*�=(a�=�t==�c=�S=�E=
m7=޲*=��=f�=��	=� =�E�<���<�W�<�<ǰ�<Wط���j?�}?�y?�>�uu��~?�}�O7�>ǂU?�1ؽ?!"�c�5��޾���>��}?��S>Q��T?�b�=M�w�/?p�)��R�>O�］���|?�m/�k�����?S����|���=��?v�>�K��vb����T�P?L�t?���>�c��fPe�e�y�>.&��%����>YQ?��}?#�s?��??��>���=�(l�p�Yt=��od�V�y���|y�85h�e�O�$�2��������6��a|>��'����F=�F>Y�>���>��>�F�>��?�?J�'?u�2?��<?5wE?
M?2�S? tY?��^?�b?��f?�j?s�l?�o?۰q?חs?�>u?Z�v?��w?��x?��y?K�z?!r{?�|?�|?
}?�o}?d�}?�~?sU~?��~?�~?��~??+0?L?!d?y?�?Ě?U�?�?A�?�?��?N�?�?��?F�?��?5�?��?h�?��N>JGy?`?*?�U[?M�Q?3mU��� ?P/���?g<z���m��y��n�	����H�/�S>y�~?�h��&�!�*}?�s��"\?�6^�G�u?�-}�h�7?�Ժ���Q�՟`?��9>^����=m�?��>zm�c�*�%�>��~?D,!?l#r��c�z�r�����7>@�;?�}?Yk?��?m+>>���MK$�MWb���}�RWz���]���/�2�&�m��v9
�]>�V�>��?M5?�$P?pUd?=cr?"{?�P?��?;}?Jx?E�q?_i?SB`?<�V?p\L?B?�7?g�-?^�#?��?��?#�?MV�>#�>O��>�D�>���>ɰ�>���>�5�>r��>r��>�;�>o>�^>:sO>0:A>�3>|�'>$
>;H>�A>���=?m�=7�=��=p�=���=Bƣ=�l�=Y܍=��=�u=�d=��T=(F=2T8=�+=��=��=c?
=� =Er�<���<\�<3��<��<b�z��i>g/??�?���b^�VE]?.�:���J���?|�>l������i���?�uz?�`ܽH:q�,DF?���mh��q�?w8��k��>\�>�~2���?L�������{?ac�ж�<��}?�1�>��>�B�j��ɽ+�F?m�x?ɲ�>�0����_��{� >.�4h�x�>u�K?�f|?Uv?'SD?�6�>w��=�V�~���F!:�Xb�^y�  ��c�y�ٟi�w�Q���4��	���羚����0G�����J�'=6>�my>�˩>�v�>���>��?�.?/�&?:B2?�0<?/�D?��L?|=S?Y?3.^?�b?�~f?�i?��l?�Vo?�q?�xs?�#u?�v?<�w?��x?��y?�z?�f{?|?s�|?�}?i}?��}?�~?>Q~?�~?�~?*�~?�?.?<J?�b?�w?�?ę?w�?T�?��?��?5�?��?��?��? �?��? �?��?A�?�7�#�C?�?� w?�0U>z_~�HWl?�Bz�J�Q?�K�>�n%���y�����q�V�l?�Si?�����̾ik?U&�zfs?�vs�,�~?�{r�|�?��>nd��MN?`y�>l~���=0?��f>O�c�7�9��d�>aa|?q�-?��5�}�\���v�ԏ�:�	>
4?]{?[�n?z�!?_�J>z�}�f��M8_��*}�v{�cU`��H3�5��+~���y��]O>��>K?R�2?ćN?.*c?V�q?T�z?,(?3�?�|}?d�x?zr?��i?��`?�-W?�M?��B?�o8?	=.?mB$?�?~<?1H?�w�>
6�>���>\:�>�{�>���>�`�>���>DA�>�:�>8ـ>l'p>��_>�sP>�)B>w�4>�d(>j�>N�>y�>3�= ��=�G�=��=��=Ӱ=W��=�+�=��=��=��v=��e=��U=�
G=[;9=%a,=�j =I=��
=xH=���<��<*`�<O��<ds�<� 3�0%����Ȟ���cz����=o��>��W�5
�y$e?�]C?��_> ]=�v�>��[?�{Z?]�Ҿ N���j?�,ɾVǦ�ᥞ>CA����=�+�>IN��}?r"�P��t?<	�=���9�7ly?iz�>a-0��q�_�+�]<?�{?��?���E)Y�o�}�r�5�� B�f&�>I�F?[�z?� x?��H?���>2�>��?�R���ͼ6��.`���w�_��'�z���j�B�S��7��C��쾟<����O����>	=�#>J�r>|ߦ>��>��>ݯ
?A?Q'&?K�1?%�;?�ZD?�L?O�R?µX?�]?rWb?�?f?-�i?C�l?R-o?iq?xYs?lu?c~v?��w?3�x?3�y?��z?[{?�{?Ƀ|?#�|?�b}?&�}?�	~?M~?C�~?��~?k�~?E?,?sH?a?Wv?Ɉ?Ø?��?��?��?��?��?u�?K�?Y�?��?��?��?��?�?"�y��mx�e!?��>ϧ��d0���w?7�l����>@bU?k[�H�>�c�L(?��/�ƝF?S =?�3M�z��sJ?�|�b�~?�{~���~?�#`�o�>��>��r�xQ8?ȴ�>)uy�>��O�{?@+�>
�X�qPG���>l�x? �9?7��r�T��z�����}�=5,?tDy?'r?�?(?_�j>.�`� M�2�[��1|��u|���b�i�6�#$���?��4����@>���>1k?:�0?��L?�a?�p?�5z?9�~?��?�}?y?k�r?D�j?��a?�W?�M?�sC?�!9?�.? �$?8?%�?��?�L ?�H�>���>�/�>�b�>Qd�>-�>o��>��>
�>�v�>�Mq>��`>�tQ>9C>�5>:5)>��>[�>1�>�I�=���=�X�=��=��=]��=i`�=��=�?�=�Q�=�%x=R�f=��V=�H=�":=G8-=23!=n=:�=��=��<��<Sd�<j��<�T�<$e>Y���F�R�`�*�[���9?8��+��>� l��n?�z?��?�w�>ZG*?5|?6�!?8�,����}?z��_�>���=��޽߽ýs^�>�pd��t?K�����1�7�h?�f>�H}���6�c�r?�?�� ��bw�d�q��X0?O9~?�$?�[�NR�n�~�l=�wLi�ܕ�>m�@?�1y?��y?*M?e�?I�/>�)��e��>G3�+�]�!�v�5���i{�#Ul��dU��9��y�Ù�乭���X�������<d>J�l>��>�3�>x9�>1�	?5S?�T%?��0?��:?d�C?i�K?�bR?VX?��]?�b?Q f?oi?Vkl?�o?�Dq?:s?)�t?�fv?M�w?i�x?��y?^�z?�O{?�{?{|?��|?\}?}�}?�~?�H~?��~?��~?��~?�?�)?�F?}_?�t?��?��?��?ұ?L�?_�?:�?�?��?�?r�?F�?��?u�?��?Q6��3V��/;�N���f�u�z$�2D?0���(���?�6�>q�۾H��*߾$:D>=q?t��>��p�uv>�j?�l���}?M�~�Ǌu?��F����>��>P�{��?f�?�+q�4F��v?*��>�NL���S���<>v�s?��D?5 k��L�N�|�<	�M�5=�$?��v?S�t?�.?���>$C�,����X��{�vU}�L5e��":�A��f��]�<���2>�{�>��
?�.?\;K?A�`?{�o?K�y?
�~?��?�}?�ty?s?k?n+b?�X?/pN?�%D?�9?��/?�%?��?zy?�w	?� ?�Z�>S��>9%�>3J�>�=�>m��>(u�>���>=��>��>�sr>��a>uR>�D>F�6>�*>�P>eg>�;	>��=���=hi�=��=Կ=���=z-�=���=��=���=�Yy=h=w�W==�H=�	;=j.=k�!=Ž=�G=@�=t��<6�<|h�<���<6�<��p?�1���{��0t�ۍ���?77I�X�V?~|�D�}=��v?�-g?"H?Fpf?vA{?�'�>%�^�����Y�}?�J�3��>J� �3B�=�ؐ��a!?[Zt��Se?�9���H�t�Y?��>��w�R��Hrj?6A?��ݟ{��-����#?�?q�?�u&�:�J�j��q�D�4��t̔>�;?7w?�N{?%Q?A�?�G>g����/�w�[��u����|���m��!W��;�=�����O3��&7a�4�ƽ5��<u� >�f>��>���>W��>��?d?R�$?T0?G:?�;C?~K?��Q?��W?�3]?��a?��e?�7i?0;l?��n?� q?�s?��t?�Nv?��w?��x?F�y?�z?�C{?��{?Ur|?�|?sU}?̰}?��}?~D~?�~?S�~?��~?y?�'?�D?�]?�s?s�?��?ؤ?�?��?��?��?��?��?��?+�?�?a�?G�?��?��?icp��^��be��Vd���?|�<�A�<�Y*��>e?f0?�<����n�h�?��? �I>H���M�>ԏ�>A�N�l�p?�mt�Qc?L'��->5�?�����?�� ?��e�q�����m?�O�>V3>���^��(�=~�m?��N?�;D;(�C�m~��%� p�_�?_�s?�w?��4?���>�z%�����T�p�y��~�E�g��u=��a�თ�/�{�$>!�>]?�,?�I?��_?�'o?<y?��~?�?.~?<�y?�~s?ޭk?M�b?�.Y?DO?�D?��:?[H0?�@&?Ԁ?{?�
?8m?�l�>���>Q�><1�>A�>�Ŭ>�4�>B\�>a3�>>��>�s>V�b>�uS>�D>�r7>��*>>i>��	>%_ >� �=&z�=��=���=�g�=���=�h�=B��=a��=�z=�-i=MY=��I=��;=��.=��"=x=�=�,=�#�<�1�<�l�<���<O�<�	K?��>�����P�o~�>�N?j����??�2��m�9?@�?��w?͐?h+Y?�AK;��z�~@V�d�j?��k�4�?���92�>�{뾈�A?
�}�A)Q?u����[��AG?�)�>�o�i�����_?�X+?-���r~�SҼ���?��?�#%?���4C����bAK��`��BЂ>R5?Q�t?��|?�U?i?�_>n���ھ/*,��EY���t�I��:�|�d�n�Q�X��=���A���Ǩ��s�i�u^׽}4<���=��_>&�>���>�}�>Z�?=t?2�#?NZ/?��9?I�B?�J?��Q?F�W?i�\?'|a?��e? i?�
l?̯n?��p?��r?B�t?7v?��w?��x?��y?n{z?,8{?��{?�i|?f�|?�N}?�}?��}?4@~?*|~?�~?�~??�%?
C?\\?Ir?F�?��?��?K�?��?:�?=�?-�?/�?b�?��?��?,�?�?��?p?T���p�W�p��f����x?�J�W�?� v��?��r?M]�>�7->�>*L?��q?sl�?�x�t�!?�>8�%���W?m�_���H?1�9���1?7�~��$�>�&8?�W�	��c?�k?�.���g�P= �f?�3X?΁=�:�l��
/�UL=�_�?�p?��y?�;?���>�������NQ�<nx���~�?�i�9�@�a9�S����=��ޓ>�>�`?[*?��G?PC^?XKn?�x?�Z~?��?�b~?�.z?��s?�<l?�ic?��Y?C�O?J�E?U3;?��0?��&?�$?)�?ť
?3�?�~�>���>.�>�>�>ȑ�>N��>��>tی>{N�>޿t>�d>vT>t�E>�Q8>!�+>H�>i�>B�
>M� >v%�=���=��=+��=D�=�ǧ=�'�=�T�=�A�=��{=\Lj="Z=��J=��<=��/=ۋ#=r2={�=�=<P�<PI�<�p�<���<���<����^u?�#�>��>xSp?��p>؂N��6N?N����AU����> e?�O|?�q?�q?4)��7~�Vu>;]F?�6}�-C?}�	����>���z\?���8?�M�=�jk���1?��
?{td�]E�f_S?�';?�ؾv����ݾ
	?;|?��/?@�o���:����ϢQ��e���Na>��.?΄r?7�}?��X?�e?�*w>�ͽhѾX�(���V�+?s��>�A}�<p�T�Z��?�!  �y��2��B{r�!�罍�f;���=@Y> �>kB�>�>2x?��?T�"?��.?��8?^B?J?�Q?H4W?ˊ\?h2a?�@e?.�h?;�k?��n?O�p?��r?��t?v?,pw?��x?�y?�mz?j,{?��{?�`|?��|?8H}?V�}?�}?�;~?nx~?ެ~?J�~?�?�#?8A?�Z?�p?�?��?�?��?P�?��?��?��?��?�?��?��?��?��?y�?�x�>�*?�L��_о���>Ye?�_u���q?9�u�
ˀ=�|?n�J?��?*?�u?F�G?z׾�\��pQ?v	۽W�C}4?��A�� '?a���E��L?�(x����>K�L?ݯE��Z�/V?)p#?����o�(
#��^?t�`?�=�/������7�U:��~�	?�m?ʝ{?��@?z6�>3�ӽ���{M�D�v�z7� �k���C������������>�R�>�?8#(?�F?J�\?�im?N/x?~?{�?��~?��z?znt?��l?Ed?�}Z?*zP?�6F?b�;?:�1?f�'?
�?�R?�<?��?�>���>��>���>�ɺ>�]�>���>1×>w��>��>��u>� e>�vU>��F>:19>_v,>q� >d�>�5>r�>?J�=���=��=���=T �=���=s�=��=>�=��|=kk=�[=L�K=�==Δ0=T$=��=�O=lo=�|�<�`�<�t�<֣�<�ٸ<�Eb��M?�o?�i?��k?�w����*�>�t�>H~���$�w?�{T?Y??j��>H ��9h�\�?�5?�~�`�d?>�5��['?nB�	p?'7{���?V}{>��v���?�"?Y�V��7��	E?w�I?J{�����0��ӈ�>�	~?�:?&4λ�2���~�ФW��%��6�<>-^(?7�o?��~?ɍ\?�?�T�>W��4`Ǿ��$�pRT���q�R�~���}�'>q��%\�A��#"��=�w���i{��)��Cw���\�=u�R>},�>t��>��>9h?�?�"?0�-?�W8?��A?��I?m�P?��V?�5\?V�`? e?�h?l�k?'[n?v�p?��r?�~t?v?D[w?e�x?U�y?<`z?� {?V�{?�W|?�|?�A}?��}?�}?�7~?�t~?��~?z�~?2�~?�!?d??2Y?�o?�?��?/�?��?��?�?=�?O�?o�?��?T�?N�?��?��?P�?�j����?�3�>��>vvi?O�>N�o���v?�*��x�L?[�z??Y?APf?�?L�?B�.��,�Wrq?�P����h��_?���29�>�4���>\a?�l���>�1^?�1�*�!��G?S
5?����Xv���꽌#U?�"h?ƣ;>�%����(^@���ѿ ?1i?�+}?�sF?�I�>z��\����I��8u����L�m��G�m������ܽC��=�ߤ>Q��>��%?�ZD?��[?�l?šw?��}?��?&�~?��z?�t?�Tm?[�d?y#[?�%Q?�F?��<?BN2?�:(?	k?��?��?�?���>g��>7��><��>���>�)�>s�>�v�>i+�>͈�>�w>3f>�vV>�G>y:>�F->�Y!>Z;>��>�6>o�=I��=��=0��=���=�a�=X��=f��=���=�)~=��l=�!\=��L=@�>=�k1=J%=�=P�=�=��<jx�<y�<��<9��<�_������_?�m?��>F�j�3{�>!���\\??�Xe�E���M>�l?R��>8����Y��4;���<?�+�>�ho��Iy?��X�&XK?�6^�H�{?0�o����>�U�>��}��J�>�X8?��F��� ���4?�tV?�E���P~�T�����>V�{?ǣC?G�<=��(�)�}��D]��Ӿ3�> �!?>�l?L?�`?��?8 �>�e�z����!�ɾQ� yp���~��8~�]r�r�]���B�B$��q�}�þ`ց��D�v<�%�=e
L>�7�>��>*W�>pW?ݟ?^,!?%-?b�7?��@?�I?u7P?qV?v�[?�`?;�d?�Wh?exk?�0n?q�p?њr?�bt?��u?CFw?.px?�ry?�Rz?�{?�{?�N|?U�|?�:}?ę}?��}?53~?�p~?Z�~?��~?��~?y?�=?�W?+n?��?��?I�?��?��?}�?��?��?�?h�?�?�?��?��?'�?�����?�z?F�m?>lr?����<�Q�#?�X'�!U����>r�w?=�}?|�?��f?Z>�,`���ܾ�u?��4Y�;J�>o�ݾ/�>���9�8 �=Rq?`C\��#q;�8l?�4�~�5��6?pE?yv�%'{�0/A���J?t�n?�x>=��1�~��\H�}�9���>��d?Cc~?��K?�*�>ۢ6��f�`pE��hs������o��J�G{�L����_��B��=We�>cN�>y�#?�B?OZZ?�k?zw?��}?2�?z�~?@1{?QUu?%�m?�:e?��[?��Q?��G?C>=?��2?"�(?�?9�?*i?ث?1��>���>b��>���>S{�>f��>K2�>�)�>Jӎ>�%�>S1x>�Eg>,wW>J�H>��:>�.>�">L�>0�>��>�=���=��=�r�=�ض=�.�=:d�=j�=2�=�]=]�m=�,]=��M=d�?=C2=��%=ta=��=2�=f��<���<C}�<��<���<6hk��zM��*J>��>����)�u��X?��D��|?��jh��T~�'�
>js=<�ݾ� z��=��5�f?���=P�P��?�?q���f?�Or���?�]�{�>v?���U�>	�K?/4���3�ud#?:�a?\RF�.g{��Q�mG�>{_x?C�L?z!�=�X�u�{��b��徺|�=�?��i?Ҿ?zVc?�"?���>��Gس��1�'O���n�v~���~��ps�lR_���D��[&�T��+UȾ��xr�Jx����= �E>$A�>�B�>���>�E?ج?IU ?Sg,?a
7?.d@?#�H?�O?�V?��[?9S`?)~d?
h?%Gk?�n?Ahp?�zr?�Ft?{�u?)1w?�]x?�by?�Dz?�{?��{?�E|?��|?#4}?�}?��}?�.~?m~?�~?��~?H�~?X?�;?V?�l?��?��?c�?3�?L�?��?:�?o�?��?�?��?��?S�?]�?��?#x��%��I?��h?#��>�
U��k�=�i�=6��>�z�H�R��C?��u?�q?�/?������{�����oz?��C�(x>�=�u��B>n�5>f�"�"�{?�_G��i�I�v?Ҷ�v6H�!.#?�gS?~�ɾ6T~������V??�(t?�љ>��C}���O�l�f��M�>�`?�C?��P?���>�x�H�޾9A�vq�?���{q�rM��#��j��8R���=��>���>�Y!?��@?jY?ץj?qxv?J}?�?�?��{?L�u?ien?��e?�j\?GzR?A?H?�=?|�3?@�)?ѯ?�(?�?�:?a��>���>R��>���>�S�>��>l�>�ܙ>{�>�>�Vy>�Wh>kwX>{�I>��;>��.>��">8�>�/>�p>|��=���=��=+_�=���=���=#�=��=�׉=�H�=�n=l7^=T�N=�t@=.3=��&=�=$X=�S=��<���<j��<%z�<�}�<oO?&3u��j�_PԾ:la�R��1?��~���k?k�����a�%�/m��Ma��X�9���}�3?��}?�UT���$�u^x?#%~���x?L�}���{?�lE�I�=>� ?��}�uV�>�\?���n@E�b_?�Vk?���w��*�N�>�,t?%�T?��>fg�mgy��Sg�!�����=@�?9=f?t�?�yf?r�'?[�>�XE������M��dL��om��}��~��yt���`�T�F��p(����h�̾&e��ȝ���ؼ^��=��>>fI�>0��>ӊ�>x3?�?z}?ߨ+?�b6?��??H?#VO?3�U?�4[?.`?�<d?)�g?�k?��m?�Bp?Zr?�*t?�u?�w?~Kx?�Ry?�6z?��z?S�{?�<|?Ž|?b-}?�}?��}?q*~?Pi~?Ɵ~?��~?��~?3?�9?fT?dk?N?��?|�?k�?��?R�?��?��?K�?��?y�?��?�?-�?��?G��>��p���=hy�>N���;s~�|),?���.�Q?se��I�Ҹ�>ȇB?ۉ??h��>ܚ徬�}�no>��b?�$g��L�>��̽k��!�[��z�>�CA���?�e.����8}?��о+X�3�?0�_?�����������3?^�x?�>����z�7�V�����>�[?��?�U?0I�>`zi<�(Ҿ��<�~`o����^-s���O�$���?Ǿ���cX�=[�>&%�>c?Y�>?��W?h�i?��u?]�|?-�?�;?�{?�2v?��n?�hf?j]?�"S?��H?)�>?�N4?�/*?�Q ?��?��?��?5��>t��>��>���>r,�>���>t��>��>�"�>�_�>�|z>Hji>�wY>��J>��<>�/>ٟ#> Z>f�>�>0��=H��=�	�=�K�=(��=�ȫ=��=͔=�|�=��=��o=<B_=��O=�[A=L�3=�t'=�=�=��=+.�<��<���<?l�<!_�<��n?C򮾭����q���w�~�=�v=?��^�#�?�>��[�mj�8j&���)��l���d��8>�g}?ީ���ܾ�b?(�~�{�?���?�o?��'�B=0h;?2w�Fv>R�i?�#	���T��4�>�+s?�(
�U]q�Q 7�,�s>Wo?��\?^yN>��M�v���k��r��� =Ǯ?ߕb?X�?�pi?��,?�}�>O2$<����[�ϞI���k���|�H�~wu��[b��H�|�*�a�	�Ѿ��������$��o�=Ct8>RP�>�>F"�>K ?��?�?��*?��5?5=??��G?��N?&IU?8�Z?Ѽ_?(�c?�g?��j?��m?`p?�9r?wt?�u?�w?9x?�By?)z?��z?�{?�3|?�|?�&}?4�}?��}?&~?}e~?w�~?�~?S�~??�7?�R?�i?~?��?��?��?�?��?5�?��?��?k�?0�?Q�?��?��?��?a�z?��U���<�].�%?X�a�0�ݯ{?�?f���?�4�Z�Ux"�K��>g�>�B�<t�8�,g����>�):?�j{���(?�}��1�+>�)x��F?�GZ�L~?����ž�?���X�e��z�>cxj?��j���dRξ��%?�|?N��>����w�zl]��%����>y�U?��?�Z?�~�>E�2=Lž�j8�n(m�C����t���R��O!�~Ͼ1|,�-!x=�ˊ>G��>��?|=? ?V?˳h?1<u?h�|?��?b]?N|?\�v?&no?��f?��]?*�S?ȕI?{B??C�4?��*?�� ?N`?"*?�X?���>���>}��>E}�>��>�W�>bo�>C�>�ʐ>���>�{>�|j>�wZ>��K>�=>(�0>�a$>>��>��>��=���=��=8�=Xm�=Õ�=ڠ�=0�=X"�=�|�=Sq=M`= �P=�BB=k�4=#=(=s�=��=Z�=�Z�<���<���<Y^�<o@�<�J>�?�-�kd�	�9?�,;>��߾\AD=g U?���m���ug�)0f�p���v1��D�>Y�g?c�/�H�@�F�@?��r��_|?X^x�p_\?���"���]dR?�&l��y�<�0t?�S��a�R��>a.y?#�?=XKj��	C���2>�i?��c?�S�>K{ ��'s��o���@n3;�U?��^?�?�:l?��1?���>Cj=x����[���F��#j��W|����jv�L�c��lJ�G�,���-hվL钾��$���)�/�=��1>�U�>k5�>)��>V ?0�?��?�)*?�5?ߨ>?�G?�rN?��T?i�Z?"q_?;�c?�sg?�j?)�m?��o?�r?�s?׌u?G�v?x&x?�2y? z?��z?i�{?�*|?�|?�}?K�}?��}?�!~?�a~?#�~?3�~?��~?�?6?*Q?�h?�|?r�?��?ת?A�?#�?��?�?��?�?��?�?��?��?��?�02?��n��~���t�,�{�3���d?!}���^?�w��e��j=򾼷�<'�w=C���Ui��c9�j�*?��?)t��&Q?h�����>�+ؾ+4'?�Tm�4Uv?>��P[��~?��@�aqp�D3�>,s?����}�'���?!p~?�X�>ͭо7�s�Yjc�T��-�>�P?��?��^?�9?&��=|I��.�3�9�j����Av��wU���$��־�<���==P6�>3��>�^?@;?��T?�g? �t??Q|?k�?�{?�c|?ow?��o?��g?�K^?ppT?�?J?�??9�5?�{+?�!?��??�?��?���>
��>���>�b�>�ܿ>*#�>6.�>��>*r�>���>j�|>��k>�w[>�qL>*l>>:W1>�#%>��>�)>H>�&�=���=��=�$�=�I�=�b�=�_�=�0�=�ǋ=��=�"r=�Wa=U�Q=�)C=��5=Y)=�J=_`=�7=��<%��<ލ�<sP�<�!�<��7�e�?4Y�=b���Y}<>nu?1��>�>����v?�n��a�;����h�q�N�Ӿ��0?��>?p�[����=��?�][�xQn?Qh�O�A?!�?_��de?��\��ͽlk{?ï�/�l�d�>�R}?#>9�a� N�Y��=CNb?��i?��>�Go�VPs��7��U
�~��>(�Z?�P?��n?�26?���>��]=苾7N�0�C��dh��{�й�MQw��Ae�|8L���.�MB���پ.'��[-���H���=o[+>AZ�>S��>L�>4��>�?��?xi)?&h4?�>? �F?� N?ӁT?>0Z? %_?wc?:g?�j?�Xm?��o?��q?��s?tu?��v?�x?t"y?z?��z?�{?�!|?(�|?�}?[|}?��}?#~?�]~?˕~?N�~?R�~?�?<4?�O?-g?�{?c�?��?�?��?��?.�?��?$�?��?��?��?u�?��?Y�?:�i�
D?�����_�V��e?�e�>9:�G��>o��>2�h�ϢO��MȾ}֦��%��U���Z?�݆>��r�I�m?m�0�5?�1���F?��y���h?Xנ����ێy?[[��K{x����>�oy?��m�7{z��	�4	?�?I?,����o�0�h�?�˾y��>1 J?#^?c??���=z#���!/�7Rh��A�=�w�(!X��F(�Oh޾H|K���=�5{>$!�>< ?
]9?�fS?�f?�s?��{?��?i�?��|?3nw?"op?"h?H�^?�U?��J?ܖ@?�I6?� ,?t4"?��?T?2u?���>���>���>$H�>���>K�>��>쨜>��>�6�>��}>Ԡl>�w\>�`M>2K?>D'2>��%>�x>�>�>0K�=!�=|�=�=�%�=�/�=��=��=)m�=ΰ�=�As=�bb=��R=D=�v6=��)==�=�=P��<��<��<�B�<	�<�@y��$?��U?m��>�M?�nN?��e�Y�/?Nca�,�e?!��>�����k�r�OC�_����pa?^�?��v��#�>��>�)9�G?V?qOO��7!?�@^�JJվI
s?��I��Ed��L?|Xv��9u�\ef>N�?�yS>@X��5X�X�:=L�Z?DDo?P_�>�Ծ��j��sv�]C�}ُ�(_�>�GV?Ч~?�Fq?��:?��>���=�Á�a3	���@��f��z����W-x��f�W�M���0�Sa�޾*b���05��1g�,Qg=6�$>S]�>�ϯ>N��>1��>K�??T�(?�3?�~=?�F?��M?�T?��Y?��^?�4c?" g?�Mj?�,m?̫o?��q?ָs?0[u?3�v?x?8y?�y?W�z?N~{?�|?7�|?
}?ev}?W�}?�~?�Y~?o�~?e�~?��~?�?X2?�M?�e?mz?S�?ӛ?@�?�?�?��?6�?��?j�?Q�?��?=�?m�?/�?JIq��$y?�ɏ>Yq���5�=ܦx?��D��U�����T?����<|�H�;���)��U`�F�w�
�4�1�w?Z��d�V��{}?�U���4?�:��=`?���U?��3��7�I�p?��)=X�}�ދB>��}?'*�<�iu�����T�>��?�?0㚾��j���m�3���<k>�C?�~?o�f?��?3�>�ܝ�=Q*�Ĵe���~���x�4�Z�X�+��D�Z��`�<��m>Sc�>��?�t7?U�Q?�e?�>s?[�{?�y?��?��|?��w?��p?ݱh?��_?��U?��K?�?A?I�6?J�,?��"?^1?��?3?��>t��>y��>J-�>׌�>K��>���>�[�>4��>Dӈ>�>߲m>�w]>�ON>0*@>G�2>�&>�->�z>*�>�o�=� �=^�=o��=��=���=mݢ=<��=��=�J�=>`t=smc=��S=/�D=�M7=*=n�=0�=�z	=���<;�<*��<�4�<V�< ���kk���u?��w?�U~?/�s>�8{�n\z?9g�3?�J?*�.���-���?�3����i�>��{?p�~>B���8?�:>U��P,5?m/����>�9Z����|?�3��	����?lR
�_V{���>s�?x��>�`M��=a�ކ���9R?Lt?p0�>�½�f�K'y�"%�Wڽ���>��Q?9�}?/�s?}??��>��=�!o���$�=�öd��z�����x�Xh�+�O�ӌ2��|��P�*����N=�n킽/�J=5;>*_�>��>�p�>���>��?�;?��'?T3?~�<?a�E?�M?޸S?πY?%�^?��b?�f?	j?� m?��o?��q?
�s?1Bu?��v?L�w?�y?��y?�z?�s{?V|?<�|? }?gp}?&�}?*~?V~?�~?y�~?E�~?W?r0?@L?Vd?1y?B�?�?s�?.�?W�?$�?��?\�?�?�?O�?�?<�?�?�XJ��C�>��i?��?2�B?ȧe?�?����>����r?}+�A�u�֏r��f���}��>T�߷>5�?����,�)�~?��n�<V?߬X��r?d~�1s=?����.M���c?� >@���i�=e�? !�=Q�n���'�=T�>S?��?�m~� �d��r�1���A>�=?�_}?��j?U?F�$>uw��fd%�@�b��%~��z��6]��/�ċ���Jj���W;��`>���>4?��5?�xP?��d?L�r?�2{?�X?��?B-}?�4x?Uhq?@i?n `?�\V?�7L?4�A?a�7?`i-?Jt#?��?�|?��?��>���>���>>�>�d�>+��>j�>f�>�h�>�o�>��>��n>�w^>�>O>$	A>B�3>�i'>^�>)#>2>l��=H1�=<��=���=޼=�ɯ=F��=�E�=���=��=�~u=>xd=P�T=O�E=�$8=�]+=�y=�h=�
=	� =�4�<P��<�&�<���<��?,�j�,��>w6Z?r>&?�9��P*�=bl?L�N�N�=tb|?=�>6���k���U�#?W�}?>b0�;�u�o�<?��Ž�з�^|?QV��ţ>�B�=(-,�m�?���>��|?�����~��+'=�N~?���>�YA�	-i�Vl��.I?��w?�q�>&c��f�`�Fi{�ם,�
E�y��>��L?b�|?�u?�fC?0��>X��=�Z��� ���:���b��5y����|�y�yVi��qQ�܂4�<��-��ϣ�	iE�@���8.=�>��z>ud�>e �>�i�>k�?~_?$'? h2?�Q<?OE?.�L?�SS?�(Y?-?^?��b?��f?@�i?��l?<_o?_�q?s?)u?��v?g�w?��x?��y?ĳz?i{?|?7�|?-}?bj}?��}?�~?R~?��~?��~?��~?#?�.?�J?�b?�w?/�?��?��?|�?��?��?O�?��?��?��?�?��?�?��?b
�=�o���f?Dz?�?A��>%6��.W?��m�;�e?�m�>�=���~����wdy��e�v	�>�q?,���6ﾟ�q?�A}��(n?O�n��5}?�1v��� ?׉�=�_���S?�ǉ>c1����?.M>L�f�M�5�4L�>�'}?�]*?GF���^��u����}r>�!6?��{?Q�m?'�?�5B>����\ �`�kh}��*{���_�-S2����p�y�6�4�NS>T��>c�?k�3?��N?�|c?f�q?��z?�3?��?�j}?��x?�q?��i?��`?U�V?��L?��B?�>8?�.?�$?�e?�?�?�(�>���>D��> ��><�>�N�>�(�>��>��>��>��>��o>�w_>�-P>�A>5�4>�+(>(�>��>8�>��=�A�=��=D��=&��=���=[�=���=[]�=�~�=�v=�e=��U=n�F=��8=*&,=4 = =D�
=9=PL�<v��<��<��<p�~?|�]��ܾ�+Z>�0��<j�睠�(�
?�߼��;⾻s?��+?���=�?|��&g>Y�M?j�e?w���Y�6Wb?�ѧ�]��Gʻ>g����>�W�>�2G�bq~?^�����t�v?�=o���U���z?|��>�<4���o�q>��??�'{?@�>������Z��8}���3��,7�h�>yH?�Z{?�{w?-�G?���>Z>�F��.����7�|�`�Gx����}z�g�j�|!S��s6������� ��6�M�~�����=&>��t>���>���>	:�>_�
?��?�`&?�1?Ǻ;?��D?3L?I�R?��X?��]?Wkb?�Pf??�i?\�l?�8o?�rq?bs?�u?ڄv?m�w?�x?j�y?e�z?H^{?��{?*�|?3�|?Wd}?��}?~?-N~?D�~?��~?,�~?�?�,?�H?xa?�v?�?	�?֦?ɲ?"�?�?��?��?e�?o�?��?��?��?��?��b?9~��%�>��T?�3?�����gW���?t�{�d?�8?*R��;l^��r��OT�O=���r2?:�N?��<�)�j��`W?�K�,M|?��{�a�?�Eg��W ?7{�>aFn�C@?K��>֊{��|޽�M}?.��><�\�U�B��e�>�&z?&�5?
��J�W�y��n��9�=��.?�z?�q?��%?n�_>�j�9��]�\�|�L!|���a��5��l��ap����ϼ��E>���>�S?ښ1?LuM?�bb?�q?�^z?%?7�?٥}?�x?�Yr?hWj?#Ra?��W?=�M?}6C?��8? �.?s�$?`�?��?ܫ?� ?\��>Lw�>���>}�>��>��>�s�>C��>;��>�@�>��p>bw`>_Q>��B>!g5>��(>�K>'t>:Y>���=^R�=���=���=I��=�c�=��==��=��=��=�w=ҍf=�V=��G=�9=]�,=g� =h�=�^=i�=�c�<���<�
�<;��<zw�>I��uw����(d6���u��U
?BJ���;>�T��O1?�tm?}�>�K�>�	?�t?��7?�'��,��.y?�`
�p��=To->�6�"E����>,�]��w?}3���)��l?�B>>!|~�A�pu?�~?M&���u�l�Y�Iq4?J�}?� 
?_m���T��~�B�:���[�~��>��B?��y?/y?��K??��'>�`1�\��iy4���^��Iw����',{��k���T��^8�����u/����U��ް��.�<<~
>4�n>��>��>��>��	?+�?%�%?�1?#;?��C?��K?c�R?�vX?G�]?�'b?f?�i?�{l?o?JQq?�Ds?��t?�nv?]�w?��x?�y?��z?�S{?v�{?~|?1�|?D^}?o�}?�~?:J~?ل~?��~?��~?�	?�*?FG?`?uu?�?�?�?�?��?��?f�?.�?�?#�?��?[�?��?��?�s^?�0�>��1>�~�<>�T��ү���M?��;�e$�=)v?���=_�+�?�+;���+=Ϯb?�?�td����<��0?��t�~�?����|z?R�2��>���>��x���)?' �>a�t� PT�E�x?v�>@�Q��N���[>�v?	)@?茨��P���{�L���,�=Jw'?��w?��s?2,?e}>�WO�I��W�Y�ю{���|��;d�E�8�a�� 
����"���8>�>N�?�/?��K?VCa?�Up?o�y?��~?��?	�}?DMy?w�r?��j?��a?�>X?�'N?z�C?�9?�R/?�P%?��? 8?�8	?h� ?���>i�>��>���>�>
��>�%�>{^�>�E�>�ҁ>U�q>wa>'R>ɥC>76>��)>� >�>9�>�=�b�=���=��=ir�=�0�=�إ=�Z�=#��=���=��x=��g=C�W=��H=2�:=��-=��!=�p= =�H=c{�<���<	��<�i�<Sc����9?�GR��$|��������np?�M�-?
o�#��>�^?:�N?�k)?�lQ?4�?>��>��L�Z���?C9�Ĕ>���o�><�ZS�]?��n�&l?P[t�?�?�=`?1��>�oz�X�q�L9n?��?��]z����j%)?�!?�?|A<�N��}�V�A�����+�>�=?x?v�z?1vO?�A?��=>���I�羚71�/�\��<v�`��Y�{�wm��jV��D:�����?�Z��/�]�@*��	�<��>��h>-9�>���>w��>	?��?��$?_b0?׊:?wC?�IK?"R?�X?YV]?��a?��e?�Ni?Ol?#�n?�/q?�'s?�t?�Xv?7�w?��x?��y?}�z?�H{?�{?�u|?&�|?*X}?&�}?�~?BF~?i�~?��~?�~?x?�(?�E?�^?4t?�?(�?5�?`�?�?	�?��?��?��?��?I�?"�?w�?Z�?�NY=��/>*�~�n=��/)���~�^��>6�>�i����mpz?���>��T�\�A�z��ƾ>�o|?�ݯ>�.{����>�h ?�^���x?��z��0m?H7�6�\>��?��~�G�?ރ?_�k�@����r?:��>�0E�hlY��Q>~�p?WJ?FEּ�H��}��!����<��?�Zu?Pv?n�1?��>�3������V��rz���}�3hf���;�X�����).]��+>�2�>`	?�-?�\J?`?�o?zy?�~?��?|~?�y?@Cs?:hk?_~b?��X?��N?��D?y.:?��/?��%?�1?K�?��	?�'?���>�Z�>��>���>d��>&c�>Xؠ>��>E�>^e�>s>�vb>��R>��D>�7>^q*>i�>�>4�	>R >ds�=���=p��=�N�=���=���=��=�M�=�L�=Y�y=a�h=��X=�{I=L�;=�~.=c"=6=g�=��=��<��<"��<�J�<����3|?�/Ƚ��N��@�
��=R�t?�'r�tJw?=�e��ET���]?�gz?��e?�1x?��m?�A*>�lp�k�E��%v?]w]��d�>X�s�o2N>�����2?��y�>�[?��۽�S�N�P?;<�>�s����~9e?�@#?$��C}����x;?��?��?U	��F����H�$��p��>�8?v?�|?K7S?Vc?�T>����%߾s�-�BmZ�~!u�b��g|��Fn��X�%<����fn��������e�sϽ��o<���=ݭb>m}�>�0�>{��>�	?�?�$?��/?�9?��B?�J?a�Q?��W?]?��a?��e?�i?."l?�n?�q?
s?��t?�Bv?��w??�x?9�y?�z?�={?��{?�m|?�|?
R}?׭}?`�}?FB~?�}~?��~?p�~?:?�&?�C?]?�r?ׅ?6�?c�?��?L�?��?z�?b�?]�?��?�?��?E�?/�?e�O��d?g!8�ڽ}���~��e1�0�O?W~��j��>)�T�u~D?�T?�W>2j���G�=R)?(}?L�f=�0�>?F��>��=��f?�fl��iX?-��F�={�!?F��v7�>8�+?��_�k�˾aHi?�a?�h7���b�U��=�j?�&S?|V�<�c?�E���)�ڭ� �?��r?g�x?�7?Ox�>�#��8�!\S��7y��a~�8h���>��	�G#��⋽��>NE�>!�?�+?��H?��^?��n?�y?N{~?�?1F~?��y?�s?*�k?nc?$zY?`mO?#&E?i�:?�0?��&?I�?/^?yR
?ŭ?���>�K�>��>���>�x�>'!�>���>���>�~�>���>�t>nvc>��S>]cE>��7>23+>j>�m>-0
>�� >���=_��=·�=�*�=�ʳ=mV�=4��=��=��=�{=(�i=�xY=�bJ=fX<=�F/=]#=��=�B=�t=v��<
��<:��<,�<��x��>��1?����9ʽ�8?�G?�tv�`�t?���$��V?�Az??b;~?G/@?3�������=Nw\?)ou���+?��ܾ�y�>���.�N?N}�0|F?m��<�bc�>?��>e�j�e�Ҿ�Z?��2?���	@��˾��?]�??*?�����s?�>�� )N��-du>{L2?��s?�(}?I�V?�p?g$j>`���L־8�*�0X��s��f�T�|�%ko�/�Y���=���y��� ���j�m��޽��;�g�=��\>c��>���>m�>�?{?�M#?E/?�X9?jjB?:^J?ETQ?�iW?��\?%[a? de?�h?�k?�n?��p?��r?�t?],v?�{w?�x?��y?\uz?�2{?4�{?�e|?��|?�K}?��}?��}?F>~?~z~?��~?��~?�?�$?:B?�[?�q?��?C�?��?�?��?��?�?��?�?=�?��?��?�?�?�n�e?�g�=�1H�ڤK�ꥊ�s�?E��B?k����>mt}?3�?���>��>��_?\�d?wUq�O.p��}5?�|Q=.|���K?IpU�P�<?���f¹��]<?G�|�I�>�M@?��P��n��z^?��?p(��,k�L�;�c?�[?���=X<6����Zr2� �����?�^o?A{z?�>=?���>޵����%�O���w��~���j� �A�������%���>�P�>�Y?��)?�/G?��]?��m?؄x?D~?��?'v~?�Pz?�$t?rrl?�c?>Z?�P?��E?�u;?71?�)'?�b?��?��
?�3?	��>=�>�k�>wo�>�B�>߭>�<�>�S�>�>��>./u>�ud>6�T>BF>��8>��+>� >�>"�
>�7>X��=(��=)t�=��=���==�=�o�=G��=w��=�6|=��j=/qZ= JK=/==&0=��#=y=(�='=���</��<R��<k�<I�>���}?}�?"!?�i?6�ۼw#�_l&?����Q�l��	>�BN?�6r?�b?��>����x��0�>͋4?;��#?Q?-��Y?��,��d?��~�y\-?�;">�1p���(?+?�_��L��'N?�@?Fʾ��Q��j�??t�3?���R�7�\|���S�����xS>�f,?�q?�~?�OZ?Ni?v
�>b��F`;.'���U��r� �t}�Y�p�-"[��?��� ������Ǽ�+�u�������1:�0�=�V>�>�@�>.6�>K?6(?��"?RW.?Ͼ8?V�A?��I?��P?qW?�j\?ea?!(e?��h?��k?�un?`�p?��r?�t? v?Dhw?��x?�y?�hz?�'{?��{?[]|?��|?�E}?'�}?�}?A:~?w~?��~?:�~?� ?�"?�@?/Z?fp?��?N�?��?<�?�?n�?��?��?��?��?��?u�?��?��?#F���4>PM?;��f'-�g�?��G?� ��L}?3�e��@ʽq�s?$�^?�4)?��??�T|?ò5?M���EO�y$]?�V=��6ľ$�'?��6�d@?&m���2x��1S?J!u���h>,~R?��?��i�ӾQ?c
)?r_�\r�u�>�[?c?xx>��,����!�:���׽�#?S�k?"|?��B?�>����� �;FL��dv��X��kl��D�0����r`ƽǋ>�T�>��?qr'?��E?��\?#m?
x?	~?��?]�~?��z?ƒt?�l?h6d?3�Z?k�P?�lF?`<?�1?r�'?~�?�?k?c�?3��>�-�>mO�>F�>��>؜�>��>���>j��>F�>�@v>�ue>��U>� G>Fv9>ƶ,>|� >\�>j>�>ˤ�=���=�`�=���=pd�=Ԩ=~!�=�=�=h�='U}=��k=|i[=1L=�>=W�0=��$=j&=��=V�=���<S��<j��<���<*{?)�{�6?��~?BP|?��N?%6 ������S>@h�>��~��-��{@�>�@?�Y)?��,>|V4�I�\�3??� ?��{�ztl?oA�Q3?�K�.�t?�]x���?u��>Oy�p�?��)?��Q�_���@@?�M?�w���}�3^�Iv�>Tg}?�=?v"<�H/�0�~��lY�~�ƾ2O1>�T&?��n?z�~?��]?cL?��>&��m`ľ��#�?�S�vq���~�?�}��q���\���A���"�f�����׾}��:���vλR��=�P>�B�>���>���>�?DG?��!?ǧ-?^$8?�[A?qI?؄P?��V?s\?\�`?�d?�~h?H�k?�Mn?�p?	�r?:vt?��u?�Tw?�|x?t}y?\z?�{?(�{?U|?��|?}?}?Ɲ}?t�}?76~?�s~?��~?��~?p�~?� ?�>?�X?o?��?Y�?�?��?o�?��?�?,�?Q�?��?=�?;�?��?��?L�8?}/�q�y?C�'?SJ?a|x?��x>1�^��j?���L���8?��~?o�e?^�o?�K|?�6�>@L<������v?�9Ҿ��/�Bq�>`R���>��	���ƾ��e?$i���=��a?�t,�w�&��2C?�9?�Q���w�'��U�R?��i?�5J>�t"�����SB����i�>�h?Z~}?]�G?���>��������H���t�*�� An��G���n����_��=�R�>��>E[%?M�C?�\[?�Jl?w?�}?9�?��~?�z?��t?	vm?Q�d?K[?OQ?�G?e�<?mw2?�b(?�?%?�?�>?��>b�>�2�>}�>�ֻ>�Z�>�>���>�S�>|��>Rw>�tf>Y�V>q�G>F:>�x->#�!>�f>>D\>:��=���=�L�=��=^1�=ْ�=!ӝ=�=Y��=�s~=u�l=�a\=6M=��>=��1=PL%=��=�&=�7=��<w��<���<��<2`1?6�:���c�3�A?#V?�Fv>ZWx����>\ϾS}T?NU��R1��%�=:��>a@�>��-���c��o-���H?��>�li�2|??�_�:�R?��c�˭}?��k�B�>�{�>��~�Q��>2=?	UB�G�%���0?	PY?����	�}�xY��>��z?P�E?d�o=ܦ&�$6}�"�^��׾
�>� ?�l?m?��`?B?�ɕ>
XP�9N��� �Q�mp�*j~��R~�D�r��!^�MnC���$�o����ľ�݂�2;��Y����=6zJ>���>�J�>1��>�?�e?�� ?��,?b�7?��@?��H?�P?�YV?��[?�`?��d?Jh?�lk?J&n?��p?�r?;\t?��u?6Aw?�kx?�ny??Oz?�{?��{?�L|?y�|?A9}?^�}?��}?)2~? p~?��~?��~?(�~?�?=?9W?�m?l�?b�?�?˭?ϸ?Z�?��?��?��?T�?��? �?|�?��?��x?�^~� ��>H�?@�x?
�e?JWɾ��޾�?�Ћ���`�罰>dUr?fz?)�?h_?)�>�f��pž�?��7�D=��>4K;�P�>B��<sk��zs?�Y�,���An??+��69���2?o�G?
��d�{� N��H?,�o?�'�>p��3�~�j�I�KA�Z�>�d?��~?��L?ݮ�>�"�
G龺�D�gs���� p���J���2Ḿ�Z ����=�I�>n\�>4?#?FB?�Z?Tnk?�v?@�}?��?��~?4?{?�hu?V�m?�Te?��[?��Q?�G?�[=?�3?��(?L)?�?��?@�?���>��>��>���>A��>�>�R�>YH�>��>�@�>acx>Wtg>٢W>�H>�;>@:.>�<">">��>y�>���=p��=+9�=���=J��=�Q�=�=c��=JN�=T�=8�m=Z]=P�M=ȴ?=�g2=�&=5�=H�=��=��<���<���<N��<;�m����=�c��lQ=�Rt>���	`k�ruf?��T�g?����yCp���q��=ڝ��:���|�,�޾&3l?�<3J�Y�?cLt��j?*�t��?��Y�$(�>�?��L�>ؙN?u�0�F7�? ?�c?��8���z���F��>��w?QN?�L�=x���e{��Yc����B��='�?{i?��?w�c?9�#?	��>њ���*����)�N�E�n�!�}��~��s��_�M2E���&���gɾ�ن����良�}�=mhD>���>μ>��>&?Z�?�0 ?�F,?��6?"K@?0�H?ҳO?�U?|[?uF`?
sd?]h?�>k?k�m?�ap?ur?Bt?S�u?�-w?�Zx?�_y?nBz?�{?�{?oD|?>�|?�2}?�}?�}?.~?yl~?��~?R�~?��~?�?d;?�U?�l?N�?j�?<�?�?.�?��?$�?\�?��?�?��?��?I�?U�?��>� �'����}:?��_?��>~�^��>���<n��>����ͽcS;?uNr?�mn?�(?��"�P�|�1S��B�x?QH�G��> ��=��`��Q�=>�G><?&�G|?}E����uw?]# ���I�.!?��T?�bž�~������">?��t?̜>���[�|���P���k��T�>�_?�U?{{Q?�N�>v�G���ݾ8�@��Aq������q�QM�܁��5�����J��=
;�>@.�>Q!?��@?F�X?0�j?�hv?ZB}?��?�?��{?z�u?�rn?��e?({\?Y�R?�PH?��=?��3?�)?,�?\8?8?fI?���>���>���>���>�i�>�հ>��>�>��>�҅>�ty>�sh>L�X>��I>e�;>��.>b�">~�>�@>��>��=+��={%�=w�=4˷=p�=c6�=�-�=9�=uX�=��n=^R^=i�N=ߋ@=�/3=��&=�.=�i=�c= �<���<���<���<��q�:]?�6m�Q`/�}����i��.��t�|?0���e?��3��~�4|.��5���k���Q@�ۿ|�X���~?��o�����v?z�~�D�y?s7~��{?��B��->�r#?�a}�1%�>i�]?�Y���F�a?6l?�ٽO�v�k+����>.�s?�U?&>3a�#y���g�aG��Y��=k&?j�e?�?Y�f?�m(?S>�>p� �%�������L��Fm��~}�e��t��a�x�F�/�(���L&;�ӊ��p�^߼)>�=�T>>���>�O�>�L�>�?d�?�g?��+?�Q6?�??
H?�JO?6�U?�+[?� `?/6d?f�g?�k?a�m??p?�Vr?�'t?��u?�w?�Ix?Qy?�5z?��z?F�{?<|?��|?�,}?~�}?Y�}?�)~?�h~?q�~?��~?��~?�?�9?=T?@k?.?q�?d�?W�?��?B�?��?��?A�?��?r�?��?�?(�?b��7��>�s��&(<5!�>sf����}�|0?��q\T?��c����g��><L@?pk=? f�>E�꾘�}�l�>��a?Wh����>�۽����yt�}+�>�#B�W�?]�-��3���]}?BϾ�X�< ?FE`?e�����.ǫ���2?9�x?��>d���z��W�����.��>��Z?o�?�V?���>x�x<��Ѿ��<�Oo�<���:s�� P����~Ǿ�i��k�=&&�>���>��?��>?ЗW?��i?��u?��|?��?�<?l�{?g6v?��n?�mf?]?(S?a�H?��>?T4?5*?�V ?��?x�?[�?���>���>���>͞�>G3�>���>|��>���>'(�>�d�>υz>�ri>�Y>,�J>
�<>��/>��#>�_>��>�>n��=���=��=S�=��=8ϫ=�=Ӕ='��=��=��o=�J_=��O=�bA=�3=@{'= �==�=�7�<���<Ǎ�<�s�<q�I��vk?�������z�s�/v���>��9?kv\���?ћ�>3�Y���k�e�(��5,��m�
�c��Z>b}?;���Zؾ�a?�~���?)��po?��&����<�1<?��v�)~>oj?�g��U����>�cs?e}��t)q�*e7��q>��n?��\?x!P>��
��nv���k�Z���=t?ewb?s�?߇i?��,?Dٵ> �/<�����;�!�I���k��|�?J�Qu��gb���H��*��

�A4Ѿˎ��� ����=f?8>F8�>Tз>��>�?ż?�?��*?/�5?�8??~�G?4�N?FU?|�Z?o�_?�c?8�g?j�j?-�m?0p?y8r?�t?��u?�w?p8x?3By?�(z?h�z?��{?�3|?��|?a&}?�}?��}?�%~?_e~?\�~?��~??�~?�?�7?�R?�i?~?w�?��?��?�?��?1�?��?��?h�?-�?O�?��?��?)�~���x?U�Z�R�6�w#پ*ET���5��uz?9�c�c?-3�bX��w���>���>=�(=56�xfh�.h�>��;?��z�H�&?\m����#>A�p�� ?pY��H~?X��Iþ-�?Oٛ� +e��/�>Vj?�n�(����̾�U&?q�{?��>l�뾍�w��/]�P���P�>�U?r�?)]Z?#��>*J.=z�ž��8��>m����۵t�ßR�K-!�a�ξ��+��Xz=��>��>P�?s/=?�LV?j�h?[Bu?��|?h�?*\?�|?V�v?6io?�f?��]?��S?U�I?<??��4?��*?�� ?kZ?|$?S?h��>'��>G��>�t�>���>6P�>(h�>X<�>2Đ>���>�{>'rj>nZ>�yK>��=>G0>�Z$>*>�z>
�>���=���=��='/�=e�= ��=���=vx�=�=w�=y�p=�B`=��P=:B=F�4=�5(=e�=f�=>�=-O�<��<��</U�<0�=�`p>?�*3�s�g�d�:P4?�S>JE���=�%R?��b���e��d�`����3�3��>�(i?��-���J�� B?/�s�n�|?��x��>]?&����Q?��l���<�s?{1侬Ga��+�>��x?mU3=�j�e�B�;5>�\i?�Ic?;X�>�� ��Js�@�o����F�;��?+�^?��?� l?�`1?�]�>]��<�^��݂�U�F�44j�^|�z��av�?�c�[J��w,��
�2>վ!����$��(�=��=F(2>�r�>�O�>���>� ?}�?��?71*?
5?�>?|G?LwN?w�T?��Z?t_?��c?�ug?��j?΅m?�o?r?!�s?ƍu?�v?,'x?:3y?�z?'�z?ϓ{?/+|?]�|? }?��}?��}?�!~?�a~?C�~?O�~?��~?�?06?9Q?�h?�|?|�?��?ߪ?G�?)�?��? �?��?�?��?�?��?��?�t�,�D?-T!�E��Wum�M�~����3l?���f?W���{o~�Eܾ���=���=3���Fe�gE?���$?�
?���ATM?w��Qo�>9�ξ�y#?��k�Qsw?]�뾮]���?�HM��io�aD�>B0r?>�/2~��4��[?0<~?Jh�>�~Ӿ�ht�U�b�*����`�>/�P?��?�z^?�{?!#�=�����T4�uk�"��4v��-U�-r$���վ$X:���C=p�>lr�>S�?�s;?��T?��g?�t?�Z|?��?�x?:\|?F�v?��o?��g?�:^?�^T?|-J?��?? �5?�i+?��!?�?C�?��?���>w��>���>/J�>�ſ>]�>��>��>/`�>܈�>�|>Mqk>\\[>#XL><T>>�@1>%>z�>w>57>%�=H��=Z��=1�=�1�=�L�==K�=��=��=P�=7r=9;a=��Q="C=u�5=��(=�6=�M=l&=�f�<(��<�q�<y6�<�Rc?��#���|?���<kN��-��=�}?*qž�#�=����!~?%⽔'g��u�U�~���t��|侨&*?��C?��W�Ú=X�?�m^��Qp?;j��E?�UȾ�6���Gc?߽^��Ʋ���z?�K����k�{�><�|?���=`�b���L�V�=�c?[#i?�Q�>�y����o���r�W�2���7J�>�[?�_?�n?��5?���>�T=����.���2D���h���{���9w��e�|L��Y.���DپѲ���0,�	;E�\t�=|,>?��>oͲ>��>�*�>��?	?'~)?]z4?�#>?�F?�N?��T?�9Z?K-_?"~c?6@g?V�j?E]m?��o?m�q?��s?�vu?�v?�x?1$y?�z?��z?�{?�"|?�|?�}?�|}?�}?�~?4^~?'�~?��~?��~?�?p4?�O?Tg?�{?��?؜?"�?��?��?<�?��?.�?��?��?��?{�?��?�Z�>o�Z�o&?��+���n�{�1���>G
?��K��'?rH�>� q���B�����|儾���WC}������S?���>_v���i?m)��A?�ȱA?�*x�o�k?���Z��ؿz?C ��rDw�T��>�tx?lA��q5{�"��?V�?��?:Ѻ�nip���g�p�Ǿ�0�>!K?{z?P_b?�
?��=�x����/��h��T��gw�;�W���'��ݾ��H��;=6�}>�#�>�k?˲9?�S?��f?yt?X|?]�?̒?��|?5\w?�Xp?�h?��^?}�T?��J?�x@?�+6?�,?"?Q{?�9?\?���>���>˂�>��>Ў�>hʳ>>˧>S��>��>��>�}>dpl>�J\>�6M>�#?>�2>��%>�X>Q�>]�>z�=���=���=8��=���=��=���=(Ö=�O�=���=�s=�3b=ǂR=7�C=�P6=,�)=.�=#�=��=;~�<J��<d�<��<v�]?�����B?>?ñ�>�8?}_?9qW���?�;T�	o?%��>��%�fr��9w�:�M�V�UPZ?�?|hs�X�>*{�>��?��0[?]CT�c'?Sb{��Ⱦ�p?iM�_TN�W�~?Z�����s���v>bO?�/E>�Z���V�b�i=\?�Yn?��>߮ؾ{�k��u����ʩ��D�>]W?��~?��p?B�9?��>���=i����	�sA���f�9{���Gx��hf�ӭM�P70����Eݾ �����3���a�"\l=�%>��>J�>0M�>a&�>�?�=?��(?&�3?��=?$%F?L�M?M/T?3�Y?N�^?K@c?a
g?�Vj?�4m?��o?��q?�s?�_u?�v?kx?y?�z?��z?-�{?+|?��|?B}?sw}?A�}?t~?�Z~?�~?��~??�~?�?�2?0N?f?�z?��?��?d�?��?�?��?K�?��?y�?^�?��?G�?u�?s�?�+U���?PU�=̄�]/����j?��	�7峾L}�=D�@?�$3���u�6�(��Z��[T��P|��B��ٵr?�v=O#_��z?��L�{+?�f2�&�Z?v�~�g�Z?q�V�U1��"s?!TV<�|�;[>$�|?�T�;;�v�����>��?(�?����G�k�.�l��n۾��u>�BE?��~?�	f?�#?��="$��F�+��\f���~�Ýx�aZ�#�*��$�5W��D�<�7q>���>�3?O�7?yNR?K�e?�is?B�{?��?��?��|?%�w?��p?��h?3__?\�U?ggK?_A?�6?Ӝ,?4�"?S?�?D�?g��>U��>�d�>���>�W�>V��>�|�>�/�>���>���>��~>lom>�8]>�N>M�?>�2>"x&>>(Q>�[>�'�=���=���==��=�˻=Mʮ=s��=�h�=��=�$�=�t=�+c=�iS=K�D=�7={d*=��=��=�R	=���<l��<"V�<��<�3G=���׹?�~X?�f?b]?���>�����o?�^��](?�6?����|@��1O�����->�w?:Ң>���?��>V"J>aU�o>?ϙ7��1?�L��C��SKz?��8��B��d�?�%�qz���>S�?��>�)P�,_�v�\�C`T?��r?X!�>Drþ	Lg���x�Q+#�(Ƚ��>��R?�~?��r?>?KU�>:�=�)t����>�2.e��Iz�W����x�w�g�NO�p2�@��&Cᾜ���zO;�<O~���Q=#�>��>�ŭ>
�>� �>�'?�q?J(?h=3?x=?ϪE?47M?��S?z�Y?�^?5c?V�f?�'j?�m?�o?߽q?#�s?[Hu?ܵv?��w?�y?a�y?�z?Mv{?�|?3�|?�}?�q}?n�}?F~?�V~?�~?1�~?��~?�?�0?�L?�d?y?��?!�?��?Z�?}�?E�?��?u�?(�?�?_�?�?H�?S�?2q��J%?��D?S�>�F?H�x?�w���N>�*��6y?����Z�}���e��nV�\�w�|Xb���=ʮ?� F�Hj;�.�?�g�DvL?�P�f�m?<���E?_P�F��Hh?+F�=N��ë�=�^?�s�=�q�m)#����>�z?�?������f�H�p�H��
aN>,??��}?�yi?�G?�&>����K�&�~�c�[~���y��n\���-��,�'re�� <_�d>hp�>2�?#6?i�P?f�d?]�r?�R{?�c?d�?;}?x?�Aq?Ui?��_?A)V?)L?-�A?�c7?�5-?�A#?�?+N?Cd?���>��>{F�>��>~ �>)D�>�-�>֝>�3�>�>�>��>dnn>�&^>H�N>��@>��3>�,'>P�>��>��>8�=E��=��=@��=���=��=`�=��=ă�=&��=l$u=$d=�PT=_�E=��7=�+=�>=�1=��	=�V =���<8H�<Y��<PoP����>|C�̡#?��t?F@O?0�p��M��z?�(f��5j>�r?�a>���������2�>
�?��K=�){��c.?������ؾ�?�%�긾>�pu=4�"��7?��!�9׾p$~?h�}�>~�衏=�?n��>RDE���f������L?��v?���>�έ�Pwb�1�z�%C*����s �>�N?b}?��t?yB?�q�>9��=}a��,���;��ec��}y����j�y�r�h�8�P��3����A<徖{����B�aj���;7=��>.�|>�?�>���>��>�@?�?a'?"�2?~�<?
0E?��L?�sS?qDY?�W^?��b?�f?L�i?��l?\ko?�q?A�s?1u?��v?`�w?��x?-�y?��z?al{?	|?��|?_}?Il}?��}?~?WS~?��~?w�~?��~?�?$/?K?[c?Xx?��?D�?�?��?�?��?t�?�?��?��?#�?��?�?Y,���>'�rb~?v�]?nQx?��!?>Or�\i1?�T�դw?��>��X��p�;z�����1�Ȅ�>�y?�}޾�3�-�x?�+y���e?�*g��	z?�)z��Q,?K�a=�Y�lVZ?=ug>�����<.�?�+>��i���0�X �>�~?��%?��[��a��|t��� ��&>�8?d}|?��l?�J?��6>�,��FO"��5a��}�^�z���^�11�G&�	�s�|ϴ�-rX>��>Q�?DT4?��O?�c?�r?:�z?hB?�?�S}?�ox?d�q?��i?`?-�V?�L?ROB?��7?�-?M�#?w*?��?�?���>-��>(�>���>!��>� �>5ߩ>A|�>�ϓ>SЉ>�u�>Mmo>_>��O>>�A>&G4>�'>�Q>ʊ>�>]H�=���=[��=@{�=ee�=�G�=��=,��=��=mC�=&/v=Re=8U=smF=+�8=�+=Y�==�="
=f� =���<N:�<���<��m���t?�|�^�彿L ?R�x>�jF�1��~�8?�X������}?E?�H���+X��)�=�8?��q?9�c���f�X�U?�	v���j�}��>F�۾W�[>�jY>�Q=�A�?9������_y?�=3���c���a|?�/�>�h9��~m�������B?�z?��>>З��;]���|�� 1�	�(�"�>��I?7�{?��v?��E?hq�>�>^�M��w���8�!�a���x���?7z�y"j�-|R���5�����0��c��6cJ�a���3�=Ϝ>�w>���>��>��>WY?��?!�&?T�1?�;?մD?�_L?iS?�X?�^?M�b?�gf?��i?u�l?�Go?�q?Ams?�u?J�v?��w?i�x?��y?*�z?kb{?` |?E�|?��|?�f}?��}?�~?�O~?��~?��~?(�~?�?\-?�I?b?0w?��?f�?%�?�?^�?L�?�?��?��?��?��?��?��?�a{�X�?�x[��r?�y?�Cf?��=�Sv��}x?�Z��<?*;?g1��}r��}��i�g�߾�R?;�`?7�%�f,���e?����)w?M�v���?��n��?�?>@+h��{I?獨>v�}�2Ɓ���~?A|>ma��=�v�>֥{?F�0?^'���Z�جw��
�n6�==2?��z?'�o?�*#?�SR>�w���Vx^���|���{�%�`�54�B�������o��sL>֟�>"q?ˀ2?j&N?t�b?mq?J�z??��?i�}?��x?�#r?�j?(a?VW?B8M?��B?h�8?�e.?Oj$?��?�a?�k?���>6v�>W	�>�s�>���>z��>Z��>l"�>@k�>b�>���>&lp>&`>ٯP>�aB>�5>��(>��>�'>�>�X�=���=���=>W�=@2�=��=;ä=�X�=���=�҄=�9w=�f=V=�DG=Wq9=c�,=�� =�t=O=)n=���<d,�<��<b�A��<N?����fK�Ygd�\�߾���mj�>p/v>sS��g7-���U?��T?��>v�>r�>�Cf?�7O?����C�e�p?��供#ּ2\�>������O=5*�>�S��v{?ط׾
��ݺq?w�>K|�c�ҽax?/��>��,�2s�:<�O\9?��|?5�?�� �W�*~��7�l5K���>`CE?��z?/ox?��I?�R�>U�>��:�������5���_���w�Z��6�z��Pk��	T�F�7����0!��^I����Q�oꩽ =�|>wq>�0�>�8�> �>1q
?�	?2�%? ^1?h;?19D?��K?��R?o�X?��]?{Fb?�0f?S�i?�l?�#o?�`q?&Rs?u?�xv?	�w?�x?��y?��z?iX{?��{?��|?a�|?a}?Ժ}?�~?L~?g�~?��~?��~?�
?�+?H?�`?v?��?��?d�?f�?ͼ?��?��?\�?5�?F�?��?u�?��?��0���?B�r��Z���?��>8���#�i
s?�Bf��>�t\?�i*��@��u^�8]8���
���K?�y7?��Q����jF?o�{�AT?��~�Q~?A�]����>%��>�s���5?ao�>��x�x���i{?~��>��W���H� �>�Yx?۵:?L���T��Zz�G���J�=#i+?�	y?:_r?T�(?�m> �]�ս���[�|�5�|��c��7�����������?>"-�>�'?��0?��L?o�a?v�p?�)z?��~?�?��}?�y?�r?��j?�a?�W?��M?��C?n39?u�.?��$?kH?��?�?�Z ?�c�>u��>SH�>�y�>�y�>hA�>�ȟ>��>��>E��>�jq>)�`>�Q>1C>�5>�I)>��>_�>��>�h�=!��=�s�=:3�=��=Hű=�t�=���=Q�=�a�=�Dx=�g=.W=�H=�9:=�M-=G!=�=|�=��=���<y�<6~�<�_9? �;��>��|�F�S���i� Q�HRE?�֠����>�Iq��"?n|?��(?�Z�>��1?��}?��?��2���t~?��!���6>�+�=H鴽Fx�%C�>�Of�'�r?한��4��Kg?�xq>l�|���@��:r?��	?���w��vx��$/?yf~?�T?g�U�\�Q�?��$>��0m�4Ӥ>`@?y?��y?�pM?�?�I2>&�'�x�3�2�J�]���v���I{{��vl�`�U��F9������,��JkY�`'��J��<�Z>v�k>9��>s��>T��>j�	?t;?�?%?&�0?��:?�C?�K?�WR?vLX?6]?jb?��e?�ii?�fl?��n?<Aq?�6s?q�t?adv?A�w?��x?<�y?	�z?^N{? �{?6z|?��|?][}?�}?`~?WH~?6�~?5�~?a�~?�?�)?zF?U_?�t?��?��?��?��?;�?P�?.�?��?��?��?k�?@�?��?_r>\/?����ەQ������9t�ǰ�ڼ"?Q���I��-?��>e#�ύ"�p=�N�7>tp?�[ ?P�o�u�>�1?pMm��2~?j�~��v?^�G��w�>��>�{���?c�?q�Z�|�/Lv?9�>��L��2S��?>#%t?SBD?B�s�{�L��|�ӱ�=4<=�Z$?�v?C�t?�|.?so�>�)D����C�X� {�BN}�� e�(:��\����pf:�\3>���>�
?1�.?$JK?�`?�p?��y?��~?s�?�}?�qy?��r?�k?�%b?X?jN?�D?��9?��/?9�%?��?t?Hr	?
� ?�Q�>]��>��>8B�>Y6�>_�>�n�>y��>o��>��>�ir>�a>AlR>i D>��6>]�)>0J>%a>6	>y�=���=�_�=3�=�˿=��=e&�=(��=g�=;�=NOy=h=A�W=��H=�;=�.=��!=V�=�A=��=��<��<�_�<̹x?%\L���m?� ��|�<v�P���f?�E���S?�C}�Tݣ=�w?
ne?��E?�d?��{?�̱>�~]�%в���}?�EI��>�}��̶=D����( ?��s���e?>���G��1Z?iΩ>^x����j?��?R��i�{�� ��g_$?�?�|?�H(�Q6K�Ⱥ�=FD��r���j�>�R;?�Iw?FB{?IQ?wZ?��F>�,�H[�\�/��[�|�u���r|�p�m��W��;������������`�bƽʙ<8>Bf>��>��>B��>�?dl?��$?�0?�L:?�@C?�K?\�Q?-�W?�6]?�a?��e?�9i?�<l?H�n?�!q?�s?��t?�Ov?g�w?'�x?ϱy?e�z?GD{?B�{?�r|?G�|?�U}?��}? ~?�D~?�~?o�~?��~?�?�'?�D?�]?�s?}�?Ɩ?�?�?��?��?��?��?��?��?.�?�?c�?�r?����(L�>_0{��#I���S��q��t�>B>�)����/dn?n6 ?��k��"��d��>��?��~>Ы~�|l�>��>��T���s?M�v���f?y�,�j(>� ?����?��?��g�����@Vo?�A�>j�@���\���=�o?�/M?1�뻢+E�{*~��$�UH�;:?�ot?�w?J�3?t�>q}*�s����U�z���}�g���<���~&��G�p���&>�3�>g�?(�,?;�I?j�_?*Lo?�Qy?�~?�?�$~?��y?�is?��k?w�b?Y?�O??�D?�e:?+0?!$&?.e?��?K�	?�T?�>�>��>��>N
�>��>?��>|�>�=�>
�>���>Qhs>�b>fJS>��D>�L7>��*>^�>��>&�	>�D >L��=-L�=*��=Ř�=�B�=�צ=yH�=M��=~��=Zz=]�h=S�X=��I=��;=H�.=�"=�X=��=p=6��<��<�@�<�̦>�u��Qb?�E>�\�����>�n^?��}��V?\N�w���f�G?�k?�r?|~?�a?&-w=L�w��fн3o?�g�i?����/�>
�ܾ��<?��|���T?�+����X�V�J?�-�>�q�����N�a?k�(?N��t~��5��
?N�?BG#?ε���wD�����$J��%���ۅ>�6?�au?Gm|?�sT?�?�[>M� ��+ܾ0�,���Y���t������|�B�n�S�X���<�}z�A����赾�fh�0�Խ{2I<(�=��`>��>&\�>���>��?��?�#?�y/?c�9?��B?h�J?��Q?��W?��\?��a?��e?s	i?�l?�n?(q?) s?�t?";v?z�w?��x?T�y?�}z?&:{?z�{?k|?��|?�O}?�}?��}?�@~?�|~?��~?��~?x?*&?YC?�\?�r?y�?�?�?l�?�?S�?R�??�??�?p�?��?��?5�?@�H?�o���y?3P
�����~�����f?=ؾ�V�>�sf�0{-?b�c?|��>B-=1�Z>E�9?�y?�	��{}�.�?�>d>_93�ˍ`?�g���Q?�����<�,)?9����>�X1?9�[��ؾ#�f?�i
?�3�UEe���l=�i?�wU?��8=�<�kJ�zB,�-��?ĵq?�y?49?rO�>����	�*pR��x�@�~��
i��?��
�-&������	�>���>�2?�+?�[H?s�^?��n?��x?�l~?��?NS~?_z?8�s?�l?�9c?�Y?��O?RE?7�:?<�0?��&?�?{�?x
?��?�+�>���>��>A��>Ʈ�>T�>\��>tٖ>���>��>�ft>�c>�(T>�E>_8>g+>��>��>8Z
>�� >���=Z8�=��=�e�=u�=���=��=3�=��=�d{=��i=d�Y=̠J=�<=�|/=FO#=�=n=2�=V��<���<"�<t���s��9�]>QkW?���=�u�=�RV?��>5h�K\f?��޾�A<��3�>0�r?/�?]z?,0?oSm�v����>�S?C�y��6?�����h�>���)U?C��j"@?3�{=2+g���8?1?h��k޾�ZW?��6?���O����Ӿ�N?@�?��,?;Y���_=�Z��z�O� ����Tl>��0?�Js?Rn}?I�W?��?�p>ӳڽ��Ӿ�)��W���s�JU��}��o��Z�~>��Y�ӳ��r¹���o����4��;���=�[>c�>*�>Y��>V�?y�?�#?w�.?�/9?HFB?�>J?�8Q?�QW?p�\?�Ha?�Se?�h?��k?_�n?m�p?��r?��t?b&v?zvw?��x?˖y?�qz?�/{?��{?cc|?�|?;J}?�}?��}?3=~?�y~?٭~?$�~?^?X$?�A?B[?Uq?s�?�?X�?¯?��?��?��?��?��?)�?��?��?�?	ǽ�V��0L?�~n><,�e2�᷐=��|?�'W�|�S?����>�?�W(?1��>��?�hg?�]?	����k��b>?r��;/
�)E?.�O�ڗ6?*�־����8A?�{��<�>�D?+�M�� ��\?�L?lU%�i�l�����Bb?T]?iL�=�[4�,��4�Hג���?��n?�z?�R>?ے�>���՘��+O�<�w����j�ǄB��^����J�e>8!�>��?�)?�F?6�]?��m?�kx?�8~?��?W~?0az?�:t?��l?�c?5Z?�.P?/�E?�;?�V1?�H'?��?�?��
?8N?~�>�l�>��>��>�j�>��>)`�>�t�>:�>
��>teu>��d>�U>InF>��8>s,>�B >_7>G�
>�T>h��=�$�=��=j2�=+��=;�=��=��=��=mo|=��j=t�Z=�wK=.Z==�60=��#=l�=.=�(=w��<���<\�<��~�� ?�h���x?�e=?E�7?-\?����
��?!=�4u�f�Q=_�@?ek?�Y?��>����t���>L$+?r����W?�W#�)W?�n3��bh?�~�}�'?��<>KMr���$?~{?]�m����K??sC?�@þ\��%��+?��~?f�5?P��5�TW�/U�����$�L>�5+?q?<E~?��Z?Lc?�5�>������˾�m&�mU�~r�q�;�}�k�p��o[�t1@�5!�EF �(���Uw�g��d9���=�dU>�v�>���>���>�?��?`"?�4.?4�8?y�A?Z�I?+�P?u�V?�Z\?�a?8e?��h?þk?�mn?��p?��r?��t?�v?hdw?R�x?4�y?1fz?�%{?��{?�[|?k�|?xD}?�}?1�}?t9~?Qv~?
�~?��~?C ?�"?1@?�Y?%p?l�?�?��?�?�?S�?u�?�?��?��?s�?i�?��?��c��b��]�j=��\?�FC<������(?u�9?��TR?�]�n�$�h�n?mMe?��2?��G?'�}?51.?�-
�!�I�Ca?�\�����c�"?�:2���?��I���U?��s�'�X>գT?!b=����O?�-+?�9���r��Y����Z?6�c?��>0M+�n����;�.��J	?�lk?2S|?CGC?$��>�������&�K��1v�e���l��>E����f��	%ʽp� >莨>Y{?�-'?�[E?�l\?jm?�w?9~?M�?��~?��z?͠t?�m?Id?�Z?�P?��F?P-<?)�1?��'??��?#}?��?��>�L�>�l�>�a�>�&�>R��>��>3�>�ˍ>#/�>�cv>v�e>��U>�=G>�9>��,>�� >�>R~>��>���=��=�~�=9��=�~�=��=h8�=�R�=D.�= z}=�k=��[=�NL=X">=*�0=	�$=�<=Z�=��=���<���<���<Dq��r?'��^d?X�?�P?�q@?w[0��a)����=���>��|�la�����>�L7?E ?�Y >!�;�x�W�Vy?�@�>2z��&o?��E��7?O��v?�w�0�?��>#5z���?�?,?�P�@H�QZ>?�IO?�ơ�(V�<4�&��>"}?�=>?�}�<�0.��l~�*Z��ɾ��,>]�%?!�n?��~?^?/�?�Y�>�����5þ�/#�R9S��Jq���~���}���q�!�\���A�#�+0��l����~�2��*��kB�=�O>��>�t�>z��>5�?3*?Ȧ!?�-?g8?=JA?�aI?iwP?�V?6\?o�`?=�d?�wh?f�k?�Hn?��p?.�r?�rt?��u?CRw?�zx?�{y?]Zz?�{?��{?T|?��|?�>}?�}?��}?�5~?s~?8�~?C�~?%�~?� ?�>?�X?�n?d�?9�?̡?l�?[�?��?�?�?E�?��?5�?3�?��?@R]�/�B?�*9��Pv?6�0?ն?��z?��Q>S�Y��uf?����Y�3?�f?gbh?��q?�]{?̕�>9O?�L��Їw?��ؾ��"���>������>�#���$˾ޥf?Kh�3��=γb?�=+��'�"GB?��9?)F��w� ���+R?�)j?��M>��!�%����B��E����>U�g?��}?}H?Ƴ�>B����!��RUH�v�t�2��b\n�X�G����4򱾕M彋]�=���>�3�>:;%?*�C? J[?�=l?ww?��}?��?F�~?��z?u?�}m?��d?"T[?~XQ?lG?�<?��2?l(?�?�?Y�?�F?+��>�,�>W@�>B)�>��>�e�>���>|��>�\�>1��>Vbw>+�f>��V>�H>cR:>�->�!>�p>[>�d>v��=���=�Z�=��=�=�=8��=�ݝ=��=���=ф~=Z�l=�p\=�%M=��>=u�1=jW%=$�=�0=w@=��<���<���<t� ?�&?��0�f����<9?V�O?��L>.�z��>?��޾:�X?�Q�k>6�݋=���>�ƨ>�A��f��*��DK?Ǜ�>��g�o�|?�a�EeT?Ae�r~?��j� &�>�.�>��~�2��>�K>?�UA���&���/?��Y?w�f�}��)�u��>��z?�ZF?�{=e &��}���^���ؾn�>�?`�k?&t?4a?�a?|n�>�VK�Oú������P��
p��c~��X~���r�8^�e�C�f�$���=ž{��L���^`����=�J>�W�>%�>5��>�?.X?�� ?!�,?"�7?��@?��H?NP?TV?0�[?�`?�d?�Fh?�ik?�#n?z�p?L�r?�Zt?��u?@w?�jx?�my?|Nz?7{? �{?HL|?�|?�8}?�}?~�}?�1~?�o~?c�~?��~?�~?�?=?"W?�m?[�?S�?�?��?Ƹ?Q�?��?��?��?P�?��?��?y�?<5���y?��~�U��>��?&x?��f?eSƾ����?�X���R`���>��r?�i?��?��_?}�">	/f���ƾ��?����;=��> -ξ�,�>sA�<��K^s?�0Y�7��<&n?5c�^
9��!3?m�G?z"뾦�{��TM���H?r�o?��>�����~�d�I�%�@���>fd?`�~?^�L?D��>]7#�Sd龅�D��s�i����o���J�(��θ��5 ��=7Y�>si�>�D#?6JB?#Z?�pk?q�v?�}?��?*�~?t>{?�gu?�m?qSe?)�[?�Q?��G?/Z=?C3?�(?�'?v�?\�?��?��>V�>��>���>E��>?�>Q�>�F�>[�>6?�>�`x>�qg>��W>��H>�;>W8.>�:">y>a�>	�>���=���=�6�=Ҙ�=E��=�O�=��=�=�L�=��=��m=�W]=	�M=��?=�e2=�&=�=��=8�=��<��<6��<�?�$d��=X�a�4�q=0�{>��ݾ�l���e?c�S�+O?6�����o�L	�����=ҁ� ���ۼ|����k?s�<АJ�	�?�$t��Sj?��t�G�?�Z�؞>�?����ֻ>�pN?$�0�B�6��j ?.hc?@9���z����ME�>��w?D�M?�R�=����j{�'Nc������=z�?U i?��?��c?v�#?�r�>�B���A����w�N�ܽn�I�}��~�p�s�l�_��-E��&�m��
ɾ�φ�����_��Q��=�wD>�Ƒ>ZԼ>���>�?��?�2 ?�H,?d�6?{L@?^�H?۴O?��U?�|[?%G`?�sd?�h?.?k?��m?>bp?Nur?aBt?��u?�-w?�Zx?`y?�Bz?�{?
�{?�D|?P�|?3}?��}?�}?!.~?�l~?��~?X�~?��~?�?i;?�U?�l?Q�?m�?>�?�?0�?��?%�?]�?��?�?��?��?J�?/Q?߯�>��������NE?B�f?'g�>_�W��t�=�Ֆ=ƹ�>v��є���A?8�t?�q?�.?E	�~�{�Y��|z?�E���~>��=?p���>�m:>��#�s�{?�F�*�P�v?����H���"?n�S?KfȾud~�����1??cKt?u��>z��.}�,P�q.h����>�_?�H?�Q?&<�>U�k�L�޾1A�	hq����Շq��M�F=�d�����f̵=7��>���>�I!?�@?��X?3�j?Dtv?H}?��?�?%�{?P�u?in?��e?0o\?�~R?�CH?��=? �3?ˍ)?9�?�,?,?�>?���>���>���>��>�Y�>�ư>���>��>��>0ǅ>�^y>n_h>e~X>��I>��;>��.>�">%�>d4>u>t��=��=��=�e�=���=P�=N(�=� �=܉=M�=��n=�>^=�N=�z@=	 3=+�&=� =�\=�W=�	�<��<��<ʹ?�6j�P!S?�As��#��{޾>�c���	��~?N��lj?� K��v�V (�T��$�����;�|�}�Np6�\}?�[��c#���w?FS~���x?�}���{?^�D��o9>L[!?��}����>�\?f����E�)�?n�k?�'���v��o*�?�>	t?�&U?,>� �$Uy�tg������ �=��?�$f?;�?�f?�(?)f�>X�;������2��QL��dm��}�H�~�ۀt�.�`�O�F�(������̾悊������ڼK�=2�>>�4�>���>z�>�+?i�?�w?��+?/^6?��??�H?SO?��U?Q2[?"`?;d?��g?Sk?��m?�Ap?4Yr?�)t?a�u?cw?�Jx?JRy?�6z?�z?�{?�<|?��|?2-}?�}?��}?R*~?6i~?��~?��~?��~?$?�9?[T?Zk?E?��?u�?e�?��?M�?��?��?H�?��?w�?��?�?<Cm?�0���
�>b�f���>�a�>>U3������?��޾ÚH?�nk�E^�z*�>��I?�|F?�)�>��Ծ6�~�s�=� f?d�Ի�>�Ҝ�E�p��G��T�>�D>�)�?�>1��!|�Y�|?y�־��V�R�?��^?����A���æ��_4?�5x?�>G=��{�>.V�������>��[?��?^U?���>��5<<�Ӿ�Y=�$�o���K s���O�^�jƾ�A��x�=	�>���>�J?j'??��W?��i?��u?�}?��?�7?��{?_'v?��n?Yf?7�\?�S?��H?ф>?�<4?*?U@ ?��?Ǆ?��?0��>���>��>�~�>T�>�v�>��>�|�>��> O�>0]z>�Li>@\Y>zJ>*�<>Ԡ/>�#>�F>d�> �>���=)��=���=b2�=�y�=ڲ�=�͟=���=Dk�=pҀ=�o=�%_=$�O=�BA=R�3=�_'=7�=�=��=�<2��<�i�<uF����^�<w?�ݾ-�}��ci�*|���=x�H?��f�R
?N�>�Lb��,e��|���!�W�h���h�۳�= l~?�Lྙ�辱�e?�?���?����q?�E+��G=;�8?\x���#>�fh?���eS�J��>�kr?�c-�K
r�o�5���z>I�o?��[?f�H>>9��v��Jk�����0=Gu?��b?��?�!i?I,?�F�>�(�;���q��l�I���k�Y
}�r@��\u�I3b��gH�XH*�e�	�(�о$4�����~��P��='9>���>�/�>4d�>�=?��?�?1�*?��5?M??s�G?��N?�SU?y�Z?��_?.d?$�g?M�j?*�m?d!p?�<r?~t? �u?�w? ;x?lDy?�*z?�z?�{?�4|?ƶ|?R'}?Ո}?P�}?�&~?�e~?ќ~?c�~?��~?G?08?�R?$j?9~?��?��?��?�?��?C�?��?��?t�?8�?X�?��?�/=>�}�Z�g?4�o���!����<��[M�wSq?>�S�C�{?�'�p�I�
'�=G?j??_��=2a)���n� 1�>.WE?��w�Y?�s���3�=?1J� q�>��T��?�\g���?�<����b�%H�>�h?��U��Q�ž )?�V{?v��>���z~x���[��Ԛ�]i�>
W?��?�oY?a�>~�=�hȾɀ9�a�m����et��R�;u �I(;��(���=�`�>���>�G?��=?<�V?��h?Gcu?ż|?p�?�U?k	|?��v?�No?��f?;�]?�S?�lI?I??y�4?�*?"� ?�:?.?-6?S��>��>ߌ�>�E�>�о>�&�>hA�>�>*��>׆>X[{>|:j>:Z>$IK>^W=>
U0>(3$>s�>aX>'�>b��=@��=���=(��=P8�=bd�=�r�=dT�=���=�W�=I�p=�`=1�P=!B=��4=�(=�c=2�=|o=4�<F��<K�<ϗ{�S���*�>�F�>bP�\lv���-��?�ڪ>����:>vA?�|��a�X-[���Z��L~�Z�?�<v�>�o?�#��3~���I?��v�E0~?��z���a?X�e���;M?4o�UZ=b�q?�"���^�}��>(�w?X��<�l�=9@��B>��j?��a?%v>���t�p�n�Z�
���<<t?�_?"�?�k?�k0?C�>FO�<�h���S��xG���j��|��y��0v��yc���I��,�n��]ԾW㑾��"�:r"���=�|3>��>i۵>,M�>�N ?W
? ?3X*?]:5?��>?�2G?o�N?��T?Z�Z?d�_?"�c?}�g?�j?��m?� p?� r?��s?ʒu?p�v?�*x?�6y?~z?��z?�{?-|?��|?k!}?��}?��}?�"~?�b~?�~?��~?n�~?h?�6?�Q?�h?+}?��?�?�?k�?G�?��?7�?��?*�?��? �?��?^':��]1�?i?��ʾ8�z��}S�E�~��H����y?�I��Jt?l��-�x�~���#5>�S>�VL��Y���L���?7�?!��b8C?���ŕ>&e��6�?��f�r�y?B����O�Ɵ?c.l�[�l����>Kp?�~4���~���(?�}?d�>�|ھ�su�P;a�|ۭ��٦>0R?��?�Q]?��?~=\.����5���k����u�\sT���#���Ӿ�16��~S=鮆>���>�@?��;?�]U?�h?z�t?jr|?.�?�p?�H|?P�v?N�o?�Yg?>^?<2T? J?2�??�a5?�=+?�W!?v�?a�?��?2��>���>�_�>��>>�ֲ>��>���>U3�>�^�>pY|>�'k>�[>+L>�>>:	1>-�$>�>\�>->Ը�=U��=h��=���=���=��=*�=C�=���=݁=��q=��`==YQ=H�B=�N5=K�(=�=]==�=S�<Y��<W,�<%�/���8?s�Ӿ�k?ǋL�b?��KĽ�vr?�a�«�����Vw?�St���r��{���z���z�R��5`?M>P?U�L��M���%?n�e�o�t?w4o�~�L?�ܾ�m]���^?
c�>�]�y?	�¾*�h���>��{?��=�3e�gJ���	>a�d?=�g?�u�>�]��p�xr�$�g����� ?�*\?ȁ?7�m?�x4?��>��;=�������[�D�Ji�U�{������v�f�d��K���-��u�Sؾp����*�4=�SE�=z�->�x�>3��>�4�>߾�>t5?�C?��)?§4?�K>? �F?�+N?O�T?�PZ?�A_?ߏc?�Og?Ēj?�hm?	�o?<r?9�s?^}u?��v?�x?�(y?_z?�z?֌{?$%|? �|?~}?�~}?p�}?�~?=_~?�~?d�~?C�~?�?�4?%P?�g?|?ɍ?�?X�?ӵ?Ŀ?_�?��?I�?��?��?��?��?�tx��Y(>��>غ�>yhZ�u�~���Y�cV�>}05?-�f��4?��C>�{���'���>�J������qw�W��|�D?^+�>�^{�.�`?����>�Z�Py7?�Vt�,]p?��þ6����|?8��d�t�ߺ�>�mv?]�н3p|�� �X�?~5?˫�>��þ��q�H)f������>�M?d�?#a?��?:�=�ر��1��i��u�2�v���V�:�&�
�ھB�C�6� =[��>�	�>x5?�S:?"T?3g?(Dt?�$|?)�?ډ?��|?1:w?{.p?H�g?=�^?��T?J?�@@?��5?��+?��!?�G?_?�,?�t�>7g�>2�>s��>G�>>㋧>�M�>tđ>��>wW}>Vl>��[>)�L>��>>e�1>.�%>�>S|>0�>B��=g��=G��=���=���=pǭ=r��=!��=��=rb�=��r=��a=H0R=o�C=,	6=�g)=G�=��=��=q�<mw�<��<��v>B�|?2v���k?,�?A��=Ӌ?2v?_�4�a�>��5��H{?�8>�=A�D�{��}�ǆ^��@��?K?��#?�2k���A>���>��K�	�c?�\��2?Ƙ��1��͈l?��S�a�$�x�}?J'���+q����>	�~?%8*>�Q]��4S�J�=��^?Q�l?p��>�(ྂ1m���t��2�W�S��0�>ʁX?�?Ep?2o8?Mp�>N�=��K��oB���g�I{����ľw�T�e��M�Q�/�mM��۾a;��y1�$�W���u=#(>��>�/�>��>���> `?d�?�
)?�4?��=?�PF?o�M?�PT?MZ?��^?fVc?�g?@gj?Cm?+�o?��q?r�s?�gu?2�v?�
x?}y?5z?��z?��{?8|?C�|?�}?ny}?��}?�~?�[~?%�~?��~?�~?�?O3?�N?{f?{?ތ?K�?��?:�??�?��?q�?��?��?w�?��?Z�?󧤾��c?q��go?ӛ��>�2��4��T�E?�uc>7L�+�>��?��R��e�v[����}=����(?����g?,>@�j��u?��>��p?��#�ʯP?�|�I�b?pŇ�'��v?��@�z��^�>:6{?�޼P�x�,��a�?��?�	?Hm����m�|�j�XӾ��>�G?�?ڀd?.{?#�=�i���l-�gg�\�Qx��Y��)�� � Q�q��<�zv>X�>{&?C�8?U�R?]Nf?Q�s?C�{?b�?n�?�|?U�w?2�p?�Uh?9!_?KPU?�$K?N�@?��6?�[,?�m"?��?)�?�?_�>�E�>k�>���>�>�6�>1�>��>�U�>{n�>mU~>�m>@�\>�M>њ?>�q2>*+&>K�>G>1>���=uq�="^�=le�=Mt�=�x�=�b�=�!�=8��=��=�s=��b=SS=�cD=t�6=	*=�G=�K=�	=��<i�<���<�fr?y0�>& U��e�>��v?U7?��n?�"?��y�uS?�u��L?�?�侕�Y��d�B",��n=ͫm?JD�>�\|�,��>�Ǔ>��*�1hK?��D��F?��"�����v?YB��!����?�	P�o�w��E>��?%6p>4�T���[��{�<�W?�q?K�>��̾�;i��ww�� �$y��
��>|�T?�]~?�r?�N<?���>9
�=�A|���u�?���e�r�z�f��+yx�w$g�U�N�?G1�Q"��߾䜾 8��$r�� ]=8t">�K�>�خ>$�>���>��?��?5c(?)�3?I=?�E?�dM?��S?]�Y?w�^?�c?h�f?�;j?$m?-�o?	�q?��s?GRu?x�v?f�w?gy?��y?��z?�z{?C|?^�|?�}?Bt}?}�}?~?�X~?;�~?Z�~?��~?�?�1?OM?@e?�y?�?�?��?��?��?z�?�?��?K�?6�?y�?)�?�}?��e?�:~���g?Al�>rA���(�>�?2�����E���c?m��\��PK�R�9���i��>r��pڽК{?�⋽B�N��?��[�H�<?OB���d?0����P?�>�j?<��n?c��=�h~�`,>]~?��C=Qt�a=��J�>~�?��?d���bTi���n��7���a>79B?pO~?��g?Q@?�d>k⚾|:)��e�=�~�[1y��F[��n,�ٱ�_Y^��gl<w�j>_�>�?�7?��Q?�ee?�s?z�{?�r?��?v�|?��w?sq?��h?2�_?�U?�K?�eA?�7?��,?<�"?�S?�	?�"?,I�>�#�>���>]`�>���>��>֨>���>��>8��>SS>��m>�]>
�N>�[@>�%3>!�&>�U>8�>/�>��=�]�=�9�=)2�=�2�=x*�=��=ۻ�=s7�=m�=*�t=�c=^�S=�+E=�}7=h�*=��=��=~�	=W =�[�<.��<?H?B<��s��پUc?jC?*�u?���=w|q�;E?\6{�{��>�Z?q��5��)+0�mWѾؑ�>'�~?��<>�f��2?�ݲ=�S��,?
�&�S�>U���T��V}?t}-��H���k?j��\|��1�=7�?h��>�J�Zc�:�
�=P?�t?=��>������d��y���&�y��%L�>Z�P?=�}?kt?{@?�q�>�=�j���v7=��Id�`�y�-��+y��Oh��P�>�2�l��yD㾙���{?�`X��LhD=�>Hh>��>���>T�>j�?�
?6�'?,�2?��<?�lE?M?\�S?)mY?{^?��b?�f?�j?�l?}o?F�q?��s?�<u?��v?�w?B�x?��y?W�z?Mq{?G|?s�|?�	}?o}?��}?)~?%U~?N�~?ѿ~?��~?�?0?�K?d?�x?�?��?E�?�?5�?�?��?F�? �?��?A�?��?Ŭ~?<>��;�4��>�q?�&?�SM?�1^?
�H�0��>�!��?�3��7�r�%vu��i�&�~��O�A1*>�b?����hy(�9~?�p�)�X?@�Z���s?�}��;?z����N�Y�b?�y*>����B�=L�?��=/n��)��m�>[�~?ԗ?kvy��Qd��vr�� ��J==>�q<?5A}?��j?��?�0'>�D����$�(�b�P~�82z��n]�uS/��6�k��c;v_>
�>��?yZ5?�VP?�yd? {r?�){?�U?h�?�2}?i=x?=sq?�Li?%.`?�jV?�FL?#�A?8�7?�w-?z�#?m�?�?��?�2�>��>���>�&�>�w�>7��>	{�>K�>�w�>�}�>�(�>7�n>��^>�SO>�A>��3>{'>t�>'2>+->t��=�I�=��=���=��=�ۯ=A��=�U�=�ƍ=o�=`�u=��d=h�T=��E=88=�o+=V�=x=>*
=e� =�M�<v��<�н�{��-.?֏r�7@�>P?	�?�I�������f?^�F��-�<3~?��>%d���]оОֽ�|?~p|?I����%t��@?���e��l�?6����>��>��.���?����C�om|?�P��q"��G=�~?1-�>$:@���i�6��A*H?�Ix?���>�I��d=`�+�{��F-�֏���>(�L?��|?��u?r�C?<��>+��=�X�Hw ���:���b�� y�����y�3ti���Q�E�4�������.��s!F�윓�3�+=�>�6z>�&�>���>�7�>J�?�K?�'?�X2?}D<?��D?ޜL?�JS?� Y?P8^?��b?k�f?��i?��l?�[o?f�q?�|s?�&u?ʘv?��w?�x?k�y?��z?h{?C|?��|?�}?�i}?x�}??~?�Q~?^�~?F�~?��~?�?^.?tJ?�b?�w?�?�?��?l�?��?��?E�?��?��?��?�?��?fl�>w�-���1=��gk?"�w?'�?�4�>˃~��SS?�yk��Ah?���>�mA��<�2�?Oz�i�� v�>L�r?;2��e����r?F�|��Gm?��m�x�|? �v�b-"?�c�=t�^���T?�6�>�I�cb��e�?�/I>_�f�05�Wγ>�C}?.�)?��H���^��u�4�'_>s6?'�{?7�m?"t?��@>璃��� ��8`��q}��{�?�_�|-2�����x��6*�!�S>�>��?�3?�
O?f�c?��q?��z?5?��?4h}?W�x?��q?<�i?�`?�V?��L?2�B?\78?�.?i$?�^?G
?(?u�>)��>Zz�>���>c2�>�E�>��>���>p�>��>v��>g�o>l_>�"P>�A>֍4>#(>�>�>$�>ӫ�=�5�=���=���=;��={��=�R�=��=�U�=�w�=��v=we=q�U=�F=J�8=$,=�+ =0=��
=t=�?�<���<S[d��<�$�?2c�j�ʾ�Y~>̲���f��Hܽ�|?��Ⱦ7W׾R�t?{�'?c
�=�?��]�V>�VK?�g?%���9[���`?ݣ��>���0�>a���a�>ê�>�F���~?����d��_�v?���=b����D��{?|��>��4�ʱo��G��??V{?c�>ٲ���8[�g&}���3�'�5�妽>�FH?�j{?gw? ^G?��>�W>��F�����,�7���`�$Rx�w��buz���j�1S�K]6�!��ɡ꾒Ч��"M��ߠ��=`>�u>̧>��>HS�>�?��?�i&?��1?��;?��D?U8L?��R?��X?`�]?anb?�Sf?��i?]�l?q:o?jtq?^cs?u?ׅv?H�w?��x?�y?��z?�^{?7�{?��|?��|?�d}?�}?Q~?ZN~?l�~?��~?J�~??�,?I?�a?�v?'�?�?ߦ?Ѳ?)�?�?��?��?i�?s�?��?��?��~�rJ?x�u�[�>7�f?qJ?j� �� f��@?����!?j�(?D1�Zg��\w��4]�i�����'?BIV?\�3������]?���[�z?�-z���?�lj��f?�pg>��k�~�C?ַ>?i|�������}?��>ƭ^���@����>h�z?~�3?�����X�e�x���� ��=>0?�bz?zp?��$?lpZ>Ǜo��&�j�]�E�|��{��a���4�\��������RH>��>\�?��1?<�M?~�b?�8q?Srz?�?��?�}?��x?kDr?�>j?�6a?L�W?�eM?�C?	�8?֒.?�$?��?<�?��?� ?���>�K�>���>���>B��>�Ī>�S�>N��>0��>O&�>��p>�I`>��P>�B>�A5>��(>�+>�U>=>-��=�!�=w��=T��=�n�=�>�=���=l��=!�=��=Ɉw=
^f=ycV=(�G=��9=��,=	� =Y�=�A=��=�1�<t�<�\���=�<?����\j��;ݾ���l�|����>�W�=�p�=�|F��@?'�d?u3�>7�>V� ?W�o?L\A?��	6��>v?����=	mR>�!Y��:���>��Y�(`y?2�ƾg�$���n?��*>/�~��X�q�v?{��>,�(���t���M��e6?�,}?��?:�u���U�;_~�V�9�JU����>��C?�z?��x?��J?o ?W�#>�5��"�55�&_�xw�����{�U�k�c~T�F8��Y��J��o���!T�!���j�<J�>�o>�p�>���>�m�>b,
?��?B�%?w.1?K>;?�D?u�K?��R?�X?3�]?�3b?� f?6�i?уl?�o?RWq?Js?�t?�rv?ȸw?�x?��y?3�z?rU{?"�{?�|?s�|?[_}?a�}?_~?�J~?v�~?(�~?�~?
?+?�G?H`?�u?7�?D�?+�?5�?��?��?{�?@�?�?1�?��?e�?

NoOpNoOp
��
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� Bڜ
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	mlp_units
		optimizer

positional_embedding
encoders
avg_pool

mlp_layers

mlp_output

signatures*
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
 16
!17
"18*
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
 16
!17
"18*
* 
�
#non_trainable_variables

$layers
%metrics
&layer_regularization_losses
'layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
(trace_0
)trace_1
*trace_2
+trace_3* 
6
,trace_0
-trace_1
.trace_2
/trace_3* 
* 
* 
�

0beta_1

1beta_2
	2decay
3learning_rate
4iterm�m�m�m�m�m�m�m�m�m�m�m�m�m�m�m� m�!m�"m�v�v�v�v�v�v�v�v�v�v�v�v�v�v�v�v� v�!v�"v�*
�
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;	embedding*

<0*
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses* 

C0
D1*
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

!kernel
"bias*

Kserving_default* 
xr
VARIABLE_VALUE8transformer_model_17/positional_embedding/dense_2/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6transformer_model_17/positional_embedding/dense_2/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEJtransformer_model_17/transformer_encoder/multi_head_attention/query_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEHtransformer_model_17/transformer_encoder/multi_head_attention/key_kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEJtransformer_model_17/transformer_encoder/multi_head_attention/value_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEOtransformer_model_17/transformer_encoder/multi_head_attention/projection_kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEMtransformer_model_17/transformer_encoder/multi_head_attention/projection_bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEBtransformer_model_17/transformer_encoder/layer_normalization/gamma&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAtransformer_model_17/transformer_encoder/layer_normalization/beta&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6transformer_model_17/transformer_encoder/conv1d/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE4transformer_model_17/transformer_encoder/conv1d/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE8transformer_model_17/transformer_encoder/conv1d_1/kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE6transformer_model_17/transformer_encoder/conv1d_1/bias'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEDtransformer_model_17/transformer_encoder/layer_normalization_1/gamma'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUECtransformer_model_17/transformer_encoder/layer_normalization_1/beta'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!transformer_model_17/dense/kernel'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEtransformer_model_17/dense/bias'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#transformer_model_17/dense_1/kernel'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!transformer_model_17/dense_1/bias'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
* 
.

0
<1
2
C3
D4
5*

L0
M1
N2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
KE
VARIABLE_VALUEbeta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEbeta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*

Ttrace_0* 

Utrace_0* 
�
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

kernel
bias*
�
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses
b
attn_heads
c
attn_multi
dattn_dropout
e	attn_norm
fff_conv1
g
ff_dropout
hff_conv2
iff_norm*
* 
* 
* 
�
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses* 

otrace_0* 

ptrace_0* 
�
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses

kernel
 bias*
�
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses
}_random_generator* 

!0
"1*

!0
"1*
* 
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
* 

;0*
* 
* 
* 
* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*
* 
* 
b
0
1
2
3
4
5
6
7
8
9
10
11
12*
b
0
1
2
3
4
5
6
7
8
9
10
11
12*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�dropout
query_kernel

key_kernel
value_kernel
projection_kernel
projection_bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta*
* 
* 
* 
* 
* 
* 
* 

0
 1*

0
 1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
5
c0
d1
e2
f3
g4
h5
i6*
* 
* 
* 
* 
* 
* 
* 
'
0
1
2
3
4*
'
0
1
2
3
4*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


�0* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
��
VARIABLE_VALUE?Adam/transformer_model_17/positional_embedding/dense_2/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE=Adam/transformer_model_17/positional_embedding/dense_2/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEQAdam/transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEOAdam/transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEQAdam/transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEVAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUETAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_bias/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEIAdam/transformer_model_17/transformer_encoder/layer_normalization/gamma/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEHAdam/transformer_model_17/transformer_encoder/layer_normalization/beta/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE=Adam/transformer_model_17/transformer_encoder/conv1d/kernel/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE;Adam/transformer_model_17/transformer_encoder/conv1d/bias/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_model_17/transformer_encoder/conv1d_1/kernel/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE=Adam/transformer_model_17/transformer_encoder/conv1d_1/bias/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEKAdam/transformer_model_17/transformer_encoder/layer_normalization_1/gamma/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEJAdam/transformer_model_17/transformer_encoder/layer_normalization_1/beta/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUE(Adam/transformer_model_17/dense/kernel/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUE&Adam/transformer_model_17/dense/bias/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE*Adam/transformer_model_17/dense_1/kernel/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUE(Adam/transformer_model_17/dense_1/bias/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_model_17/positional_embedding/dense_2/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE=Adam/transformer_model_17/positional_embedding/dense_2/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEQAdam/transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEOAdam/transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEQAdam/transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEVAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUETAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_bias/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEIAdam/transformer_model_17/transformer_encoder/layer_normalization/gamma/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEHAdam/transformer_model_17/transformer_encoder/layer_normalization/beta/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE=Adam/transformer_model_17/transformer_encoder/conv1d/kernel/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE;Adam/transformer_model_17/transformer_encoder/conv1d/bias/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE?Adam/transformer_model_17/transformer_encoder/conv1d_1/kernel/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE=Adam/transformer_model_17/transformer_encoder/conv1d_1/bias/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEKAdam/transformer_model_17/transformer_encoder/layer_normalization_1/gamma/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEJAdam/transformer_model_17/transformer_encoder/layer_normalization_1/beta/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUE(Adam/transformer_model_17/dense/kernel/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUE&Adam/transformer_model_17/dense/bias/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE*Adam/transformer_model_17/dense_1/kernel/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUE(Adam/transformer_model_17/dense_1/bias/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_input_1Placeholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_18transformer_model_17/positional_embedding/dense_2/kernel6transformer_model_17/positional_embedding/dense_2/biasConstJtransformer_model_17/transformer_encoder/multi_head_attention/query_kernelHtransformer_model_17/transformer_encoder/multi_head_attention/key_kernelJtransformer_model_17/transformer_encoder/multi_head_attention/value_kernelOtransformer_model_17/transformer_encoder/multi_head_attention/projection_kernelMtransformer_model_17/transformer_encoder/multi_head_attention/projection_biasBtransformer_model_17/transformer_encoder/layer_normalization/gammaAtransformer_model_17/transformer_encoder/layer_normalization/beta6transformer_model_17/transformer_encoder/conv1d/kernel4transformer_model_17/transformer_encoder/conv1d/bias8transformer_model_17/transformer_encoder/conv1d_1/kernel6transformer_model_17/transformer_encoder/conv1d_1/biasDtransformer_model_17/transformer_encoder/layer_normalization_1/gammaCtransformer_model_17/transformer_encoder/layer_normalization_1/beta!transformer_model_17/dense/kerneltransformer_model_17/dense/bias#transformer_model_17/dense_1/kernel!transformer_model_17/dense_1/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*5
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_295859
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�*
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameLtransformer_model_17/positional_embedding/dense_2/kernel/Read/ReadVariableOpJtransformer_model_17/positional_embedding/dense_2/bias/Read/ReadVariableOp^transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/Read/ReadVariableOp\transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/Read/ReadVariableOp^transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/Read/ReadVariableOpctransformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/Read/ReadVariableOpatransformer_model_17/transformer_encoder/multi_head_attention/projection_bias/Read/ReadVariableOpVtransformer_model_17/transformer_encoder/layer_normalization/gamma/Read/ReadVariableOpUtransformer_model_17/transformer_encoder/layer_normalization/beta/Read/ReadVariableOpJtransformer_model_17/transformer_encoder/conv1d/kernel/Read/ReadVariableOpHtransformer_model_17/transformer_encoder/conv1d/bias/Read/ReadVariableOpLtransformer_model_17/transformer_encoder/conv1d_1/kernel/Read/ReadVariableOpJtransformer_model_17/transformer_encoder/conv1d_1/bias/Read/ReadVariableOpXtransformer_model_17/transformer_encoder/layer_normalization_1/gamma/Read/ReadVariableOpWtransformer_model_17/transformer_encoder/layer_normalization_1/beta/Read/ReadVariableOp5transformer_model_17/dense/kernel/Read/ReadVariableOp3transformer_model_17/dense/bias/Read/ReadVariableOp7transformer_model_17/dense_1/kernel/Read/ReadVariableOp5transformer_model_17/dense_1/bias/Read/ReadVariableOpbeta_1/Read/ReadVariableOpbeta_2/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpAdam/iter/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpSAdam/transformer_model_17/positional_embedding/dense_2/kernel/m/Read/ReadVariableOpQAdam/transformer_model_17/positional_embedding/dense_2/bias/m/Read/ReadVariableOpeAdam/transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/m/Read/ReadVariableOpcAdam/transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/m/Read/ReadVariableOpeAdam/transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/m/Read/ReadVariableOpjAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/m/Read/ReadVariableOphAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_bias/m/Read/ReadVariableOp]Adam/transformer_model_17/transformer_encoder/layer_normalization/gamma/m/Read/ReadVariableOp\Adam/transformer_model_17/transformer_encoder/layer_normalization/beta/m/Read/ReadVariableOpQAdam/transformer_model_17/transformer_encoder/conv1d/kernel/m/Read/ReadVariableOpOAdam/transformer_model_17/transformer_encoder/conv1d/bias/m/Read/ReadVariableOpSAdam/transformer_model_17/transformer_encoder/conv1d_1/kernel/m/Read/ReadVariableOpQAdam/transformer_model_17/transformer_encoder/conv1d_1/bias/m/Read/ReadVariableOp_Adam/transformer_model_17/transformer_encoder/layer_normalization_1/gamma/m/Read/ReadVariableOp^Adam/transformer_model_17/transformer_encoder/layer_normalization_1/beta/m/Read/ReadVariableOp<Adam/transformer_model_17/dense/kernel/m/Read/ReadVariableOp:Adam/transformer_model_17/dense/bias/m/Read/ReadVariableOp>Adam/transformer_model_17/dense_1/kernel/m/Read/ReadVariableOp<Adam/transformer_model_17/dense_1/bias/m/Read/ReadVariableOpSAdam/transformer_model_17/positional_embedding/dense_2/kernel/v/Read/ReadVariableOpQAdam/transformer_model_17/positional_embedding/dense_2/bias/v/Read/ReadVariableOpeAdam/transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/v/Read/ReadVariableOpcAdam/transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/v/Read/ReadVariableOpeAdam/transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/v/Read/ReadVariableOpjAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/v/Read/ReadVariableOphAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_bias/v/Read/ReadVariableOp]Adam/transformer_model_17/transformer_encoder/layer_normalization/gamma/v/Read/ReadVariableOp\Adam/transformer_model_17/transformer_encoder/layer_normalization/beta/v/Read/ReadVariableOpQAdam/transformer_model_17/transformer_encoder/conv1d/kernel/v/Read/ReadVariableOpOAdam/transformer_model_17/transformer_encoder/conv1d/bias/v/Read/ReadVariableOpSAdam/transformer_model_17/transformer_encoder/conv1d_1/kernel/v/Read/ReadVariableOpQAdam/transformer_model_17/transformer_encoder/conv1d_1/bias/v/Read/ReadVariableOp_Adam/transformer_model_17/transformer_encoder/layer_normalization_1/gamma/v/Read/ReadVariableOp^Adam/transformer_model_17/transformer_encoder/layer_normalization_1/beta/v/Read/ReadVariableOp<Adam/transformer_model_17/dense/kernel/v/Read/ReadVariableOp:Adam/transformer_model_17/dense/bias/v/Read/ReadVariableOp>Adam/transformer_model_17/dense_1/kernel/v/Read/ReadVariableOp<Adam/transformer_model_17/dense_1/bias/v/Read/ReadVariableOpConst_1*Q
TinJ
H2F	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__traced_save_296921
� 
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename8transformer_model_17/positional_embedding/dense_2/kernel6transformer_model_17/positional_embedding/dense_2/biasJtransformer_model_17/transformer_encoder/multi_head_attention/query_kernelHtransformer_model_17/transformer_encoder/multi_head_attention/key_kernelJtransformer_model_17/transformer_encoder/multi_head_attention/value_kernelOtransformer_model_17/transformer_encoder/multi_head_attention/projection_kernelMtransformer_model_17/transformer_encoder/multi_head_attention/projection_biasBtransformer_model_17/transformer_encoder/layer_normalization/gammaAtransformer_model_17/transformer_encoder/layer_normalization/beta6transformer_model_17/transformer_encoder/conv1d/kernel4transformer_model_17/transformer_encoder/conv1d/bias8transformer_model_17/transformer_encoder/conv1d_1/kernel6transformer_model_17/transformer_encoder/conv1d_1/biasDtransformer_model_17/transformer_encoder/layer_normalization_1/gammaCtransformer_model_17/transformer_encoder/layer_normalization_1/beta!transformer_model_17/dense/kerneltransformer_model_17/dense/bias#transformer_model_17/dense_1/kernel!transformer_model_17/dense_1/biasbeta_1beta_2decaylearning_rate	Adam/itertotal_2count_2total_1count_1totalcount?Adam/transformer_model_17/positional_embedding/dense_2/kernel/m=Adam/transformer_model_17/positional_embedding/dense_2/bias/mQAdam/transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/mOAdam/transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/mQAdam/transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/mVAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/mTAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_bias/mIAdam/transformer_model_17/transformer_encoder/layer_normalization/gamma/mHAdam/transformer_model_17/transformer_encoder/layer_normalization/beta/m=Adam/transformer_model_17/transformer_encoder/conv1d/kernel/m;Adam/transformer_model_17/transformer_encoder/conv1d/bias/m?Adam/transformer_model_17/transformer_encoder/conv1d_1/kernel/m=Adam/transformer_model_17/transformer_encoder/conv1d_1/bias/mKAdam/transformer_model_17/transformer_encoder/layer_normalization_1/gamma/mJAdam/transformer_model_17/transformer_encoder/layer_normalization_1/beta/m(Adam/transformer_model_17/dense/kernel/m&Adam/transformer_model_17/dense/bias/m*Adam/transformer_model_17/dense_1/kernel/m(Adam/transformer_model_17/dense_1/bias/m?Adam/transformer_model_17/positional_embedding/dense_2/kernel/v=Adam/transformer_model_17/positional_embedding/dense_2/bias/vQAdam/transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/vOAdam/transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/vQAdam/transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/vVAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/vTAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_bias/vIAdam/transformer_model_17/transformer_encoder/layer_normalization/gamma/vHAdam/transformer_model_17/transformer_encoder/layer_normalization/beta/v=Adam/transformer_model_17/transformer_encoder/conv1d/kernel/v;Adam/transformer_model_17/transformer_encoder/conv1d/bias/v?Adam/transformer_model_17/transformer_encoder/conv1d_1/kernel/v=Adam/transformer_model_17/transformer_encoder/conv1d_1/bias/vKAdam/transformer_model_17/transformer_encoder/layer_normalization_1/gamma/vJAdam/transformer_model_17/transformer_encoder/layer_normalization_1/beta/v(Adam/transformer_model_17/dense/kernel/v&Adam/transformer_model_17/dense/bias/v*Adam/transformer_model_17/dense_1/kernel/v(Adam/transformer_model_17/dense_1/bias/v*P
TinI
G2E*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__traced_restore_297135��
�
�
$__inference_signature_wrapper_295859
input_1
unknown:	�
	unknown_0:	�
	unknown_1!
	unknown_2:��!
	unknown_3:��!
	unknown_4:��!
	unknown_5:��
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�!
	unknown_9:��

unknown_10:	�"

unknown_11:��

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:	�

unknown_18:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*5
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_295008o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : :
��: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1:&"
 
_output_shapes
:
��
�
p
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_295018

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
D
(__inference_dropout_layer_call_fn_296671

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_295230a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
a
C__inference_dropout_layer_call_and_return_conditional_losses_295230

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
5__inference_transformer_model_17_layer_call_fn_295949
x
unknown:	�
	unknown_0:	�
	unknown_1!
	unknown_2:��!
	unknown_3:��!
	unknown_4:��!
	unknown_5:��
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�!
	unknown_9:��

unknown_10:	�"

unknown_11:��

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:	�

unknown_18:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*5
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_295618o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : :
��: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
+
_output_shapes
:���������

_user_specified_namex:&"
 
_output_shapes
:
��
�	
b
C__inference_dropout_layer_call_and_return_conditional_losses_296693

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�4
�
P__inference_positional_embedding_layer_call_and_return_conditional_losses_295082
x<
)dense_2_tensordot_readvariableop_resource:	�6
'dense_2_biasadd_readvariableop_resource:	�
unknown
identity��dense_2/BiasAdd/ReadVariableOp� dense_2/Tensordot/ReadVariableOp6
ShapeShapex*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       H
dense_2/Tensordot/ShapeShapex*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_2/Tensordot/transpose	Transposex!dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:����������
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������I
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :�M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 7
SqrtSqrtCast:y:0*
T0*
_output_shapes
: e
mulMuldense_2/BiasAdd:output:0Sqrt:y:0*
T0*,
_output_shapes
:����������G
ConstConst*
_output_shapes
: *
dtype0*
value	B : I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :Y
strided_slice_1/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_1/stackPack strided_slice_1/stack/0:output:0Const:output:0 strided_slice_1/stack/2:output:0*
N*
T0*
_output_shapes
:[
strided_slice_1/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_1/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_1/stack_1Pack"strided_slice_1/stack_1/0:output:0strided_slice:output:0"strided_slice_1/stack_1/2:output:0*
N*
T0*
_output_shapes
:[
strided_slice_1/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_1/stack_2/2Const*
_output_shapes
: *
dtype0*
value	B :�
strided_slice_1/stack_2Pack"strided_slice_1/stack_2/0:output:0Const_1:output:0"strided_slice_1/stack_2/2:output:0*
N*
T0*
_output_shapes
:�
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:�*

begin_mask*
end_mask*
new_axis_maskf
addAddV2mul:z:0strided_slice_1:output:0*
T0*,
_output_shapes
:����������[
IdentityIdentityadd:z:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : :
��2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp:N J
+
_output_shapes
:���������

_user_specified_namex:&"
 
_output_shapes
:
��
�

�
C__inference_dense_1_layer_call_and_return_conditional_losses_296385

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�|
�
O__inference_transformer_encoder_layer_call_and_return_conditional_losses_295179

inputsR
:multi_head_attention_einsum_einsum_readvariableop_resource:��T
<multi_head_attention_einsum_1_einsum_readvariableop_resource:��T
<multi_head_attention_einsum_2_einsum_readvariableop_resource:��T
<multi_head_attention_einsum_5_einsum_readvariableop_resource:��?
0multi_head_attention_add_readvariableop_resource:	�H
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�J
2conv1d_conv1d_expanddims_1_readvariableop_resource:��5
&conv1d_biasadd_readvariableop_resource:	�L
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:��7
(conv1d_1_biasadd_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�
identity��conv1d/BiasAdd/ReadVariableOp�)conv1d/Conv1D/ExpandDims_1/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�'multi_head_attention/add/ReadVariableOp�1multi_head_attention/einsum/Einsum/ReadVariableOp�3multi_head_attention/einsum_1/Einsum/ReadVariableOp�3multi_head_attention/einsum_2/Einsum/ReadVariableOp�3multi_head_attention/einsum_5/Einsum/ReadVariableOp�
1multi_head_attention/einsum/Einsum/ReadVariableOpReadVariableOp:multi_head_attention_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
"multi_head_attention/einsum/EinsumEinsuminputs9multi_head_attention/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...NI,HIO->...NHO�
3multi_head_attention/einsum_1/Einsum/ReadVariableOpReadVariableOp<multi_head_attention_einsum_1_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
$multi_head_attention/einsum_1/EinsumEinsuminputs;multi_head_attention/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...MI,HIO->...MHO�
3multi_head_attention/einsum_2/Einsum/ReadVariableOpReadVariableOp<multi_head_attention_einsum_2_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
$multi_head_attention/einsum_2/EinsumEinsuminputs;multi_head_attention/einsum_2/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...MI,HIO->...MHO_
multi_head_attention/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �Cg
multi_head_attention/SqrtSqrt#multi_head_attention/Const:output:0*
T0*
_output_shapes
: �
multi_head_attention/truedivRealDiv+multi_head_attention/einsum/Einsum:output:0multi_head_attention/Sqrt:y:0*
T0*0
_output_shapes
:�����������
$multi_head_attention/einsum_3/EinsumEinsum multi_head_attention/truediv:z:0-multi_head_attention/einsum_1/Einsum:output:0*
N*
T0*/
_output_shapes
:���������*#
equation...NHO,...MHO->...HNM�
multi_head_attention/SoftmaxSoftmax-multi_head_attention/einsum_3/Einsum:output:0*
T0*/
_output_shapes
:����������
'multi_head_attention/dropout_1/IdentityIdentity&multi_head_attention/Softmax:softmax:0*
T0*/
_output_shapes
:����������
$multi_head_attention/einsum_4/EinsumEinsum0multi_head_attention/dropout_1/Identity:output:0-multi_head_attention/einsum_2/Einsum:output:0*
N*
T0*0
_output_shapes
:����������*#
equation...HNM,...MHI->...NHI�
3multi_head_attention/einsum_5/Einsum/ReadVariableOpReadVariableOp<multi_head_attention_einsum_5_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
$multi_head_attention/einsum_5/EinsumEinsum-multi_head_attention/einsum_4/Einsum:output:0;multi_head_attention/einsum_5/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������*
equation...NHI,HIO->...NO�
'multi_head_attention/add/ReadVariableOpReadVariableOp0multi_head_attention_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
multi_head_attention/addAddV2-multi_head_attention/einsum_5/Einsum:output:0/multi_head_attention/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������s
dropout_2/IdentityIdentitymulti_head_attention/add:z:0*
T0*,
_output_shapes
:����������|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeandropout_2/Identity:output:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:����������
-layer_normalization/moments/SquaredDifferenceSquaredDifferencedropout_2/Identity:output:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/mul_1Muldropout_2/Identity:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������t
addAddV2'layer_normalization/batchnorm/add_1:z:0inputs*
T0*,
_output_shapes
:����������g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d/Conv1D/ExpandDims
ExpandDimsadd:z:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������c
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*,
_output_shapes
:����������p
dropout_3/IdentityIdentityconv1d/Relu:activations:0*
T0*,
_output_shapes
:����������i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_1/Conv1D/ExpandDims
ExpandDimsdropout_3/Identity:output:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMeanconv1d_1/BiasAdd:output:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:����������
/layer_normalization_1/moments/SquaredDifferenceSquaredDifferenceconv1d_1/BiasAdd:output:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/mul_1Mulconv1d_1/BiasAdd:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������y
add_1AddV2add:z:0)layer_normalization_1/batchnorm/add_1:z:0*
T0*,
_output_shapes
:����������]
IdentityIdentity	add_1:z:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp(^multi_head_attention/add/ReadVariableOp2^multi_head_attention/einsum/Einsum/ReadVariableOp4^multi_head_attention/einsum_1/Einsum/ReadVariableOp4^multi_head_attention/einsum_2/Einsum/ReadVariableOp4^multi_head_attention/einsum_5/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������: : : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2R
'multi_head_attention/add/ReadVariableOp'multi_head_attention/add/ReadVariableOp2f
1multi_head_attention/einsum/Einsum/ReadVariableOp1multi_head_attention/einsum/Einsum/ReadVariableOp2j
3multi_head_attention/einsum_1/Einsum/ReadVariableOp3multi_head_attention/einsum_1/Einsum/ReadVariableOp2j
3multi_head_attention/einsum_2/Einsum/ReadVariableOp3multi_head_attention/einsum_2/Einsum/ReadVariableOp2j
3multi_head_attention/einsum_5/Einsum/ReadVariableOp3multi_head_attention/einsum_5/Einsum/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
&__inference_dense_layer_call_fn_296655

inputs
unknown:
��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_295219p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�'
�	
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_295618
x.
positional_embedding_295571:	�*
positional_embedding_295573:	�
positional_embedding_2955752
transformer_encoder_295578:��2
transformer_encoder_295580:��2
transformer_encoder_295582:��2
transformer_encoder_295584:��)
transformer_encoder_295586:	�)
transformer_encoder_295588:	�)
transformer_encoder_295590:	�2
transformer_encoder_295592:��)
transformer_encoder_295594:	�2
transformer_encoder_295596:��)
transformer_encoder_295598:	�)
transformer_encoder_295600:	�)
transformer_encoder_295602:	� 
dense_295606:
��
dense_295608:	�!
dense_1_295612:	�
dense_1_295614:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dropout/StatefulPartitionedCall�,positional_embedding/StatefulPartitionedCall�+transformer_encoder/StatefulPartitionedCall�
,positional_embedding/StatefulPartitionedCallStatefulPartitionedCallxpositional_embedding_295571positional_embedding_295573positional_embedding_295575*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_positional_embedding_layer_call_and_return_conditional_losses_295082�
+transformer_encoder/StatefulPartitionedCallStatefulPartitionedCall5positional_embedding/StatefulPartitionedCall:output:0transformer_encoder_295578transformer_encoder_295580transformer_encoder_295582transformer_encoder_295584transformer_encoder_295586transformer_encoder_295588transformer_encoder_295590transformer_encoder_295592transformer_encoder_295594transformer_encoder_295596transformer_encoder_295598transformer_encoder_295600transformer_encoder_295602*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*/
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_transformer_encoder_layer_call_and_return_conditional_losses_295480�
(global_average_pooling1d/PartitionedCallPartitionedCall4transformer_encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_295018�
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_295606dense_295608*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_295219�
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_295323�
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_295612dense_1_295614*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_295243w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall-^positional_embedding/StatefulPartitionedCall,^transformer_encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : :
��: : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2\
,positional_embedding/StatefulPartitionedCall,positional_embedding/StatefulPartitionedCall2Z
+transformer_encoder/StatefulPartitionedCall+transformer_encoder/StatefulPartitionedCall:N J
+
_output_shapes
:���������

_user_specified_namex:&"
 
_output_shapes
:
��
��
�
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_296105
xQ
>positional_embedding_dense_2_tensordot_readvariableop_resource:	�K
<positional_embedding_dense_2_biasadd_readvariableop_resource:	�
positional_embedding_295987f
Ntransformer_encoder_multi_head_attention_einsum_einsum_readvariableop_resource:��h
Ptransformer_encoder_multi_head_attention_einsum_1_einsum_readvariableop_resource:��h
Ptransformer_encoder_multi_head_attention_einsum_2_einsum_readvariableop_resource:��h
Ptransformer_encoder_multi_head_attention_einsum_5_einsum_readvariableop_resource:��S
Dtransformer_encoder_multi_head_attention_add_readvariableop_resource:	�\
Mtransformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource:	�X
Itransformer_encoder_layer_normalization_batchnorm_readvariableop_resource:	�^
Ftransformer_encoder_conv1d_conv1d_expanddims_1_readvariableop_resource:��I
:transformer_encoder_conv1d_biasadd_readvariableop_resource:	�`
Htransformer_encoder_conv1d_1_conv1d_expanddims_1_readvariableop_resource:��K
<transformer_encoder_conv1d_1_biasadd_readvariableop_resource:	�^
Otransformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource:	�Z
Ktransformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource:	�8
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�5
'dense_1_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�3positional_embedding/dense_2/BiasAdd/ReadVariableOp�5positional_embedding/dense_2/Tensordot/ReadVariableOp�1transformer_encoder/conv1d/BiasAdd/ReadVariableOp�=transformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOp�3transformer_encoder/conv1d_1/BiasAdd/ReadVariableOp�?transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp�Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp�Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp�Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp�;transformer_encoder/multi_head_attention/add/ReadVariableOp�Etransformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOp�Gtransformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOp�Gtransformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOp�Gtransformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOpK
positional_embedding/ShapeShapex*
T0*
_output_shapes
:r
(positional_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*positional_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*positional_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"positional_embedding/strided_sliceStridedSlice#positional_embedding/Shape:output:01positional_embedding/strided_slice/stack:output:03positional_embedding/strided_slice/stack_1:output:03positional_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
5positional_embedding/dense_2/Tensordot/ReadVariableOpReadVariableOp>positional_embedding_dense_2_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0u
+positional_embedding/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:|
+positional_embedding/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ]
,positional_embedding/dense_2/Tensordot/ShapeShapex*
T0*
_output_shapes
:v
4positional_embedding/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
/positional_embedding/dense_2/Tensordot/GatherV2GatherV25positional_embedding/dense_2/Tensordot/Shape:output:04positional_embedding/dense_2/Tensordot/free:output:0=positional_embedding/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:x
6positional_embedding/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
1positional_embedding/dense_2/Tensordot/GatherV2_1GatherV25positional_embedding/dense_2/Tensordot/Shape:output:04positional_embedding/dense_2/Tensordot/axes:output:0?positional_embedding/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:v
,positional_embedding/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
+positional_embedding/dense_2/Tensordot/ProdProd8positional_embedding/dense_2/Tensordot/GatherV2:output:05positional_embedding/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: x
.positional_embedding/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
-positional_embedding/dense_2/Tensordot/Prod_1Prod:positional_embedding/dense_2/Tensordot/GatherV2_1:output:07positional_embedding/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: t
2positional_embedding/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
-positional_embedding/dense_2/Tensordot/concatConcatV24positional_embedding/dense_2/Tensordot/free:output:04positional_embedding/dense_2/Tensordot/axes:output:0;positional_embedding/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
,positional_embedding/dense_2/Tensordot/stackPack4positional_embedding/dense_2/Tensordot/Prod:output:06positional_embedding/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
0positional_embedding/dense_2/Tensordot/transpose	Transposex6positional_embedding/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:����������
.positional_embedding/dense_2/Tensordot/ReshapeReshape4positional_embedding/dense_2/Tensordot/transpose:y:05positional_embedding/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
-positional_embedding/dense_2/Tensordot/MatMulMatMul7positional_embedding/dense_2/Tensordot/Reshape:output:0=positional_embedding/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
.positional_embedding/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�v
4positional_embedding/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
/positional_embedding/dense_2/Tensordot/concat_1ConcatV28positional_embedding/dense_2/Tensordot/GatherV2:output:07positional_embedding/dense_2/Tensordot/Const_2:output:0=positional_embedding/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
&positional_embedding/dense_2/TensordotReshape7positional_embedding/dense_2/Tensordot/MatMul:product:08positional_embedding/dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
3positional_embedding/dense_2/BiasAdd/ReadVariableOpReadVariableOp<positional_embedding_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$positional_embedding/dense_2/BiasAddBiasAdd/positional_embedding/dense_2/Tensordot:output:0;positional_embedding/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������^
positional_embedding/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :�w
positional_embedding/CastCast$positional_embedding/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: a
positional_embedding/SqrtSqrtpositional_embedding/Cast:y:0*
T0*
_output_shapes
: �
positional_embedding/mulMul-positional_embedding/dense_2/BiasAdd:output:0positional_embedding/Sqrt:y:0*
T0*,
_output_shapes
:����������\
positional_embedding/ConstConst*
_output_shapes
: *
dtype0*
value	B : ^
positional_embedding/Const_1Const*
_output_shapes
: *
dtype0*
value	B :n
,positional_embedding/strided_slice_1/stack/0Const*
_output_shapes
: *
dtype0*
value	B : n
,positional_embedding/strided_slice_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : �
*positional_embedding/strided_slice_1/stackPack5positional_embedding/strided_slice_1/stack/0:output:0#positional_embedding/Const:output:05positional_embedding/strided_slice_1/stack/2:output:0*
N*
T0*
_output_shapes
:p
.positional_embedding/strided_slice_1/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : p
.positional_embedding/strided_slice_1/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : �
,positional_embedding/strided_slice_1/stack_1Pack7positional_embedding/strided_slice_1/stack_1/0:output:0+positional_embedding/strided_slice:output:07positional_embedding/strided_slice_1/stack_1/2:output:0*
N*
T0*
_output_shapes
:p
.positional_embedding/strided_slice_1/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :p
.positional_embedding/strided_slice_1/stack_2/2Const*
_output_shapes
: *
dtype0*
value	B :�
,positional_embedding/strided_slice_1/stack_2Pack7positional_embedding/strided_slice_1/stack_2/0:output:0%positional_embedding/Const_1:output:07positional_embedding/strided_slice_1/stack_2/2:output:0*
N*
T0*
_output_shapes
:�
$positional_embedding/strided_slice_1StridedSlicepositional_embedding_2959873positional_embedding/strided_slice_1/stack:output:05positional_embedding/strided_slice_1/stack_1:output:05positional_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:�*

begin_mask*
end_mask*
new_axis_mask�
positional_embedding/addAddV2positional_embedding/mul:z:0-positional_embedding/strided_slice_1:output:0*
T0*,
_output_shapes
:�����������
Etransformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOpReadVariableOpNtransformer_encoder_multi_head_attention_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
6transformer_encoder/multi_head_attention/einsum/EinsumEinsumpositional_embedding/add:z:0Mtransformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...NI,HIO->...NHO�
Gtransformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOpReadVariableOpPtransformer_encoder_multi_head_attention_einsum_1_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
8transformer_encoder/multi_head_attention/einsum_1/EinsumEinsumpositional_embedding/add:z:0Otransformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...MI,HIO->...MHO�
Gtransformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOpReadVariableOpPtransformer_encoder_multi_head_attention_einsum_2_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
8transformer_encoder/multi_head_attention/einsum_2/EinsumEinsumpositional_embedding/add:z:0Otransformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...MI,HIO->...MHOs
.transformer_encoder/multi_head_attention/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �C�
-transformer_encoder/multi_head_attention/SqrtSqrt7transformer_encoder/multi_head_attention/Const:output:0*
T0*
_output_shapes
: �
0transformer_encoder/multi_head_attention/truedivRealDiv?transformer_encoder/multi_head_attention/einsum/Einsum:output:01transformer_encoder/multi_head_attention/Sqrt:y:0*
T0*0
_output_shapes
:�����������
8transformer_encoder/multi_head_attention/einsum_3/EinsumEinsum4transformer_encoder/multi_head_attention/truediv:z:0Atransformer_encoder/multi_head_attention/einsum_1/Einsum:output:0*
N*
T0*/
_output_shapes
:���������*#
equation...NHO,...MHO->...HNM�
0transformer_encoder/multi_head_attention/SoftmaxSoftmaxAtransformer_encoder/multi_head_attention/einsum_3/Einsum:output:0*
T0*/
_output_shapes
:����������
;transformer_encoder/multi_head_attention/dropout_1/IdentityIdentity:transformer_encoder/multi_head_attention/Softmax:softmax:0*
T0*/
_output_shapes
:����������
8transformer_encoder/multi_head_attention/einsum_4/EinsumEinsumDtransformer_encoder/multi_head_attention/dropout_1/Identity:output:0Atransformer_encoder/multi_head_attention/einsum_2/Einsum:output:0*
N*
T0*0
_output_shapes
:����������*#
equation...HNM,...MHI->...NHI�
Gtransformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOpReadVariableOpPtransformer_encoder_multi_head_attention_einsum_5_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
8transformer_encoder/multi_head_attention/einsum_5/EinsumEinsumAtransformer_encoder/multi_head_attention/einsum_4/Einsum:output:0Otransformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������*
equation...NHI,HIO->...NO�
;transformer_encoder/multi_head_attention/add/ReadVariableOpReadVariableOpDtransformer_encoder_multi_head_attention_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,transformer_encoder/multi_head_attention/addAddV2Atransformer_encoder/multi_head_attention/einsum_5/Einsum:output:0Ctransformer_encoder/multi_head_attention/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
&transformer_encoder/dropout_2/IdentityIdentity0transformer_encoder/multi_head_attention/add:z:0*
T0*,
_output_shapes
:�����������
Ftransformer_encoder/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
4transformer_encoder/layer_normalization/moments/meanMean/transformer_encoder/dropout_2/Identity:output:0Otransformer_encoder/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
<transformer_encoder/layer_normalization/moments/StopGradientStopGradient=transformer_encoder/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:����������
Atransformer_encoder/layer_normalization/moments/SquaredDifferenceSquaredDifference/transformer_encoder/dropout_2/Identity:output:0Etransformer_encoder/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Jtransformer_encoder/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
8transformer_encoder/layer_normalization/moments/varianceMeanEtransformer_encoder/layer_normalization/moments/SquaredDifference:z:0Stransformer_encoder/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(|
7transformer_encoder/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
5transformer_encoder/layer_normalization/batchnorm/addAddV2Atransformer_encoder/layer_normalization/moments/variance:output:0@transformer_encoder/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
7transformer_encoder/layer_normalization/batchnorm/RsqrtRsqrt9transformer_encoder/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5transformer_encoder/layer_normalization/batchnorm/mulMul;transformer_encoder/layer_normalization/batchnorm/Rsqrt:y:0Ltransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
7transformer_encoder/layer_normalization/batchnorm/mul_1Mul/transformer_encoder/dropout_2/Identity:output:09transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
7transformer_encoder/layer_normalization/batchnorm/mul_2Mul=transformer_encoder/layer_normalization/moments/mean:output:09transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
@transformer_encoder/layer_normalization/batchnorm/ReadVariableOpReadVariableOpItransformer_encoder_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5transformer_encoder/layer_normalization/batchnorm/subSubHtransformer_encoder/layer_normalization/batchnorm/ReadVariableOp:value:0;transformer_encoder/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
7transformer_encoder/layer_normalization/batchnorm/add_1AddV2;transformer_encoder/layer_normalization/batchnorm/mul_1:z:09transformer_encoder/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
transformer_encoder/addAddV2;transformer_encoder/layer_normalization/batchnorm/add_1:z:0positional_embedding/add:z:0*
T0*,
_output_shapes
:����������{
0transformer_encoder/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
,transformer_encoder/conv1d/Conv1D/ExpandDims
ExpandDimstransformer_encoder/add:z:09transformer_encoder/conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
=transformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpFtransformer_encoder_conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0t
2transformer_encoder/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
.transformer_encoder/conv1d/Conv1D/ExpandDims_1
ExpandDimsEtransformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0;transformer_encoder/conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
!transformer_encoder/conv1d/Conv1DConv2D5transformer_encoder/conv1d/Conv1D/ExpandDims:output:07transformer_encoder/conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
)transformer_encoder/conv1d/Conv1D/SqueezeSqueeze*transformer_encoder/conv1d/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
1transformer_encoder/conv1d/BiasAdd/ReadVariableOpReadVariableOp:transformer_encoder_conv1d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"transformer_encoder/conv1d/BiasAddBiasAdd2transformer_encoder/conv1d/Conv1D/Squeeze:output:09transformer_encoder/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
transformer_encoder/conv1d/ReluRelu+transformer_encoder/conv1d/BiasAdd:output:0*
T0*,
_output_shapes
:�����������
&transformer_encoder/dropout_3/IdentityIdentity-transformer_encoder/conv1d/Relu:activations:0*
T0*,
_output_shapes
:����������}
2transformer_encoder/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
.transformer_encoder/conv1d_1/Conv1D/ExpandDims
ExpandDims/transformer_encoder/dropout_3/Identity:output:0;transformer_encoder/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
?transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpHtransformer_encoder_conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0v
4transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
0transformer_encoder/conv1d_1/Conv1D/ExpandDims_1
ExpandDimsGtransformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0=transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
#transformer_encoder/conv1d_1/Conv1DConv2D7transformer_encoder/conv1d_1/Conv1D/ExpandDims:output:09transformer_encoder/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
+transformer_encoder/conv1d_1/Conv1D/SqueezeSqueeze,transformer_encoder/conv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
3transformer_encoder/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp<transformer_encoder_conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$transformer_encoder/conv1d_1/BiasAddBiasAdd4transformer_encoder/conv1d_1/Conv1D/Squeeze:output:0;transformer_encoder/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Htransformer_encoder/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
6transformer_encoder/layer_normalization_1/moments/meanMean-transformer_encoder/conv1d_1/BiasAdd:output:0Qtransformer_encoder/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
>transformer_encoder/layer_normalization_1/moments/StopGradientStopGradient?transformer_encoder/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:����������
Ctransformer_encoder/layer_normalization_1/moments/SquaredDifferenceSquaredDifference-transformer_encoder/conv1d_1/BiasAdd:output:0Gtransformer_encoder/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Ltransformer_encoder/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
:transformer_encoder/layer_normalization_1/moments/varianceMeanGtransformer_encoder/layer_normalization_1/moments/SquaredDifference:z:0Utransformer_encoder/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(~
9transformer_encoder/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
7transformer_encoder/layer_normalization_1/batchnorm/addAddV2Ctransformer_encoder/layer_normalization_1/moments/variance:output:0Btransformer_encoder/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
9transformer_encoder/layer_normalization_1/batchnorm/RsqrtRsqrt;transformer_encoder/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
7transformer_encoder/layer_normalization_1/batchnorm/mulMul=transformer_encoder/layer_normalization_1/batchnorm/Rsqrt:y:0Ntransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
9transformer_encoder/layer_normalization_1/batchnorm/mul_1Mul-transformer_encoder/conv1d_1/BiasAdd:output:0;transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
9transformer_encoder/layer_normalization_1/batchnorm/mul_2Mul?transformer_encoder/layer_normalization_1/moments/mean:output:0;transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpKtransformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
7transformer_encoder/layer_normalization_1/batchnorm/subSubJtransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp:value:0=transformer_encoder/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
9transformer_encoder/layer_normalization_1/batchnorm/add_1AddV2=transformer_encoder/layer_normalization_1/batchnorm/mul_1:z:0;transformer_encoder/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
transformer_encoder/add_1AddV2transformer_encoder/add:z:0=transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*,
_output_shapes
:����������q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_average_pooling1d/MeanMeantransformer_encoder/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense/MatMulMatMul&global_average_pooling1d/Mean:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:����������i
dropout/IdentityIdentitydense/Relu:activations:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp4^positional_embedding/dense_2/BiasAdd/ReadVariableOp6^positional_embedding/dense_2/Tensordot/ReadVariableOp2^transformer_encoder/conv1d/BiasAdd/ReadVariableOp>^transformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOp4^transformer_encoder/conv1d_1/BiasAdd/ReadVariableOp@^transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpA^transformer_encoder/layer_normalization/batchnorm/ReadVariableOpE^transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpC^transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpG^transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp<^transformer_encoder/multi_head_attention/add/ReadVariableOpF^transformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOpH^transformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOpH^transformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOpH^transformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : :
��: : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2j
3positional_embedding/dense_2/BiasAdd/ReadVariableOp3positional_embedding/dense_2/BiasAdd/ReadVariableOp2n
5positional_embedding/dense_2/Tensordot/ReadVariableOp5positional_embedding/dense_2/Tensordot/ReadVariableOp2f
1transformer_encoder/conv1d/BiasAdd/ReadVariableOp1transformer_encoder/conv1d/BiasAdd/ReadVariableOp2~
=transformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOp=transformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOp2j
3transformer_encoder/conv1d_1/BiasAdd/ReadVariableOp3transformer_encoder/conv1d_1/BiasAdd/ReadVariableOp2�
?transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2�
@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp2�
Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpDtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp2�
Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpBtransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp2�
Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpFtransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp2z
;transformer_encoder/multi_head_attention/add/ReadVariableOp;transformer_encoder/multi_head_attention/add/ReadVariableOp2�
Etransformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOpEtransformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOp2�
Gtransformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOpGtransformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOp2�
Gtransformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOpGtransformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOp2�
Gtransformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOpGtransformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOp:N J
+
_output_shapes
:���������

_user_specified_namex:&"
 
_output_shapes
:
��
�4
�
P__inference_positional_embedding_layer_call_and_return_conditional_losses_296354
x<
)dense_2_tensordot_readvariableop_resource:	�6
'dense_2_biasadd_readvariableop_resource:	�
unknown
identity��dense_2/BiasAdd/ReadVariableOp� dense_2/Tensordot/ReadVariableOp6
ShapeShapex*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       H
dense_2/Tensordot/ShapeShapex*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_2/Tensordot/transpose	Transposex!dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:����������
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������d
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������I
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :�M
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 7
SqrtSqrtCast:y:0*
T0*
_output_shapes
: e
mulMuldense_2/BiasAdd:output:0Sqrt:y:0*
T0*,
_output_shapes
:����������G
ConstConst*
_output_shapes
: *
dtype0*
value	B : I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :Y
strided_slice_1/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_1/stackPack strided_slice_1/stack/0:output:0Const:output:0 strided_slice_1/stack/2:output:0*
N*
T0*
_output_shapes
:[
strided_slice_1/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_1/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_1/stack_1Pack"strided_slice_1/stack_1/0:output:0strided_slice:output:0"strided_slice_1/stack_1/2:output:0*
N*
T0*
_output_shapes
:[
strided_slice_1/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_1/stack_2/2Const*
_output_shapes
: *
dtype0*
value	B :�
strided_slice_1/stack_2Pack"strided_slice_1/stack_2/0:output:0Const_1:output:0"strided_slice_1/stack_2/2:output:0*
N*
T0*
_output_shapes
:�
strided_slice_1StridedSliceunknownstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:�*

begin_mask*
end_mask*
new_axis_maskf
addAddV2mul:z:0strided_slice_1:output:0*
T0*,
_output_shapes
:����������[
IdentityIdentityadd:z:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : :
��2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp:N J
+
_output_shapes
:���������

_user_specified_namex:&"
 
_output_shapes
:
��
�
�
4__inference_transformer_encoder_layer_call_fn_296447

inputs
unknown:��!
	unknown_0:��!
	unknown_1:��!
	unknown_2:��
	unknown_3:	�
	unknown_4:	�
	unknown_5:	�!
	unknown_6:��
	unknown_7:	�!
	unknown_8:��
	unknown_9:	�

unknown_10:	�

unknown_11:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*/
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_transformer_encoder_layer_call_and_return_conditional_losses_295480t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
A__inference_dense_layer_call_and_return_conditional_losses_295219

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
a
(__inference_dropout_layer_call_fn_296676

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_295323p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
5__inference_transformer_model_17_layer_call_fn_295706
input_1
unknown:	�
	unknown_0:	�
	unknown_1!
	unknown_2:��!
	unknown_3:��!
	unknown_4:��!
	unknown_5:��
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�!
	unknown_9:��

unknown_10:	�"

unknown_11:��

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:	�

unknown_18:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*5
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_295618o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : :
��: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1:&"
 
_output_shapes
:
��
��
�
!__inference__wrapped_model_295008
input_1f
Stransformer_model_17_positional_embedding_dense_2_tensordot_readvariableop_resource:	�`
Qtransformer_model_17_positional_embedding_dense_2_biasadd_readvariableop_resource:	�4
0transformer_model_17_positional_embedding_294890{
ctransformer_model_17_transformer_encoder_multi_head_attention_einsum_einsum_readvariableop_resource:��}
etransformer_model_17_transformer_encoder_multi_head_attention_einsum_1_einsum_readvariableop_resource:��}
etransformer_model_17_transformer_encoder_multi_head_attention_einsum_2_einsum_readvariableop_resource:��}
etransformer_model_17_transformer_encoder_multi_head_attention_einsum_5_einsum_readvariableop_resource:��h
Ytransformer_model_17_transformer_encoder_multi_head_attention_add_readvariableop_resource:	�q
btransformer_model_17_transformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource:	�m
^transformer_model_17_transformer_encoder_layer_normalization_batchnorm_readvariableop_resource:	�s
[transformer_model_17_transformer_encoder_conv1d_conv1d_expanddims_1_readvariableop_resource:��^
Otransformer_model_17_transformer_encoder_conv1d_biasadd_readvariableop_resource:	�u
]transformer_model_17_transformer_encoder_conv1d_1_conv1d_expanddims_1_readvariableop_resource:��`
Qtransformer_model_17_transformer_encoder_conv1d_1_biasadd_readvariableop_resource:	�s
dtransformer_model_17_transformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource:	�o
`transformer_model_17_transformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource:	�M
9transformer_model_17_dense_matmul_readvariableop_resource:
��I
:transformer_model_17_dense_biasadd_readvariableop_resource:	�N
;transformer_model_17_dense_1_matmul_readvariableop_resource:	�J
<transformer_model_17_dense_1_biasadd_readvariableop_resource:
identity��1transformer_model_17/dense/BiasAdd/ReadVariableOp�0transformer_model_17/dense/MatMul/ReadVariableOp�3transformer_model_17/dense_1/BiasAdd/ReadVariableOp�2transformer_model_17/dense_1/MatMul/ReadVariableOp�Htransformer_model_17/positional_embedding/dense_2/BiasAdd/ReadVariableOp�Jtransformer_model_17/positional_embedding/dense_2/Tensordot/ReadVariableOp�Ftransformer_model_17/transformer_encoder/conv1d/BiasAdd/ReadVariableOp�Rtransformer_model_17/transformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOp�Htransformer_model_17/transformer_encoder/conv1d_1/BiasAdd/ReadVariableOp�Ttransformer_model_17/transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�Utransformer_model_17/transformer_encoder/layer_normalization/batchnorm/ReadVariableOp�Ytransformer_model_17/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp�Wtransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp�[transformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp�Ptransformer_model_17/transformer_encoder/multi_head_attention/add/ReadVariableOp�Ztransformer_model_17/transformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOp�\transformer_model_17/transformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOp�\transformer_model_17/transformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOp�\transformer_model_17/transformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOpf
/transformer_model_17/positional_embedding/ShapeShapeinput_1*
T0*
_output_shapes
:�
=transformer_model_17/positional_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
?transformer_model_17/positional_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?transformer_model_17/positional_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7transformer_model_17/positional_embedding/strided_sliceStridedSlice8transformer_model_17/positional_embedding/Shape:output:0Ftransformer_model_17/positional_embedding/strided_slice/stack:output:0Htransformer_model_17/positional_embedding/strided_slice/stack_1:output:0Htransformer_model_17/positional_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Jtransformer_model_17/positional_embedding/dense_2/Tensordot/ReadVariableOpReadVariableOpStransformer_model_17_positional_embedding_dense_2_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0�
@transformer_model_17/positional_embedding/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:�
@transformer_model_17/positional_embedding/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       x
Atransformer_model_17/positional_embedding/dense_2/Tensordot/ShapeShapeinput_1*
T0*
_output_shapes
:�
Itransformer_model_17/positional_embedding/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_model_17/positional_embedding/dense_2/Tensordot/GatherV2GatherV2Jtransformer_model_17/positional_embedding/dense_2/Tensordot/Shape:output:0Itransformer_model_17/positional_embedding/dense_2/Tensordot/free:output:0Rtransformer_model_17/positional_embedding/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Ktransformer_model_17/positional_embedding/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Ftransformer_model_17/positional_embedding/dense_2/Tensordot/GatherV2_1GatherV2Jtransformer_model_17/positional_embedding/dense_2/Tensordot/Shape:output:0Itransformer_model_17/positional_embedding/dense_2/Tensordot/axes:output:0Ttransformer_model_17/positional_embedding/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:�
Atransformer_model_17/positional_embedding/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
@transformer_model_17/positional_embedding/dense_2/Tensordot/ProdProdMtransformer_model_17/positional_embedding/dense_2/Tensordot/GatherV2:output:0Jtransformer_model_17/positional_embedding/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: �
Ctransformer_model_17/positional_embedding/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
Btransformer_model_17/positional_embedding/dense_2/Tensordot/Prod_1ProdOtransformer_model_17/positional_embedding/dense_2/Tensordot/GatherV2_1:output:0Ltransformer_model_17/positional_embedding/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: �
Gtransformer_model_17/positional_embedding/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Btransformer_model_17/positional_embedding/dense_2/Tensordot/concatConcatV2Itransformer_model_17/positional_embedding/dense_2/Tensordot/free:output:0Itransformer_model_17/positional_embedding/dense_2/Tensordot/axes:output:0Ptransformer_model_17/positional_embedding/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
Atransformer_model_17/positional_embedding/dense_2/Tensordot/stackPackItransformer_model_17/positional_embedding/dense_2/Tensordot/Prod:output:0Ktransformer_model_17/positional_embedding/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
Etransformer_model_17/positional_embedding/dense_2/Tensordot/transpose	Transposeinput_1Ktransformer_model_17/positional_embedding/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:����������
Ctransformer_model_17/positional_embedding/dense_2/Tensordot/ReshapeReshapeItransformer_model_17/positional_embedding/dense_2/Tensordot/transpose:y:0Jtransformer_model_17/positional_embedding/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Btransformer_model_17/positional_embedding/dense_2/Tensordot/MatMulMatMulLtransformer_model_17/positional_embedding/dense_2/Tensordot/Reshape:output:0Rtransformer_model_17/positional_embedding/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Ctransformer_model_17/positional_embedding/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:��
Itransformer_model_17/positional_embedding/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Dtransformer_model_17/positional_embedding/dense_2/Tensordot/concat_1ConcatV2Mtransformer_model_17/positional_embedding/dense_2/Tensordot/GatherV2:output:0Ltransformer_model_17/positional_embedding/dense_2/Tensordot/Const_2:output:0Rtransformer_model_17/positional_embedding/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
;transformer_model_17/positional_embedding/dense_2/TensordotReshapeLtransformer_model_17/positional_embedding/dense_2/Tensordot/MatMul:product:0Mtransformer_model_17/positional_embedding/dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
Htransformer_model_17/positional_embedding/dense_2/BiasAdd/ReadVariableOpReadVariableOpQtransformer_model_17_positional_embedding_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9transformer_model_17/positional_embedding/dense_2/BiasAddBiasAddDtransformer_model_17/positional_embedding/dense_2/Tensordot:output:0Ptransformer_model_17/positional_embedding/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������s
0transformer_model_17/positional_embedding/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :��
.transformer_model_17/positional_embedding/CastCast9transformer_model_17/positional_embedding/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: �
.transformer_model_17/positional_embedding/SqrtSqrt2transformer_model_17/positional_embedding/Cast:y:0*
T0*
_output_shapes
: �
-transformer_model_17/positional_embedding/mulMulBtransformer_model_17/positional_embedding/dense_2/BiasAdd:output:02transformer_model_17/positional_embedding/Sqrt:y:0*
T0*,
_output_shapes
:����������q
/transformer_model_17/positional_embedding/ConstConst*
_output_shapes
: *
dtype0*
value	B : s
1transformer_model_17/positional_embedding/Const_1Const*
_output_shapes
: *
dtype0*
value	B :�
Atransformer_model_17/positional_embedding/strided_slice_1/stack/0Const*
_output_shapes
: *
dtype0*
value	B : �
Atransformer_model_17/positional_embedding/strided_slice_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : �
?transformer_model_17/positional_embedding/strided_slice_1/stackPackJtransformer_model_17/positional_embedding/strided_slice_1/stack/0:output:08transformer_model_17/positional_embedding/Const:output:0Jtransformer_model_17/positional_embedding/strided_slice_1/stack/2:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_model_17/positional_embedding/strided_slice_1/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : �
Ctransformer_model_17/positional_embedding/strided_slice_1/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : �
Atransformer_model_17/positional_embedding/strided_slice_1/stack_1PackLtransformer_model_17/positional_embedding/strided_slice_1/stack_1/0:output:0@transformer_model_17/positional_embedding/strided_slice:output:0Ltransformer_model_17/positional_embedding/strided_slice_1/stack_1/2:output:0*
N*
T0*
_output_shapes
:�
Ctransformer_model_17/positional_embedding/strided_slice_1/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :�
Ctransformer_model_17/positional_embedding/strided_slice_1/stack_2/2Const*
_output_shapes
: *
dtype0*
value	B :�
Atransformer_model_17/positional_embedding/strided_slice_1/stack_2PackLtransformer_model_17/positional_embedding/strided_slice_1/stack_2/0:output:0:transformer_model_17/positional_embedding/Const_1:output:0Ltransformer_model_17/positional_embedding/strided_slice_1/stack_2/2:output:0*
N*
T0*
_output_shapes
:�
9transformer_model_17/positional_embedding/strided_slice_1StridedSlice0transformer_model_17_positional_embedding_294890Htransformer_model_17/positional_embedding/strided_slice_1/stack:output:0Jtransformer_model_17/positional_embedding/strided_slice_1/stack_1:output:0Jtransformer_model_17/positional_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:�*

begin_mask*
end_mask*
new_axis_mask�
-transformer_model_17/positional_embedding/addAddV21transformer_model_17/positional_embedding/mul:z:0Btransformer_model_17/positional_embedding/strided_slice_1:output:0*
T0*,
_output_shapes
:�����������
Ztransformer_model_17/transformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOpReadVariableOpctransformer_model_17_transformer_encoder_multi_head_attention_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
Ktransformer_model_17/transformer_encoder/multi_head_attention/einsum/EinsumEinsum1transformer_model_17/positional_embedding/add:z:0btransformer_model_17/transformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...NI,HIO->...NHO�
\transformer_model_17/transformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOpReadVariableOpetransformer_model_17_transformer_encoder_multi_head_attention_einsum_1_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
Mtransformer_model_17/transformer_encoder/multi_head_attention/einsum_1/EinsumEinsum1transformer_model_17/positional_embedding/add:z:0dtransformer_model_17/transformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...MI,HIO->...MHO�
\transformer_model_17/transformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOpReadVariableOpetransformer_model_17_transformer_encoder_multi_head_attention_einsum_2_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
Mtransformer_model_17/transformer_encoder/multi_head_attention/einsum_2/EinsumEinsum1transformer_model_17/positional_embedding/add:z:0dtransformer_model_17/transformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...MI,HIO->...MHO�
Ctransformer_model_17/transformer_encoder/multi_head_attention/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �C�
Btransformer_model_17/transformer_encoder/multi_head_attention/SqrtSqrtLtransformer_model_17/transformer_encoder/multi_head_attention/Const:output:0*
T0*
_output_shapes
: �
Etransformer_model_17/transformer_encoder/multi_head_attention/truedivRealDivTtransformer_model_17/transformer_encoder/multi_head_attention/einsum/Einsum:output:0Ftransformer_model_17/transformer_encoder/multi_head_attention/Sqrt:y:0*
T0*0
_output_shapes
:�����������
Mtransformer_model_17/transformer_encoder/multi_head_attention/einsum_3/EinsumEinsumItransformer_model_17/transformer_encoder/multi_head_attention/truediv:z:0Vtransformer_model_17/transformer_encoder/multi_head_attention/einsum_1/Einsum:output:0*
N*
T0*/
_output_shapes
:���������*#
equation...NHO,...MHO->...HNM�
Etransformer_model_17/transformer_encoder/multi_head_attention/SoftmaxSoftmaxVtransformer_model_17/transformer_encoder/multi_head_attention/einsum_3/Einsum:output:0*
T0*/
_output_shapes
:����������
Ptransformer_model_17/transformer_encoder/multi_head_attention/dropout_1/IdentityIdentityOtransformer_model_17/transformer_encoder/multi_head_attention/Softmax:softmax:0*
T0*/
_output_shapes
:����������
Mtransformer_model_17/transformer_encoder/multi_head_attention/einsum_4/EinsumEinsumYtransformer_model_17/transformer_encoder/multi_head_attention/dropout_1/Identity:output:0Vtransformer_model_17/transformer_encoder/multi_head_attention/einsum_2/Einsum:output:0*
N*
T0*0
_output_shapes
:����������*#
equation...HNM,...MHI->...NHI�
\transformer_model_17/transformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOpReadVariableOpetransformer_model_17_transformer_encoder_multi_head_attention_einsum_5_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
Mtransformer_model_17/transformer_encoder/multi_head_attention/einsum_5/EinsumEinsumVtransformer_model_17/transformer_encoder/multi_head_attention/einsum_4/Einsum:output:0dtransformer_model_17/transformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������*
equation...NHI,HIO->...NO�
Ptransformer_model_17/transformer_encoder/multi_head_attention/add/ReadVariableOpReadVariableOpYtransformer_model_17_transformer_encoder_multi_head_attention_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Atransformer_model_17/transformer_encoder/multi_head_attention/addAddV2Vtransformer_model_17/transformer_encoder/multi_head_attention/einsum_5/Einsum:output:0Xtransformer_model_17/transformer_encoder/multi_head_attention/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
;transformer_model_17/transformer_encoder/dropout_2/IdentityIdentityEtransformer_model_17/transformer_encoder/multi_head_attention/add:z:0*
T0*,
_output_shapes
:�����������
[transformer_model_17/transformer_encoder/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Itransformer_model_17/transformer_encoder/layer_normalization/moments/meanMeanDtransformer_model_17/transformer_encoder/dropout_2/Identity:output:0dtransformer_model_17/transformer_encoder/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Qtransformer_model_17/transformer_encoder/layer_normalization/moments/StopGradientStopGradientRtransformer_model_17/transformer_encoder/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:����������
Vtransformer_model_17/transformer_encoder/layer_normalization/moments/SquaredDifferenceSquaredDifferenceDtransformer_model_17/transformer_encoder/dropout_2/Identity:output:0Ztransformer_model_17/transformer_encoder/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
_transformer_model_17/transformer_encoder/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Mtransformer_model_17/transformer_encoder/layer_normalization/moments/varianceMeanZtransformer_model_17/transformer_encoder/layer_normalization/moments/SquaredDifference:z:0htransformer_model_17/transformer_encoder/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Ltransformer_model_17/transformer_encoder/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
Jtransformer_model_17/transformer_encoder/layer_normalization/batchnorm/addAddV2Vtransformer_model_17/transformer_encoder/layer_normalization/moments/variance:output:0Utransformer_model_17/transformer_encoder/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
Ltransformer_model_17/transformer_encoder/layer_normalization/batchnorm/RsqrtRsqrtNtransformer_model_17/transformer_encoder/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Ytransformer_model_17/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpbtransformer_model_17_transformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Jtransformer_model_17/transformer_encoder/layer_normalization/batchnorm/mulMulPtransformer_model_17/transformer_encoder/layer_normalization/batchnorm/Rsqrt:y:0atransformer_model_17/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Ltransformer_model_17/transformer_encoder/layer_normalization/batchnorm/mul_1MulDtransformer_model_17/transformer_encoder/dropout_2/Identity:output:0Ntransformer_model_17/transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Ltransformer_model_17/transformer_encoder/layer_normalization/batchnorm/mul_2MulRtransformer_model_17/transformer_encoder/layer_normalization/moments/mean:output:0Ntransformer_model_17/transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Utransformer_model_17/transformer_encoder/layer_normalization/batchnorm/ReadVariableOpReadVariableOp^transformer_model_17_transformer_encoder_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Jtransformer_model_17/transformer_encoder/layer_normalization/batchnorm/subSub]transformer_model_17/transformer_encoder/layer_normalization/batchnorm/ReadVariableOp:value:0Ptransformer_model_17/transformer_encoder/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
Ltransformer_model_17/transformer_encoder/layer_normalization/batchnorm/add_1AddV2Ptransformer_model_17/transformer_encoder/layer_normalization/batchnorm/mul_1:z:0Ntransformer_model_17/transformer_encoder/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
,transformer_model_17/transformer_encoder/addAddV2Ptransformer_model_17/transformer_encoder/layer_normalization/batchnorm/add_1:z:01transformer_model_17/positional_embedding/add:z:0*
T0*,
_output_shapes
:�����������
Etransformer_model_17/transformer_encoder/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Atransformer_model_17/transformer_encoder/conv1d/Conv1D/ExpandDims
ExpandDims0transformer_model_17/transformer_encoder/add:z:0Ntransformer_model_17/transformer_encoder/conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
Rtransformer_model_17/transformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp[transformer_model_17_transformer_encoder_conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0�
Gtransformer_model_17/transformer_encoder/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Ctransformer_model_17/transformer_encoder/conv1d/Conv1D/ExpandDims_1
ExpandDimsZtransformer_model_17/transformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0Ptransformer_model_17/transformer_encoder/conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
6transformer_model_17/transformer_encoder/conv1d/Conv1DConv2DJtransformer_model_17/transformer_encoder/conv1d/Conv1D/ExpandDims:output:0Ltransformer_model_17/transformer_encoder/conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
>transformer_model_17/transformer_encoder/conv1d/Conv1D/SqueezeSqueeze?transformer_model_17/transformer_encoder/conv1d/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
Ftransformer_model_17/transformer_encoder/conv1d/BiasAdd/ReadVariableOpReadVariableOpOtransformer_model_17_transformer_encoder_conv1d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
7transformer_model_17/transformer_encoder/conv1d/BiasAddBiasAddGtransformer_model_17/transformer_encoder/conv1d/Conv1D/Squeeze:output:0Ntransformer_model_17/transformer_encoder/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4transformer_model_17/transformer_encoder/conv1d/ReluRelu@transformer_model_17/transformer_encoder/conv1d/BiasAdd:output:0*
T0*,
_output_shapes
:�����������
;transformer_model_17/transformer_encoder/dropout_3/IdentityIdentityBtransformer_model_17/transformer_encoder/conv1d/Relu:activations:0*
T0*,
_output_shapes
:�����������
Gtransformer_model_17/transformer_encoder/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Ctransformer_model_17/transformer_encoder/conv1d_1/Conv1D/ExpandDims
ExpandDimsDtransformer_model_17/transformer_encoder/dropout_3/Identity:output:0Ptransformer_model_17/transformer_encoder/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
Ttransformer_model_17/transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp]transformer_model_17_transformer_encoder_conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0�
Itransformer_model_17/transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
Etransformer_model_17/transformer_encoder/conv1d_1/Conv1D/ExpandDims_1
ExpandDims\transformer_model_17/transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0Rtransformer_model_17/transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
8transformer_model_17/transformer_encoder/conv1d_1/Conv1DConv2DLtransformer_model_17/transformer_encoder/conv1d_1/Conv1D/ExpandDims:output:0Ntransformer_model_17/transformer_encoder/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
@transformer_model_17/transformer_encoder/conv1d_1/Conv1D/SqueezeSqueezeAtransformer_model_17/transformer_encoder/conv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
Htransformer_model_17/transformer_encoder/conv1d_1/BiasAdd/ReadVariableOpReadVariableOpQtransformer_model_17_transformer_encoder_conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9transformer_model_17/transformer_encoder/conv1d_1/BiasAddBiasAddItransformer_model_17/transformer_encoder/conv1d_1/Conv1D/Squeeze:output:0Ptransformer_model_17/transformer_encoder/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
]transformer_model_17/transformer_encoder/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Ktransformer_model_17/transformer_encoder/layer_normalization_1/moments/meanMeanBtransformer_model_17/transformer_encoder/conv1d_1/BiasAdd:output:0ftransformer_model_17/transformer_encoder/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Stransformer_model_17/transformer_encoder/layer_normalization_1/moments/StopGradientStopGradientTtransformer_model_17/transformer_encoder/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:����������
Xtransformer_model_17/transformer_encoder/layer_normalization_1/moments/SquaredDifferenceSquaredDifferenceBtransformer_model_17/transformer_encoder/conv1d_1/BiasAdd:output:0\transformer_model_17/transformer_encoder/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
atransformer_model_17/transformer_encoder/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Otransformer_model_17/transformer_encoder/layer_normalization_1/moments/varianceMean\transformer_model_17/transformer_encoder/layer_normalization_1/moments/SquaredDifference:z:0jtransformer_model_17/transformer_encoder/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Ntransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
Ltransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/addAddV2Xtransformer_model_17/transformer_encoder/layer_normalization_1/moments/variance:output:0Wtransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
Ntransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/RsqrtRsqrtPtransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
[transformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpdtransformer_model_17_transformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ltransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/mulMulRtransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/Rsqrt:y:0ctransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Ntransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/mul_1MulBtransformer_model_17/transformer_encoder/conv1d_1/BiasAdd:output:0Ptransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Ntransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/mul_2MulTtransformer_model_17/transformer_encoder/layer_normalization_1/moments/mean:output:0Ptransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Wtransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp`transformer_model_17_transformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ltransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/subSub_transformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp:value:0Rtransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
Ntransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/add_1AddV2Rtransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/mul_1:z:0Ptransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
.transformer_model_17/transformer_encoder/add_1AddV20transformer_model_17/transformer_encoder/add:z:0Rtransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
Dtransformer_model_17/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
2transformer_model_17/global_average_pooling1d/MeanMean2transformer_model_17/transformer_encoder/add_1:z:0Mtransformer_model_17/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
0transformer_model_17/dense/MatMul/ReadVariableOpReadVariableOp9transformer_model_17_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
!transformer_model_17/dense/MatMulMatMul;transformer_model_17/global_average_pooling1d/Mean:output:08transformer_model_17/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1transformer_model_17/dense/BiasAdd/ReadVariableOpReadVariableOp:transformer_model_17_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"transformer_model_17/dense/BiasAddBiasAdd+transformer_model_17/dense/MatMul:product:09transformer_model_17/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
transformer_model_17/dense/ReluRelu+transformer_model_17/dense/BiasAdd:output:0*
T0*(
_output_shapes
:�����������
%transformer_model_17/dropout/IdentityIdentity-transformer_model_17/dense/Relu:activations:0*
T0*(
_output_shapes
:�����������
2transformer_model_17/dense_1/MatMul/ReadVariableOpReadVariableOp;transformer_model_17_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
#transformer_model_17/dense_1/MatMulMatMul.transformer_model_17/dropout/Identity:output:0:transformer_model_17/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
3transformer_model_17/dense_1/BiasAdd/ReadVariableOpReadVariableOp<transformer_model_17_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
$transformer_model_17/dense_1/BiasAddBiasAdd-transformer_model_17/dense_1/MatMul:product:0;transformer_model_17/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$transformer_model_17/dense_1/SoftmaxSoftmax-transformer_model_17/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������}
IdentityIdentity.transformer_model_17/dense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp2^transformer_model_17/dense/BiasAdd/ReadVariableOp1^transformer_model_17/dense/MatMul/ReadVariableOp4^transformer_model_17/dense_1/BiasAdd/ReadVariableOp3^transformer_model_17/dense_1/MatMul/ReadVariableOpI^transformer_model_17/positional_embedding/dense_2/BiasAdd/ReadVariableOpK^transformer_model_17/positional_embedding/dense_2/Tensordot/ReadVariableOpG^transformer_model_17/transformer_encoder/conv1d/BiasAdd/ReadVariableOpS^transformer_model_17/transformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOpI^transformer_model_17/transformer_encoder/conv1d_1/BiasAdd/ReadVariableOpU^transformer_model_17/transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpV^transformer_model_17/transformer_encoder/layer_normalization/batchnorm/ReadVariableOpZ^transformer_model_17/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpX^transformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp\^transformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpQ^transformer_model_17/transformer_encoder/multi_head_attention/add/ReadVariableOp[^transformer_model_17/transformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOp]^transformer_model_17/transformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOp]^transformer_model_17/transformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOp]^transformer_model_17/transformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : :
��: : : : : : : : : : : : : : : : : 2f
1transformer_model_17/dense/BiasAdd/ReadVariableOp1transformer_model_17/dense/BiasAdd/ReadVariableOp2d
0transformer_model_17/dense/MatMul/ReadVariableOp0transformer_model_17/dense/MatMul/ReadVariableOp2j
3transformer_model_17/dense_1/BiasAdd/ReadVariableOp3transformer_model_17/dense_1/BiasAdd/ReadVariableOp2h
2transformer_model_17/dense_1/MatMul/ReadVariableOp2transformer_model_17/dense_1/MatMul/ReadVariableOp2�
Htransformer_model_17/positional_embedding/dense_2/BiasAdd/ReadVariableOpHtransformer_model_17/positional_embedding/dense_2/BiasAdd/ReadVariableOp2�
Jtransformer_model_17/positional_embedding/dense_2/Tensordot/ReadVariableOpJtransformer_model_17/positional_embedding/dense_2/Tensordot/ReadVariableOp2�
Ftransformer_model_17/transformer_encoder/conv1d/BiasAdd/ReadVariableOpFtransformer_model_17/transformer_encoder/conv1d/BiasAdd/ReadVariableOp2�
Rtransformer_model_17/transformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOpRtransformer_model_17/transformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOp2�
Htransformer_model_17/transformer_encoder/conv1d_1/BiasAdd/ReadVariableOpHtransformer_model_17/transformer_encoder/conv1d_1/BiasAdd/ReadVariableOp2�
Ttransformer_model_17/transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpTtransformer_model_17/transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2�
Utransformer_model_17/transformer_encoder/layer_normalization/batchnorm/ReadVariableOpUtransformer_model_17/transformer_encoder/layer_normalization/batchnorm/ReadVariableOp2�
Ytransformer_model_17/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpYtransformer_model_17/transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp2�
Wtransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpWtransformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp2�
[transformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp[transformer_model_17/transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp2�
Ptransformer_model_17/transformer_encoder/multi_head_attention/add/ReadVariableOpPtransformer_model_17/transformer_encoder/multi_head_attention/add/ReadVariableOp2�
Ztransformer_model_17/transformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOpZtransformer_model_17/transformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOp2�
\transformer_model_17/transformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOp\transformer_model_17/transformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOp2�
\transformer_model_17/transformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOp\transformer_model_17/transformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOp2�
\transformer_model_17/transformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOp\transformer_model_17/transformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOp:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1:&"
 
_output_shapes
:
��
�
�
5__inference_transformer_model_17_layer_call_fn_295293
input_1
unknown:	�
	unknown_0:	�
	unknown_1!
	unknown_2:��!
	unknown_3:��!
	unknown_4:��!
	unknown_5:��
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�!
	unknown_9:��

unknown_10:	�"

unknown_11:��

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:	�

unknown_18:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*5
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_295250o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : :
��: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1:&"
 
_output_shapes
:
��
�
a
C__inference_dropout_layer_call_and_return_conditional_losses_296681

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:����������\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
b
C__inference_dropout_layer_call_and_return_conditional_losses_295323

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:����������p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:����������j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:����������Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�.
__inference__traced_save_296921
file_prefixW
Ssavev2_transformer_model_17_positional_embedding_dense_2_kernel_read_readvariableopU
Qsavev2_transformer_model_17_positional_embedding_dense_2_bias_read_readvariableopi
esavev2_transformer_model_17_transformer_encoder_multi_head_attention_query_kernel_read_readvariableopg
csavev2_transformer_model_17_transformer_encoder_multi_head_attention_key_kernel_read_readvariableopi
esavev2_transformer_model_17_transformer_encoder_multi_head_attention_value_kernel_read_readvariableopn
jsavev2_transformer_model_17_transformer_encoder_multi_head_attention_projection_kernel_read_readvariableopl
hsavev2_transformer_model_17_transformer_encoder_multi_head_attention_projection_bias_read_readvariableopa
]savev2_transformer_model_17_transformer_encoder_layer_normalization_gamma_read_readvariableop`
\savev2_transformer_model_17_transformer_encoder_layer_normalization_beta_read_readvariableopU
Qsavev2_transformer_model_17_transformer_encoder_conv1d_kernel_read_readvariableopS
Osavev2_transformer_model_17_transformer_encoder_conv1d_bias_read_readvariableopW
Ssavev2_transformer_model_17_transformer_encoder_conv1d_1_kernel_read_readvariableopU
Qsavev2_transformer_model_17_transformer_encoder_conv1d_1_bias_read_readvariableopc
_savev2_transformer_model_17_transformer_encoder_layer_normalization_1_gamma_read_readvariableopb
^savev2_transformer_model_17_transformer_encoder_layer_normalization_1_beta_read_readvariableop@
<savev2_transformer_model_17_dense_kernel_read_readvariableop>
:savev2_transformer_model_17_dense_bias_read_readvariableopB
>savev2_transformer_model_17_dense_1_kernel_read_readvariableop@
<savev2_transformer_model_17_dense_1_bias_read_readvariableop%
!savev2_beta_1_read_readvariableop%
!savev2_beta_2_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop(
$savev2_adam_iter_read_readvariableop	&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop^
Zsavev2_adam_transformer_model_17_positional_embedding_dense_2_kernel_m_read_readvariableop\
Xsavev2_adam_transformer_model_17_positional_embedding_dense_2_bias_m_read_readvariableopp
lsavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_query_kernel_m_read_readvariableopn
jsavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_key_kernel_m_read_readvariableopp
lsavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_value_kernel_m_read_readvariableopu
qsavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_projection_kernel_m_read_readvariableops
osavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_projection_bias_m_read_readvariableoph
dsavev2_adam_transformer_model_17_transformer_encoder_layer_normalization_gamma_m_read_readvariableopg
csavev2_adam_transformer_model_17_transformer_encoder_layer_normalization_beta_m_read_readvariableop\
Xsavev2_adam_transformer_model_17_transformer_encoder_conv1d_kernel_m_read_readvariableopZ
Vsavev2_adam_transformer_model_17_transformer_encoder_conv1d_bias_m_read_readvariableop^
Zsavev2_adam_transformer_model_17_transformer_encoder_conv1d_1_kernel_m_read_readvariableop\
Xsavev2_adam_transformer_model_17_transformer_encoder_conv1d_1_bias_m_read_readvariableopj
fsavev2_adam_transformer_model_17_transformer_encoder_layer_normalization_1_gamma_m_read_readvariableopi
esavev2_adam_transformer_model_17_transformer_encoder_layer_normalization_1_beta_m_read_readvariableopG
Csavev2_adam_transformer_model_17_dense_kernel_m_read_readvariableopE
Asavev2_adam_transformer_model_17_dense_bias_m_read_readvariableopI
Esavev2_adam_transformer_model_17_dense_1_kernel_m_read_readvariableopG
Csavev2_adam_transformer_model_17_dense_1_bias_m_read_readvariableop^
Zsavev2_adam_transformer_model_17_positional_embedding_dense_2_kernel_v_read_readvariableop\
Xsavev2_adam_transformer_model_17_positional_embedding_dense_2_bias_v_read_readvariableopp
lsavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_query_kernel_v_read_readvariableopn
jsavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_key_kernel_v_read_readvariableopp
lsavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_value_kernel_v_read_readvariableopu
qsavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_projection_kernel_v_read_readvariableops
osavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_projection_bias_v_read_readvariableoph
dsavev2_adam_transformer_model_17_transformer_encoder_layer_normalization_gamma_v_read_readvariableopg
csavev2_adam_transformer_model_17_transformer_encoder_layer_normalization_beta_v_read_readvariableop\
Xsavev2_adam_transformer_model_17_transformer_encoder_conv1d_kernel_v_read_readvariableopZ
Vsavev2_adam_transformer_model_17_transformer_encoder_conv1d_bias_v_read_readvariableop^
Zsavev2_adam_transformer_model_17_transformer_encoder_conv1d_1_kernel_v_read_readvariableop\
Xsavev2_adam_transformer_model_17_transformer_encoder_conv1d_1_bias_v_read_readvariableopj
fsavev2_adam_transformer_model_17_transformer_encoder_layer_normalization_1_gamma_v_read_readvariableopi
esavev2_adam_transformer_model_17_transformer_encoder_layer_normalization_1_beta_v_read_readvariableopG
Csavev2_adam_transformer_model_17_dense_kernel_v_read_readvariableopE
Asavev2_adam_transformer_model_17_dense_bias_v_read_readvariableopI
Esavev2_adam_transformer_model_17_dense_1_kernel_v_read_readvariableopG
Csavev2_adam_transformer_model_17_dense_1_bias_v_read_readvariableop
savev2_const_1

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*�
value�B�EB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*�
value�B�EB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �-
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Ssavev2_transformer_model_17_positional_embedding_dense_2_kernel_read_readvariableopQsavev2_transformer_model_17_positional_embedding_dense_2_bias_read_readvariableopesavev2_transformer_model_17_transformer_encoder_multi_head_attention_query_kernel_read_readvariableopcsavev2_transformer_model_17_transformer_encoder_multi_head_attention_key_kernel_read_readvariableopesavev2_transformer_model_17_transformer_encoder_multi_head_attention_value_kernel_read_readvariableopjsavev2_transformer_model_17_transformer_encoder_multi_head_attention_projection_kernel_read_readvariableophsavev2_transformer_model_17_transformer_encoder_multi_head_attention_projection_bias_read_readvariableop]savev2_transformer_model_17_transformer_encoder_layer_normalization_gamma_read_readvariableop\savev2_transformer_model_17_transformer_encoder_layer_normalization_beta_read_readvariableopQsavev2_transformer_model_17_transformer_encoder_conv1d_kernel_read_readvariableopOsavev2_transformer_model_17_transformer_encoder_conv1d_bias_read_readvariableopSsavev2_transformer_model_17_transformer_encoder_conv1d_1_kernel_read_readvariableopQsavev2_transformer_model_17_transformer_encoder_conv1d_1_bias_read_readvariableop_savev2_transformer_model_17_transformer_encoder_layer_normalization_1_gamma_read_readvariableop^savev2_transformer_model_17_transformer_encoder_layer_normalization_1_beta_read_readvariableop<savev2_transformer_model_17_dense_kernel_read_readvariableop:savev2_transformer_model_17_dense_bias_read_readvariableop>savev2_transformer_model_17_dense_1_kernel_read_readvariableop<savev2_transformer_model_17_dense_1_bias_read_readvariableop!savev2_beta_1_read_readvariableop!savev2_beta_2_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop$savev2_adam_iter_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopZsavev2_adam_transformer_model_17_positional_embedding_dense_2_kernel_m_read_readvariableopXsavev2_adam_transformer_model_17_positional_embedding_dense_2_bias_m_read_readvariableoplsavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_query_kernel_m_read_readvariableopjsavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_key_kernel_m_read_readvariableoplsavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_value_kernel_m_read_readvariableopqsavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_projection_kernel_m_read_readvariableoposavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_projection_bias_m_read_readvariableopdsavev2_adam_transformer_model_17_transformer_encoder_layer_normalization_gamma_m_read_readvariableopcsavev2_adam_transformer_model_17_transformer_encoder_layer_normalization_beta_m_read_readvariableopXsavev2_adam_transformer_model_17_transformer_encoder_conv1d_kernel_m_read_readvariableopVsavev2_adam_transformer_model_17_transformer_encoder_conv1d_bias_m_read_readvariableopZsavev2_adam_transformer_model_17_transformer_encoder_conv1d_1_kernel_m_read_readvariableopXsavev2_adam_transformer_model_17_transformer_encoder_conv1d_1_bias_m_read_readvariableopfsavev2_adam_transformer_model_17_transformer_encoder_layer_normalization_1_gamma_m_read_readvariableopesavev2_adam_transformer_model_17_transformer_encoder_layer_normalization_1_beta_m_read_readvariableopCsavev2_adam_transformer_model_17_dense_kernel_m_read_readvariableopAsavev2_adam_transformer_model_17_dense_bias_m_read_readvariableopEsavev2_adam_transformer_model_17_dense_1_kernel_m_read_readvariableopCsavev2_adam_transformer_model_17_dense_1_bias_m_read_readvariableopZsavev2_adam_transformer_model_17_positional_embedding_dense_2_kernel_v_read_readvariableopXsavev2_adam_transformer_model_17_positional_embedding_dense_2_bias_v_read_readvariableoplsavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_query_kernel_v_read_readvariableopjsavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_key_kernel_v_read_readvariableoplsavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_value_kernel_v_read_readvariableopqsavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_projection_kernel_v_read_readvariableoposavev2_adam_transformer_model_17_transformer_encoder_multi_head_attention_projection_bias_v_read_readvariableopdsavev2_adam_transformer_model_17_transformer_encoder_layer_normalization_gamma_v_read_readvariableopcsavev2_adam_transformer_model_17_transformer_encoder_layer_normalization_beta_v_read_readvariableopXsavev2_adam_transformer_model_17_transformer_encoder_conv1d_kernel_v_read_readvariableopVsavev2_adam_transformer_model_17_transformer_encoder_conv1d_bias_v_read_readvariableopZsavev2_adam_transformer_model_17_transformer_encoder_conv1d_1_kernel_v_read_readvariableopXsavev2_adam_transformer_model_17_transformer_encoder_conv1d_1_bias_v_read_readvariableopfsavev2_adam_transformer_model_17_transformer_encoder_layer_normalization_1_gamma_v_read_readvariableopesavev2_adam_transformer_model_17_transformer_encoder_layer_normalization_1_beta_v_read_readvariableopCsavev2_adam_transformer_model_17_dense_kernel_v_read_readvariableopAsavev2_adam_transformer_model_17_dense_bias_v_read_readvariableopEsavev2_adam_transformer_model_17_dense_1_kernel_v_read_readvariableopCsavev2_adam_transformer_model_17_dense_1_bias_v_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *S
dtypesI
G2E	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�:�:��:��:��:��:�:�:�:��:�:��:�:�:�:
��:�:	�:: : : : : : : : : : : :	�:�:��:��:��:��:�:�:�:��:�:��:�:�:�:
��:�:	�::	�:�:��:��:��:��:�:�:�:��:�:��:�:�:�:
��:�:	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�:!

_output_shapes	
:�:*&
$
_output_shapes
:��:*&
$
_output_shapes
:��:*&
$
_output_shapes
:��:*&
$
_output_shapes
:��:!

_output_shapes	
:�:!

_output_shapes	
:�:!	

_output_shapes	
:�:*
&
$
_output_shapes
:��:!

_output_shapes	
:�:*&
$
_output_shapes
:��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�:! 

_output_shapes	
:�:*!&
$
_output_shapes
:��:*"&
$
_output_shapes
:��:*#&
$
_output_shapes
:��:*$&
$
_output_shapes
:��:!%

_output_shapes	
:�:!&

_output_shapes	
:�:!'

_output_shapes	
:�:*(&
$
_output_shapes
:��:!)

_output_shapes	
:�:**&
$
_output_shapes
:��:!+

_output_shapes	
:�:!,

_output_shapes	
:�:!-

_output_shapes	
:�:&."
 
_output_shapes
:
��:!/

_output_shapes	
:�:%0!

_output_shapes
:	�: 1

_output_shapes
::%2!

_output_shapes
:	�:!3

_output_shapes	
:�:*4&
$
_output_shapes
:��:*5&
$
_output_shapes
:��:*6&
$
_output_shapes
:��:*7&
$
_output_shapes
:��:!8

_output_shapes	
:�:!9

_output_shapes	
:�:!:

_output_shapes	
:�:*;&
$
_output_shapes
:��:!<

_output_shapes	
:�:*=&
$
_output_shapes
:��:!>

_output_shapes	
:�:!?

_output_shapes	
:�:!@

_output_shapes	
:�:&A"
 
_output_shapes
:
��:!B

_output_shapes	
:�:%C!

_output_shapes
:	�: D

_output_shapes
::E

_output_shapes
: 
��
�
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_296289
xQ
>positional_embedding_dense_2_tensordot_readvariableop_resource:	�K
<positional_embedding_dense_2_biasadd_readvariableop_resource:	�
positional_embedding_296143f
Ntransformer_encoder_multi_head_attention_einsum_einsum_readvariableop_resource:��h
Ptransformer_encoder_multi_head_attention_einsum_1_einsum_readvariableop_resource:��h
Ptransformer_encoder_multi_head_attention_einsum_2_einsum_readvariableop_resource:��h
Ptransformer_encoder_multi_head_attention_einsum_5_einsum_readvariableop_resource:��S
Dtransformer_encoder_multi_head_attention_add_readvariableop_resource:	�\
Mtransformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource:	�X
Itransformer_encoder_layer_normalization_batchnorm_readvariableop_resource:	�^
Ftransformer_encoder_conv1d_conv1d_expanddims_1_readvariableop_resource:��I
:transformer_encoder_conv1d_biasadd_readvariableop_resource:	�`
Htransformer_encoder_conv1d_1_conv1d_expanddims_1_readvariableop_resource:��K
<transformer_encoder_conv1d_1_biasadd_readvariableop_resource:	�^
Otransformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource:	�Z
Ktransformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource:	�8
$dense_matmul_readvariableop_resource:
��4
%dense_biasadd_readvariableop_resource:	�9
&dense_1_matmul_readvariableop_resource:	�5
'dense_1_biasadd_readvariableop_resource:
identity��dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�3positional_embedding/dense_2/BiasAdd/ReadVariableOp�5positional_embedding/dense_2/Tensordot/ReadVariableOp�1transformer_encoder/conv1d/BiasAdd/ReadVariableOp�=transformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOp�3transformer_encoder/conv1d_1/BiasAdd/ReadVariableOp�?transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp�Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp�Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp�Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp�;transformer_encoder/multi_head_attention/add/ReadVariableOp�Etransformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOp�Gtransformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOp�Gtransformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOp�Gtransformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOpK
positional_embedding/ShapeShapex*
T0*
_output_shapes
:r
(positional_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*positional_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*positional_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
"positional_embedding/strided_sliceStridedSlice#positional_embedding/Shape:output:01positional_embedding/strided_slice/stack:output:03positional_embedding/strided_slice/stack_1:output:03positional_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
5positional_embedding/dense_2/Tensordot/ReadVariableOpReadVariableOp>positional_embedding_dense_2_tensordot_readvariableop_resource*
_output_shapes
:	�*
dtype0u
+positional_embedding/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:|
+positional_embedding/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ]
,positional_embedding/dense_2/Tensordot/ShapeShapex*
T0*
_output_shapes
:v
4positional_embedding/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
/positional_embedding/dense_2/Tensordot/GatherV2GatherV25positional_embedding/dense_2/Tensordot/Shape:output:04positional_embedding/dense_2/Tensordot/free:output:0=positional_embedding/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:x
6positional_embedding/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
1positional_embedding/dense_2/Tensordot/GatherV2_1GatherV25positional_embedding/dense_2/Tensordot/Shape:output:04positional_embedding/dense_2/Tensordot/axes:output:0?positional_embedding/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:v
,positional_embedding/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
+positional_embedding/dense_2/Tensordot/ProdProd8positional_embedding/dense_2/Tensordot/GatherV2:output:05positional_embedding/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: x
.positional_embedding/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
-positional_embedding/dense_2/Tensordot/Prod_1Prod:positional_embedding/dense_2/Tensordot/GatherV2_1:output:07positional_embedding/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: t
2positional_embedding/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
-positional_embedding/dense_2/Tensordot/concatConcatV24positional_embedding/dense_2/Tensordot/free:output:04positional_embedding/dense_2/Tensordot/axes:output:0;positional_embedding/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
,positional_embedding/dense_2/Tensordot/stackPack4positional_embedding/dense_2/Tensordot/Prod:output:06positional_embedding/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
0positional_embedding/dense_2/Tensordot/transpose	Transposex6positional_embedding/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:����������
.positional_embedding/dense_2/Tensordot/ReshapeReshape4positional_embedding/dense_2/Tensordot/transpose:y:05positional_embedding/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
-positional_embedding/dense_2/Tensordot/MatMulMatMul7positional_embedding/dense_2/Tensordot/Reshape:output:0=positional_embedding/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
.positional_embedding/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�v
4positional_embedding/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
/positional_embedding/dense_2/Tensordot/concat_1ConcatV28positional_embedding/dense_2/Tensordot/GatherV2:output:07positional_embedding/dense_2/Tensordot/Const_2:output:0=positional_embedding/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
&positional_embedding/dense_2/TensordotReshape7positional_embedding/dense_2/Tensordot/MatMul:product:08positional_embedding/dense_2/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:�����������
3positional_embedding/dense_2/BiasAdd/ReadVariableOpReadVariableOp<positional_embedding_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$positional_embedding/dense_2/BiasAddBiasAdd/positional_embedding/dense_2/Tensordot:output:0;positional_embedding/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������^
positional_embedding/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :�w
positional_embedding/CastCast$positional_embedding/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: a
positional_embedding/SqrtSqrtpositional_embedding/Cast:y:0*
T0*
_output_shapes
: �
positional_embedding/mulMul-positional_embedding/dense_2/BiasAdd:output:0positional_embedding/Sqrt:y:0*
T0*,
_output_shapes
:����������\
positional_embedding/ConstConst*
_output_shapes
: *
dtype0*
value	B : ^
positional_embedding/Const_1Const*
_output_shapes
: *
dtype0*
value	B :n
,positional_embedding/strided_slice_1/stack/0Const*
_output_shapes
: *
dtype0*
value	B : n
,positional_embedding/strided_slice_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B : �
*positional_embedding/strided_slice_1/stackPack5positional_embedding/strided_slice_1/stack/0:output:0#positional_embedding/Const:output:05positional_embedding/strided_slice_1/stack/2:output:0*
N*
T0*
_output_shapes
:p
.positional_embedding/strided_slice_1/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : p
.positional_embedding/strided_slice_1/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : �
,positional_embedding/strided_slice_1/stack_1Pack7positional_embedding/strided_slice_1/stack_1/0:output:0+positional_embedding/strided_slice:output:07positional_embedding/strided_slice_1/stack_1/2:output:0*
N*
T0*
_output_shapes
:p
.positional_embedding/strided_slice_1/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :p
.positional_embedding/strided_slice_1/stack_2/2Const*
_output_shapes
: *
dtype0*
value	B :�
,positional_embedding/strided_slice_1/stack_2Pack7positional_embedding/strided_slice_1/stack_2/0:output:0%positional_embedding/Const_1:output:07positional_embedding/strided_slice_1/stack_2/2:output:0*
N*
T0*
_output_shapes
:�
$positional_embedding/strided_slice_1StridedSlicepositional_embedding_2961433positional_embedding/strided_slice_1/stack:output:05positional_embedding/strided_slice_1/stack_1:output:05positional_embedding/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:�*

begin_mask*
end_mask*
new_axis_mask�
positional_embedding/addAddV2positional_embedding/mul:z:0-positional_embedding/strided_slice_1:output:0*
T0*,
_output_shapes
:�����������
Etransformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOpReadVariableOpNtransformer_encoder_multi_head_attention_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
6transformer_encoder/multi_head_attention/einsum/EinsumEinsumpositional_embedding/add:z:0Mtransformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...NI,HIO->...NHO�
Gtransformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOpReadVariableOpPtransformer_encoder_multi_head_attention_einsum_1_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
8transformer_encoder/multi_head_attention/einsum_1/EinsumEinsumpositional_embedding/add:z:0Otransformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...MI,HIO->...MHO�
Gtransformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOpReadVariableOpPtransformer_encoder_multi_head_attention_einsum_2_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
8transformer_encoder/multi_head_attention/einsum_2/EinsumEinsumpositional_embedding/add:z:0Otransformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...MI,HIO->...MHOs
.transformer_encoder/multi_head_attention/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �C�
-transformer_encoder/multi_head_attention/SqrtSqrt7transformer_encoder/multi_head_attention/Const:output:0*
T0*
_output_shapes
: �
0transformer_encoder/multi_head_attention/truedivRealDiv?transformer_encoder/multi_head_attention/einsum/Einsum:output:01transformer_encoder/multi_head_attention/Sqrt:y:0*
T0*0
_output_shapes
:�����������
8transformer_encoder/multi_head_attention/einsum_3/EinsumEinsum4transformer_encoder/multi_head_attention/truediv:z:0Atransformer_encoder/multi_head_attention/einsum_1/Einsum:output:0*
N*
T0*/
_output_shapes
:���������*#
equation...NHO,...MHO->...HNM�
0transformer_encoder/multi_head_attention/SoftmaxSoftmaxAtransformer_encoder/multi_head_attention/einsum_3/Einsum:output:0*
T0*/
_output_shapes
:����������
@transformer_encoder/multi_head_attention/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
>transformer_encoder/multi_head_attention/dropout_1/dropout/MulMul:transformer_encoder/multi_head_attention/Softmax:softmax:0Itransformer_encoder/multi_head_attention/dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:����������
@transformer_encoder/multi_head_attention/dropout_1/dropout/ShapeShape:transformer_encoder/multi_head_attention/Softmax:softmax:0*
T0*
_output_shapes
:�
Wtransformer_encoder/multi_head_attention/dropout_1/dropout/random_uniform/RandomUniformRandomUniformItransformer_encoder/multi_head_attention/dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:���������*
dtype0�
Itransformer_encoder/multi_head_attention/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
Gtransformer_encoder/multi_head_attention/dropout_1/dropout/GreaterEqualGreaterEqual`transformer_encoder/multi_head_attention/dropout_1/dropout/random_uniform/RandomUniform:output:0Rtransformer_encoder/multi_head_attention/dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:����������
?transformer_encoder/multi_head_attention/dropout_1/dropout/CastCastKtransformer_encoder/multi_head_attention/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:����������
@transformer_encoder/multi_head_attention/dropout_1/dropout/Mul_1MulBtransformer_encoder/multi_head_attention/dropout_1/dropout/Mul:z:0Ctransformer_encoder/multi_head_attention/dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:����������
8transformer_encoder/multi_head_attention/einsum_4/EinsumEinsumDtransformer_encoder/multi_head_attention/dropout_1/dropout/Mul_1:z:0Atransformer_encoder/multi_head_attention/einsum_2/Einsum:output:0*
N*
T0*0
_output_shapes
:����������*#
equation...HNM,...MHI->...NHI�
Gtransformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOpReadVariableOpPtransformer_encoder_multi_head_attention_einsum_5_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
8transformer_encoder/multi_head_attention/einsum_5/EinsumEinsumAtransformer_encoder/multi_head_attention/einsum_4/Einsum:output:0Otransformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������*
equation...NHI,HIO->...NO�
;transformer_encoder/multi_head_attention/add/ReadVariableOpReadVariableOpDtransformer_encoder_multi_head_attention_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,transformer_encoder/multi_head_attention/addAddV2Atransformer_encoder/multi_head_attention/einsum_5/Einsum:output:0Ctransformer_encoder/multi_head_attention/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������p
+transformer_encoder/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
)transformer_encoder/dropout_2/dropout/MulMul0transformer_encoder/multi_head_attention/add:z:04transformer_encoder/dropout_2/dropout/Const:output:0*
T0*,
_output_shapes
:�����������
+transformer_encoder/dropout_2/dropout/ShapeShape0transformer_encoder/multi_head_attention/add:z:0*
T0*
_output_shapes
:�
Btransformer_encoder/dropout_2/dropout/random_uniform/RandomUniformRandomUniform4transformer_encoder/dropout_2/dropout/Shape:output:0*
T0*,
_output_shapes
:����������*
dtype0y
4transformer_encoder/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
2transformer_encoder/dropout_2/dropout/GreaterEqualGreaterEqualKtransformer_encoder/dropout_2/dropout/random_uniform/RandomUniform:output:0=transformer_encoder/dropout_2/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:�����������
*transformer_encoder/dropout_2/dropout/CastCast6transformer_encoder/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:�����������
+transformer_encoder/dropout_2/dropout/Mul_1Mul-transformer_encoder/dropout_2/dropout/Mul:z:0.transformer_encoder/dropout_2/dropout/Cast:y:0*
T0*,
_output_shapes
:�����������
Ftransformer_encoder/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
4transformer_encoder/layer_normalization/moments/meanMean/transformer_encoder/dropout_2/dropout/Mul_1:z:0Otransformer_encoder/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
<transformer_encoder/layer_normalization/moments/StopGradientStopGradient=transformer_encoder/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:����������
Atransformer_encoder/layer_normalization/moments/SquaredDifferenceSquaredDifference/transformer_encoder/dropout_2/dropout/Mul_1:z:0Etransformer_encoder/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Jtransformer_encoder/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
8transformer_encoder/layer_normalization/moments/varianceMeanEtransformer_encoder/layer_normalization/moments/SquaredDifference:z:0Stransformer_encoder/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(|
7transformer_encoder/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
5transformer_encoder/layer_normalization/batchnorm/addAddV2Atransformer_encoder/layer_normalization/moments/variance:output:0@transformer_encoder/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
7transformer_encoder/layer_normalization/batchnorm/RsqrtRsqrt9transformer_encoder/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOpMtransformer_encoder_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5transformer_encoder/layer_normalization/batchnorm/mulMul;transformer_encoder/layer_normalization/batchnorm/Rsqrt:y:0Ltransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
7transformer_encoder/layer_normalization/batchnorm/mul_1Mul/transformer_encoder/dropout_2/dropout/Mul_1:z:09transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
7transformer_encoder/layer_normalization/batchnorm/mul_2Mul=transformer_encoder/layer_normalization/moments/mean:output:09transformer_encoder/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
@transformer_encoder/layer_normalization/batchnorm/ReadVariableOpReadVariableOpItransformer_encoder_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5transformer_encoder/layer_normalization/batchnorm/subSubHtransformer_encoder/layer_normalization/batchnorm/ReadVariableOp:value:0;transformer_encoder/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
7transformer_encoder/layer_normalization/batchnorm/add_1AddV2;transformer_encoder/layer_normalization/batchnorm/mul_1:z:09transformer_encoder/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
transformer_encoder/addAddV2;transformer_encoder/layer_normalization/batchnorm/add_1:z:0positional_embedding/add:z:0*
T0*,
_output_shapes
:����������{
0transformer_encoder/conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
,transformer_encoder/conv1d/Conv1D/ExpandDims
ExpandDimstransformer_encoder/add:z:09transformer_encoder/conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
=transformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpFtransformer_encoder_conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0t
2transformer_encoder/conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
.transformer_encoder/conv1d/Conv1D/ExpandDims_1
ExpandDimsEtransformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0;transformer_encoder/conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
!transformer_encoder/conv1d/Conv1DConv2D5transformer_encoder/conv1d/Conv1D/ExpandDims:output:07transformer_encoder/conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
)transformer_encoder/conv1d/Conv1D/SqueezeSqueeze*transformer_encoder/conv1d/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
1transformer_encoder/conv1d/BiasAdd/ReadVariableOpReadVariableOp:transformer_encoder_conv1d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"transformer_encoder/conv1d/BiasAddBiasAdd2transformer_encoder/conv1d/Conv1D/Squeeze:output:09transformer_encoder/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
transformer_encoder/conv1d/ReluRelu+transformer_encoder/conv1d/BiasAdd:output:0*
T0*,
_output_shapes
:����������p
+transformer_encoder/dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
)transformer_encoder/dropout_3/dropout/MulMul-transformer_encoder/conv1d/Relu:activations:04transformer_encoder/dropout_3/dropout/Const:output:0*
T0*,
_output_shapes
:�����������
+transformer_encoder/dropout_3/dropout/ShapeShape-transformer_encoder/conv1d/Relu:activations:0*
T0*
_output_shapes
:�
Btransformer_encoder/dropout_3/dropout/random_uniform/RandomUniformRandomUniform4transformer_encoder/dropout_3/dropout/Shape:output:0*
T0*,
_output_shapes
:����������*
dtype0y
4transformer_encoder/dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
2transformer_encoder/dropout_3/dropout/GreaterEqualGreaterEqualKtransformer_encoder/dropout_3/dropout/random_uniform/RandomUniform:output:0=transformer_encoder/dropout_3/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:�����������
*transformer_encoder/dropout_3/dropout/CastCast6transformer_encoder/dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:�����������
+transformer_encoder/dropout_3/dropout/Mul_1Mul-transformer_encoder/dropout_3/dropout/Mul:z:0.transformer_encoder/dropout_3/dropout/Cast:y:0*
T0*,
_output_shapes
:����������}
2transformer_encoder/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
.transformer_encoder/conv1d_1/Conv1D/ExpandDims
ExpandDims/transformer_encoder/dropout_3/dropout/Mul_1:z:0;transformer_encoder/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
?transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpHtransformer_encoder_conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0v
4transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
0transformer_encoder/conv1d_1/Conv1D/ExpandDims_1
ExpandDimsGtransformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0=transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
#transformer_encoder/conv1d_1/Conv1DConv2D7transformer_encoder/conv1d_1/Conv1D/ExpandDims:output:09transformer_encoder/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
+transformer_encoder/conv1d_1/Conv1D/SqueezeSqueeze,transformer_encoder/conv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
3transformer_encoder/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp<transformer_encoder_conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
$transformer_encoder/conv1d_1/BiasAddBiasAdd4transformer_encoder/conv1d_1/Conv1D/Squeeze:output:0;transformer_encoder/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Htransformer_encoder/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
6transformer_encoder/layer_normalization_1/moments/meanMean-transformer_encoder/conv1d_1/BiasAdd:output:0Qtransformer_encoder/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
>transformer_encoder/layer_normalization_1/moments/StopGradientStopGradient?transformer_encoder/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:����������
Ctransformer_encoder/layer_normalization_1/moments/SquaredDifferenceSquaredDifference-transformer_encoder/conv1d_1/BiasAdd:output:0Gtransformer_encoder/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Ltransformer_encoder/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
:transformer_encoder/layer_normalization_1/moments/varianceMeanGtransformer_encoder/layer_normalization_1/moments/SquaredDifference:z:0Utransformer_encoder/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(~
9transformer_encoder/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
7transformer_encoder/layer_normalization_1/batchnorm/addAddV2Ctransformer_encoder/layer_normalization_1/moments/variance:output:0Btransformer_encoder/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
9transformer_encoder/layer_normalization_1/batchnorm/RsqrtRsqrt;transformer_encoder/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_encoder_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
7transformer_encoder/layer_normalization_1/batchnorm/mulMul=transformer_encoder/layer_normalization_1/batchnorm/Rsqrt:y:0Ntransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
9transformer_encoder/layer_normalization_1/batchnorm/mul_1Mul-transformer_encoder/conv1d_1/BiasAdd:output:0;transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
9transformer_encoder/layer_normalization_1/batchnorm/mul_2Mul?transformer_encoder/layer_normalization_1/moments/mean:output:0;transformer_encoder/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOpKtransformer_encoder_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
7transformer_encoder/layer_normalization_1/batchnorm/subSubJtransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp:value:0=transformer_encoder/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
9transformer_encoder/layer_normalization_1/batchnorm/add_1AddV2=transformer_encoder/layer_normalization_1/batchnorm/mul_1:z:0;transformer_encoder/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
transformer_encoder/add_1AddV2transformer_encoder/add:z:0=transformer_encoder/layer_normalization_1/batchnorm/add_1:z:0*
T0*,
_output_shapes
:����������q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
global_average_pooling1d/MeanMeantransformer_encoder/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
dense/MatMulMatMul&global_average_pooling1d/Mean:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:����������Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout/dropout/MulMuldense/Relu:activations:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:����������]
dropout/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:�
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:����������*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:�����������
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:�����������
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:�����������
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_1/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������f
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:���������h
IdentityIdentitydense_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������	
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp4^positional_embedding/dense_2/BiasAdd/ReadVariableOp6^positional_embedding/dense_2/Tensordot/ReadVariableOp2^transformer_encoder/conv1d/BiasAdd/ReadVariableOp>^transformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOp4^transformer_encoder/conv1d_1/BiasAdd/ReadVariableOp@^transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpA^transformer_encoder/layer_normalization/batchnorm/ReadVariableOpE^transformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpC^transformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpG^transformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp<^transformer_encoder/multi_head_attention/add/ReadVariableOpF^transformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOpH^transformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOpH^transformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOpH^transformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : :
��: : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2j
3positional_embedding/dense_2/BiasAdd/ReadVariableOp3positional_embedding/dense_2/BiasAdd/ReadVariableOp2n
5positional_embedding/dense_2/Tensordot/ReadVariableOp5positional_embedding/dense_2/Tensordot/ReadVariableOp2f
1transformer_encoder/conv1d/BiasAdd/ReadVariableOp1transformer_encoder/conv1d/BiasAdd/ReadVariableOp2~
=transformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOp=transformer_encoder/conv1d/Conv1D/ExpandDims_1/ReadVariableOp2j
3transformer_encoder/conv1d_1/BiasAdd/ReadVariableOp3transformer_encoder/conv1d_1/BiasAdd/ReadVariableOp2�
?transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?transformer_encoder/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2�
@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp@transformer_encoder/layer_normalization/batchnorm/ReadVariableOp2�
Dtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOpDtransformer_encoder/layer_normalization/batchnorm/mul/ReadVariableOp2�
Btransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOpBtransformer_encoder/layer_normalization_1/batchnorm/ReadVariableOp2�
Ftransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOpFtransformer_encoder/layer_normalization_1/batchnorm/mul/ReadVariableOp2z
;transformer_encoder/multi_head_attention/add/ReadVariableOp;transformer_encoder/multi_head_attention/add/ReadVariableOp2�
Etransformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOpEtransformer_encoder/multi_head_attention/einsum/Einsum/ReadVariableOp2�
Gtransformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOpGtransformer_encoder/multi_head_attention/einsum_1/Einsum/ReadVariableOp2�
Gtransformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOpGtransformer_encoder/multi_head_attention/einsum_2/Einsum/ReadVariableOp2�
Gtransformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOpGtransformer_encoder/multi_head_attention/einsum_5/Einsum/ReadVariableOp:N J
+
_output_shapes
:���������

_user_specified_namex:&"
 
_output_shapes
:
��
�
�=
"__inference__traced_restore_297135
file_prefix\
Iassignvariableop_transformer_model_17_positional_embedding_dense_2_kernel:	�X
Iassignvariableop_1_transformer_model_17_positional_embedding_dense_2_bias:	�u
]assignvariableop_2_transformer_model_17_transformer_encoder_multi_head_attention_query_kernel:��s
[assignvariableop_3_transformer_model_17_transformer_encoder_multi_head_attention_key_kernel:��u
]assignvariableop_4_transformer_model_17_transformer_encoder_multi_head_attention_value_kernel:��z
bassignvariableop_5_transformer_model_17_transformer_encoder_multi_head_attention_projection_kernel:��o
`assignvariableop_6_transformer_model_17_transformer_encoder_multi_head_attention_projection_bias:	�d
Uassignvariableop_7_transformer_model_17_transformer_encoder_layer_normalization_gamma:	�c
Tassignvariableop_8_transformer_model_17_transformer_encoder_layer_normalization_beta:	�a
Iassignvariableop_9_transformer_model_17_transformer_encoder_conv1d_kernel:��W
Hassignvariableop_10_transformer_model_17_transformer_encoder_conv1d_bias:	�d
Lassignvariableop_11_transformer_model_17_transformer_encoder_conv1d_1_kernel:��Y
Jassignvariableop_12_transformer_model_17_transformer_encoder_conv1d_1_bias:	�g
Xassignvariableop_13_transformer_model_17_transformer_encoder_layer_normalization_1_gamma:	�f
Wassignvariableop_14_transformer_model_17_transformer_encoder_layer_normalization_1_beta:	�I
5assignvariableop_15_transformer_model_17_dense_kernel:
��B
3assignvariableop_16_transformer_model_17_dense_bias:	�J
7assignvariableop_17_transformer_model_17_dense_1_kernel:	�C
5assignvariableop_18_transformer_model_17_dense_1_bias:$
assignvariableop_19_beta_1: $
assignvariableop_20_beta_2: #
assignvariableop_21_decay: +
!assignvariableop_22_learning_rate: '
assignvariableop_23_adam_iter:	 %
assignvariableop_24_total_2: %
assignvariableop_25_count_2: %
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: f
Sassignvariableop_30_adam_transformer_model_17_positional_embedding_dense_2_kernel_m:	�`
Qassignvariableop_31_adam_transformer_model_17_positional_embedding_dense_2_bias_m:	�}
eassignvariableop_32_adam_transformer_model_17_transformer_encoder_multi_head_attention_query_kernel_m:��{
cassignvariableop_33_adam_transformer_model_17_transformer_encoder_multi_head_attention_key_kernel_m:��}
eassignvariableop_34_adam_transformer_model_17_transformer_encoder_multi_head_attention_value_kernel_m:���
jassignvariableop_35_adam_transformer_model_17_transformer_encoder_multi_head_attention_projection_kernel_m:��w
hassignvariableop_36_adam_transformer_model_17_transformer_encoder_multi_head_attention_projection_bias_m:	�l
]assignvariableop_37_adam_transformer_model_17_transformer_encoder_layer_normalization_gamma_m:	�k
\assignvariableop_38_adam_transformer_model_17_transformer_encoder_layer_normalization_beta_m:	�i
Qassignvariableop_39_adam_transformer_model_17_transformer_encoder_conv1d_kernel_m:��^
Oassignvariableop_40_adam_transformer_model_17_transformer_encoder_conv1d_bias_m:	�k
Sassignvariableop_41_adam_transformer_model_17_transformer_encoder_conv1d_1_kernel_m:��`
Qassignvariableop_42_adam_transformer_model_17_transformer_encoder_conv1d_1_bias_m:	�n
_assignvariableop_43_adam_transformer_model_17_transformer_encoder_layer_normalization_1_gamma_m:	�m
^assignvariableop_44_adam_transformer_model_17_transformer_encoder_layer_normalization_1_beta_m:	�P
<assignvariableop_45_adam_transformer_model_17_dense_kernel_m:
��I
:assignvariableop_46_adam_transformer_model_17_dense_bias_m:	�Q
>assignvariableop_47_adam_transformer_model_17_dense_1_kernel_m:	�J
<assignvariableop_48_adam_transformer_model_17_dense_1_bias_m:f
Sassignvariableop_49_adam_transformer_model_17_positional_embedding_dense_2_kernel_v:	�`
Qassignvariableop_50_adam_transformer_model_17_positional_embedding_dense_2_bias_v:	�}
eassignvariableop_51_adam_transformer_model_17_transformer_encoder_multi_head_attention_query_kernel_v:��{
cassignvariableop_52_adam_transformer_model_17_transformer_encoder_multi_head_attention_key_kernel_v:��}
eassignvariableop_53_adam_transformer_model_17_transformer_encoder_multi_head_attention_value_kernel_v:���
jassignvariableop_54_adam_transformer_model_17_transformer_encoder_multi_head_attention_projection_kernel_v:��w
hassignvariableop_55_adam_transformer_model_17_transformer_encoder_multi_head_attention_projection_bias_v:	�l
]assignvariableop_56_adam_transformer_model_17_transformer_encoder_layer_normalization_gamma_v:	�k
\assignvariableop_57_adam_transformer_model_17_transformer_encoder_layer_normalization_beta_v:	�i
Qassignvariableop_58_adam_transformer_model_17_transformer_encoder_conv1d_kernel_v:��^
Oassignvariableop_59_adam_transformer_model_17_transformer_encoder_conv1d_bias_v:	�k
Sassignvariableop_60_adam_transformer_model_17_transformer_encoder_conv1d_1_kernel_v:��`
Qassignvariableop_61_adam_transformer_model_17_transformer_encoder_conv1d_1_bias_v:	�n
_assignvariableop_62_adam_transformer_model_17_transformer_encoder_layer_normalization_1_gamma_v:	�m
^assignvariableop_63_adam_transformer_model_17_transformer_encoder_layer_normalization_1_beta_v:	�P
<assignvariableop_64_adam_transformer_model_17_dense_kernel_v:
��I
:assignvariableop_65_adam_transformer_model_17_dense_bias_v:	�Q
>assignvariableop_66_adam_transformer_model_17_dense_1_kernel_v:	�J
<assignvariableop_67_adam_transformer_model_17_dense_1_bias_v:
identity_69��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*�
value�B�EB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:E*
dtype0*�
value�B�EB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*S
dtypesI
G2E	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpIassignvariableop_transformer_model_17_positional_embedding_dense_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpIassignvariableop_1_transformer_model_17_positional_embedding_dense_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp]assignvariableop_2_transformer_model_17_transformer_encoder_multi_head_attention_query_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp[assignvariableop_3_transformer_model_17_transformer_encoder_multi_head_attention_key_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp]assignvariableop_4_transformer_model_17_transformer_encoder_multi_head_attention_value_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpbassignvariableop_5_transformer_model_17_transformer_encoder_multi_head_attention_projection_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp`assignvariableop_6_transformer_model_17_transformer_encoder_multi_head_attention_projection_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpUassignvariableop_7_transformer_model_17_transformer_encoder_layer_normalization_gammaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpTassignvariableop_8_transformer_model_17_transformer_encoder_layer_normalization_betaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpIassignvariableop_9_transformer_model_17_transformer_encoder_conv1d_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpHassignvariableop_10_transformer_model_17_transformer_encoder_conv1d_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpLassignvariableop_11_transformer_model_17_transformer_encoder_conv1d_1_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpJassignvariableop_12_transformer_model_17_transformer_encoder_conv1d_1_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpXassignvariableop_13_transformer_model_17_transformer_encoder_layer_normalization_1_gammaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpWassignvariableop_14_transformer_model_17_transformer_encoder_layer_normalization_1_betaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp5assignvariableop_15_transformer_model_17_dense_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp3assignvariableop_16_transformer_model_17_dense_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp7assignvariableop_17_transformer_model_17_dense_1_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp5assignvariableop_18_transformer_model_17_dense_1_biasIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_beta_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_beta_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_decayIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp!assignvariableop_22_learning_rateIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_iterIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_total_2Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_count_2Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpSassignvariableop_30_adam_transformer_model_17_positional_embedding_dense_2_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpQassignvariableop_31_adam_transformer_model_17_positional_embedding_dense_2_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpeassignvariableop_32_adam_transformer_model_17_transformer_encoder_multi_head_attention_query_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpcassignvariableop_33_adam_transformer_model_17_transformer_encoder_multi_head_attention_key_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpeassignvariableop_34_adam_transformer_model_17_transformer_encoder_multi_head_attention_value_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpjassignvariableop_35_adam_transformer_model_17_transformer_encoder_multi_head_attention_projection_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOphassignvariableop_36_adam_transformer_model_17_transformer_encoder_multi_head_attention_projection_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp]assignvariableop_37_adam_transformer_model_17_transformer_encoder_layer_normalization_gamma_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp\assignvariableop_38_adam_transformer_model_17_transformer_encoder_layer_normalization_beta_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpQassignvariableop_39_adam_transformer_model_17_transformer_encoder_conv1d_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpOassignvariableop_40_adam_transformer_model_17_transformer_encoder_conv1d_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpSassignvariableop_41_adam_transformer_model_17_transformer_encoder_conv1d_1_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpQassignvariableop_42_adam_transformer_model_17_transformer_encoder_conv1d_1_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp_assignvariableop_43_adam_transformer_model_17_transformer_encoder_layer_normalization_1_gamma_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp^assignvariableop_44_adam_transformer_model_17_transformer_encoder_layer_normalization_1_beta_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp<assignvariableop_45_adam_transformer_model_17_dense_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp:assignvariableop_46_adam_transformer_model_17_dense_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp>assignvariableop_47_adam_transformer_model_17_dense_1_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp<assignvariableop_48_adam_transformer_model_17_dense_1_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOpSassignvariableop_49_adam_transformer_model_17_positional_embedding_dense_2_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOpQassignvariableop_50_adam_transformer_model_17_positional_embedding_dense_2_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOpeassignvariableop_51_adam_transformer_model_17_transformer_encoder_multi_head_attention_query_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOpcassignvariableop_52_adam_transformer_model_17_transformer_encoder_multi_head_attention_key_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOpeassignvariableop_53_adam_transformer_model_17_transformer_encoder_multi_head_attention_value_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOpjassignvariableop_54_adam_transformer_model_17_transformer_encoder_multi_head_attention_projection_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOphassignvariableop_55_adam_transformer_model_17_transformer_encoder_multi_head_attention_projection_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp]assignvariableop_56_adam_transformer_model_17_transformer_encoder_layer_normalization_gamma_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp\assignvariableop_57_adam_transformer_model_17_transformer_encoder_layer_normalization_beta_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOpQassignvariableop_58_adam_transformer_model_17_transformer_encoder_conv1d_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOpOassignvariableop_59_adam_transformer_model_17_transformer_encoder_conv1d_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOpSassignvariableop_60_adam_transformer_model_17_transformer_encoder_conv1d_1_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOpQassignvariableop_61_adam_transformer_model_17_transformer_encoder_conv1d_1_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp_assignvariableop_62_adam_transformer_model_17_transformer_encoder_layer_normalization_1_gamma_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp^assignvariableop_63_adam_transformer_model_17_transformer_encoder_layer_normalization_1_beta_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp<assignvariableop_64_adam_transformer_model_17_dense_kernel_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOp:assignvariableop_65_adam_transformer_model_17_dense_bias_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp>assignvariableop_66_adam_transformer_model_17_dense_1_kernel_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp<assignvariableop_67_adam_transformer_model_17_dense_1_bias_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_68Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_69IdentityIdentity_68:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_69Identity_69:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
(__inference_dense_1_layer_call_fn_296374

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_295243o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
O__inference_transformer_encoder_layer_call_and_return_conditional_losses_296646

inputsR
:multi_head_attention_einsum_einsum_readvariableop_resource:��T
<multi_head_attention_einsum_1_einsum_readvariableop_resource:��T
<multi_head_attention_einsum_2_einsum_readvariableop_resource:��T
<multi_head_attention_einsum_5_einsum_readvariableop_resource:��?
0multi_head_attention_add_readvariableop_resource:	�H
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�J
2conv1d_conv1d_expanddims_1_readvariableop_resource:��5
&conv1d_biasadd_readvariableop_resource:	�L
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:��7
(conv1d_1_biasadd_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�
identity��conv1d/BiasAdd/ReadVariableOp�)conv1d/Conv1D/ExpandDims_1/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�'multi_head_attention/add/ReadVariableOp�1multi_head_attention/einsum/Einsum/ReadVariableOp�3multi_head_attention/einsum_1/Einsum/ReadVariableOp�3multi_head_attention/einsum_2/Einsum/ReadVariableOp�3multi_head_attention/einsum_5/Einsum/ReadVariableOp�
1multi_head_attention/einsum/Einsum/ReadVariableOpReadVariableOp:multi_head_attention_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
"multi_head_attention/einsum/EinsumEinsuminputs9multi_head_attention/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...NI,HIO->...NHO�
3multi_head_attention/einsum_1/Einsum/ReadVariableOpReadVariableOp<multi_head_attention_einsum_1_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
$multi_head_attention/einsum_1/EinsumEinsuminputs;multi_head_attention/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...MI,HIO->...MHO�
3multi_head_attention/einsum_2/Einsum/ReadVariableOpReadVariableOp<multi_head_attention_einsum_2_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
$multi_head_attention/einsum_2/EinsumEinsuminputs;multi_head_attention/einsum_2/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...MI,HIO->...MHO_
multi_head_attention/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �Cg
multi_head_attention/SqrtSqrt#multi_head_attention/Const:output:0*
T0*
_output_shapes
: �
multi_head_attention/truedivRealDiv+multi_head_attention/einsum/Einsum:output:0multi_head_attention/Sqrt:y:0*
T0*0
_output_shapes
:�����������
$multi_head_attention/einsum_3/EinsumEinsum multi_head_attention/truediv:z:0-multi_head_attention/einsum_1/Einsum:output:0*
N*
T0*/
_output_shapes
:���������*#
equation...NHO,...MHO->...HNM�
multi_head_attention/SoftmaxSoftmax-multi_head_attention/einsum_3/Einsum:output:0*
T0*/
_output_shapes
:���������q
,multi_head_attention/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
*multi_head_attention/dropout_1/dropout/MulMul&multi_head_attention/Softmax:softmax:05multi_head_attention/dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:����������
,multi_head_attention/dropout_1/dropout/ShapeShape&multi_head_attention/Softmax:softmax:0*
T0*
_output_shapes
:�
Cmulti_head_attention/dropout_1/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention/dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:���������*
dtype0z
5multi_head_attention/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
3multi_head_attention/dropout_1/dropout/GreaterEqualGreaterEqualLmulti_head_attention/dropout_1/dropout/random_uniform/RandomUniform:output:0>multi_head_attention/dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:����������
+multi_head_attention/dropout_1/dropout/CastCast7multi_head_attention/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:����������
,multi_head_attention/dropout_1/dropout/Mul_1Mul.multi_head_attention/dropout_1/dropout/Mul:z:0/multi_head_attention/dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:����������
$multi_head_attention/einsum_4/EinsumEinsum0multi_head_attention/dropout_1/dropout/Mul_1:z:0-multi_head_attention/einsum_2/Einsum:output:0*
N*
T0*0
_output_shapes
:����������*#
equation...HNM,...MHI->...NHI�
3multi_head_attention/einsum_5/Einsum/ReadVariableOpReadVariableOp<multi_head_attention_einsum_5_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
$multi_head_attention/einsum_5/EinsumEinsum-multi_head_attention/einsum_4/Einsum:output:0;multi_head_attention/einsum_5/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������*
equation...NHI,HIO->...NO�
'multi_head_attention/add/ReadVariableOpReadVariableOp0multi_head_attention_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
multi_head_attention/addAddV2-multi_head_attention/einsum_5/Einsum:output:0/multi_head_attention/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout_2/dropout/MulMulmulti_head_attention/add:z:0 dropout_2/dropout/Const:output:0*
T0*,
_output_shapes
:����������c
dropout_2/dropout/ShapeShapemulti_head_attention/add:z:0*
T0*
_output_shapes
:�
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*,
_output_shapes
:����������*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:�����������
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:�����������
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*,
_output_shapes
:����������|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeandropout_2/dropout/Mul_1:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:����������
-layer_normalization/moments/SquaredDifferenceSquaredDifferencedropout_2/dropout/Mul_1:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/mul_1Muldropout_2/dropout/Mul_1:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������t
addAddV2'layer_normalization/batchnorm/add_1:z:0inputs*
T0*,
_output_shapes
:����������g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d/Conv1D/ExpandDims
ExpandDimsadd:z:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������c
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*,
_output_shapes
:����������\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout_3/dropout/MulMulconv1d/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*,
_output_shapes
:����������`
dropout_3/dropout/ShapeShapeconv1d/Relu:activations:0*
T0*
_output_shapes
:�
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*,
_output_shapes
:����������*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:�����������
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:�����������
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*,
_output_shapes
:����������i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_1/Conv1D/ExpandDims
ExpandDimsdropout_3/dropout/Mul_1:z:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMeanconv1d_1/BiasAdd:output:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:����������
/layer_normalization_1/moments/SquaredDifferenceSquaredDifferenceconv1d_1/BiasAdd:output:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/mul_1Mulconv1d_1/BiasAdd:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������y
add_1AddV2add:z:0)layer_normalization_1/batchnorm/add_1:z:0*
T0*,
_output_shapes
:����������]
IdentityIdentity	add_1:z:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp(^multi_head_attention/add/ReadVariableOp2^multi_head_attention/einsum/Einsum/ReadVariableOp4^multi_head_attention/einsum_1/Einsum/ReadVariableOp4^multi_head_attention/einsum_2/Einsum/ReadVariableOp4^multi_head_attention/einsum_5/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������: : : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2R
'multi_head_attention/add/ReadVariableOp'multi_head_attention/add/ReadVariableOp2f
1multi_head_attention/einsum/Einsum/ReadVariableOp1multi_head_attention/einsum/Einsum/ReadVariableOp2j
3multi_head_attention/einsum_1/Einsum/ReadVariableOp3multi_head_attention/einsum_1/Einsum/ReadVariableOp2j
3multi_head_attention/einsum_2/Einsum/ReadVariableOp3multi_head_attention/einsum_2/Einsum/ReadVariableOp2j
3multi_head_attention/einsum_5/Einsum/ReadVariableOp3multi_head_attention/einsum_5/Einsum/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
��
�
O__inference_transformer_encoder_layer_call_and_return_conditional_losses_295480

inputsR
:multi_head_attention_einsum_einsum_readvariableop_resource:��T
<multi_head_attention_einsum_1_einsum_readvariableop_resource:��T
<multi_head_attention_einsum_2_einsum_readvariableop_resource:��T
<multi_head_attention_einsum_5_einsum_readvariableop_resource:��?
0multi_head_attention_add_readvariableop_resource:	�H
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�J
2conv1d_conv1d_expanddims_1_readvariableop_resource:��5
&conv1d_biasadd_readvariableop_resource:	�L
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:��7
(conv1d_1_biasadd_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�
identity��conv1d/BiasAdd/ReadVariableOp�)conv1d/Conv1D/ExpandDims_1/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�'multi_head_attention/add/ReadVariableOp�1multi_head_attention/einsum/Einsum/ReadVariableOp�3multi_head_attention/einsum_1/Einsum/ReadVariableOp�3multi_head_attention/einsum_2/Einsum/ReadVariableOp�3multi_head_attention/einsum_5/Einsum/ReadVariableOp�
1multi_head_attention/einsum/Einsum/ReadVariableOpReadVariableOp:multi_head_attention_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
"multi_head_attention/einsum/EinsumEinsuminputs9multi_head_attention/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...NI,HIO->...NHO�
3multi_head_attention/einsum_1/Einsum/ReadVariableOpReadVariableOp<multi_head_attention_einsum_1_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
$multi_head_attention/einsum_1/EinsumEinsuminputs;multi_head_attention/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...MI,HIO->...MHO�
3multi_head_attention/einsum_2/Einsum/ReadVariableOpReadVariableOp<multi_head_attention_einsum_2_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
$multi_head_attention/einsum_2/EinsumEinsuminputs;multi_head_attention/einsum_2/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...MI,HIO->...MHO_
multi_head_attention/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �Cg
multi_head_attention/SqrtSqrt#multi_head_attention/Const:output:0*
T0*
_output_shapes
: �
multi_head_attention/truedivRealDiv+multi_head_attention/einsum/Einsum:output:0multi_head_attention/Sqrt:y:0*
T0*0
_output_shapes
:�����������
$multi_head_attention/einsum_3/EinsumEinsum multi_head_attention/truediv:z:0-multi_head_attention/einsum_1/Einsum:output:0*
N*
T0*/
_output_shapes
:���������*#
equation...NHO,...MHO->...HNM�
multi_head_attention/SoftmaxSoftmax-multi_head_attention/einsum_3/Einsum:output:0*
T0*/
_output_shapes
:���������q
,multi_head_attention/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
*multi_head_attention/dropout_1/dropout/MulMul&multi_head_attention/Softmax:softmax:05multi_head_attention/dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:����������
,multi_head_attention/dropout_1/dropout/ShapeShape&multi_head_attention/Softmax:softmax:0*
T0*
_output_shapes
:�
Cmulti_head_attention/dropout_1/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention/dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:���������*
dtype0z
5multi_head_attention/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
3multi_head_attention/dropout_1/dropout/GreaterEqualGreaterEqualLmulti_head_attention/dropout_1/dropout/random_uniform/RandomUniform:output:0>multi_head_attention/dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:����������
+multi_head_attention/dropout_1/dropout/CastCast7multi_head_attention/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:����������
,multi_head_attention/dropout_1/dropout/Mul_1Mul.multi_head_attention/dropout_1/dropout/Mul:z:0/multi_head_attention/dropout_1/dropout/Cast:y:0*
T0*/
_output_shapes
:����������
$multi_head_attention/einsum_4/EinsumEinsum0multi_head_attention/dropout_1/dropout/Mul_1:z:0-multi_head_attention/einsum_2/Einsum:output:0*
N*
T0*0
_output_shapes
:����������*#
equation...HNM,...MHI->...NHI�
3multi_head_attention/einsum_5/Einsum/ReadVariableOpReadVariableOp<multi_head_attention_einsum_5_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
$multi_head_attention/einsum_5/EinsumEinsum-multi_head_attention/einsum_4/Einsum:output:0;multi_head_attention/einsum_5/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������*
equation...NHI,HIO->...NO�
'multi_head_attention/add/ReadVariableOpReadVariableOp0multi_head_attention_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
multi_head_attention/addAddV2-multi_head_attention/einsum_5/Einsum:output:0/multi_head_attention/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout_2/dropout/MulMulmulti_head_attention/add:z:0 dropout_2/dropout/Const:output:0*
T0*,
_output_shapes
:����������c
dropout_2/dropout/ShapeShapemulti_head_attention/add:z:0*
T0*
_output_shapes
:�
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*,
_output_shapes
:����������*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:�����������
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:�����������
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*,
_output_shapes
:����������|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeandropout_2/dropout/Mul_1:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:����������
-layer_normalization/moments/SquaredDifferenceSquaredDifferencedropout_2/dropout/Mul_1:z:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/mul_1Muldropout_2/dropout/Mul_1:z:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������t
addAddV2'layer_normalization/batchnorm/add_1:z:0inputs*
T0*,
_output_shapes
:����������g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d/Conv1D/ExpandDims
ExpandDimsadd:z:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������c
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*,
_output_shapes
:����������\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?�
dropout_3/dropout/MulMulconv1d/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*,
_output_shapes
:����������`
dropout_3/dropout/ShapeShapeconv1d/Relu:activations:0*
T0*
_output_shapes
:�
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*,
_output_shapes
:����������*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>�
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:�����������
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:�����������
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*,
_output_shapes
:����������i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_1/Conv1D/ExpandDims
ExpandDimsdropout_3/dropout/Mul_1:z:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMeanconv1d_1/BiasAdd:output:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:����������
/layer_normalization_1/moments/SquaredDifferenceSquaredDifferenceconv1d_1/BiasAdd:output:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/mul_1Mulconv1d_1/BiasAdd:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������y
add_1AddV2add:z:0)layer_normalization_1/batchnorm/add_1:z:0*
T0*,
_output_shapes
:����������]
IdentityIdentity	add_1:z:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp(^multi_head_attention/add/ReadVariableOp2^multi_head_attention/einsum/Einsum/ReadVariableOp4^multi_head_attention/einsum_1/Einsum/ReadVariableOp4^multi_head_attention/einsum_2/Einsum/ReadVariableOp4^multi_head_attention/einsum_5/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������: : : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2R
'multi_head_attention/add/ReadVariableOp'multi_head_attention/add/ReadVariableOp2f
1multi_head_attention/einsum/Einsum/ReadVariableOp1multi_head_attention/einsum/Einsum/ReadVariableOp2j
3multi_head_attention/einsum_1/Einsum/ReadVariableOp3multi_head_attention/einsum_1/Einsum/ReadVariableOp2j
3multi_head_attention/einsum_2/Einsum/ReadVariableOp3multi_head_attention/einsum_2/Einsum/ReadVariableOp2j
3multi_head_attention/einsum_5/Einsum/ReadVariableOp3multi_head_attention/einsum_5/Einsum/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
4__inference_transformer_encoder_layer_call_fn_296416

inputs
unknown:��!
	unknown_0:��!
	unknown_1:��!
	unknown_2:��
	unknown_3:	�
	unknown_4:	�
	unknown_5:	�!
	unknown_6:��
	unknown_7:	�!
	unknown_8:��
	unknown_9:	�

unknown_10:	�

unknown_11:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*/
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_transformer_encoder_layer_call_and_return_conditional_losses_295179t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�'
�	
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_295806
input_1.
positional_embedding_295759:	�*
positional_embedding_295761:	�
positional_embedding_2957632
transformer_encoder_295766:��2
transformer_encoder_295768:��2
transformer_encoder_295770:��2
transformer_encoder_295772:��)
transformer_encoder_295774:	�)
transformer_encoder_295776:	�)
transformer_encoder_295778:	�2
transformer_encoder_295780:��)
transformer_encoder_295782:	�2
transformer_encoder_295784:��)
transformer_encoder_295786:	�)
transformer_encoder_295788:	�)
transformer_encoder_295790:	� 
dense_295794:
��
dense_295796:	�!
dense_1_295800:	�
dense_1_295802:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�dropout/StatefulPartitionedCall�,positional_embedding/StatefulPartitionedCall�+transformer_encoder/StatefulPartitionedCall�
,positional_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1positional_embedding_295759positional_embedding_295761positional_embedding_295763*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_positional_embedding_layer_call_and_return_conditional_losses_295082�
+transformer_encoder/StatefulPartitionedCallStatefulPartitionedCall5positional_embedding/StatefulPartitionedCall:output:0transformer_encoder_295766transformer_encoder_295768transformer_encoder_295770transformer_encoder_295772transformer_encoder_295774transformer_encoder_295776transformer_encoder_295778transformer_encoder_295780transformer_encoder_295782transformer_encoder_295784transformer_encoder_295786transformer_encoder_295788transformer_encoder_295790*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*/
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_transformer_encoder_layer_call_and_return_conditional_losses_295480�
(global_average_pooling1d/PartitionedCallPartitionedCall4transformer_encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_295018�
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_295794dense_295796*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_295219�
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_295323�
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_295800dense_1_295802*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_295243w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall-^positional_embedding/StatefulPartitionedCall,^transformer_encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : :
��: : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2\
,positional_embedding/StatefulPartitionedCall,positional_embedding/StatefulPartitionedCall2Z
+transformer_encoder/StatefulPartitionedCall+transformer_encoder/StatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1:&"
 
_output_shapes
:
��
�

�
C__inference_dense_1_layer_call_and_return_conditional_losses_295243

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
U
9__inference_global_average_pooling1d_layer_call_fn_296359

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_295018i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�&
�
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_295250
x.
positional_embedding_295083:	�*
positional_embedding_295085:	�
positional_embedding_2950872
transformer_encoder_295180:��2
transformer_encoder_295182:��2
transformer_encoder_295184:��2
transformer_encoder_295186:��)
transformer_encoder_295188:	�)
transformer_encoder_295190:	�)
transformer_encoder_295192:	�2
transformer_encoder_295194:��)
transformer_encoder_295196:	�2
transformer_encoder_295198:��)
transformer_encoder_295200:	�)
transformer_encoder_295202:	�)
transformer_encoder_295204:	� 
dense_295220:
��
dense_295222:	�!
dense_1_295244:	�
dense_1_295246:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�,positional_embedding/StatefulPartitionedCall�+transformer_encoder/StatefulPartitionedCall�
,positional_embedding/StatefulPartitionedCallStatefulPartitionedCallxpositional_embedding_295083positional_embedding_295085positional_embedding_295087*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_positional_embedding_layer_call_and_return_conditional_losses_295082�
+transformer_encoder/StatefulPartitionedCallStatefulPartitionedCall5positional_embedding/StatefulPartitionedCall:output:0transformer_encoder_295180transformer_encoder_295182transformer_encoder_295184transformer_encoder_295186transformer_encoder_295188transformer_encoder_295190transformer_encoder_295192transformer_encoder_295194transformer_encoder_295196transformer_encoder_295198transformer_encoder_295200transformer_encoder_295202transformer_encoder_295204*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*/
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_transformer_encoder_layer_call_and_return_conditional_losses_295179�
(global_average_pooling1d/PartitionedCallPartitionedCall4transformer_encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_295018�
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_295220dense_295222*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_295219�
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_295230�
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_295244dense_1_295246*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_295243w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall-^positional_embedding/StatefulPartitionedCall,^transformer_encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : :
��: : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2\
,positional_embedding/StatefulPartitionedCall,positional_embedding/StatefulPartitionedCall2Z
+transformer_encoder/StatefulPartitionedCall+transformer_encoder/StatefulPartitionedCall:N J
+
_output_shapes
:���������

_user_specified_namex:&"
 
_output_shapes
:
��
�&
�
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_295756
input_1.
positional_embedding_295709:	�*
positional_embedding_295711:	�
positional_embedding_2957132
transformer_encoder_295716:��2
transformer_encoder_295718:��2
transformer_encoder_295720:��2
transformer_encoder_295722:��)
transformer_encoder_295724:	�)
transformer_encoder_295726:	�)
transformer_encoder_295728:	�2
transformer_encoder_295730:��)
transformer_encoder_295732:	�2
transformer_encoder_295734:��)
transformer_encoder_295736:	�)
transformer_encoder_295738:	�)
transformer_encoder_295740:	� 
dense_295744:
��
dense_295746:	�!
dense_1_295750:	�
dense_1_295752:
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�,positional_embedding/StatefulPartitionedCall�+transformer_encoder/StatefulPartitionedCall�
,positional_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1positional_embedding_295709positional_embedding_295711positional_embedding_295713*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_positional_embedding_layer_call_and_return_conditional_losses_295082�
+transformer_encoder/StatefulPartitionedCallStatefulPartitionedCall5positional_embedding/StatefulPartitionedCall:output:0transformer_encoder_295716transformer_encoder_295718transformer_encoder_295720transformer_encoder_295722transformer_encoder_295724transformer_encoder_295726transformer_encoder_295728transformer_encoder_295730transformer_encoder_295732transformer_encoder_295734transformer_encoder_295736transformer_encoder_295738transformer_encoder_295740*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*/
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_transformer_encoder_layer_call_and_return_conditional_losses_295179�
(global_average_pooling1d/PartitionedCallPartitionedCall4transformer_encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *]
fXRV
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_295018�
dense/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_295744dense_295746*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_295219�
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_295230�
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_295750dense_1_295752*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_295243w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall-^positional_embedding/StatefulPartitionedCall,^transformer_encoder/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : :
��: : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2\
,positional_embedding/StatefulPartitionedCall,positional_embedding/StatefulPartitionedCall2Z
+transformer_encoder/StatefulPartitionedCall+transformer_encoder/StatefulPartitionedCall:T P
+
_output_shapes
:���������
!
_user_specified_name	input_1:&"
 
_output_shapes
:
��
�|
�
O__inference_transformer_encoder_layer_call_and_return_conditional_losses_296536

inputsR
:multi_head_attention_einsum_einsum_readvariableop_resource:��T
<multi_head_attention_einsum_1_einsum_readvariableop_resource:��T
<multi_head_attention_einsum_2_einsum_readvariableop_resource:��T
<multi_head_attention_einsum_5_einsum_readvariableop_resource:��?
0multi_head_attention_add_readvariableop_resource:	�H
9layer_normalization_batchnorm_mul_readvariableop_resource:	�D
5layer_normalization_batchnorm_readvariableop_resource:	�J
2conv1d_conv1d_expanddims_1_readvariableop_resource:��5
&conv1d_biasadd_readvariableop_resource:	�L
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:��7
(conv1d_1_biasadd_readvariableop_resource:	�J
;layer_normalization_1_batchnorm_mul_readvariableop_resource:	�F
7layer_normalization_1_batchnorm_readvariableop_resource:	�
identity��conv1d/BiasAdd/ReadVariableOp�)conv1d/Conv1D/ExpandDims_1/ReadVariableOp�conv1d_1/BiasAdd/ReadVariableOp�+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp�,layer_normalization/batchnorm/ReadVariableOp�0layer_normalization/batchnorm/mul/ReadVariableOp�.layer_normalization_1/batchnorm/ReadVariableOp�2layer_normalization_1/batchnorm/mul/ReadVariableOp�'multi_head_attention/add/ReadVariableOp�1multi_head_attention/einsum/Einsum/ReadVariableOp�3multi_head_attention/einsum_1/Einsum/ReadVariableOp�3multi_head_attention/einsum_2/Einsum/ReadVariableOp�3multi_head_attention/einsum_5/Einsum/ReadVariableOp�
1multi_head_attention/einsum/Einsum/ReadVariableOpReadVariableOp:multi_head_attention_einsum_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
"multi_head_attention/einsum/EinsumEinsuminputs9multi_head_attention/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...NI,HIO->...NHO�
3multi_head_attention/einsum_1/Einsum/ReadVariableOpReadVariableOp<multi_head_attention_einsum_1_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
$multi_head_attention/einsum_1/EinsumEinsuminputs;multi_head_attention/einsum_1/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...MI,HIO->...MHO�
3multi_head_attention/einsum_2/Einsum/ReadVariableOpReadVariableOp<multi_head_attention_einsum_2_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
$multi_head_attention/einsum_2/EinsumEinsuminputs;multi_head_attention/einsum_2/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������*
equation...MI,HIO->...MHO_
multi_head_attention/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �Cg
multi_head_attention/SqrtSqrt#multi_head_attention/Const:output:0*
T0*
_output_shapes
: �
multi_head_attention/truedivRealDiv+multi_head_attention/einsum/Einsum:output:0multi_head_attention/Sqrt:y:0*
T0*0
_output_shapes
:�����������
$multi_head_attention/einsum_3/EinsumEinsum multi_head_attention/truediv:z:0-multi_head_attention/einsum_1/Einsum:output:0*
N*
T0*/
_output_shapes
:���������*#
equation...NHO,...MHO->...HNM�
multi_head_attention/SoftmaxSoftmax-multi_head_attention/einsum_3/Einsum:output:0*
T0*/
_output_shapes
:����������
'multi_head_attention/dropout_1/IdentityIdentity&multi_head_attention/Softmax:softmax:0*
T0*/
_output_shapes
:����������
$multi_head_attention/einsum_4/EinsumEinsum0multi_head_attention/dropout_1/Identity:output:0-multi_head_attention/einsum_2/Einsum:output:0*
N*
T0*0
_output_shapes
:����������*#
equation...HNM,...MHI->...NHI�
3multi_head_attention/einsum_5/Einsum/ReadVariableOpReadVariableOp<multi_head_attention_einsum_5_einsum_readvariableop_resource*$
_output_shapes
:��*
dtype0�
$multi_head_attention/einsum_5/EinsumEinsum-multi_head_attention/einsum_4/Einsum:output:0;multi_head_attention/einsum_5/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������*
equation...NHI,HIO->...NO�
'multi_head_attention/add/ReadVariableOpReadVariableOp0multi_head_attention_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
multi_head_attention/addAddV2-multi_head_attention/einsum_5/Einsum:output:0/multi_head_attention/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������s
dropout_2/IdentityIdentitymulti_head_attention/add:z:0*
T0*,
_output_shapes
:����������|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
 layer_normalization/moments/meanMeandropout_2/Identity:output:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:����������
-layer_normalization/moments/SquaredDifferenceSquaredDifferencedropout_2/Identity:output:01layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/mul_1Muldropout_2/Identity:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������t
addAddV2'layer_normalization/batchnorm/add_1:z:0inputs*
T0*,
_output_shapes
:����������g
conv1d/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d/Conv1D/ExpandDims
ExpandDimsadd:z:0%conv1d/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
)conv1d/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0`
conv1d/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d/Conv1D/ExpandDims_1
ExpandDims1conv1d/Conv1D/ExpandDims_1/ReadVariableOp:value:0'conv1d/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
conv1d/Conv1DConv2D!conv1d/Conv1D/ExpandDims:output:0#conv1d/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
conv1d/Conv1D/SqueezeSqueezeconv1d/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d/BiasAddBiasAddconv1d/Conv1D/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������c
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*,
_output_shapes
:����������p
dropout_3/IdentityIdentityconv1d/Relu:activations:0*
T0*,
_output_shapes
:����������i
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
conv1d_1/Conv1D/ExpandDims
ExpandDimsdropout_3/Identity:output:0'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:�����������
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*$
_output_shapes
:��*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : �
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*(
_output_shapes
:���
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

����������
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
"layer_normalization_1/moments/meanMeanconv1d_1/BiasAdd:output:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:����������
/layer_normalization_1/moments/SquaredDifferenceSquaredDifferenceconv1d_1/BiasAdd:output:03layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/mul_1Mulconv1d_1/BiasAdd:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������y
add_1AddV2add:z:0)layer_normalization_1/batchnorm/add_1:z:0*
T0*,
_output_shapes
:����������]
IdentityIdentity	add_1:z:0^NoOp*
T0*,
_output_shapes
:�����������
NoOpNoOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/Conv1D/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp(^multi_head_attention/add/ReadVariableOp2^multi_head_attention/einsum/Einsum/ReadVariableOp4^multi_head_attention/einsum_1/Einsum/ReadVariableOp4^multi_head_attention/einsum_2/Einsum/ReadVariableOp4^multi_head_attention/einsum_5/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:����������: : : : : : : : : : : : : 2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/Conv1D/ExpandDims_1/ReadVariableOp)conv1d/Conv1D/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2R
'multi_head_attention/add/ReadVariableOp'multi_head_attention/add/ReadVariableOp2f
1multi_head_attention/einsum/Einsum/ReadVariableOp1multi_head_attention/einsum/Einsum/ReadVariableOp2j
3multi_head_attention/einsum_1/Einsum/ReadVariableOp3multi_head_attention/einsum_1/Einsum/ReadVariableOp2j
3multi_head_attention/einsum_2/Einsum/ReadVariableOp3multi_head_attention/einsum_2/Einsum/ReadVariableOp2j
3multi_head_attention/einsum_5/Einsum/ReadVariableOp3multi_head_attention/einsum_5/Einsum/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
5__inference_positional_embedding_layer_call_fn_296300
x
unknown:	�
	unknown_0:	�
	unknown_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_positional_embedding_layer_call_and_return_conditional_losses_295082t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':���������: : :
��22
StatefulPartitionedCallStatefulPartitionedCall:N J
+
_output_shapes
:���������

_user_specified_namex:&"
 
_output_shapes
:
��
�
p
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_296365

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�

�
A__inference_dense_layer_call_and_return_conditional_losses_296666

inputs2
matmul_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:����������b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
5__inference_transformer_model_17_layer_call_fn_295904
x
unknown:	�
	unknown_0:	�
	unknown_1!
	unknown_2:��!
	unknown_3:��!
	unknown_4:��!
	unknown_5:��
	unknown_6:	�
	unknown_7:	�
	unknown_8:	�!
	unknown_9:��

unknown_10:	�"

unknown_11:��

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:	�

unknown_18:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*5
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *Y
fTRR
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_295250o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*\
_input_shapesK
I:���������: : :
��: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
+
_output_shapes
:���������

_user_specified_namex:&"
 
_output_shapes
:
��"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
?
input_14
serving_default_input_1:0���������<
output_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	mlp_units
		optimizer

positional_embedding
encoders
avg_pool

mlp_layers

mlp_output

signatures"
_tf_keras_model
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
 16
!17
"18"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
 16
!17
"18"
trackable_list_wrapper
 "
trackable_list_wrapper
�
#non_trainable_variables

$layers
%metrics
&layer_regularization_losses
'layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
(trace_0
)trace_1
*trace_2
+trace_32�
5__inference_transformer_model_17_layer_call_fn_295293
5__inference_transformer_model_17_layer_call_fn_295904
5__inference_transformer_model_17_layer_call_fn_295949
5__inference_transformer_model_17_layer_call_fn_295706�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z(trace_0z)trace_1z*trace_2z+trace_3
�
,trace_0
-trace_1
.trace_2
/trace_32�
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_296105
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_296289
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_295756
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_295806�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z,trace_0z-trace_1z.trace_2z/trace_3
�B�
!__inference__wrapped_model_295008input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
�

0beta_1

1beta_2
	2decay
3learning_rate
4iterm�m�m�m�m�m�m�m�m�m�m�m�m�m�m�m� m�!m�"m�v�v�v�v�v�v�v�v�v�v�v�v�v�v�v�v� v�!v�"v�"
	optimizer
�
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;	embedding"
_tf_keras_layer
'
<0"
trackable_list_wrapper
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
.
C0
D1"
trackable_list_wrapper
�
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

!kernel
"bias"
_tf_keras_layer
,
Kserving_default"
signature_map
K:I	�28transformer_model_17/positional_embedding/dense_2/kernel
E:C�26transformer_model_17/positional_embedding/dense_2/bias
b:`��2Jtransformer_model_17/transformer_encoder/multi_head_attention/query_kernel
`:^��2Htransformer_model_17/transformer_encoder/multi_head_attention/key_kernel
b:`��2Jtransformer_model_17/transformer_encoder/multi_head_attention/value_kernel
g:e��2Otransformer_model_17/transformer_encoder/multi_head_attention/projection_kernel
\:Z�2Mtransformer_model_17/transformer_encoder/multi_head_attention/projection_bias
Q:O�2Btransformer_model_17/transformer_encoder/layer_normalization/gamma
P:N�2Atransformer_model_17/transformer_encoder/layer_normalization/beta
N:L��26transformer_model_17/transformer_encoder/conv1d/kernel
C:A�24transformer_model_17/transformer_encoder/conv1d/bias
P:N��28transformer_model_17/transformer_encoder/conv1d_1/kernel
E:C�26transformer_model_17/transformer_encoder/conv1d_1/bias
S:Q�2Dtransformer_model_17/transformer_encoder/layer_normalization_1/gamma
R:P�2Ctransformer_model_17/transformer_encoder/layer_normalization_1/beta
5:3
��2!transformer_model_17/dense/kernel
.:,�2transformer_model_17/dense/bias
6:4	�2#transformer_model_17/dense_1/kernel
/:-2!transformer_model_17/dense_1/bias
 "
trackable_list_wrapper
J

0
<1
2
C3
D4
5"
trackable_list_wrapper
5
L0
M1
N2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_transformer_model_17_layer_call_fn_295293input_1"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
5__inference_transformer_model_17_layer_call_fn_295904x"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
5__inference_transformer_model_17_layer_call_fn_295949x"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
5__inference_transformer_model_17_layer_call_fn_295706input_1"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_296105x"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_296289x"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_295756input_1"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_295806input_1"�
���
FullArgSpec$
args�
jself
jx

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
: (2beta_1
: (2beta_2
: (2decay
: (2learning_rate
:	 (2	Adam/iter
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
�
Ttrace_02�
5__inference_positional_embedding_layer_call_fn_296300�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zTtrace_0
�
Utrace_02�
P__inference_positional_embedding_layer_call_and_return_conditional_losses_296354�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zUtrace_0
�
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses
b
attn_heads
c
attn_multi
dattn_dropout
e	attn_norm
fff_conv1
g
ff_dropout
hff_conv2
iff_norm"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�
otrace_02�
9__inference_global_average_pooling1d_layer_call_fn_296359�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zotrace_0
�
ptrace_02�
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_296365�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zptrace_0
�
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses

kernel
 bias"
_tf_keras_layer
�
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses
}_random_generator"
_tf_keras_layer
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
~non_trainable_variables

layers
�metrics
 �layer_regularization_losses
�layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_1_layer_call_fn_296374�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_dense_1_layer_call_and_return_conditional_losses_296385�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�B�
$__inference_signature_wrapper_295859input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
 "
trackable_list_wrapper
'
;0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_positional_embedding_layer_call_fn_296300x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_positional_embedding_layer_call_and_return_conditional_losses_296354x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
~
0
1
2
3
4
5
6
7
8
9
10
11
12"
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
8
9
10
11
12"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
4__inference_transformer_encoder_layer_call_fn_296416
4__inference_transformer_encoder_layer_call_fn_296447�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
O__inference_transformer_encoder_layer_call_and_return_conditional_losses_296536
O__inference_transformer_encoder_layer_call_and_return_conditional_losses_296646�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�dropout
query_kernel

key_kernel
value_kernel
projection_kernel
projection_bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

kernel
bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	gamma
beta"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
9__inference_global_average_pooling1d_layer_call_fn_296359inputs"�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_296365inputs"�
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
&__inference_dense_layer_call_fn_296655�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
A__inference_dense_layer_call_and_return_conditional_losses_296666�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
(__inference_dropout_layer_call_fn_296671
(__inference_dropout_layer_call_fn_296676�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
C__inference_dropout_layer_call_and_return_conditional_losses_296681
C__inference_dropout_layer_call_and_return_conditional_losses_296693�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_1_layer_call_fn_296374inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_1_layer_call_and_return_conditional_losses_296385inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
Q
c0
d1
e2
f3
g4
h5
i6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
4__inference_transformer_encoder_layer_call_fn_296416inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
4__inference_transformer_encoder_layer_call_fn_296447inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_transformer_encoder_layer_call_and_return_conditional_losses_296536inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_transformer_encoder_layer_call_and_return_conditional_losses_296646inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
"
_generic_user_object
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_dense_layer_call_fn_296655inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
A__inference_dense_layer_call_and_return_conditional_losses_296666inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dropout_layer_call_fn_296671inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
(__inference_dropout_layer_call_fn_296676inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
C__inference_dropout_layer_call_and_return_conditional_losses_296681inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
C__inference_dropout_layer_call_and_return_conditional_losses_296693inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
P:N	�2?Adam/transformer_model_17/positional_embedding/dense_2/kernel/m
J:H�2=Adam/transformer_model_17/positional_embedding/dense_2/bias/m
g:e��2QAdam/transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/m
e:c��2OAdam/transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/m
g:e��2QAdam/transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/m
l:j��2VAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/m
a:_�2TAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_bias/m
V:T�2IAdam/transformer_model_17/transformer_encoder/layer_normalization/gamma/m
U:S�2HAdam/transformer_model_17/transformer_encoder/layer_normalization/beta/m
S:Q��2=Adam/transformer_model_17/transformer_encoder/conv1d/kernel/m
H:F�2;Adam/transformer_model_17/transformer_encoder/conv1d/bias/m
U:S��2?Adam/transformer_model_17/transformer_encoder/conv1d_1/kernel/m
J:H�2=Adam/transformer_model_17/transformer_encoder/conv1d_1/bias/m
X:V�2KAdam/transformer_model_17/transformer_encoder/layer_normalization_1/gamma/m
W:U�2JAdam/transformer_model_17/transformer_encoder/layer_normalization_1/beta/m
::8
��2(Adam/transformer_model_17/dense/kernel/m
3:1�2&Adam/transformer_model_17/dense/bias/m
;:9	�2*Adam/transformer_model_17/dense_1/kernel/m
4:22(Adam/transformer_model_17/dense_1/bias/m
P:N	�2?Adam/transformer_model_17/positional_embedding/dense_2/kernel/v
J:H�2=Adam/transformer_model_17/positional_embedding/dense_2/bias/v
g:e��2QAdam/transformer_model_17/transformer_encoder/multi_head_attention/query_kernel/v
e:c��2OAdam/transformer_model_17/transformer_encoder/multi_head_attention/key_kernel/v
g:e��2QAdam/transformer_model_17/transformer_encoder/multi_head_attention/value_kernel/v
l:j��2VAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_kernel/v
a:_�2TAdam/transformer_model_17/transformer_encoder/multi_head_attention/projection_bias/v
V:T�2IAdam/transformer_model_17/transformer_encoder/layer_normalization/gamma/v
U:S�2HAdam/transformer_model_17/transformer_encoder/layer_normalization/beta/v
S:Q��2=Adam/transformer_model_17/transformer_encoder/conv1d/kernel/v
H:F�2;Adam/transformer_model_17/transformer_encoder/conv1d/bias/v
U:S��2?Adam/transformer_model_17/transformer_encoder/conv1d_1/kernel/v
J:H�2=Adam/transformer_model_17/transformer_encoder/conv1d_1/bias/v
X:V�2KAdam/transformer_model_17/transformer_encoder/layer_normalization_1/gamma/v
W:U�2JAdam/transformer_model_17/transformer_encoder/layer_normalization_1/beta/v
::8
��2(Adam/transformer_model_17/dense/kernel/v
3:1�2&Adam/transformer_model_17/dense/bias/v
;:9	�2*Adam/transformer_model_17/dense_1/kernel/v
4:22(Adam/transformer_model_17/dense_1/bias/v
J
Constjtf.TrackableConstant�
!__inference__wrapped_model_295008�� !"4�1
*�'
%�"
input_1���������
� "3�0
.
output_1"�
output_1����������
C__inference_dense_1_layer_call_and_return_conditional_losses_296385]!"0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� |
(__inference_dense_1_layer_call_fn_296374P!"0�-
&�#
!�
inputs����������
� "�����������
A__inference_dense_layer_call_and_return_conditional_losses_296666^ 0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� {
&__inference_dense_layer_call_fn_296655Q 0�-
&�#
!�
inputs����������
� "������������
C__inference_dropout_layer_call_and_return_conditional_losses_296681^4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
C__inference_dropout_layer_call_and_return_conditional_losses_296693^4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� }
(__inference_dropout_layer_call_fn_296671Q4�1
*�'
!�
inputs����������
p 
� "�����������}
(__inference_dropout_layer_call_fn_296676Q4�1
*�'
!�
inputs����������
p
� "������������
T__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_296365{I�F
?�<
6�3
inputs'���������������������������

 
� ".�+
$�!
0������������������
� �
9__inference_global_average_pooling1d_layer_call_fn_296359nI�F
?�<
6�3
inputs'���������������������������

 
� "!��������������������
P__inference_positional_embedding_layer_call_and_return_conditional_losses_296354b�.�+
$�!
�
x���������
� "*�'
 �
0����������
� �
5__inference_positional_embedding_layer_call_fn_296300U�.�+
$�!
�
x���������
� "������������
$__inference_signature_wrapper_295859�� !"?�<
� 
5�2
0
input_1%�"
input_1���������"3�0
.
output_1"�
output_1����������
O__inference_transformer_encoder_layer_call_and_return_conditional_losses_296536u8�5
.�+
%�"
inputs����������
p 
� "*�'
 �
0����������
� �
O__inference_transformer_encoder_layer_call_and_return_conditional_losses_296646u8�5
.�+
%�"
inputs����������
p
� "*�'
 �
0����������
� �
4__inference_transformer_encoder_layer_call_fn_296416h8�5
.�+
%�"
inputs����������
p 
� "������������
4__inference_transformer_encoder_layer_call_fn_296447h8�5
.�+
%�"
inputs����������
p
� "������������
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_295756x� !"8�5
.�+
%�"
input_1���������
p 
� "%�"
�
0���������
� �
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_295806x� !"8�5
.�+
%�"
input_1���������
p
� "%�"
�
0���������
� �
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_296105r� !"2�/
(�%
�
x���������
p 
� "%�"
�
0���������
� �
P__inference_transformer_model_17_layer_call_and_return_conditional_losses_296289r� !"2�/
(�%
�
x���������
p
� "%�"
�
0���������
� �
5__inference_transformer_model_17_layer_call_fn_295293k� !"8�5
.�+
%�"
input_1���������
p 
� "�����������
5__inference_transformer_model_17_layer_call_fn_295706k� !"8�5
.�+
%�"
input_1���������
p
� "�����������
5__inference_transformer_model_17_layer_call_fn_295904e� !"2�/
(�%
�
x���������
p 
� "�����������
5__inference_transformer_model_17_layer_call_fn_295949e� !"2�/
(�%
�
x���������
p
� "����������