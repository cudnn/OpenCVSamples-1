LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include ../../sdk/native/jni/OpenCV.mk

LOCAL_MODULE    := mixed_sample
LOCAL_SRC_FILES := jni_part.cpp
LOCAL_SRC_FILES +=   nonfree/sift.cpp
LOCAL_SRC_FILES += CMT.cpp
LOCAL_SRC_FILES += libopentld/tld/Settings.cpp
LOCAL_SRC_FILES += libopentld/tld/tld.cpp
LOCAL_SRC_FILES += libopentld/imacq/ImAcq.cpp
LOCAL_SRC_FILES +=    libopentld/mftracker/BB.cpp
LOCAL_SRC_FILES +=    libopentld/mftracker/BBPredict.cpp
LOCAL_SRC_FILES +=    libopentld/mftracker/FBTrack.cpp
LOCAL_SRC_FILES +=    libopentld/mftracker/Lk.cpp
LOCAL_SRC_FILES +=   libopentld/mftracker/Median.cpp
LOCAL_SRC_FILES +=   libopentld/tld/Clustering.cpp
LOCAL_SRC_FILES +=   libopentld/tld/DetectionResult.cpp
LOCAL_SRC_FILES +=   libopentld/tld/DetectorCascade.cpp
LOCAL_SRC_FILES +=   libopentld/tld/EnsembleClassifier.cpp
LOCAL_SRC_FILES +=   libopentld/tld/ForegroundDetector.cpp
LOCAL_SRC_FILES +=   libopentld/tld/MedianFlowTracker.cpp
LOCAL_SRC_FILES +=   libopentld/tld/NNClassifier.cpp
LOCAL_SRC_FILES +=   libopentld/tld/TLDUtil.cpp
LOCAL_SRC_FILES +=   libopentld/tld/VarianceFilter.cpp
LOCAL_SRC_FILES +=   libopentld/3rdparty/cvblobs/blob.cpp
LOCAL_SRC_FILES +=   libopentld/3rdparty/cvblobs/BlobContour.cpp
LOCAL_SRC_FILES +=   libopentld/3rdparty/cvblobs/BlobOperators.cpp
LOCAL_SRC_FILES +=   libopentld/3rdparty/cvblobs/BlobProperties.cpp
LOCAL_SRC_FILES +=   libopentld/3rdparty/cvblobs/BlobResult.cpp
LOCAL_SRC_FILES +=   libopentld/3rdparty/cvblobs/ComponentLabeling.cpp

LOCAL_SRC_FILES +=   nonfree/surf.cpp
LOCAL_SRC_FILES += fabmap/FabMap.cpp
LOCAL_SRC_FILES += fabmap/ChowLiuTree.cpp
LOCAL_SRC_FILES += fabmap/BOWMSCTrainer.cpp
LOCAL_SRC_FILES += fabmap/FABMAPcli.cpp
LOCAL_SRC_FILES += fabmap/openFABMAPcli.cpp

LOCAL_SRC_FILES += aruco/ar_omp.cpp
LOCAL_SRC_FILES += aruco/arucofidmarkers.cpp
LOCAL_SRC_FILES += aruco/board.cpp
LOCAL_SRC_FILES += aruco/boarddetector.cpp
LOCAL_SRC_FILES += aruco/cameraparameters.cpp
LOCAL_SRC_FILES += aruco/chromaticmask.cpp
LOCAL_SRC_FILES += aruco/cvdrawingutils.cpp
LOCAL_SRC_FILES += aruco/highlyreliablemarkers.cpp
LOCAL_SRC_FILES += aruco/marker.cpp
LOCAL_SRC_FILES += aruco/markerdetector.cpp
LOCAL_SRC_FILES += aruco/subpixelcorner.cpp




 

LOCAL_LDLIBS +=  -llog -ldl

include $(BUILD_SHARED_LIBRARY)
