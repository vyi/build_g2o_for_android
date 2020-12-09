LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := libcsparse

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../Include/
LOCAL_SRC_FILES :=  $(LOCAL_PATH)/../Source/cs_add.c \
                    $(LOCAL_PATH)/../Source/cs_amd.c \
                    $(LOCAL_PATH)/../Source/cs_chol.c \
                    $(LOCAL_PATH)/../Source/cs_cholsol.c \
                    $(LOCAL_PATH)/../Source/cs_compress.c \
                    $(LOCAL_PATH)/../Source/cs_counts.c \
                    $(LOCAL_PATH)/../Source/cs_cumsum.c \
                    $(LOCAL_PATH)/../Source/cs_dfs.c \
                    $(LOCAL_PATH)/../Source/cs_dmperm.c \
                    $(LOCAL_PATH)/../Source/cs_droptol.c \
                    $(LOCAL_PATH)/../Source/cs_dropzeros.c \
                    $(LOCAL_PATH)/../Source/cs_dupl.c \
                    $(LOCAL_PATH)/../Source/cs_entry.c \
                    $(LOCAL_PATH)/../Source/cs_ereach.c \
                    $(LOCAL_PATH)/../Source/cs_etree.c \
                    $(LOCAL_PATH)/../Source/cs_fkeep.c \
                    $(LOCAL_PATH)/../Source/cs_gaxpy.c \
                    $(LOCAL_PATH)/../Source/cs_happly.c \
                    $(LOCAL_PATH)/../Source/cs_house.c \
                    $(LOCAL_PATH)/../Source/cs_ipvec.c \
                    $(LOCAL_PATH)/../Source/cs_leaf.c \
                    $(LOCAL_PATH)/../Source/cs_load.c \
                    $(LOCAL_PATH)/../Source/cs_lsolve.c \
                    $(LOCAL_PATH)/../Source/cs_ltsolve.c \
                    $(LOCAL_PATH)/../Source/cs_lu.c \
                    $(LOCAL_PATH)/../Source/cs_lusol.c \
                    $(LOCAL_PATH)/../Source/cs_malloc.c \
                    $(LOCAL_PATH)/../Source/cs_maxtrans.c \
                    $(LOCAL_PATH)/../Source/cs_multiply.c \
                    $(LOCAL_PATH)/../Source/cs_norm.c \
                    $(LOCAL_PATH)/../Source/cs_permute.c \
                    $(LOCAL_PATH)/../Source/cs_pinv.c \
                    $(LOCAL_PATH)/../Source/cs_post.c \
                    $(LOCAL_PATH)/../Source/cs_print.c \
                    $(LOCAL_PATH)/../Source/cs_pvec.c \
                    $(LOCAL_PATH)/../Source/cs_qr.c \
                    $(LOCAL_PATH)/../Source/cs_qrsol.c \
                    $(LOCAL_PATH)/../Source/cs_randperm.c \
                    $(LOCAL_PATH)/../Source/cs_reach.c \
                    $(LOCAL_PATH)/../Source/cs_scatter.c \
                    $(LOCAL_PATH)/../Source/cs_scc.c \
                    $(LOCAL_PATH)/../Source/cs_schol.c \
                    $(LOCAL_PATH)/../Source/cs_spsolve.c \
                    $(LOCAL_PATH)/../Source/cs_sqr.c \
                    $(LOCAL_PATH)/../Source/cs_symperm.c \
                    $(LOCAL_PATH)/../Source/cs_tdfs.c \
                    $(LOCAL_PATH)/../Source/cs_transpose.c \
                    $(LOCAL_PATH)/../Source/cs_updown.c \
                    $(LOCAL_PATH)/../Source/cs_usolve.c \
                    $(LOCAL_PATH)/../Source/cs_util.c \
                    $(LOCAL_PATH)/../Source/cs_utsolve.c \
                    
                   



include $(BUILD_STATIC_LIBRARY)

