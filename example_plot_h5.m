clear; close all; clc;

fpath = '/Users/heng/Dropbox/Macbook Pro/Projects/FOXM1 project/Experiments/_Heng Software/CellTracking_Heng/Example/WellD05';


%# LIST ALL DATASET IN FILE ".H5'
h5disp(fullfile(fpath,'H5OUT_r4_c5.h5'),'/field1');

%# THE OUTPUT example:
% HDF5 H5OUT_r4_c5.h5 
% Group '/field1' 
%     Dataset 'cellpath' 
%         Size:  3x2x10
%         MaxSize:  3x2x10
%         Datatype:   H5T_IEEE_F64LE (double)
%         ChunkSize:  1x2x10
%         Filters:  deflate(9)
%         FillValue:  0.000000
%     Dataset 'outputsignal1' 
%         Size:  3x10x24
%         MaxSize:  3x10x24
%         Datatype:   H5T_IEEE_F64LE (double)
%         ChunkSize:  3x10x1
%         Filters:  deflate(9)
%         FillValue:  0.000000
%         Attributes:
%             'signal03':  'NUCLEI-Eccentricity'
%             'signal01':  'NUCLEI-Area'
%             'signal02':  'NUCLEI-Circularity'
%             'signal04':  'NUCLEI-EulerNumber'
%             'signal05':  'NUCLEI-MaxIntensity'
%             'signal06':  'NUCLEI-MeanIntensity'
%             'signal07':  'NUCLEI-MinIntensity'
%             'signal08':  'NUCLEI-SumIntensity'
%             'signal09':  'CELL-Area'
%             'signal10':  'CELL-Circularity'
%             'signal11':  'CELL-Eccentricity'
%             'signal12':  'CELL-EulerNumber'
%             'signal13':  'CELL-MaxIntensity'
%             'signal14':  'CELL-MeanIntensity'
%             'signal15':  'CELL-MinIntensity'
%             'signal16':  'CELL-SumIntensity'
%             'signal17':  'CYTOSOL-Area'
%             'signal18':  'CYTOSOL-Circularity'
%             'signal19':  'CYTOSOL-Eccentricity'
%             'signal20':  'CYTOSOL-EulerNumber'
%             'signal21':  'CYTOSOL-MaxIntensity'
%             'signal22':  'CYTOSOL-MeanIntensity'
%             'signal23':  'CYTOSOL-MinIntensity'
%             'signal24':  'CYTOSOL-SumIntensity'
%     Dataset 'outputsignal2' 
%         Size:  3x10x24
%         MaxSize:  3x10x24
%         Datatype:   H5T_IEEE_F64LE (double)
%         ChunkSize:  3x10x1
%         Filters:  deflate(9)
%         FillValue:  0.000000
%         Attributes:
%             'signal03':  'NUCLEI-Eccentricity'
%             'signal01':  'NUCLEI-Area'
%             'signal02':  'NUCLEI-Circularity'
%             'signal04':  'NUCLEI-EulerNumber'
%             'signal05':  'NUCLEI-MaxIntensity'
%             'signal06':  'NUCLEI-MeanIntensity'
%             'signal07':  'NUCLEI-MinIntensity'
%             'signal08':  'NUCLEI-SumIntensity'
%             'signal09':  'CELL-Area'
%             'signal10':  'CELL-Circularity'
%             'signal11':  'CELL-Eccentricity'
%             'signal12':  'CELL-EulerNumber'
%             'signal13':  'CELL-MaxIntensity'
%             'signal14':  'CELL-MeanIntensity'
%             'signal15':  'CELL-MinIntensity'
%             'signal16':  'CELL-SumIntensity'
%             'signal17':  'CYTOSOL-Area'
%             'signal18':  'CYTOSOL-Circularity'
%             'signal19':  'CYTOSOL-Eccentricity'
%             'signal20':  'CYTOSOL-EulerNumber'
%             'signal21':  'CYTOSOL-MaxIntensity'
%             'signal22':  'CYTOSOL-MeanIntensity'
%             'signal23':  'CYTOSOL-MinIntensity'
%             'signal24':  'CYTOSOL-SumIntensity'
%     Dataset 'segmentsCH1' 
%         Size:  3x10x3x61x61
%         MaxSize:  3x10x3x61x61
%         Datatype:   H5T_STD_U8LE (uint8)
%         ChunkSize:  1x1x3x61x61
%         Filters:  deflate(9)
%         FillValue:  0
%     Dataset 'selectedcells' 
%         Size:  3
%         MaxSize:  3
%         Datatype:   H5T_STD_U32LE (uint32)
%         ChunkSize:  []
%         Filters:  none
%         FillValue:  0
%     Dataset 'sisterID' 
%         Size:  3x2
%         MaxSize:  3x2
%         Datatype:   H5T_IEEE_F64LE (double)
%         ChunkSize:  1x2
%         Filters:  deflate(9)
%         FillValue:  0.000000
%     Dataset 'sisterList' 
%         Size:  3x3x10
%         MaxSize:  3x3x10
%         Datatype:   H5T_IEEE_F64LE (double)
%         ChunkSize:  1x3x10
%         Filters:  deflate(9)
%         FillValue:  0.000000


%# LOAD 'OUTPUT SIGNAL' DATASET OF 'CHANNEL 1'
%# --- Note that there is a matrix of [ A x B x C ]
%# ---    A = Cell ID
%# ---    B = Timepoint
%# ---    C = Parameters
h5data1 = h5read(fullfile(fpath,'H5OUT_r4_c5.h5'),'/field1/outputsignal1');


%# LOAD 'OUTPUT SIGNAL' DATASET OF 'CHANNEL 2'
%# --- Note that there is a matrix of [ A x B x C ]
%# ---    A = Cell ID
%# ---    B = Timepoint
%# ---    C = Parameters
h5data2 = h5read(fullfile(fpath,'H5OUT_r4_c5.h5'),'/field1/outputsignal2');

%# EXAMPLE PLOT 'signal06':  'NUCLEI-MeanIntensity' OF 'CHANNEL 2'
y = h5data2(:,:,6)';
plot(y,'linewidth',2);

