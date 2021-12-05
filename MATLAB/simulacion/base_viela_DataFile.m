% Simscape(TM) Multibody(TM) version: 6.0

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(7).translation = [0.0 0.0 0.0];
smiData.RigidTransform(7).angle = 0.0;
smiData.RigidTransform(7).axis = [0.0 0.0 0.0];
smiData.RigidTransform(7).ID = '';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [322.2680258900449 0 241.81540550352048];  % mm
smiData.RigidTransform(1).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(1).axis = [0.96592582628906842 0 0.25881904510252041];
smiData.RigidTransform(1).ID = 'B[base-1:-:viela2-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [2.1316282072803006e-14 -4.7961634663806763e-14 48.284271247461781];  % mm
smiData.RigidTransform(2).angle = 3.1415926535897927;  % rad
smiData.RigidTransform(2).axis = [1 -6.1629758220391569e-32 -1.5700924586837757e-16];
smiData.RigidTransform(2).ID = 'F[base-1:-:viela2-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [-322.26802589004433 0 241.81540550352094];  % mm
smiData.RigidTransform(3).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(3).axis = [0.9659258262890682 0 -0.25881904510252102];
smiData.RigidTransform(3).ID = 'B[base-1:-:viela3-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [70.000000000000028 -1.4210854715202004e-13 48.284271247461888];  % mm
smiData.RigidTransform(4).angle = 3.1415926535897913;  % rad
smiData.RigidTransform(4).axis = [-1 2.080004339938213e-31 -1.9626155733547179e-16];
smiData.RigidTransform(4).ID = 'F[base-1:-:viela3-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [48.284271247461888 0 -400];  % mm
smiData.RigidTransform(5).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(5).axis = [-0.57735026918962584 -0.57735026918962584 0.57735026918962584];
smiData.RigidTransform(5).ID = 'B[base-1:-:viela-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [0 0 -48.284271247461888];  % mm
smiData.RigidTransform(6).angle = 0;  % rad
smiData.RigidTransform(6).axis = [0 0 0];
smiData.RigidTransform(6).ID = 'F[base-1:-:viela-1]';

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [0 0 0];  % mm
smiData.RigidTransform(7).angle = 0;  % rad
smiData.RigidTransform(7).axis = [0 0 0];
smiData.RigidTransform(7).ID = 'RootGround[base-1]';


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(4).mass = 0.0;
smiData.Solid(4).CoM = [0.0 0.0 0.0];
smiData.Solid(4).MoI = [0.0 0.0 0.0];
smiData.Solid(4).PoI = [0.0 0.0 0.0];
smiData.Solid(4).color = [0.0 0.0 0.0];
smiData.Solid(4).opacity = 0.0;
smiData.Solid(4).ID = '';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.13713274122871835;  % kg
smiData.Solid(1).CoM = [35.000000000000007 0 0];  % mm
smiData.Solid(1).MoI = [37.615928545521484 129.0702032173682 130.11740076856481];  % kg*mm^2
smiData.Solid(1).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(1).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = 'viela2*:*Predeterminado';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 0.13713274122871835;  % kg
smiData.Solid(2).CoM = [35.000000000000007 0 0];  % mm
smiData.Solid(2).MoI = [37.615928545521498 129.0702032173682 130.11740076856481];  % kg*mm^2
smiData.Solid(2).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(2).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = 'viela3*:*Predeterminado';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 0.13713274122871835;  % kg
smiData.Solid(3).CoM = [35.000000000000007 0 0];  % mm
smiData.Solid(3).MoI = [37.615928545521498 129.0702032173682 130.11740076856481];  % kg*mm^2
smiData.Solid(3).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(3).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = 'viela*:*Predeterminado';

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(4).mass = 0.572320919102694;  % kg
smiData.Solid(4).CoM = [0 0 0];  % mm
smiData.Solid(4).MoI = [24517.796111453219 49024.796903859955 24517.796111453223];  % kg*mm^2
smiData.Solid(4).PoI = [0 0 0];  % kg*mm^2
smiData.Solid(4).color = [0.792156862745098 0.81960784313725488 0.93333333333333335];
smiData.Solid(4).opacity = 1;
smiData.Solid(4).ID = 'base*:*Predeterminado';


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(3).Rz.Pos = 0.0;
smiData.RevoluteJoint(3).ID = '';

smiData.RevoluteJoint(1).Rz.Pos = -90.000000000000028;  % deg
smiData.RevoluteJoint(1).ID = '[base-1:-:viela2-1]';

smiData.RevoluteJoint(2).Rz.Pos = 90;  % deg
smiData.RevoluteJoint(2).ID = '[base-1:-:viela3-1]';

smiData.RevoluteJoint(3).Rz.Pos = 0;  % deg
smiData.RevoluteJoint(3).ID = '[base-1:-:viela-1]';

