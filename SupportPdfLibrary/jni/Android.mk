LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

EXTERNAL_PDFIUM_PATH		:= external/pdfium
PDFIUM_CORE_SRC				:= $(EXTERNAL_PDFIUM_PATH)/core/src
PDFIUM_FPDFSDK_SRC			:= $(EXTERNAL_PDFIUM_PATH)/fpdfsdk/src

LOCAL_MODULE			:= SupportPdf
LOCAL_CFLAGS			+= -O3 -fstrict-aliasing -fprefetch-loop-arrays -fexceptions -DFOXIT_CHROME_BUILD
LOCAL_C_INCLUDES		:= jni/$(EXTERNAL_PDFIUM_PATH)/fpdfsdk/include
LOCAL_LDLIBS			:= -llog -ljnigraphics
LOCAL_NDK_STL_VARIANT	:= gnustl_static
LOCAL_SRC_FILES			:=	PdfRenderer.cpp \
						$(PDFIUM_FPDFSDK_SRC)/fpdf_dataavail.cpp \
						$(PDFIUM_FPDFSDK_SRC)/fpdf_ext.cpp \
						$(PDFIUM_FPDFSDK_SRC)/fpdf_flatten.cpp \
						$(PDFIUM_FPDFSDK_SRC)/fsdk_rendercontext.cpp \
						$(PDFIUM_FPDFSDK_SRC)/fpdf_progressive.cpp \
						$(PDFIUM_FPDFSDK_SRC)/fpdf_searchex.cpp \
						$(PDFIUM_FPDFSDK_SRC)/fpdf_sysfontinfo.cpp \
						$(PDFIUM_FPDFSDK_SRC)/fpdf_transformpage.cpp \
						$(PDFIUM_FPDFSDK_SRC)/fpdfdoc.cpp \
						$(PDFIUM_FPDFSDK_SRC)/fpdfeditimg.cpp \
						$(PDFIUM_FPDFSDK_SRC)/fpdfeditpage.cpp \
						$(PDFIUM_FPDFSDK_SRC)/fpdfoom.cpp \
						$(PDFIUM_FPDFSDK_SRC)/fpdfppo.cpp \
						$(PDFIUM_FPDFSDK_SRC)/fpdfsave.cpp \
						$(PDFIUM_FPDFSDK_SRC)/fpdfview.cpp \
						$(PDFIUM_FPDFSDK_SRC)/fpdftext.cpp \
						$(PDFIUM_CORE_SRC)/fdrm/crypto/fx_crypt.cpp \
						$(PDFIUM_CORE_SRC)/fdrm/crypto/fx_crypt_aes.cpp \
						$(PDFIUM_CORE_SRC)/fdrm/crypto/fx_crypt_sha.cpp \
						$(PDFIUM_CORE_SRC)/fpdfdoc/doc_action.cpp \
						$(PDFIUM_CORE_SRC)/fpdfdoc/doc_annot.cpp \
						$(PDFIUM_CORE_SRC)/fpdfdoc/doc_ap.cpp \
						$(PDFIUM_CORE_SRC)/fpdfdoc/doc_basic.cpp \
						$(PDFIUM_CORE_SRC)/fpdfdoc/doc_bookmark.cpp \
						$(PDFIUM_CORE_SRC)/fpdfdoc/doc_form.cpp \
						$(PDFIUM_CORE_SRC)/fpdfdoc/doc_formcontrol.cpp \
						$(PDFIUM_CORE_SRC)/fpdfdoc/doc_formfield.cpp \
						$(PDFIUM_CORE_SRC)/fpdfdoc/doc_link.cpp \
						$(PDFIUM_CORE_SRC)/fpdfdoc/doc_metadata.cpp \
						$(PDFIUM_CORE_SRC)/fpdfdoc/doc_ocg.cpp \
						$(PDFIUM_CORE_SRC)/fpdfdoc/doc_tagged.cpp \
						$(PDFIUM_CORE_SRC)/fpdfdoc/doc_utils.cpp \
						$(PDFIUM_CORE_SRC)/fpdfdoc/doc_viewerPreferences.cpp \
						$(PDFIUM_CORE_SRC)/fpdfdoc/doc_vt.cpp \
						$(PDFIUM_CORE_SRC)/fpdfdoc/doc_vtmodule.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_basic_module.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/CNS1/Adobe-CNS1-UCS2_5.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/CNS1/B5pc-H_0.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/CNS1/B5pc-V_0.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/CNS1/cmaps_cns1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/CNS1/CNS-EUC-H_0.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/CNS1/CNS-EUC-V_0.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/CNS1/ETen-B5-H_0.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/CNS1/ETen-B5-V_0.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/CNS1/ETenms-B5-H_0.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/CNS1/ETenms-B5-V_0.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/CNS1/HKscs-B5-H_5.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/CNS1/HKscs-B5-V_5.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/CNS1/UniCNS-UCS2-H_3.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/CNS1/UniCNS-UCS2-V_3.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/CNS1/UniCNS-UTF16-H_0.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/fpdf_cmaps.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/GB1/Adobe-GB1-UCS2_5.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/GB1/cmaps_gb1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/GB1/GB-EUC-H_0.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/GB1/GB-EUC-V_0.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/GB1/GBK-EUC-H_2.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/GB1/GBK-EUC-V_2.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/GB1/GBK2K-H_5.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/GB1/GBK2K-V_5.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/GB1/GBKp-EUC-H_2.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/GB1/GBKp-EUC-V_2.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/GB1/GBpc-EUC-H_0.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/GB1/GBpc-EUC-V_0.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/GB1/UniGB-UCS2-H_4.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/GB1/UniGB-UCS2-V_4.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/83pv-RKSJ-H_1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/90ms-RKSJ-H_2.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/90ms-RKSJ-V_2.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/90msp-RKSJ-H_2.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/90msp-RKSJ-V_2.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/90pv-RKSJ-H_1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/Add-RKSJ-H_1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/Add-RKSJ-V_1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/Adobe-Japan1-UCS2_4.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/cmaps_japan1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/EUC-H_1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/EUC-V_1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/Ext-RKSJ-H_2.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/Ext-RKSJ-V_2.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/H_1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/UniJIS-UCS2-HW-H_4.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/UniJIS-UCS2-HW-V_4.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/UniJIS-UCS2-H_4.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/UniJIS-UCS2-V_4.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/UniJIS-UTF16-H_5.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/UniJIS-UTF16-V_5.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Japan1/V_1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Korea1/Adobe-Korea1-UCS2_2.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Korea1/cmaps_korea1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Korea1/KSC-EUC-H_0.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Korea1/KSC-EUC-V_0.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Korea1/KSCms-UHC-HW-H_1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Korea1/KSCms-UHC-HW-V_1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Korea1/KSCms-UHC-H_1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Korea1/KSCms-UHC-V_1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Korea1/KSCpc-EUC-H_0.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Korea1/UniKS-UCS2-H_1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Korea1/UniKS-UCS2-V_1.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_cmaps/Korea1/UniKS-UTF16-H_0.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_edit/fpdf_edit_content.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_edit/fpdf_edit_create.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_edit/fpdf_edit_doc.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_edit/fpdf_edit_image.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_font/fpdf_font.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_font/fpdf_font_charset.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_font/fpdf_font_cid.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_font/fpdf_font_utility.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_font/ttgsubtable.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_page/fpdf_page.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_page/fpdf_page_colors.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_page/fpdf_page_doc.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_page/fpdf_page_func.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_page/fpdf_page_graph_state.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_page/fpdf_page_image.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_page/fpdf_page_parser.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_page/fpdf_page_parser_new.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_page/fpdf_page_parser_old.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_page/fpdf_page_path.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_page/fpdf_page_pattern.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_parser/fpdf_parser_decode.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_parser/fpdf_parser_document.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_parser/fpdf_parser_encrypt.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_parser/fpdf_parser_fdf.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_parser/fpdf_parser_filters.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_parser/fpdf_parser_objects.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_parser/fpdf_parser_parser.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_parser/fpdf_parser_utility.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_render/fpdf_render.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_render/fpdf_render_cache.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_render/fpdf_render_image.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_render/fpdf_render_loadimage.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_render/fpdf_render_pattern.cpp \
						$(PDFIUM_CORE_SRC)/fpdfapi/fpdf_render/fpdf_render_text.cpp \
						$(PDFIUM_CORE_SRC)/fpdftext/fpdf_text.cpp \
						$(PDFIUM_CORE_SRC)/fpdftext/fpdf_text_int.cpp \
						$(PDFIUM_CORE_SRC)/fpdftext/fpdf_text_search.cpp \
						$(PDFIUM_CORE_SRC)/fpdftext/unicodenormalization.cpp \
						$(PDFIUM_CORE_SRC)/fpdftext/unicodenormalizationdata.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/codec/fx_codec.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/codec/fx_codec_fax.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/codec/fx_codec_flate.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/codec/fx_codec_icc.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/codec/fx_codec_jbig.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/codec/fx_codec_jbig_enc.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/codec/fx_codec_jpeg.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/codec/fx_codec_jpx_opj.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_bio.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_cio.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_dwt.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_event.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_function_list.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_image.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_invert.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_j2k.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_j2k_lib.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_jpt.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_mct.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_mqc.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_openjpeg.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_openjpeg_jp2.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_opj_clock.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_pi.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_raw.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_t1.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_t1_generate_luts.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_t2.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_tcd.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_libopenjpeg/src/fx_tgt.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_zlib/src/fx_zlib_adler32.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_zlib/src/fx_zlib_compress.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_zlib/src/fx_zlib_crc32.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_zlib/src/fx_zlib_deflate.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_zlib/src/fx_zlib_gzclose.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_zlib/src/fx_zlib_gzlib.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_zlib/src/fx_zlib_gzread.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_zlib/src/fx_zlib_gzwrite.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_zlib/src/fx_zlib_infback.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_zlib/src/fx_zlib_inffast.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_zlib/src/fx_zlib_inflate.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_zlib/src/fx_zlib_inftrees.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_zlib/src/fx_zlib_trees.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_zlib/src/fx_zlib_uncompr.c \
						$(PDFIUM_CORE_SRC)/fxcodec/fx_zlib/src/fx_zlib_zutil.c \
						$(PDFIUM_CORE_SRC)/fxcodec/jbig2/JBig2_ArithIntDecoder.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/jbig2/JBig2_Context.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/jbig2/JBig2_GeneralDecoder.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/jbig2/JBig2_HuffmanDecoder.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/jbig2/JBig2_HuffmanTable.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/jbig2/JBig2_Image.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/jbig2/JBig2_Object.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/jbig2/JBig2_PatternDict.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/jbig2/JBig2_Segment.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/jbig2/JBig2_SymbolDict.cpp \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmscam02.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmscgats.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmscnvrt.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmserr.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmsgamma.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmsgmt.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmshalf.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmsintrp.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmsio0.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmsio1.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmslut.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmsmd5.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmsmtrx.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmsnamed.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmsopt.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmspack.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmspcs.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmsplugin.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmsps2.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmssamp.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmssm.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmstypes.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmsvirt.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmswtpnt.c \
						$(PDFIUM_CORE_SRC)/fxcodec/lcms2/src/fx_cmsxform.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jcapimin.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jcapistd.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jccoefct.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jccolor.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jcdctmgr.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jchuff.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jcinit.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jcmainct.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jcmarker.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jcmaster.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jcomapi.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jcparam.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jcphuff.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jcprepct.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jcsample.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jctrans.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jdapimin.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jdapistd.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jdcoefct.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jdcolor.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jddctmgr.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jdhuff.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jdinput.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jdmainct.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jdmarker.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jdmaster.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jdmerge.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jdphuff.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jdpostct.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jdsample.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jdtrans.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jerror.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jfdctfst.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jfdctint.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jidctfst.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jidctint.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jidctred.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jmemmgr.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jmemnobs.c \
						$(PDFIUM_CORE_SRC)/fxcodec/libjpeg/fpdfapi_jutils.c \
						$(PDFIUM_CORE_SRC)/fxcrt/fxcrt_platforms.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fxcrt_posix.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fxcrt_windows.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_arabic.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_basic_array.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_basic_bstring.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_basic_buffer.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_basic_coords.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_basic_gcc.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_basic_list.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_basic_maps.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_basic_memmgr.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_basic_memmgr_mini.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_basic_plex.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_basic_utf.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_basic_util.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_basic_wstring.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_extension.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_ucddata.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_unicode.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_xml_composer.cpp \
						$(PDFIUM_CORE_SRC)/fxcrt/fx_xml_parser.cpp \
						$(PDFIUM_CORE_SRC)/fxge/agg/src/fxfx_agg_curves.cpp \
						$(PDFIUM_CORE_SRC)/fxge/agg/src/fxfx_agg_driver.cpp \
						$(PDFIUM_CORE_SRC)/fxge/agg/src/fxfx_agg_path_storage.cpp \
						$(PDFIUM_CORE_SRC)/fxge/agg/src/fxfx_agg_rasterizer_scanline_aa.cpp \
						$(PDFIUM_CORE_SRC)/fxge/agg/src/fxfx_agg_vcgen_dash.cpp \
						$(PDFIUM_CORE_SRC)/fxge/agg/src/fxfx_agg_vcgen_stroke.cpp \
						$(PDFIUM_CORE_SRC)/fxge/android/fpf_skiafont.cpp \
						$(PDFIUM_CORE_SRC)/fxge/android/fpf_skiafontmgr.cpp \
						$(PDFIUM_CORE_SRC)/fxge/android/fpf_skiamodule.cpp \
						$(PDFIUM_CORE_SRC)/fxge/android/fx_android_font.cpp \
						$(PDFIUM_CORE_SRC)/fxge/android/fx_android_imp.cpp \
						$(PDFIUM_CORE_SRC)/fxge/apple/fx_apple_platform.cpp \
						$(PDFIUM_CORE_SRC)/fxge/apple/fx_mac_imp.cpp \
						$(PDFIUM_CORE_SRC)/fxge/apple/fx_quartz_device.cpp \
						$(PDFIUM_CORE_SRC)/fxge/dib/fx_dib_composite.cpp \
						$(PDFIUM_CORE_SRC)/fxge/dib/fx_dib_convert.cpp \
						$(PDFIUM_CORE_SRC)/fxge/dib/fx_dib_engine.cpp \
						$(PDFIUM_CORE_SRC)/fxge/dib/fx_dib_main.cpp \
						$(PDFIUM_CORE_SRC)/fxge/dib/fx_dib_transform.cpp \
						$(PDFIUM_CORE_SRC)/fxge/fontdata/chromefontdata/FoxitDingbats.c \
						$(PDFIUM_CORE_SRC)/fxge/fontdata/chromefontdata/FoxitFixed.c \
						$(PDFIUM_CORE_SRC)/fxge/fontdata/chromefontdata/FoxitFixedBold.c \
						$(PDFIUM_CORE_SRC)/fxge/fontdata/chromefontdata/FoxitFixedBoldItalic.c \
						$(PDFIUM_CORE_SRC)/fxge/fontdata/chromefontdata/FoxitFixedItalic.c \
						$(PDFIUM_CORE_SRC)/fxge/fontdata/chromefontdata/FoxitSans.c \
						$(PDFIUM_CORE_SRC)/fxge/fontdata/chromefontdata/FoxitSansBold.c \
						$(PDFIUM_CORE_SRC)/fxge/fontdata/chromefontdata/FoxitSansBoldItalic.c \
						$(PDFIUM_CORE_SRC)/fxge/fontdata/chromefontdata/FoxitSansItalic.c \
						$(PDFIUM_CORE_SRC)/fxge/fontdata/chromefontdata/FoxitSansMM.c \
						$(PDFIUM_CORE_SRC)/fxge/fontdata/chromefontdata/FoxitSerif.c \
						$(PDFIUM_CORE_SRC)/fxge/fontdata/chromefontdata/FoxitSerifBold.c \
						$(PDFIUM_CORE_SRC)/fxge/fontdata/chromefontdata/FoxitSerifBoldItalic.c \
						$(PDFIUM_CORE_SRC)/fxge/fontdata/chromefontdata/FoxitSerifItalic.c \
						$(PDFIUM_CORE_SRC)/fxge/fontdata/chromefontdata/FoxitSerifMM.c \
						$(PDFIUM_CORE_SRC)/fxge/fontdata/chromefontdata/FoxitSymbol.c \
						$(PDFIUM_CORE_SRC)/fxge/fx_freetype/src/fxft_cff.c \
						$(PDFIUM_CORE_SRC)/fxge/fx_freetype/src/fxft_ftbase.c \
						$(PDFIUM_CORE_SRC)/fxge/fx_freetype/src/fxft_ftbitmap.c \
						$(PDFIUM_CORE_SRC)/fxge/fx_freetype/src/fxft_ftglyph.c \
						$(PDFIUM_CORE_SRC)/fxge/fx_freetype/src/fxft_ftinit.c \
						$(PDFIUM_CORE_SRC)/fxge/fx_freetype/src/fxft_ftlcdfil.c \
						$(PDFIUM_CORE_SRC)/fxge/fx_freetype/src/fxft_ftmm.c \
						$(PDFIUM_CORE_SRC)/fxge/fx_freetype/src/fxft_ftsystem.c \
						$(PDFIUM_CORE_SRC)/fxge/fx_freetype/src/fxft_psaux.c \
						$(PDFIUM_CORE_SRC)/fxge/fx_freetype/src/fxft_pshinter.c \
						$(PDFIUM_CORE_SRC)/fxge/fx_freetype/src/fxft_psmodule.c \
						$(PDFIUM_CORE_SRC)/fxge/fx_freetype/src/fxft_raster.c \
						$(PDFIUM_CORE_SRC)/fxge/fx_freetype/src/fxft_sfnt.c \
						$(PDFIUM_CORE_SRC)/fxge/fx_freetype/src/fxft_smooth.c \
						$(PDFIUM_CORE_SRC)/fxge/fx_freetype/src/fxft_truetype.c \
						$(PDFIUM_CORE_SRC)/fxge/fx_freetype/src/fxft_type1.c \
						$(PDFIUM_CORE_SRC)/fxge/fx_freetype/src/fxft_type1cid.c \
						$(PDFIUM_CORE_SRC)/fxge/ge/fx_ge.cpp \
						$(PDFIUM_CORE_SRC)/fxge/ge/fx_ge_device.cpp \
						$(PDFIUM_CORE_SRC)/fxge/ge/fx_ge_font.cpp \
						$(PDFIUM_CORE_SRC)/fxge/ge/fx_ge_fontmap.cpp \
						$(PDFIUM_CORE_SRC)/fxge/ge/fx_ge_linux.cpp \
						$(PDFIUM_CORE_SRC)/fxge/ge/fx_ge_path.cpp \
						$(PDFIUM_CORE_SRC)/fxge/ge/fx_ge_ps.cpp \
						$(PDFIUM_CORE_SRC)/fxge/ge/fx_ge_text.cpp \

include $(BUILD_SHARED_LIBRARY)
