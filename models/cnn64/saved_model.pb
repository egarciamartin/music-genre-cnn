��
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.02v2.6.0-rc2-32-g919f693420e8��
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:@*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:@*
dtype0
�
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:@*
dtype0
�
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:@*
dtype0
�
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:@*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�r
*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	�r
*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:
*
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
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
�
Adam/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_2/kernel/m
�
*Adam/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/m*&
_output_shapes
:@*
dtype0
�
Adam/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_2/bias/m
y
(Adam/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_3/kernel/m
�
*Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/m*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_3/bias/m
y
(Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_4/kernel/m
�
*Adam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/m*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_4/bias/m
y
(Adam/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_5/kernel/m
�
*Adam/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/m*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_5/bias/m
y
(Adam/conv2d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�r
*&
shared_nameAdam/dense_3/kernel/m
�
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	�r
*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:
*
dtype0
�
Adam/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_2/kernel/v
�
*Adam/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/kernel/v*&
_output_shapes
:@*
dtype0
�
Adam/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_2/bias/v
y
(Adam/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_2/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_3/kernel/v
�
*Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/v*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_3/bias/v
y
(Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_4/kernel/v
�
*Adam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/v*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_4/bias/v
y
(Adam/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*'
shared_nameAdam/conv2d_5/kernel/v
�
*Adam/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/v*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_5/bias/v
y
(Adam/conv2d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�r
*&
shared_nameAdam/dense_3/kernel/v
�
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	�r
*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
�L
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�K
value�KB�K B�K
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer-12
layer-13
layer_with_weights-4
layer-14
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
R
 	variables
!trainable_variables
"regularization_losses
#	keras_api
h

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
R
*	variables
+trainable_variables
,regularization_losses
-	keras_api
R
.	variables
/trainable_variables
0regularization_losses
1	keras_api
h

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
R
8	variables
9trainable_variables
:regularization_losses
;	keras_api
R
<	variables
=trainable_variables
>regularization_losses
?	keras_api
h

@kernel
Abias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
R
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
R
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
R
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
h

Rkernel
Sbias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
�
Xiter

Ybeta_1

Zbeta_2
	[decay
\learning_ratem�m�$m�%m�2m�3m�@m�Am�Rm�Sm�v�v�$v�%v�2v�3v�@v�Av�Rv�Sv�
F
0
1
$2
%3
24
35
@6
A7
R8
S9
F
0
1
$2
%3
24
35
@6
A7
R8
S9
 
�
	variables
]non_trainable_variables
^layer_metrics
_layer_regularization_losses
trainable_variables

`layers
ametrics
regularization_losses
 
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
�
	variables
bnon_trainable_variables
clayer_metrics
dlayer_regularization_losses
trainable_variables

elayers
fmetrics
regularization_losses
 
 
 
�
	variables
gnon_trainable_variables
hlayer_metrics
ilayer_regularization_losses
trainable_variables

jlayers
kmetrics
regularization_losses
 
 
 
�
 	variables
lnon_trainable_variables
mlayer_metrics
nlayer_regularization_losses
!trainable_variables

olayers
pmetrics
"regularization_losses
[Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1

$0
%1
 
�
&	variables
qnon_trainable_variables
rlayer_metrics
slayer_regularization_losses
'trainable_variables

tlayers
umetrics
(regularization_losses
 
 
 
�
*	variables
vnon_trainable_variables
wlayer_metrics
xlayer_regularization_losses
+trainable_variables

ylayers
zmetrics
,regularization_losses
 
 
 
�
.	variables
{non_trainable_variables
|layer_metrics
}layer_regularization_losses
/trainable_variables

~layers
metrics
0regularization_losses
[Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

20
31

20
31
 
�
4	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
5trainable_variables
�layers
�metrics
6regularization_losses
 
 
 
�
8	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
9trainable_variables
�layers
�metrics
:regularization_losses
 
 
 
�
<	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
=trainable_variables
�layers
�metrics
>regularization_losses
[Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

@0
A1

@0
A1
 
�
B	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
Ctrainable_variables
�layers
�metrics
Dregularization_losses
 
 
 
�
F	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
Gtrainable_variables
�layers
�metrics
Hregularization_losses
 
 
 
�
J	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
Ktrainable_variables
�layers
�metrics
Lregularization_losses
 
 
 
�
N	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
Otrainable_variables
�layers
�metrics
Pregularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

R0
S1

R0
S1
 
�
T	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
Utrainable_variables
�layers
�metrics
Vregularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 
 
n
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14

�0
�1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

�total

�count
�	variables
�	keras_api
I

�total

�count
�
_fn_kwargs
�	variables
�	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

�0
�1

�	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

�0
�1

�	variables
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_2/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_3/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_3/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_4/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_4/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_5/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_5/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_2/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_2/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_3/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_3/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_4/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_4/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_5/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_5/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_input_2Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2conv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_63787
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv2d_2/kernel/m/Read/ReadVariableOp(Adam/conv2d_2/bias/m/Read/ReadVariableOp*Adam/conv2d_3/kernel/m/Read/ReadVariableOp(Adam/conv2d_3/bias/m/Read/ReadVariableOp*Adam/conv2d_4/kernel/m/Read/ReadVariableOp(Adam/conv2d_4/bias/m/Read/ReadVariableOp*Adam/conv2d_5/kernel/m/Read/ReadVariableOp(Adam/conv2d_5/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp*Adam/conv2d_2/kernel/v/Read/ReadVariableOp(Adam/conv2d_2/bias/v/Read/ReadVariableOp*Adam/conv2d_3/kernel/v/Read/ReadVariableOp(Adam/conv2d_3/bias/v/Read/ReadVariableOp*Adam/conv2d_4/kernel/v/Read/ReadVariableOp(Adam/conv2d_4/bias/v/Read/ReadVariableOp*Adam/conv2d_5/kernel/v/Read/ReadVariableOp(Adam/conv2d_5/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_64402
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasdense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_2/kernel/mAdam/conv2d_2/bias/mAdam/conv2d_3/kernel/mAdam/conv2d_3/bias/mAdam/conv2d_4/kernel/mAdam/conv2d_4/bias/mAdam/conv2d_5/kernel/mAdam/conv2d_5/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/conv2d_2/kernel/vAdam/conv2d_2/bias/vAdam/conv2d_3/kernel/vAdam/conv2d_3/bias/vAdam/conv2d_4/kernel/vAdam/conv2d_4/bias/vAdam/conv2d_5/kernel/vAdam/conv2d_5/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/v*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_64529��	
�
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_63339

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������&@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������&@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������M@:W S
/
_output_shapes
:���������M@
 
_user_specified_nameinputs
�
b
D__inference_dropout_4_layer_call_and_return_conditional_losses_63286

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:����������@2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:����������@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������@:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
�K
�	
 __inference__wrapped_model_63133
input_2I
/model_1_conv2d_2_conv2d_readvariableop_resource:@>
0model_1_conv2d_2_biasadd_readvariableop_resource:@I
/model_1_conv2d_3_conv2d_readvariableop_resource:@@>
0model_1_conv2d_3_biasadd_readvariableop_resource:@I
/model_1_conv2d_4_conv2d_readvariableop_resource:@@>
0model_1_conv2d_4_biasadd_readvariableop_resource:@I
/model_1_conv2d_5_conv2d_readvariableop_resource:@@>
0model_1_conv2d_5_biasadd_readvariableop_resource:@A
.model_1_dense_3_matmul_readvariableop_resource:	�r
=
/model_1_dense_3_biasadd_readvariableop_resource:

identity��'model_1/conv2d_2/BiasAdd/ReadVariableOp�&model_1/conv2d_2/Conv2D/ReadVariableOp�'model_1/conv2d_3/BiasAdd/ReadVariableOp�&model_1/conv2d_3/Conv2D/ReadVariableOp�'model_1/conv2d_4/BiasAdd/ReadVariableOp�&model_1/conv2d_4/Conv2D/ReadVariableOp�'model_1/conv2d_5/BiasAdd/ReadVariableOp�&model_1/conv2d_5/Conv2D/ReadVariableOp�&model_1/dense_3/BiasAdd/ReadVariableOp�%model_1/dense_3/MatMul/ReadVariableOp�
&model_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02(
&model_1/conv2d_2/Conv2D/ReadVariableOp�
model_1/conv2d_2/Conv2DConv2Dinput_2.model_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������~�@*
paddingVALID*
strides
2
model_1/conv2d_2/Conv2D�
'model_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model_1/conv2d_2/BiasAdd/ReadVariableOp�
model_1/conv2d_2/BiasAddBiasAdd model_1/conv2d_2/Conv2D:output:0/model_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������~�@2
model_1/conv2d_2/BiasAdd�
model_1/conv2d_2/ReluRelu!model_1/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������~�@2
model_1/conv2d_2/Relu�
model_1/max_pooling2d/MaxPoolMaxPool#model_1/conv2d_2/Relu:activations:0*0
_output_shapes
:���������?�@*
ksize
*
paddingVALID*
strides
2
model_1/max_pooling2d/MaxPool�
model_1/dropout_3/IdentityIdentity&model_1/max_pooling2d/MaxPool:output:0*
T0*0
_output_shapes
:���������?�@2
model_1/dropout_3/Identity�
&model_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02(
&model_1/conv2d_3/Conv2D/ReadVariableOp�
model_1/conv2d_3/Conv2DConv2D#model_1/dropout_3/Identity:output:0.model_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������=�@*
paddingVALID*
strides
2
model_1/conv2d_3/Conv2D�
'model_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model_1/conv2d_3/BiasAdd/ReadVariableOp�
model_1/conv2d_3/BiasAddBiasAdd model_1/conv2d_3/Conv2D:output:0/model_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������=�@2
model_1/conv2d_3/BiasAdd�
model_1/conv2d_3/ReluRelu!model_1/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������=�@2
model_1/conv2d_3/Relu�
model_1/max_pooling2d_1/MaxPoolMaxPool#model_1/conv2d_3/Relu:activations:0*0
_output_shapes
:����������@*
ksize
*
paddingVALID*
strides
2!
model_1/max_pooling2d_1/MaxPool�
model_1/dropout_4/IdentityIdentity(model_1/max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:����������@2
model_1/dropout_4/Identity�
&model_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02(
&model_1/conv2d_4/Conv2D/ReadVariableOp�
model_1/conv2d_4/Conv2DConv2D#model_1/dropout_4/Identity:output:0.model_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
2
model_1/conv2d_4/Conv2D�
'model_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model_1/conv2d_4/BiasAdd/ReadVariableOp�
model_1/conv2d_4/BiasAddBiasAdd model_1/conv2d_4/Conv2D:output:0/model_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@2
model_1/conv2d_4/BiasAdd�
model_1/conv2d_4/ReluRelu!model_1/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:����������@2
model_1/conv2d_4/Relu�
model_1/max_pooling2d_2/MaxPoolMaxPool#model_1/conv2d_4/Relu:activations:0*/
_output_shapes
:���������O@*
ksize
*
paddingVALID*
strides
2!
model_1/max_pooling2d_2/MaxPool�
model_1/dropout_5/IdentityIdentity(model_1/max_pooling2d_2/MaxPool:output:0*
T0*/
_output_shapes
:���������O@2
model_1/dropout_5/Identity�
&model_1/conv2d_5/Conv2D/ReadVariableOpReadVariableOp/model_1_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02(
&model_1/conv2d_5/Conv2D/ReadVariableOp�
model_1/conv2d_5/Conv2DConv2D#model_1/dropout_5/Identity:output:0.model_1/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������M@*
paddingVALID*
strides
2
model_1/conv2d_5/Conv2D�
'model_1/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp0model_1_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model_1/conv2d_5/BiasAdd/ReadVariableOp�
model_1/conv2d_5/BiasAddBiasAdd model_1/conv2d_5/Conv2D:output:0/model_1/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������M@2
model_1/conv2d_5/BiasAdd�
model_1/conv2d_5/ReluRelu!model_1/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:���������M@2
model_1/conv2d_5/Relu�
model_1/max_pooling2d_3/MaxPoolMaxPool#model_1/conv2d_5/Relu:activations:0*/
_output_shapes
:���������&@*
ksize
*
paddingVALID*
strides
2!
model_1/max_pooling2d_3/MaxPool�
model_1/dropout_6/IdentityIdentity(model_1/max_pooling2d_3/MaxPool:output:0*
T0*/
_output_shapes
:���������&@2
model_1/dropout_6/Identity�
model_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 9  2
model_1/flatten_1/Const�
model_1/flatten_1/ReshapeReshape#model_1/dropout_6/Identity:output:0 model_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:����������r2
model_1/flatten_1/Reshape�
%model_1/dense_3/MatMul/ReadVariableOpReadVariableOp.model_1_dense_3_matmul_readvariableop_resource*
_output_shapes
:	�r
*
dtype02'
%model_1/dense_3/MatMul/ReadVariableOp�
model_1/dense_3/MatMulMatMul"model_1/flatten_1/Reshape:output:0-model_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
model_1/dense_3/MatMul�
&model_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02(
&model_1/dense_3/BiasAdd/ReadVariableOp�
model_1/dense_3/BiasAddBiasAdd model_1/dense_3/MatMul:product:0.model_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
model_1/dense_3/BiasAdd�
model_1/dense_3/SoftmaxSoftmax model_1/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
model_1/dense_3/Softmax|
IdentityIdentity!model_1/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
2

Identity�
NoOpNoOp(^model_1/conv2d_2/BiasAdd/ReadVariableOp'^model_1/conv2d_2/Conv2D/ReadVariableOp(^model_1/conv2d_3/BiasAdd/ReadVariableOp'^model_1/conv2d_3/Conv2D/ReadVariableOp(^model_1/conv2d_4/BiasAdd/ReadVariableOp'^model_1/conv2d_4/Conv2D/ReadVariableOp(^model_1/conv2d_5/BiasAdd/ReadVariableOp'^model_1/conv2d_5/Conv2D/ReadVariableOp'^model_1/dense_3/BiasAdd/ReadVariableOp&^model_1/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2R
'model_1/conv2d_2/BiasAdd/ReadVariableOp'model_1/conv2d_2/BiasAdd/ReadVariableOp2P
&model_1/conv2d_2/Conv2D/ReadVariableOp&model_1/conv2d_2/Conv2D/ReadVariableOp2R
'model_1/conv2d_3/BiasAdd/ReadVariableOp'model_1/conv2d_3/BiasAdd/ReadVariableOp2P
&model_1/conv2d_3/Conv2D/ReadVariableOp&model_1/conv2d_3/Conv2D/ReadVariableOp2R
'model_1/conv2d_4/BiasAdd/ReadVariableOp'model_1/conv2d_4/BiasAdd/ReadVariableOp2P
&model_1/conv2d_4/Conv2D/ReadVariableOp&model_1/conv2d_4/Conv2D/ReadVariableOp2R
'model_1/conv2d_5/BiasAdd/ReadVariableOp'model_1/conv2d_5/BiasAdd/ReadVariableOp2P
&model_1/conv2d_5/Conv2D/ReadVariableOp&model_1/conv2d_5/Conv2D/ReadVariableOp2P
&model_1/dense_3/BiasAdd/ReadVariableOp&model_1/dense_3/BiasAdd/ReadVariableOp2N
%model_1/dense_3/MatMul/ReadVariableOp%model_1/dense_3/MatMul/ReadVariableOp:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�
K
/__inference_max_pooling2d_3_layer_call_fn_64194

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_633392
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������&@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������M@:W S
/
_output_shapes
:���������M@
 
_user_specified_nameinputs
�
�
(__inference_conv2d_2_layer_call_fn_63972

inputs!
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������~�@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_632392
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������~�@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�A
�
B__inference_model_1_layer_call_and_return_conditional_losses_63886

inputsA
'conv2d_2_conv2d_readvariableop_resource:@6
(conv2d_2_biasadd_readvariableop_resource:@A
'conv2d_3_conv2d_readvariableop_resource:@@6
(conv2d_3_biasadd_readvariableop_resource:@A
'conv2d_4_conv2d_readvariableop_resource:@@6
(conv2d_4_biasadd_readvariableop_resource:@A
'conv2d_5_conv2d_readvariableop_resource:@@6
(conv2d_5_biasadd_readvariableop_resource:@9
&dense_3_matmul_readvariableop_resource:	�r
5
'dense_3_biasadd_readvariableop_resource:

identity��conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�conv2d_5/BiasAdd/ReadVariableOp�conv2d_5/Conv2D/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2Dinputs&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������~�@*
paddingVALID*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������~�@2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������~�@2
conv2d_2/Relu�
max_pooling2d/MaxPoolMaxPoolconv2d_2/Relu:activations:0*0
_output_shapes
:���������?�@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool�
dropout_3/IdentityIdentitymax_pooling2d/MaxPool:output:0*
T0*0
_output_shapes
:���������?�@2
dropout_3/Identity�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2Ddropout_3/Identity:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������=�@*
paddingVALID*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������=�@2
conv2d_3/BiasAdd|
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������=�@2
conv2d_3/Relu�
max_pooling2d_1/MaxPoolMaxPoolconv2d_3/Relu:activations:0*0
_output_shapes
:����������@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
dropout_4/IdentityIdentity max_pooling2d_1/MaxPool:output:0*
T0*0
_output_shapes
:����������@2
dropout_4/Identity�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2Ddropout_4/Identity:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@2
conv2d_4/BiasAdd|
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:����������@2
conv2d_4/Relu�
max_pooling2d_2/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:���������O@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPool�
dropout_5/IdentityIdentity max_pooling2d_2/MaxPool:output:0*
T0*/
_output_shapes
:���������O@2
dropout_5/Identity�
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_5/Conv2D/ReadVariableOp�
conv2d_5/Conv2DConv2Ddropout_5/Identity:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������M@*
paddingVALID*
strides
2
conv2d_5/Conv2D�
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_5/BiasAdd/ReadVariableOp�
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������M@2
conv2d_5/BiasAdd{
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:���������M@2
conv2d_5/Relu�
max_pooling2d_3/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:���������&@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPool�
dropout_6/IdentityIdentity max_pooling2d_3/MaxPool:output:0*
T0*/
_output_shapes
:���������&@2
dropout_6/Identitys
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 9  2
flatten_1/Const�
flatten_1/ReshapeReshapedropout_6/Identity:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:����������r2
flatten_1/Reshape�
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	�r
*
dtype02
dense_3/MatMul/ReadVariableOp�
dense_3/MatMulMatMulflatten_1/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_3/MatMul�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_3/BiasAdd/ReadVariableOp�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
dense_3/Softmaxt
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
2

Identity�
NoOpNoOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_3_layer_call_fn_64189

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_632082
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
I
-__inference_max_pooling2d_layer_call_fn_63988

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_631422
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_63239

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������~�@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������~�@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������~�@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������~�@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_63983

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������~�@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������~�@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������~�@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������~�@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
b
D__inference_dropout_5_layer_call_and_return_conditional_losses_63316

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:���������O@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������O@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������O@:W S
/
_output_shapes
:���������O@
 
_user_specified_nameinputs
�
c
D__inference_dropout_6_layer_call_and_return_conditional_losses_63433

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������&@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������&@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������&@2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������&@2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������&@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������&@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������&@:W S
/
_output_shapes
:���������&@
 
_user_specified_nameinputs
�
c
D__inference_dropout_6_layer_call_and_return_conditional_losses_64231

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������&@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������&@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������&@2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������&@2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������&@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������&@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������&@:W S
/
_output_shapes
:���������&@
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_64137

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������O@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������O@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������@:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
�
�
C__inference_conv2d_5_layer_call_and_return_conditional_losses_64184

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������M@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������M@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������M@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������M@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������O@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������O@
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_63279

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������@*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������=�@:X T
0
_output_shapes
:���������=�@
 
_user_specified_nameinputs
�
�
(__inference_conv2d_3_layer_call_fn_64039

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������=�@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_632692
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������=�@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������?�@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������?�@
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_63998

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
c
D__inference_dropout_4_layer_call_and_return_conditional_losses_63509

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:����������@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:����������@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:����������@2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:����������@2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:����������@2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������@:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
�
c
D__inference_dropout_4_layer_call_and_return_conditional_losses_64097

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:����������@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:����������@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:����������@2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:����������@2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:����������@2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������@:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
�T
�
__inference__traced_save_64402
file_prefix.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_conv2d_2_kernel_m_read_readvariableop3
/savev2_adam_conv2d_2_bias_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_m_read_readvariableop3
/savev2_adam_conv2d_3_bias_m_read_readvariableop5
1savev2_adam_conv2d_4_kernel_m_read_readvariableop3
/savev2_adam_conv2d_4_bias_m_read_readvariableop5
1savev2_adam_conv2d_5_kernel_m_read_readvariableop3
/savev2_adam_conv2d_5_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop5
1savev2_adam_conv2d_2_kernel_v_read_readvariableop3
/savev2_adam_conv2d_2_bias_v_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop3
/savev2_adam_conv2d_3_bias_v_read_readvariableop5
1savev2_adam_conv2d_4_kernel_v_read_readvariableop3
/savev2_adam_conv2d_4_bias_v_read_readvariableop5
1savev2_adam_conv2d_5_kernel_v_read_readvariableop3
/savev2_adam_conv2d_5_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*�
value�B�(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv2d_2_kernel_m_read_readvariableop/savev2_adam_conv2d_2_bias_m_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop1savev2_adam_conv2d_4_kernel_m_read_readvariableop/savev2_adam_conv2d_4_bias_m_read_readvariableop1savev2_adam_conv2d_5_kernel_m_read_readvariableop/savev2_adam_conv2d_5_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop1savev2_adam_conv2d_2_kernel_v_read_readvariableop/savev2_adam_conv2d_2_bias_v_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop1savev2_adam_conv2d_4_kernel_v_read_readvariableop/savev2_adam_conv2d_4_bias_v_read_readvariableop1savev2_adam_conv2d_5_kernel_v_read_readvariableop/savev2_adam_conv2d_5_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :@:@:@@:@:@@:@:@@:@:	�r
:
: : : : : : : : : :@:@:@@:@:@@:@:@@:@:	�r
:
:@:@:@@:@:@@:@:@@:@:	�r
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:%	!

_output_shapes
:	�r
: 


_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	�r
: 

_output_shapes
:
:,(
&
_output_shapes
:@: 

_output_shapes
:@:, (
&
_output_shapes
:@@: !

_output_shapes
:@:,"(
&
_output_shapes
:@@: #

_output_shapes
:@:,$(
&
_output_shapes
:@@: %

_output_shapes
:@:%&!

_output_shapes
:	�r
: '

_output_shapes
:
:(

_output_shapes
: 
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_64065

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
b
)__inference_dropout_6_layer_call_fn_64214

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_634332
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������&@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������&@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������&@
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_63186

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
b
D__inference_dropout_4_layer_call_and_return_conditional_losses_64085

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:����������@2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:����������@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������@:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
�
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_64018

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:���������?�@2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:���������?�@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������?�@:X T
0
_output_shapes
:���������?�@
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_64199

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_64242

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 9  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������r2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������r2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������&@:W S
/
_output_shapes
:���������&@
 
_user_specified_nameinputs
�
E
)__inference_dropout_3_layer_call_fn_64008

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
:���������?�@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_632562
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������?�@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������?�@:X T
0
_output_shapes
:���������?�@
 
_user_specified_nameinputs
�
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_64030

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:���������?�@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:���������?�@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:���������?�@2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:���������?�@2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:���������?�@2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:���������?�@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������?�@:X T
0
_output_shapes
:���������?�@
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_1_layer_call_fn_64060

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
:����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_632792
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������=�@:X T
0
_output_shapes
:���������=�@
 
_user_specified_nameinputs
�
�
C__inference_conv2d_5_layer_call_and_return_conditional_losses_63329

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������M@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������M@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������M@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������M@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������O@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������O@
 
_user_specified_nameinputs
�
�
B__inference_dense_3_layer_call_and_return_conditional_losses_64262

inputs1
matmul_readvariableop_resource:	�r
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�r
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������r: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������r
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_64132

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_64050

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������=�@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������=�@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������=�@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������=�@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������?�@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������?�@
 
_user_specified_nameinputs
�

�
#__inference_signature_wrapper_63787
input_2!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:	�r

	unknown_8:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_631332
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�
�
(__inference_conv2d_4_layer_call_fn_64106

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_632992
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_64003

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:���������?�@*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:���������?�@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������~�@:X T
0
_output_shapes
:���������~�@
 
_user_specified_nameinputs
�
c
D__inference_dropout_3_layer_call_and_return_conditional_losses_63547

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Const|
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:���������?�@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:���������?�@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:���������?�@2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:���������?�@2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:���������?�@2
dropout/Mul_1n
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:���������?�@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������?�@:X T
0
_output_shapes
:���������?�@
 
_user_specified_nameinputs
�
E
)__inference_flatten_1_layer_call_fn_64236

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
:����������r* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_633542
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������r2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������&@:W S
/
_output_shapes
:���������&@
 
_user_specified_nameinputs
�
b
)__inference_dropout_5_layer_call_fn_64147

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������O@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_634712
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������O@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������O@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������O@
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_2_layer_call_fn_64127

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������O@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_633092
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������O@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������@:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
�

�
'__inference_model_1_layer_call_fn_63678
input_2!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:	�r

	unknown_8:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_636302
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�
�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_63299

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
�
I
-__inference_max_pooling2d_layer_call_fn_63993

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
:���������?�@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_632492
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:���������?�@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������~�@:X T
0
_output_shapes
:���������~�@
 
_user_specified_nameinputs
�
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_63354

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 9  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������r2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������r2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������&@:W S
/
_output_shapes
:���������&@
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_63249

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:���������?�@*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:���������?�@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������~�@:X T
0
_output_shapes
:���������~�@
 
_user_specified_nameinputs
�
b
)__inference_dropout_3_layer_call_fn_64013

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������?�@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_635472
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:���������?�@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������?�@22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:���������?�@
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_63309

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������O@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������O@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������@:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
�
�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_64117

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:����������@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:����������@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_63164

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
E
)__inference_dropout_4_layer_call_fn_64075

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
:����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_632862
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������@:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
�9
�
B__inference_model_1_layer_call_and_return_conditional_losses_63716
input_2(
conv2d_2_63681:@
conv2d_2_63683:@(
conv2d_3_63688:@@
conv2d_3_63690:@(
conv2d_4_63695:@@
conv2d_4_63697:@(
conv2d_5_63702:@@
conv2d_5_63704:@ 
dense_3_63710:	�r

dense_3_63712:

identity�� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinput_2conv2d_2_63681conv2d_2_63683*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������~�@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_632392"
 conv2d_2/StatefulPartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������?�@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_632492
max_pooling2d/PartitionedCall�
dropout_3/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������?�@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_632562
dropout_3/PartitionedCall�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0conv2d_3_63688conv2d_3_63690*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������=�@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_632692"
 conv2d_3/StatefulPartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_632792!
max_pooling2d_1/PartitionedCall�
dropout_4/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_632862
dropout_4/PartitionedCall�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0conv2d_4_63695conv2d_4_63697*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_632992"
 conv2d_4/StatefulPartitionedCall�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������O@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_633092!
max_pooling2d_2/PartitionedCall�
dropout_5/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������O@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_633162
dropout_5/PartitionedCall�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0conv2d_5_63702conv2d_5_63704*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������M@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_633292"
 conv2d_5/StatefulPartitionedCall�
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_633392!
max_pooling2d_3/PartitionedCall�
dropout_6/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_633462
dropout_6/PartitionedCall�
flatten_1/PartitionedCallPartitionedCall"dropout_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������r* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_633542
flatten_1/PartitionedCall�
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_63710dense_3_63712*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_633672!
dense_3/StatefulPartitionedCall�
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
2

Identity�
NoOpNoOp!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�
E
)__inference_dropout_6_layer_call_fn_64209

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_633462
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������&@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������&@:W S
/
_output_shapes
:���������&@
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_2_layer_call_fn_64122

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_631862
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
b
)__inference_dropout_4_layer_call_fn_64080

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_635092
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:����������@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������@22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������@
 
_user_specified_nameinputs
�
�
(__inference_conv2d_5_layer_call_fn_64173

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������M@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_633292
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������M@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������O@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������O@
 
_user_specified_nameinputs
�
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_64219

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:���������&@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������&@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������&@:W S
/
_output_shapes
:���������&@
 
_user_specified_nameinputs
�
�
B__inference_dense_3_layer_call_and_return_conditional_losses_63367

inputs1
matmul_readvariableop_resource:	�r
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�r
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������r: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������r
 
_user_specified_nameinputs
�

�
'__inference_model_1_layer_call_fn_63837

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:	�r

	unknown_8:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_636302
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
'__inference_dense_3_layer_call_fn_64251

inputs
unknown:	�r

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_633672
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������r: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������r
 
_user_specified_nameinputs
�
c
D__inference_dropout_5_layer_call_and_return_conditional_losses_64164

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������O@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������O@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������O@2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������O@2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������O@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������O@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������O@:W S
/
_output_shapes
:���������O@
 
_user_specified_nameinputs
�
K
/__inference_max_pooling2d_1_layer_call_fn_64055

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_631642
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
Ĩ
�
!__inference__traced_restore_64529
file_prefix:
 assignvariableop_conv2d_2_kernel:@.
 assignvariableop_1_conv2d_2_bias:@<
"assignvariableop_2_conv2d_3_kernel:@@.
 assignvariableop_3_conv2d_3_bias:@<
"assignvariableop_4_conv2d_4_kernel:@@.
 assignvariableop_5_conv2d_4_bias:@<
"assignvariableop_6_conv2d_5_kernel:@@.
 assignvariableop_7_conv2d_5_bias:@4
!assignvariableop_8_dense_3_kernel:	�r
-
assignvariableop_9_dense_3_bias:
'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: D
*assignvariableop_19_adam_conv2d_2_kernel_m:@6
(assignvariableop_20_adam_conv2d_2_bias_m:@D
*assignvariableop_21_adam_conv2d_3_kernel_m:@@6
(assignvariableop_22_adam_conv2d_3_bias_m:@D
*assignvariableop_23_adam_conv2d_4_kernel_m:@@6
(assignvariableop_24_adam_conv2d_4_bias_m:@D
*assignvariableop_25_adam_conv2d_5_kernel_m:@@6
(assignvariableop_26_adam_conv2d_5_bias_m:@<
)assignvariableop_27_adam_dense_3_kernel_m:	�r
5
'assignvariableop_28_adam_dense_3_bias_m:
D
*assignvariableop_29_adam_conv2d_2_kernel_v:@6
(assignvariableop_30_adam_conv2d_2_bias_v:@D
*assignvariableop_31_adam_conv2d_3_kernel_v:@@6
(assignvariableop_32_adam_conv2d_3_bias_v:@D
*assignvariableop_33_adam_conv2d_4_kernel_v:@@6
(assignvariableop_34_adam_conv2d_4_bias_v:@D
*assignvariableop_35_adam_conv2d_5_kernel_v:@@6
(assignvariableop_36_adam_conv2d_5_bias_v:@<
)assignvariableop_37_adam_dense_3_kernel_v:	�r
5
'assignvariableop_38_adam_dense_3_bias_v:

identity_40��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*�
value�B�(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp assignvariableop_conv2d_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_3_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_3_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_4_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_4_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_5_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_5_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_3_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_conv2d_2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_conv2d_2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_conv2d_3_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_conv2d_3_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv2d_4_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv2d_4_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv2d_5_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv2d_5_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_3_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_3_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_conv2d_2_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_conv2d_2_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_conv2d_3_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_conv2d_3_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv2d_4_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_conv2d_4_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp*assignvariableop_35_adam_conv2d_5_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp(assignvariableop_36_adam_conv2d_5_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_3_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_3_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_389
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_39f
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_40�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_63269

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������=�@*
paddingVALID*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������=�@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:���������=�@2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:���������=�@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :���������?�@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:���������?�@
 
_user_specified_nameinputs
�
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_63142

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_64070

inputs
identity�
MaxPoolMaxPoolinputs*0
_output_shapes
:����������@*
ksize
*
paddingVALID*
strides
2	
MaxPoolm
IdentityIdentityMaxPool:output:0*
T0*0
_output_shapes
:����������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������=�@:X T
0
_output_shapes
:���������=�@
 
_user_specified_nameinputs
�9
�
B__inference_model_1_layer_call_and_return_conditional_losses_63374

inputs(
conv2d_2_63240:@
conv2d_2_63242:@(
conv2d_3_63270:@@
conv2d_3_63272:@(
conv2d_4_63300:@@
conv2d_4_63302:@(
conv2d_5_63330:@@
conv2d_5_63332:@ 
dense_3_63368:	�r

dense_3_63370:

identity�� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2_63240conv2d_2_63242*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������~�@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_632392"
 conv2d_2/StatefulPartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������?�@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_632492
max_pooling2d/PartitionedCall�
dropout_3/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������?�@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_632562
dropout_3/PartitionedCall�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0conv2d_3_63270conv2d_3_63272*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������=�@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_632692"
 conv2d_3/StatefulPartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_632792!
max_pooling2d_1/PartitionedCall�
dropout_4/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_632862
dropout_4/PartitionedCall�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0conv2d_4_63300conv2d_4_63302*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_632992"
 conv2d_4/StatefulPartitionedCall�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������O@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_633092!
max_pooling2d_2/PartitionedCall�
dropout_5/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������O@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_633162
dropout_5/PartitionedCall�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0conv2d_5_63330conv2d_5_63332*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������M@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_633292"
 conv2d_5/StatefulPartitionedCall�
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_633392!
max_pooling2d_3/PartitionedCall�
dropout_6/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_633462
dropout_6/PartitionedCall�
flatten_1/PartitionedCallPartitionedCall"dropout_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������r* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_633542
flatten_1/PartitionedCall�
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_63368dense_3_63370*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_633672!
dense_3/StatefulPartitionedCall�
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
2

Identity�
NoOpNoOp!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_64204

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������&@*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������&@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������M@:W S
/
_output_shapes
:���������M@
 
_user_specified_nameinputs
�

�
'__inference_model_1_layer_call_fn_63812

inputs!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:	�r

	unknown_8:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_633742
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_63256

inputs

identity_1c
IdentityIdentityinputs*
T0*0
_output_shapes
:���������?�@2

Identityr

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:���������?�@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:���������?�@:X T
0
_output_shapes
:���������?�@
 
_user_specified_nameinputs
�
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_63208

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
'__inference_model_1_layer_call_fn_63397
input_2!
unknown:@
	unknown_0:@#
	unknown_1:@@
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@
	unknown_7:	�r

	unknown_8:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_633742
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_63346

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:���������&@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������&@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������&@:W S
/
_output_shapes
:���������&@
 
_user_specified_nameinputs
�
E
)__inference_dropout_5_layer_call_fn_64142

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������O@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_633162
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������O@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������O@:W S
/
_output_shapes
:���������O@
 
_user_specified_nameinputs
�?
�
B__inference_model_1_layer_call_and_return_conditional_losses_63754
input_2(
conv2d_2_63719:@
conv2d_2_63721:@(
conv2d_3_63726:@@
conv2d_3_63728:@(
conv2d_4_63733:@@
conv2d_4_63735:@(
conv2d_5_63740:@@
conv2d_5_63742:@ 
dense_3_63748:	�r

dense_3_63750:

identity�� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�!dropout_3/StatefulPartitionedCall�!dropout_4/StatefulPartitionedCall�!dropout_5/StatefulPartitionedCall�!dropout_6/StatefulPartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinput_2conv2d_2_63719conv2d_2_63721*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������~�@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_632392"
 conv2d_2/StatefulPartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������?�@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_632492
max_pooling2d/PartitionedCall�
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������?�@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_635472#
!dropout_3/StatefulPartitionedCall�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0conv2d_3_63726conv2d_3_63728*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������=�@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_632692"
 conv2d_3/StatefulPartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_632792!
max_pooling2d_1/PartitionedCall�
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_635092#
!dropout_4/StatefulPartitionedCall�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0conv2d_4_63733conv2d_4_63735*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_632992"
 conv2d_4/StatefulPartitionedCall�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������O@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_633092!
max_pooling2d_2/PartitionedCall�
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������O@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_634712#
!dropout_5/StatefulPartitionedCall�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0conv2d_5_63740conv2d_5_63742*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������M@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_633292"
 conv2d_5/StatefulPartitionedCall�
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_633392!
max_pooling2d_3/PartitionedCall�
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0"^dropout_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_634332#
!dropout_6/StatefulPartitionedCall�
flatten_1/PartitionedCallPartitionedCall*dropout_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������r* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_633542
flatten_1/PartitionedCall�
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_63748dense_3_63750*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_633672!
dense_3/StatefulPartitionedCall�
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
2

Identity�
NoOpNoOp!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_2
�
b
D__inference_dropout_5_layer_call_and_return_conditional_losses_64152

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:���������O@2

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:���������O@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������O@:W S
/
_output_shapes
:���������O@
 
_user_specified_nameinputs
�g
�
B__inference_model_1_layer_call_and_return_conditional_losses_63963

inputsA
'conv2d_2_conv2d_readvariableop_resource:@6
(conv2d_2_biasadd_readvariableop_resource:@A
'conv2d_3_conv2d_readvariableop_resource:@@6
(conv2d_3_biasadd_readvariableop_resource:@A
'conv2d_4_conv2d_readvariableop_resource:@@6
(conv2d_4_biasadd_readvariableop_resource:@A
'conv2d_5_conv2d_readvariableop_resource:@@6
(conv2d_5_biasadd_readvariableop_resource:@9
&dense_3_matmul_readvariableop_resource:	�r
5
'dense_3_biasadd_readvariableop_resource:

identity��conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�conv2d_4/BiasAdd/ReadVariableOp�conv2d_4/Conv2D/ReadVariableOp�conv2d_5/BiasAdd/ReadVariableOp�conv2d_5/Conv2D/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2Dinputs&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������~�@*
paddingVALID*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������~�@2
conv2d_2/BiasAdd|
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������~�@2
conv2d_2/Relu�
max_pooling2d/MaxPoolMaxPoolconv2d_2/Relu:activations:0*0
_output_shapes
:���������?�@*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout_3/dropout/Const�
dropout_3/dropout/MulMulmax_pooling2d/MaxPool:output:0 dropout_3/dropout/Const:output:0*
T0*0
_output_shapes
:���������?�@2
dropout_3/dropout/Mul�
dropout_3/dropout/ShapeShapemax_pooling2d/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shape�
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*0
_output_shapes
:���������?�@*
dtype020
.dropout_3/dropout/random_uniform/RandomUniform�
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2"
 dropout_3/dropout/GreaterEqual/y�
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:���������?�@2 
dropout_3/dropout/GreaterEqual�
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:���������?�@2
dropout_3/dropout/Cast�
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*0
_output_shapes
:���������?�@2
dropout_3/dropout/Mul_1�
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_3/Conv2D/ReadVariableOp�
conv2d_3/Conv2DConv2Ddropout_3/dropout/Mul_1:z:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������=�@*
paddingVALID*
strides
2
conv2d_3/Conv2D�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_3/BiasAdd/ReadVariableOp�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������=�@2
conv2d_3/BiasAdd|
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:���������=�@2
conv2d_3/Relu�
max_pooling2d_1/MaxPoolMaxPoolconv2d_3/Relu:activations:0*0
_output_shapes
:����������@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPoolw
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout_4/dropout/Const�
dropout_4/dropout/MulMul max_pooling2d_1/MaxPool:output:0 dropout_4/dropout/Const:output:0*
T0*0
_output_shapes
:����������@2
dropout_4/dropout/Mul�
dropout_4/dropout/ShapeShape max_pooling2d_1/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_4/dropout/Shape�
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*0
_output_shapes
:����������@*
dtype020
.dropout_4/dropout/random_uniform/RandomUniform�
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2"
 dropout_4/dropout/GreaterEqual/y�
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:����������@2 
dropout_4/dropout/GreaterEqual�
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:����������@2
dropout_4/dropout/Cast�
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*0
_output_shapes
:����������@2
dropout_4/dropout/Mul_1�
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_4/Conv2D/ReadVariableOp�
conv2d_4/Conv2DConv2Ddropout_4/dropout/Mul_1:z:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@*
paddingVALID*
strides
2
conv2d_4/Conv2D�
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_4/BiasAdd/ReadVariableOp�
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������@2
conv2d_4/BiasAdd|
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:����������@2
conv2d_4/Relu�
max_pooling2d_2/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:���������O@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolw
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout_5/dropout/Const�
dropout_5/dropout/MulMul max_pooling2d_2/MaxPool:output:0 dropout_5/dropout/Const:output:0*
T0*/
_output_shapes
:���������O@2
dropout_5/dropout/Mul�
dropout_5/dropout/ShapeShape max_pooling2d_2/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_5/dropout/Shape�
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*/
_output_shapes
:���������O@*
dtype020
.dropout_5/dropout/random_uniform/RandomUniform�
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2"
 dropout_5/dropout/GreaterEqual/y�
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������O@2 
dropout_5/dropout/GreaterEqual�
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������O@2
dropout_5/dropout/Cast�
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*/
_output_shapes
:���������O@2
dropout_5/dropout/Mul_1�
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_5/Conv2D/ReadVariableOp�
conv2d_5/Conv2DConv2Ddropout_5/dropout/Mul_1:z:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������M@*
paddingVALID*
strides
2
conv2d_5/Conv2D�
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_5/BiasAdd/ReadVariableOp�
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������M@2
conv2d_5/BiasAdd{
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:���������M@2
conv2d_5/Relu�
max_pooling2d_3/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:���������&@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPoolw
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_6/dropout/Const�
dropout_6/dropout/MulMul max_pooling2d_3/MaxPool:output:0 dropout_6/dropout/Const:output:0*
T0*/
_output_shapes
:���������&@2
dropout_6/dropout/Mul�
dropout_6/dropout/ShapeShape max_pooling2d_3/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_6/dropout/Shape�
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*/
_output_shapes
:���������&@*
dtype020
.dropout_6/dropout/random_uniform/RandomUniform�
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���>2"
 dropout_6/dropout/GreaterEqual/y�
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������&@2 
dropout_6/dropout/GreaterEqual�
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������&@2
dropout_6/dropout/Cast�
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*/
_output_shapes
:���������&@2
dropout_6/dropout/Mul_1s
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 9  2
flatten_1/Const�
flatten_1/ReshapeReshapedropout_6/dropout/Mul_1:z:0flatten_1/Const:output:0*
T0*(
_output_shapes
:����������r2
flatten_1/Reshape�
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	�r
*
dtype02
dense_3/MatMul/ReadVariableOp�
dense_3/MatMulMatMulflatten_1/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_3/MatMul�
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_3/BiasAdd/ReadVariableOp�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
dense_3/Softmaxt
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
2

Identity�
NoOpNoOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�?
�
B__inference_model_1_layer_call_and_return_conditional_losses_63630

inputs(
conv2d_2_63595:@
conv2d_2_63597:@(
conv2d_3_63602:@@
conv2d_3_63604:@(
conv2d_4_63609:@@
conv2d_4_63611:@(
conv2d_5_63616:@@
conv2d_5_63618:@ 
dense_3_63624:	�r

dense_3_63626:

identity�� conv2d_2/StatefulPartitionedCall� conv2d_3/StatefulPartitionedCall� conv2d_4/StatefulPartitionedCall� conv2d_5/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�!dropout_3/StatefulPartitionedCall�!dropout_4/StatefulPartitionedCall�!dropout_5/StatefulPartitionedCall�!dropout_6/StatefulPartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2_63595conv2d_2_63597*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������~�@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_632392"
 conv2d_2/StatefulPartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������?�@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_632492
max_pooling2d/PartitionedCall�
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������?�@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_635472#
!dropout_3/StatefulPartitionedCall�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0conv2d_3_63602conv2d_3_63604*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:���������=�@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_632692"
 conv2d_3/StatefulPartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_632792!
max_pooling2d_1/PartitionedCall�
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_635092#
!dropout_4/StatefulPartitionedCall�
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0conv2d_4_63609conv2d_4_63611*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_632992"
 conv2d_4/StatefulPartitionedCall�
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������O@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_633092!
max_pooling2d_2/PartitionedCall�
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������O@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_5_layer_call_and_return_conditional_losses_634712#
!dropout_5/StatefulPartitionedCall�
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0conv2d_5_63616conv2d_5_63618*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������M@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_633292"
 conv2d_5/StatefulPartitionedCall�
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_633392!
max_pooling2d_3/PartitionedCall�
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0"^dropout_5/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������&@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_634332#
!dropout_6/StatefulPartitionedCall�
flatten_1/PartitionedCallPartitionedCall*dropout_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������r* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_633542
flatten_1/PartitionedCall�
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_63624dense_3_63626*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_633672!
dense_3/StatefulPartitionedCall�
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
2

Identity�
NoOpNoOp!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:�����������: : : : : : : : : : 2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
c
D__inference_dropout_5_layer_call_and_return_conditional_losses_63471

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:���������O@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:���������O@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������O@2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������O@2
dropout/Cast�
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:���������O@2
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:���������O@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������O@:W S
/
_output_shapes
:���������O@
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
input_2:
serving_default_input_2:0�����������;
dense_30
StatefulPartitionedCall:0���������
tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer-11
layer-12
layer-13
layer_with_weights-4
layer-14
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses"
_tf_keras_network
"
_tf_keras_input_layer
�

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
.	variables
/trainable_variables
0regularization_losses
1	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
8	variables
9trainable_variables
:regularization_losses
;	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

@kernel
Abias
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�

Rkernel
Sbias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Xiter

Ybeta_1

Zbeta_2
	[decay
\learning_ratem�m�$m�%m�2m�3m�@m�Am�Rm�Sm�v�v�$v�%v�2v�3v�@v�Av�Rv�Sv�"
	optimizer
f
0
1
$2
%3
24
35
@6
A7
R8
S9"
trackable_list_wrapper
f
0
1
$2
%3
24
35
@6
A7
R8
S9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
	variables
]non_trainable_variables
^layer_metrics
_layer_regularization_losses
trainable_variables

`layers
ametrics
regularization_losses
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
):'@2conv2d_2/kernel
:@2conv2d_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
	variables
bnon_trainable_variables
clayer_metrics
dlayer_regularization_losses
trainable_variables

elayers
fmetrics
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
	variables
gnon_trainable_variables
hlayer_metrics
ilayer_regularization_losses
trainable_variables

jlayers
kmetrics
regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
 	variables
lnon_trainable_variables
mlayer_metrics
nlayer_regularization_losses
!trainable_variables

olayers
pmetrics
"regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
):'@@2conv2d_3/kernel
:@2conv2d_3/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
&	variables
qnon_trainable_variables
rlayer_metrics
slayer_regularization_losses
'trainable_variables

tlayers
umetrics
(regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
*	variables
vnon_trainable_variables
wlayer_metrics
xlayer_regularization_losses
+trainable_variables

ylayers
zmetrics
,regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
.	variables
{non_trainable_variables
|layer_metrics
}layer_regularization_losses
/trainable_variables

~layers
metrics
0regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
):'@@2conv2d_4/kernel
:@2conv2d_4/bias
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
�
4	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
5trainable_variables
�layers
�metrics
6regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
8	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
9trainable_variables
�layers
�metrics
:regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
<	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
=trainable_variables
�layers
�metrics
>regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
):'@@2conv2d_5/kernel
:@2conv2d_5/bias
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
B	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
Ctrainable_variables
�layers
�metrics
Dregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
F	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
Gtrainable_variables
�layers
�metrics
Hregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
J	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
Ktrainable_variables
�layers
�metrics
Lregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
N	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
Otrainable_variables
�layers
�metrics
Pregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:	�r
2dense_3/kernel
:
2dense_3/bias
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
T	variables
�non_trainable_variables
�layer_metrics
 �layer_regularization_losses
Utrainable_variables
�layers
�metrics
Vregularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
0
�0
�1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
R

�total

�count
�	variables
�	keras_api"
_tf_keras_metric
c

�total

�count
�
_fn_kwargs
�	variables
�	keras_api"
_tf_keras_metric
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
.:,@2Adam/conv2d_2/kernel/m
 :@2Adam/conv2d_2/bias/m
.:,@@2Adam/conv2d_3/kernel/m
 :@2Adam/conv2d_3/bias/m
.:,@@2Adam/conv2d_4/kernel/m
 :@2Adam/conv2d_4/bias/m
.:,@@2Adam/conv2d_5/kernel/m
 :@2Adam/conv2d_5/bias/m
&:$	�r
2Adam/dense_3/kernel/m
:
2Adam/dense_3/bias/m
.:,@2Adam/conv2d_2/kernel/v
 :@2Adam/conv2d_2/bias/v
.:,@@2Adam/conv2d_3/kernel/v
 :@2Adam/conv2d_3/bias/v
.:,@@2Adam/conv2d_4/kernel/v
 :@2Adam/conv2d_4/bias/v
.:,@@2Adam/conv2d_5/kernel/v
 :@2Adam/conv2d_5/bias/v
&:$	�r
2Adam/dense_3/kernel/v
:
2Adam/dense_3/bias/v
�2�
'__inference_model_1_layer_call_fn_63397
'__inference_model_1_layer_call_fn_63812
'__inference_model_1_layer_call_fn_63837
'__inference_model_1_layer_call_fn_63678�
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
�B�
 __inference__wrapped_model_63133input_2"�
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
�2�
B__inference_model_1_layer_call_and_return_conditional_losses_63886
B__inference_model_1_layer_call_and_return_conditional_losses_63963
B__inference_model_1_layer_call_and_return_conditional_losses_63716
B__inference_model_1_layer_call_and_return_conditional_losses_63754�
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
�2�
(__inference_conv2d_2_layer_call_fn_63972�
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
�2�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_63983�
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
�2�
-__inference_max_pooling2d_layer_call_fn_63988
-__inference_max_pooling2d_layer_call_fn_63993�
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
�2�
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_63998
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_64003�
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
�2�
)__inference_dropout_3_layer_call_fn_64008
)__inference_dropout_3_layer_call_fn_64013�
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
�2�
D__inference_dropout_3_layer_call_and_return_conditional_losses_64018
D__inference_dropout_3_layer_call_and_return_conditional_losses_64030�
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
�2�
(__inference_conv2d_3_layer_call_fn_64039�
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
�2�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_64050�
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
�2�
/__inference_max_pooling2d_1_layer_call_fn_64055
/__inference_max_pooling2d_1_layer_call_fn_64060�
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
�2�
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_64065
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_64070�
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
�2�
)__inference_dropout_4_layer_call_fn_64075
)__inference_dropout_4_layer_call_fn_64080�
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
�2�
D__inference_dropout_4_layer_call_and_return_conditional_losses_64085
D__inference_dropout_4_layer_call_and_return_conditional_losses_64097�
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
�2�
(__inference_conv2d_4_layer_call_fn_64106�
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
�2�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_64117�
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
�2�
/__inference_max_pooling2d_2_layer_call_fn_64122
/__inference_max_pooling2d_2_layer_call_fn_64127�
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
�2�
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_64132
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_64137�
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
�2�
)__inference_dropout_5_layer_call_fn_64142
)__inference_dropout_5_layer_call_fn_64147�
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
�2�
D__inference_dropout_5_layer_call_and_return_conditional_losses_64152
D__inference_dropout_5_layer_call_and_return_conditional_losses_64164�
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
�2�
(__inference_conv2d_5_layer_call_fn_64173�
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
�2�
C__inference_conv2d_5_layer_call_and_return_conditional_losses_64184�
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
�2�
/__inference_max_pooling2d_3_layer_call_fn_64189
/__inference_max_pooling2d_3_layer_call_fn_64194�
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
�2�
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_64199
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_64204�
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
�2�
)__inference_dropout_6_layer_call_fn_64209
)__inference_dropout_6_layer_call_fn_64214�
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
�2�
D__inference_dropout_6_layer_call_and_return_conditional_losses_64219
D__inference_dropout_6_layer_call_and_return_conditional_losses_64231�
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
�2�
)__inference_flatten_1_layer_call_fn_64236�
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
�2�
D__inference_flatten_1_layer_call_and_return_conditional_losses_64242�
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
�2�
'__inference_dense_3_layer_call_fn_64251�
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
�2�
B__inference_dense_3_layer_call_and_return_conditional_losses_64262�
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
#__inference_signature_wrapper_63787input_2"�
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
 �
 __inference__wrapped_model_63133{
$%23@ARS:�7
0�-
+�(
input_2�����������
� "1�.
,
dense_3!�
dense_3���������
�
C__inference_conv2d_2_layer_call_and_return_conditional_losses_63983o9�6
/�,
*�'
inputs�����������
� ".�+
$�!
0���������~�@
� �
(__inference_conv2d_2_layer_call_fn_63972b9�6
/�,
*�'
inputs�����������
� "!����������~�@�
C__inference_conv2d_3_layer_call_and_return_conditional_losses_64050n$%8�5
.�+
)�&
inputs���������?�@
� ".�+
$�!
0���������=�@
� �
(__inference_conv2d_3_layer_call_fn_64039a$%8�5
.�+
)�&
inputs���������?�@
� "!����������=�@�
C__inference_conv2d_4_layer_call_and_return_conditional_losses_64117n238�5
.�+
)�&
inputs����������@
� ".�+
$�!
0����������@
� �
(__inference_conv2d_4_layer_call_fn_64106a238�5
.�+
)�&
inputs����������@
� "!�����������@�
C__inference_conv2d_5_layer_call_and_return_conditional_losses_64184l@A7�4
-�*
(�%
inputs���������O@
� "-�*
#� 
0���������M@
� �
(__inference_conv2d_5_layer_call_fn_64173_@A7�4
-�*
(�%
inputs���������O@
� " ����������M@�
B__inference_dense_3_layer_call_and_return_conditional_losses_64262]RS0�-
&�#
!�
inputs����������r
� "%�"
�
0���������

� {
'__inference_dense_3_layer_call_fn_64251PRS0�-
&�#
!�
inputs����������r
� "����������
�
D__inference_dropout_3_layer_call_and_return_conditional_losses_64018n<�9
2�/
)�&
inputs���������?�@
p 
� ".�+
$�!
0���������?�@
� �
D__inference_dropout_3_layer_call_and_return_conditional_losses_64030n<�9
2�/
)�&
inputs���������?�@
p
� ".�+
$�!
0���������?�@
� �
)__inference_dropout_3_layer_call_fn_64008a<�9
2�/
)�&
inputs���������?�@
p 
� "!����������?�@�
)__inference_dropout_3_layer_call_fn_64013a<�9
2�/
)�&
inputs���������?�@
p
� "!����������?�@�
D__inference_dropout_4_layer_call_and_return_conditional_losses_64085n<�9
2�/
)�&
inputs����������@
p 
� ".�+
$�!
0����������@
� �
D__inference_dropout_4_layer_call_and_return_conditional_losses_64097n<�9
2�/
)�&
inputs����������@
p
� ".�+
$�!
0����������@
� �
)__inference_dropout_4_layer_call_fn_64075a<�9
2�/
)�&
inputs����������@
p 
� "!�����������@�
)__inference_dropout_4_layer_call_fn_64080a<�9
2�/
)�&
inputs����������@
p
� "!�����������@�
D__inference_dropout_5_layer_call_and_return_conditional_losses_64152l;�8
1�.
(�%
inputs���������O@
p 
� "-�*
#� 
0���������O@
� �
D__inference_dropout_5_layer_call_and_return_conditional_losses_64164l;�8
1�.
(�%
inputs���������O@
p
� "-�*
#� 
0���������O@
� �
)__inference_dropout_5_layer_call_fn_64142_;�8
1�.
(�%
inputs���������O@
p 
� " ����������O@�
)__inference_dropout_5_layer_call_fn_64147_;�8
1�.
(�%
inputs���������O@
p
� " ����������O@�
D__inference_dropout_6_layer_call_and_return_conditional_losses_64219l;�8
1�.
(�%
inputs���������&@
p 
� "-�*
#� 
0���������&@
� �
D__inference_dropout_6_layer_call_and_return_conditional_losses_64231l;�8
1�.
(�%
inputs���������&@
p
� "-�*
#� 
0���������&@
� �
)__inference_dropout_6_layer_call_fn_64209_;�8
1�.
(�%
inputs���������&@
p 
� " ����������&@�
)__inference_dropout_6_layer_call_fn_64214_;�8
1�.
(�%
inputs���������&@
p
� " ����������&@�
D__inference_flatten_1_layer_call_and_return_conditional_losses_64242a7�4
-�*
(�%
inputs���������&@
� "&�#
�
0����������r
� �
)__inference_flatten_1_layer_call_fn_64236T7�4
-�*
(�%
inputs���������&@
� "�����������r�
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_64065�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_64070j8�5
.�+
)�&
inputs���������=�@
� ".�+
$�!
0����������@
� �
/__inference_max_pooling2d_1_layer_call_fn_64055�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
/__inference_max_pooling2d_1_layer_call_fn_64060]8�5
.�+
)�&
inputs���������=�@
� "!�����������@�
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_64132�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_64137i8�5
.�+
)�&
inputs����������@
� "-�*
#� 
0���������O@
� �
/__inference_max_pooling2d_2_layer_call_fn_64122�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
/__inference_max_pooling2d_2_layer_call_fn_64127\8�5
.�+
)�&
inputs����������@
� " ����������O@�
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_64199�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_64204h7�4
-�*
(�%
inputs���������M@
� "-�*
#� 
0���������&@
� �
/__inference_max_pooling2d_3_layer_call_fn_64189�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
/__inference_max_pooling2d_3_layer_call_fn_64194[7�4
-�*
(�%
inputs���������M@
� " ����������&@�
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_63998�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_64003j8�5
.�+
)�&
inputs���������~�@
� ".�+
$�!
0���������?�@
� �
-__inference_max_pooling2d_layer_call_fn_63988�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
-__inference_max_pooling2d_layer_call_fn_63993]8�5
.�+
)�&
inputs���������~�@
� "!����������?�@�
B__inference_model_1_layer_call_and_return_conditional_losses_63716w
$%23@ARSB�?
8�5
+�(
input_2�����������
p 

 
� "%�"
�
0���������

� �
B__inference_model_1_layer_call_and_return_conditional_losses_63754w
$%23@ARSB�?
8�5
+�(
input_2�����������
p

 
� "%�"
�
0���������

� �
B__inference_model_1_layer_call_and_return_conditional_losses_63886v
$%23@ARSA�>
7�4
*�'
inputs�����������
p 

 
� "%�"
�
0���������

� �
B__inference_model_1_layer_call_and_return_conditional_losses_63963v
$%23@ARSA�>
7�4
*�'
inputs�����������
p

 
� "%�"
�
0���������

� �
'__inference_model_1_layer_call_fn_63397j
$%23@ARSB�?
8�5
+�(
input_2�����������
p 

 
� "����������
�
'__inference_model_1_layer_call_fn_63678j
$%23@ARSB�?
8�5
+�(
input_2�����������
p

 
� "����������
�
'__inference_model_1_layer_call_fn_63812i
$%23@ARSA�>
7�4
*�'
inputs�����������
p 

 
� "����������
�
'__inference_model_1_layer_call_fn_63837i
$%23@ARSA�>
7�4
*�'
inputs�����������
p

 
� "����������
�
#__inference_signature_wrapper_63787�
$%23@ARSE�B
� 
;�8
6
input_2+�(
input_2�����������"1�.
,
dense_3!�
dense_3���������
