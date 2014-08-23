# Makefile generated by XPJ for linux32
-include Makefile.custom
ProjectName = NvGamepad
NvGamepad_cppfiles   += ./../../src/NvGamepad/NvGamepadAndroid.cpp
NvGamepad_cppfiles   += ./../../src/NvGamepad/NvGamepadLinux.cpp
NvGamepad_cppfiles   += ./../../src/NvGamepad/NvGamepadXInput.cpp

NvGamepad_cpp_debug_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.debug.P, $(NvGamepad_cppfiles)))))
NvGamepad_c_debug_dep      = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.debug.P, $(NvGamepad_cfiles)))))
NvGamepad_debug_dep      = $(NvGamepad_cpp_debug_dep) $(NvGamepad_c_debug_dep)
-include $(NvGamepad_debug_dep)
NvGamepad_cpp_release_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.release.P, $(NvGamepad_cppfiles)))))
NvGamepad_c_release_dep      = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.release.P, $(NvGamepad_cfiles)))))
NvGamepad_release_dep      = $(NvGamepad_cpp_release_dep) $(NvGamepad_c_release_dep)
-include $(NvGamepad_release_dep)
NvGamepad_debug_hpaths    := 
NvGamepad_debug_hpaths    += ./../../src/NvGamepad
NvGamepad_debug_hpaths    += ./../../include
NvGamepad_debug_hpaths    += ./../../externals/include
NvGamepad_debug_hpaths    += ./../../externals/include/GLFW
NvGamepad_debug_lpaths    := 
NvGamepad_debug_defines   := $(NvGamepad_custom_defines)
NvGamepad_debug_defines   += LINUX=1
NvGamepad_debug_defines   += _LIB
NvGamepad_debug_defines   += _DEBUG
NvGamepad_debug_libraries := 
NvGamepad_debug_libraries += pthread
NvGamepad_debug_libraries += glfw3
NvGamepad_debug_common_cflags	:= $(NvGamepad_custom_cflags)
NvGamepad_debug_common_cflags    += -MMD
NvGamepad_debug_common_cflags    += $(addprefix -D, $(NvGamepad_debug_defines))
NvGamepad_debug_common_cflags    += $(addprefix -I, $(NvGamepad_debug_hpaths))
NvGamepad_debug_common_cflags  += -m32
NvGamepad_debug_cflags	:= $(NvGamepad_debug_common_cflags)
NvGamepad_debug_cflags  += -malign-double -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -Wno-reorder
NvGamepad_debug_cflags  += -g
NvGamepad_debug_cppflags	:= $(NvGamepad_debug_common_cflags)
NvGamepad_debug_cppflags  += -malign-double -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -Wno-reorder
NvGamepad_debug_cppflags  += -g
NvGamepad_debug_lflags    := $(NvGamepad_custom_lflags)
NvGamepad_debug_lflags    += $(addprefix -L, $(NvGamepad_debug_lpaths))
NvGamepad_debug_lflags    += -Wl,--start-group $(addprefix -l, $(NvGamepad_debug_libraries)) -Wl,--end-group
NvGamepad_debug_lflags  += -m32
NvGamepad_debug_objsdir  = $(OBJS_DIR)/NvGamepad_debug
NvGamepad_debug_cpp_o    = $(addprefix $(NvGamepad_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(NvGamepad_cppfiles)))))
NvGamepad_debug_c_o      = $(addprefix $(NvGamepad_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(NvGamepad_cfiles)))))
NvGamepad_debug_obj      = $(NvGamepad_debug_cpp_o) $(NvGamepad_debug_c_o)
NvGamepad_debug_bin      := ./../../lib/linux32/libNvGamepadD.a

clean_NvGamepad_debug: 
	@$(ECHO) clean NvGamepad debug
	@$(RMDIR) $(NvGamepad_debug_objsdir)
	@$(RMDIR) $(NvGamepad_debug_bin)

build_NvGamepad_debug: postbuild_NvGamepad_debug
postbuild_NvGamepad_debug: mainbuild_NvGamepad_debug
mainbuild_NvGamepad_debug: prebuild_NvGamepad_debug $(NvGamepad_debug_bin)
prebuild_NvGamepad_debug:

$(NvGamepad_debug_bin): $(NvGamepad_debug_obj) 
	@mkdir -p `dirname ./../../lib/linux32/libNvGamepadD.a`
	@$(AR) rcs $(NvGamepad_debug_bin) $(NvGamepad_debug_obj)
	@$(ECHO) building $@ complete!

NvGamepad_debug_DEPDIR = $(dir $(@))/$(*F)
$(NvGamepad_debug_cpp_o): $(NvGamepad_debug_objsdir)/%.o:
	@$(ECHO) NvGamepad: compiling debug $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvGamepad_debug_objsdir),, $@))), $(NvGamepad_cppfiles))...
	@mkdir -p $(dir $(@))
	@$(CXX) $(NvGamepad_debug_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvGamepad_debug_objsdir),, $@))), $(NvGamepad_cppfiles)) -o $@
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvGamepad_debug_objsdir),, $@))), $(NvGamepad_cppfiles))))))
	@cp $(NvGamepad_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvGamepad_debug_objsdir),, $@))), $(NvGamepad_cppfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(NvGamepad_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvGamepad_debug_objsdir),, $@))), $(NvGamepad_cppfiles))))).debug.P; \
	  rm -f $(NvGamepad_debug_DEPDIR).d

$(NvGamepad_debug_c_o): $(NvGamepad_debug_objsdir)/%.o:
	@$(ECHO) NvGamepad: compiling debug $(filter %$(strip $(subst .c.o,.c, $(subst $(NvGamepad_debug_objsdir),, $@))), $(NvGamepad_cfiles))...
	@mkdir -p $(dir $(@))
	@$(CC) $(NvGamepad_debug_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(NvGamepad_debug_objsdir),, $@))), $(NvGamepad_cfiles)) -o $@ 
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvGamepad_debug_objsdir),, $@))), $(NvGamepad_cfiles))))))
	@cp $(NvGamepad_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvGamepad_debug_objsdir),, $@))), $(NvGamepad_cfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(NvGamepad_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvGamepad_debug_objsdir),, $@))), $(NvGamepad_cfiles))))).debug.P; \
	  rm -f $(NvGamepad_debug_DEPDIR).d

NvGamepad_release_hpaths    := 
NvGamepad_release_hpaths    += ./../../src/NvGamepad
NvGamepad_release_hpaths    += ./../../include
NvGamepad_release_hpaths    += ./../../externals/include
NvGamepad_release_hpaths    += ./../../externals/include/GLFW
NvGamepad_release_lpaths    := 
NvGamepad_release_defines   := $(NvGamepad_custom_defines)
NvGamepad_release_defines   += LINUX=1
NvGamepad_release_defines   += _LIB
NvGamepad_release_defines   += NDEBUG
NvGamepad_release_libraries := 
NvGamepad_release_libraries += pthread
NvGamepad_release_libraries += glfw3
NvGamepad_release_common_cflags	:= $(NvGamepad_custom_cflags)
NvGamepad_release_common_cflags    += -MMD
NvGamepad_release_common_cflags    += $(addprefix -D, $(NvGamepad_release_defines))
NvGamepad_release_common_cflags    += $(addprefix -I, $(NvGamepad_release_hpaths))
NvGamepad_release_common_cflags  += -m32
NvGamepad_release_cflags	:= $(NvGamepad_release_common_cflags)
NvGamepad_release_cflags  += -malign-double -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -Wno-reorder
NvGamepad_release_cflags  += -O2
NvGamepad_release_cppflags	:= $(NvGamepad_release_common_cflags)
NvGamepad_release_cppflags  += -malign-double -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -Wno-reorder
NvGamepad_release_cppflags  += -O2
NvGamepad_release_lflags    := $(NvGamepad_custom_lflags)
NvGamepad_release_lflags    += $(addprefix -L, $(NvGamepad_release_lpaths))
NvGamepad_release_lflags    += -Wl,--start-group $(addprefix -l, $(NvGamepad_release_libraries)) -Wl,--end-group
NvGamepad_release_lflags  += -m32
NvGamepad_release_objsdir  = $(OBJS_DIR)/NvGamepad_release
NvGamepad_release_cpp_o    = $(addprefix $(NvGamepad_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(NvGamepad_cppfiles)))))
NvGamepad_release_c_o      = $(addprefix $(NvGamepad_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(NvGamepad_cfiles)))))
NvGamepad_release_obj      = $(NvGamepad_release_cpp_o) $(NvGamepad_release_c_o)
NvGamepad_release_bin      := ./../../lib/linux32/libNvGamepad.a

clean_NvGamepad_release: 
	@$(ECHO) clean NvGamepad release
	@$(RMDIR) $(NvGamepad_release_objsdir)
	@$(RMDIR) $(NvGamepad_release_bin)

build_NvGamepad_release: postbuild_NvGamepad_release
postbuild_NvGamepad_release: mainbuild_NvGamepad_release
mainbuild_NvGamepad_release: prebuild_NvGamepad_release $(NvGamepad_release_bin)
prebuild_NvGamepad_release:

$(NvGamepad_release_bin): $(NvGamepad_release_obj) 
	@mkdir -p `dirname ./../../lib/linux32/libNvGamepad.a`
	@$(AR) rcs $(NvGamepad_release_bin) $(NvGamepad_release_obj)
	@$(ECHO) building $@ complete!

NvGamepad_release_DEPDIR = $(dir $(@))/$(*F)
$(NvGamepad_release_cpp_o): $(NvGamepad_release_objsdir)/%.o:
	@$(ECHO) NvGamepad: compiling release $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvGamepad_release_objsdir),, $@))), $(NvGamepad_cppfiles))...
	@mkdir -p $(dir $(@))
	@$(CXX) $(NvGamepad_release_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvGamepad_release_objsdir),, $@))), $(NvGamepad_cppfiles)) -o $@
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvGamepad_release_objsdir),, $@))), $(NvGamepad_cppfiles))))))
	@cp $(NvGamepad_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvGamepad_release_objsdir),, $@))), $(NvGamepad_cppfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(NvGamepad_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(NvGamepad_release_objsdir),, $@))), $(NvGamepad_cppfiles))))).release.P; \
	  rm -f $(NvGamepad_release_DEPDIR).d

$(NvGamepad_release_c_o): $(NvGamepad_release_objsdir)/%.o:
	@$(ECHO) NvGamepad: compiling release $(filter %$(strip $(subst .c.o,.c, $(subst $(NvGamepad_release_objsdir),, $@))), $(NvGamepad_cfiles))...
	@mkdir -p $(dir $(@))
	@$(CC) $(NvGamepad_release_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(NvGamepad_release_objsdir),, $@))), $(NvGamepad_cfiles)) -o $@ 
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvGamepad_release_objsdir),, $@))), $(NvGamepad_cfiles))))))
	@cp $(NvGamepad_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvGamepad_release_objsdir),, $@))), $(NvGamepad_cfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(NvGamepad_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(NvGamepad_release_objsdir),, $@))), $(NvGamepad_cfiles))))).release.P; \
	  rm -f $(NvGamepad_release_DEPDIR).d

clean_NvGamepad:  clean_NvGamepad_debug clean_NvGamepad_release
	@rm -rf $(DEPSDIR)
