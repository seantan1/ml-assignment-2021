??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
?
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
executor_typestring ?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
z
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense_8/kernel
s
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel* 
_output_shapes
:
??*
dtype0
q
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_8/bias
j
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes	
:?*
dtype0
y
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_9/kernel
r
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes
:	?*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
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

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
R

	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
6
iter
	decay
learning_rate
momentum

0
1
2
3

0
1
2
3
 
?
layer_metrics
layer_regularization_losses
 metrics

!layers
	variables
trainable_variables
"non_trainable_variables
regularization_losses
 
 
 
 
?
#layer_metrics
$layer_regularization_losses
%metrics

&layers

	variables
trainable_variables
'non_trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_8/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_8/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
(layer_metrics
)layer_regularization_losses
*metrics

+layers
	variables
trainable_variables
,non_trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_9/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_9/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
-layer_metrics
.layer_regularization_losses
/metrics

0layers
	variables
trainable_variables
1non_trainable_variables
regularization_losses
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
 
 

20
31

0
1
2
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
4
	4total
	5count
6	variables
7	keras_api
D
	8total
	9count
:
_fn_kwargs
;	variables
<	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

40
51

6	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

80
91

;	variables
?
serving_default_flatten_4_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_flatten_4_inputdense_8/kerneldense_8/biasdense_9/kerneldense_9/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*3
config_proto#!

CPU

GPU 2J 8R(? *-
f(R&
$__inference_signature_wrapper_183380
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *3
config_proto#!

CPU

GPU 2J 8R(? *(
f#R!
__inference__traced_save_183623
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_8/kerneldense_8/biasdense_9/kerneldense_9/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *3
config_proto#!

CPU

GPU 2J 8R(? *+
f&R$
"__inference__traced_restore_183669??
?
?
C__inference_dense_9_layer_call_and_return_conditional_losses_183173

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_9/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_9/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_183553M
9dense_8_kernel_regularizer_square_readvariableop_resource:
??
identity??0dense_8/kernel/Regularizer/Square/ReadVariableOp?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_8_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul?
IdentityIdentity"dense_8/kernel/Regularizer/mul:z:01^dense_8/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp
?
?
$__inference_signature_wrapper_183380
flatten_4_input
unknown:
??
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_4_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*3
config_proto#!

CPU

GPU 2J 8R(? **
f%R#
!__inference__wrapped_model_1831192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameflatten_4_input
?
?
(__inference_dense_8_layer_call_fn_183511

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*3
config_proto#!

CPU

GPU 2J 8R(? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1831512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?#
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_183192

inputs"
dense_8_183152:
??
dense_8_183154:	?!
dense_9_183174:	?
dense_9_183176:
identity??dense_8/StatefulPartitionedCall?0dense_8/kernel/Regularizer/Square/ReadVariableOp?dense_9/StatefulPartitionedCall?0dense_9/kernel/Regularizer/Square/ReadVariableOp?
flatten_4/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *3
config_proto#!

CPU

GPU 2J 8R(? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_1831322
flatten_4/PartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_183152dense_8_183154*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*3
config_proto#!

CPU

GPU 2J 8R(? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1831512!
dense_8/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_183174dense_9_183176*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*3
config_proto#!

CPU

GPU 2J 8R(? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1831732!
dense_9/StatefulPartitionedCall?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_8_183152* 
_output_shapes
:
??*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_9_183174*
_output_shapes
:	?*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul?
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0 ^dense_8/StatefulPartitionedCall1^dense_8/kernel/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall1^dense_9/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?#
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_183349
flatten_4_input"
dense_8_183326:
??
dense_8_183328:	?!
dense_9_183331:	?
dense_9_183333:
identity??dense_8/StatefulPartitionedCall?0dense_8/kernel/Regularizer/Square/ReadVariableOp?dense_9/StatefulPartitionedCall?0dense_9/kernel/Regularizer/Square/ReadVariableOp?
flatten_4/PartitionedCallPartitionedCallflatten_4_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *3
config_proto#!

CPU

GPU 2J 8R(? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_1831322
flatten_4/PartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_183326dense_8_183328*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*3
config_proto#!

CPU

GPU 2J 8R(? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1831512!
dense_8/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_183331dense_9_183333*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*3
config_proto#!

CPU

GPU 2J 8R(? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1831732!
dense_9/StatefulPartitionedCall?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_8_183326* 
_output_shapes
:
??*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_9_183331*
_output_shapes
:	?*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul?
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0 ^dense_8/StatefulPartitionedCall1^dense_8/kernel/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall1^dense_9/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp:` \
/
_output_shapes
:?????????
)
_user_specified_nameflatten_4_input
?
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_183474

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_4_layer_call_fn_183203
flatten_4_input
unknown:
??
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_4_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*3
config_proto#!

CPU

GPU 2J 8R(? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1831922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameflatten_4_input
?
?
!__inference__wrapped_model_183119
flatten_4_inputG
3sequential_4_dense_8_matmul_readvariableop_resource:
??C
4sequential_4_dense_8_biasadd_readvariableop_resource:	?F
3sequential_4_dense_9_matmul_readvariableop_resource:	?B
4sequential_4_dense_9_biasadd_readvariableop_resource:
identity??+sequential_4/dense_8/BiasAdd/ReadVariableOp?*sequential_4/dense_8/MatMul/ReadVariableOp?+sequential_4/dense_9/BiasAdd/ReadVariableOp?*sequential_4/dense_9/MatMul/ReadVariableOp?
sequential_4/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
sequential_4/flatten_4/Const?
sequential_4/flatten_4/ReshapeReshapeflatten_4_input%sequential_4/flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????2 
sequential_4/flatten_4/Reshape?
*sequential_4/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02,
*sequential_4/dense_8/MatMul/ReadVariableOp?
sequential_4/dense_8/MatMulMatMul'sequential_4/flatten_4/Reshape:output:02sequential_4/dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_4/dense_8/MatMul?
+sequential_4/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+sequential_4/dense_8/BiasAdd/ReadVariableOp?
sequential_4/dense_8/BiasAddBiasAdd%sequential_4/dense_8/MatMul:product:03sequential_4/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_4/dense_8/BiasAdd?
sequential_4/dense_8/SigmoidSigmoid%sequential_4/dense_8/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_4/dense_8/Sigmoid?
*sequential_4/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*sequential_4/dense_9/MatMul/ReadVariableOp?
sequential_4/dense_9/MatMulMatMul sequential_4/dense_8/Sigmoid:y:02sequential_4/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_4/dense_9/MatMul?
+sequential_4/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_4/dense_9/BiasAdd/ReadVariableOp?
sequential_4/dense_9/BiasAddBiasAdd%sequential_4/dense_9/MatMul:product:03sequential_4/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_4/dense_9/BiasAdd?
IdentityIdentity%sequential_4/dense_9/BiasAdd:output:0,^sequential_4/dense_8/BiasAdd/ReadVariableOp+^sequential_4/dense_8/MatMul/ReadVariableOp,^sequential_4/dense_9/BiasAdd/ReadVariableOp+^sequential_4/dense_9/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 2Z
+sequential_4/dense_8/BiasAdd/ReadVariableOp+sequential_4/dense_8/BiasAdd/ReadVariableOp2X
*sequential_4/dense_8/MatMul/ReadVariableOp*sequential_4/dense_8/MatMul/ReadVariableOp2Z
+sequential_4/dense_9/BiasAdd/ReadVariableOp+sequential_4/dense_9/BiasAdd/ReadVariableOp2X
*sequential_4/dense_9/MatMul/ReadVariableOp*sequential_4/dense_9/MatMul/ReadVariableOp:` \
/
_output_shapes
:?????????
)
_user_specified_nameflatten_4_input
?#
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_183322
flatten_4_input"
dense_8_183299:
??
dense_8_183301:	?!
dense_9_183304:	?
dense_9_183306:
identity??dense_8/StatefulPartitionedCall?0dense_8/kernel/Regularizer/Square/ReadVariableOp?dense_9/StatefulPartitionedCall?0dense_9/kernel/Regularizer/Square/ReadVariableOp?
flatten_4/PartitionedCallPartitionedCallflatten_4_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *3
config_proto#!

CPU

GPU 2J 8R(? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_1831322
flatten_4/PartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_183299dense_8_183301*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*3
config_proto#!

CPU

GPU 2J 8R(? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1831512!
dense_8/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_183304dense_9_183306*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*3
config_proto#!

CPU

GPU 2J 8R(? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1831732!
dense_9/StatefulPartitionedCall?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_8_183299* 
_output_shapes
:
??*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_9_183304*
_output_shapes
:	?*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul?
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0 ^dense_8/StatefulPartitionedCall1^dense_8/kernel/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall1^dense_9/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp:` \
/
_output_shapes
:?????????
)
_user_specified_nameflatten_4_input
?
F
*__inference_flatten_4_layer_call_fn_183479

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *3
config_proto#!

CPU

GPU 2J 8R(? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_1831322
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_dense_8_layer_call_and_return_conditional_losses_183502

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_8/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoid?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
E__inference_flatten_4_layer_call_and_return_conditional_losses_183132

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_4_layer_call_fn_183468

inputs
unknown:
??
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*3
config_proto#!

CPU

GPU 2J 8R(? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1832712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_dense_9_layer_call_and_return_conditional_losses_183533

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_9/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_9/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_9_layer_call_fn_183542

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*3
config_proto#!

CPU

GPU 2J 8R(? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1831732
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?*
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_183442

inputs:
&dense_8_matmul_readvariableop_resource:
??6
'dense_8_biasadd_readvariableop_resource:	?9
&dense_9_matmul_readvariableop_resource:	?5
'dense_9_biasadd_readvariableop_resource:
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?0dense_8/kernel/Regularizer/Square/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?0dense_9/kernel/Regularizer/Square/ReadVariableOps
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_4/Const?
flatten_4/ReshapeReshapeinputsflatten_4/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_4/Reshape?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulflatten_4/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_8/BiasAddz
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_8/Sigmoid?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMuldense_8/Sigmoid:y:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/BiasAdd?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul?
IdentityIdentitydense_9/BiasAdd:output:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp1^dense_9/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?"
?
__inference__traced_save_183623
file_prefix-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*K
_input_shapes:
8: :
??:?:	?:: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?4
?
"__inference__traced_restore_183669
file_prefix3
assignvariableop_dense_8_kernel:
??.
assignvariableop_1_dense_8_bias:	?4
!assignvariableop_2_dense_9_kernel:	?-
assignvariableop_3_dense_9_bias:%
assignvariableop_4_sgd_iter:	 &
assignvariableop_5_sgd_decay: .
$assignvariableop_6_sgd_learning_rate: )
assignvariableop_7_sgd_momentum: "
assignvariableop_8_total: "
assignvariableop_9_count: %
assignvariableop_10_total_1: %
assignvariableop_11_count_1: 
identity_13??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_dense_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_9_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_9_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_sgd_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_sgd_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_sgd_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_sgd_momentumIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_totalIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_countIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_total_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_12?
Identity_13IdentityIdentity_12:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_13"#
identity_13Identity_13:output:0*-
_input_shapes
: : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
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
?#
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_183271

inputs"
dense_8_183248:
??
dense_8_183250:	?!
dense_9_183253:	?
dense_9_183255:
identity??dense_8/StatefulPartitionedCall?0dense_8/kernel/Regularizer/Square/ReadVariableOp?dense_9/StatefulPartitionedCall?0dense_9/kernel/Regularizer/Square/ReadVariableOp?
flatten_4/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *3
config_proto#!

CPU

GPU 2J 8R(? *N
fIRG
E__inference_flatten_4_layer_call_and_return_conditional_losses_1831322
flatten_4/PartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_183248dense_8_183250*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*3
config_proto#!

CPU

GPU 2J 8R(? *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_1831512!
dense_8/StatefulPartitionedCall?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_183253dense_9_183255*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*3
config_proto#!

CPU

GPU 2J 8R(? *L
fGRE
C__inference_dense_9_layer_call_and_return_conditional_losses_1831732!
dense_9/StatefulPartitionedCall?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_8_183248* 
_output_shapes
:
??*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_9_183253*
_output_shapes
:	?*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul?
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0 ^dense_8/StatefulPartitionedCall1^dense_8/kernel/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall1^dense_9/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_4_layer_call_fn_183295
flatten_4_input
unknown:
??
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_4_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*3
config_proto#!

CPU

GPU 2J 8R(? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1832712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
/
_output_shapes
:?????????
)
_user_specified_nameflatten_4_input
?
?
__inference_loss_fn_1_183564L
9dense_9_kernel_regularizer_square_readvariableop_resource:	?
identity??0dense_9/kernel/Regularizer/Square/ReadVariableOp?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9dense_9_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul?
IdentityIdentity"dense_9/kernel/Regularizer/mul:z:01^dense_9/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp
?*
?
H__inference_sequential_4_layer_call_and_return_conditional_losses_183411

inputs:
&dense_8_matmul_readvariableop_resource:
??6
'dense_8_biasadd_readvariableop_resource:	?9
&dense_9_matmul_readvariableop_resource:	?5
'dense_9_biasadd_readvariableop_resource:
identity??dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?0dense_8/kernel/Regularizer/Square/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?0dense_9/kernel/Regularizer/Square/ReadVariableOps
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten_4/Const?
flatten_4/ReshapeReshapeinputsflatten_4/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_4/Reshape?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulflatten_4/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_8/BiasAddz
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_8/Sigmoid?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMuldense_8/Sigmoid:y:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/BiasAdd?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul?
0dense_9/kernel/Regularizer/Square/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype022
0dense_9/kernel/Regularizer/Square/ReadVariableOp?
!dense_9/kernel/Regularizer/SquareSquare8dense_9/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2#
!dense_9/kernel/Regularizer/Square?
 dense_9/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_9/kernel/Regularizer/Const?
dense_9/kernel/Regularizer/SumSum%dense_9/kernel/Regularizer/Square:y:0)dense_9/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/Sum?
 dense_9/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_9/kernel/Regularizer/mul/x?
dense_9/kernel/Regularizer/mulMul)dense_9/kernel/Regularizer/mul/x:output:0'dense_9/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_9/kernel/Regularizer/mul?
IdentityIdentitydense_9/BiasAdd:output:0^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp1^dense_9/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2d
0dense_9/kernel/Regularizer/Square/ReadVariableOp0dense_9/kernel/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_4_layer_call_fn_183455

inputs
unknown:
??
	unknown_0:	?
	unknown_1:	?
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*3
config_proto#!

CPU

GPU 2J 8R(? *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_1831922
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_dense_8_layer_call_and_return_conditional_losses_183151

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?0dense_8/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoid?
0dense_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype022
0dense_8/kernel/Regularizer/Square/ReadVariableOp?
!dense_8/kernel/Regularizer/SquareSquare8dense_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2#
!dense_8/kernel/Regularizer/Square?
 dense_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2"
 dense_8/kernel/Regularizer/Const?
dense_8/kernel/Regularizer/SumSum%dense_8/kernel/Regularizer/Square:y:0)dense_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/Sum?
 dense_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<2"
 dense_8/kernel/Regularizer/mul/x?
dense_8/kernel/Regularizer/mulMul)dense_8/kernel/Regularizer/mul/x:output:0'dense_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
dense_8/kernel/Regularizer/mul?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp1^dense_8/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2d
0dense_8/kernel/Regularizer/Square/ReadVariableOp0dense_8/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
S
flatten_4_input@
!serving_default_flatten_4_input:0?????????;
dense_90
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?%
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
*=&call_and_return_all_conditional_losses
>_default_save_signature
?__call__"?"
_tf_keras_sequential?"{"name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 27, 27, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_4_input"}}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 27, 27, 3]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 256, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 27, 27, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 27, 27, 3]}, "float32", "flatten_4_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 27, 27, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_4_input"}, "shared_object_id": 0}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 27, 27, 3]}, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 1}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 256, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 4}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 8}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9}]}}, "training_config": {"loss": {"class_name": "CategoricalCrossentropy", "config": {"reduction": "auto", "name": "categorical_crossentropy", "from_logits": true, "label_smoothing": 0}, "shared_object_id": 12}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "categorical_accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 13}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.009999999776482582, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
?

	variables
trainable_variables
regularization_losses
	keras_api
*@&call_and_return_all_conditional_losses
A__call__"?
_tf_keras_layer?{"name": "flatten_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 27, 27, 3]}, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 27, 27, 3]}, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 1, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 11}}
?	

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*B&call_and_return_all_conditional_losses
C__call__"?
_tf_keras_layer?{"name": "dense_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 256, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 4}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2187}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2187]}}
?	

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*D&call_and_return_all_conditional_losses
E__call__"?
_tf_keras_layer?{"name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}, "shared_object_id": 8}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}
I
iter
	decay
learning_rate
momentum"
	optimizer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
?
layer_metrics
layer_regularization_losses
 metrics

!layers
	variables
trainable_variables
"non_trainable_variables
regularization_losses
?__call__
>_default_save_signature
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
,
Hserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
#layer_metrics
$layer_regularization_losses
%metrics

&layers

	variables
trainable_variables
'non_trainable_variables
regularization_losses
A__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
": 
??2dense_8/kernel
:?2dense_8/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
F0"
trackable_list_wrapper
?
(layer_metrics
)layer_regularization_losses
*metrics

+layers
	variables
trainable_variables
,non_trainable_variables
regularization_losses
C__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
!:	?2dense_9/kernel
:2dense_9/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
G0"
trackable_list_wrapper
?
-layer_metrics
.layer_regularization_losses
/metrics

0layers
	variables
trainable_variables
1non_trainable_variables
regularization_losses
E__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
5
0
1
2"
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
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
G0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	4total
	5count
6	variables
7	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 16}
?
	8total
	9count
:
_fn_kwargs
;	variables
<	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "categorical_accuracy", "dtype": "float32", "config": {"name": "categorical_accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 13}
:  (2total
:  (2count
.
40
51"
trackable_list_wrapper
-
6	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
80
91"
trackable_list_wrapper
-
;	variables"
_generic_user_object
?2?
H__inference_sequential_4_layer_call_and_return_conditional_losses_183411
H__inference_sequential_4_layer_call_and_return_conditional_losses_183442
H__inference_sequential_4_layer_call_and_return_conditional_losses_183322
H__inference_sequential_4_layer_call_and_return_conditional_losses_183349?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
!__inference__wrapped_model_183119?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *6?3
1?.
flatten_4_input?????????
?2?
-__inference_sequential_4_layer_call_fn_183203
-__inference_sequential_4_layer_call_fn_183455
-__inference_sequential_4_layer_call_fn_183468
-__inference_sequential_4_layer_call_fn_183295?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_flatten_4_layer_call_and_return_conditional_losses_183474?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_flatten_4_layer_call_fn_183479?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_8_layer_call_and_return_conditional_losses_183502?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_8_layer_call_fn_183511?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_9_layer_call_and_return_conditional_losses_183533?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_9_layer_call_fn_183542?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_183553?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_183564?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
$__inference_signature_wrapper_183380flatten_4_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
!__inference__wrapped_model_183119{@?=
6?3
1?.
flatten_4_input?????????
? "1?.
,
dense_9!?
dense_9??????????
C__inference_dense_8_layer_call_and_return_conditional_losses_183502^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
(__inference_dense_8_layer_call_fn_183511Q0?-
&?#
!?
inputs??????????
? "????????????
C__inference_dense_9_layer_call_and_return_conditional_losses_183533]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? |
(__inference_dense_9_layer_call_fn_183542P0?-
&?#
!?
inputs??????????
? "???????????
E__inference_flatten_4_layer_call_and_return_conditional_losses_183474a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????
? ?
*__inference_flatten_4_layer_call_fn_183479T7?4
-?*
(?%
inputs?????????
? "???????????;
__inference_loss_fn_0_183553?

? 
? "? ;
__inference_loss_fn_1_183564?

? 
? "? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_183322wH?E
>?;
1?.
flatten_4_input?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_183349wH?E
>?;
1?.
flatten_4_input?????????
p

 
? "%?"
?
0?????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_183411n??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
H__inference_sequential_4_layer_call_and_return_conditional_losses_183442n??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????
? ?
-__inference_sequential_4_layer_call_fn_183203jH?E
>?;
1?.
flatten_4_input?????????
p 

 
? "???????????
-__inference_sequential_4_layer_call_fn_183295jH?E
>?;
1?.
flatten_4_input?????????
p

 
? "???????????
-__inference_sequential_4_layer_call_fn_183455a??<
5?2
(?%
inputs?????????
p 

 
? "???????????
-__inference_sequential_4_layer_call_fn_183468a??<
5?2
(?%
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_183380?S?P
? 
I?F
D
flatten_4_input1?.
flatten_4_input?????????"1?.
,
dense_9!?
dense_9?????????