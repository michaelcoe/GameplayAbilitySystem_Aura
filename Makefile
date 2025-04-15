# Makefile generated by MakefileGenerator.cs
# *DO NOT EDIT*

UNREALROOTPATH = /media/GameDevelopment/Linux_Unreal_Engine_5.5.3

TARGETS = \
	LiveLinkHub-Linux-DebugGame  \
	LiveLinkHub-Linux-Development  \
	LiveLinkHub \
	DotNetPerforceLib \
	EventLoopUnitTests \
	UnrealEditor-Linux-DebugGame  \
	UnrealEditor-Linux-Development  \
	UnrealEditor \
	UnrealGame-Android-DebugGame  \
	UnrealGame-Android-Development  \
	UnrealGame-Android-Shipping  \
	UnrealGame-Linux-DebugGame  \
	UnrealGame-Linux-Development  \
	UnrealGame-Linux-Shipping  \
	UnrealGame-LinuxArm64-DebugGame  \
	UnrealGame-LinuxArm64-Development  \
	UnrealGame-LinuxArm64-Shipping  \
	UnrealGame \
	Aura-Android-DebugGame  \
	Aura-Android-Development  \
	Aura-Android-Shipping  \
	Aura-Linux-DebugGame  \
	Aura-Linux-Development  \
	Aura-Linux-Shipping  \
	Aura-LinuxArm64-DebugGame  \
	Aura-LinuxArm64-Development  \
	Aura-LinuxArm64-Shipping  \
	Aura \
	AuraEditor-Linux-DebugGame  \
	AuraEditor-Linux-Development  \
	AuraEditor\
	configure

BUILD = "$(UNREALROOTPATH)/Engine/Build/BatchFiles/RunUBT.sh"

all: StandardSet

RequiredTools: CrashReportClient-Linux-Shipping CrashReportClientEditor-Linux-Shipping ShaderCompileWorker UnrealLightmass EpicWebHelper-Linux-Shipping

StandardSet: RequiredTools UnrealFrontend AuraEditor UnrealInsights

DebugSet: RequiredTools UnrealFrontend-Linux-Debug AuraEditor-Linux-Debug


LiveLinkHub-Linux-DebugGame:
	 $(BUILD) LiveLinkHub Linux DebugGame  $(ARGS)

LiveLinkHub-Linux-Development:
	 $(BUILD) LiveLinkHub Linux Development  $(ARGS)

LiveLinkHub: LiveLinkHub-Linux-Development

DotNetPerforceLib: DotNetPerforceLib-Linux-Development

EventLoopUnitTests: EventLoopUnitTests-Linux-Development

UnrealEditor-Linux-DebugGame:
	 $(BUILD) UnrealEditor Linux DebugGame  $(ARGS)

UnrealEditor-Linux-Development:
	 $(BUILD) UnrealEditor Linux Development  $(ARGS)

UnrealEditor: UnrealEditor-Linux-Development

UnrealGame-Android-DebugGame:
	 $(BUILD) UnrealGame Android DebugGame  $(ARGS)

UnrealGame-Android-Development:
	 $(BUILD) UnrealGame Android Development  $(ARGS)

UnrealGame-Android-Shipping:
	 $(BUILD) UnrealGame Android Shipping  $(ARGS)

UnrealGame-Linux-DebugGame:
	 $(BUILD) UnrealGame Linux DebugGame  $(ARGS)

UnrealGame-Linux-Development:
	 $(BUILD) UnrealGame Linux Development  $(ARGS)

UnrealGame-Linux-Shipping:
	 $(BUILD) UnrealGame Linux Shipping  $(ARGS)

UnrealGame-LinuxArm64-DebugGame:
	 $(BUILD) UnrealGame LinuxArm64 DebugGame  $(ARGS)

UnrealGame-LinuxArm64-Development:
	 $(BUILD) UnrealGame LinuxArm64 Development  $(ARGS)

UnrealGame-LinuxArm64-Shipping:
	 $(BUILD) UnrealGame LinuxArm64 Shipping  $(ARGS)

UnrealGame: UnrealGame-Linux-Development

Aura-Android-DebugGame:
	 $(BUILD) Aura Android DebugGame  -Project="/media/GameDevelopment/Unreal_Projects/Aura/Aura.uproject" $(ARGS)

Aura-Android-Development:
	 $(BUILD) Aura Android Development  -Project="/media/GameDevelopment/Unreal_Projects/Aura/Aura.uproject" $(ARGS)

Aura-Android-Shipping:
	 $(BUILD) Aura Android Shipping  -Project="/media/GameDevelopment/Unreal_Projects/Aura/Aura.uproject" $(ARGS)

Aura-Linux-DebugGame:
	 $(BUILD) Aura Linux DebugGame  -Project="/media/GameDevelopment/Unreal_Projects/Aura/Aura.uproject" $(ARGS)

Aura-Linux-Development:
	 $(BUILD) Aura Linux Development  -Project="/media/GameDevelopment/Unreal_Projects/Aura/Aura.uproject" $(ARGS)

Aura-Linux-Shipping:
	 $(BUILD) Aura Linux Shipping  -Project="/media/GameDevelopment/Unreal_Projects/Aura/Aura.uproject" $(ARGS)

Aura-LinuxArm64-DebugGame:
	 $(BUILD) Aura LinuxArm64 DebugGame  -Project="/media/GameDevelopment/Unreal_Projects/Aura/Aura.uproject" $(ARGS)

Aura-LinuxArm64-Development:
	 $(BUILD) Aura LinuxArm64 Development  -Project="/media/GameDevelopment/Unreal_Projects/Aura/Aura.uproject" $(ARGS)

Aura-LinuxArm64-Shipping:
	 $(BUILD) Aura LinuxArm64 Shipping  -Project="/media/GameDevelopment/Unreal_Projects/Aura/Aura.uproject" $(ARGS)

Aura: Aura-Linux-Development

AuraEditor-Linux-DebugGame:
	 $(BUILD) AuraEditor Linux DebugGame  -Project="/media/GameDevelopment/Unreal_Projects/Aura/Aura.uproject" $(ARGS)

AuraEditor-Linux-Development:
	 $(BUILD) AuraEditor Linux Development  -Project="/media/GameDevelopment/Unreal_Projects/Aura/Aura.uproject" $(ARGS)

AuraEditor: AuraEditor-Linux-Development

configure:
	$(BUILD) -ProjectFiles -Project="/media/GameDevelopment/Unreal_Projects/Aura/Aura.uproject" -Game 

.PHONY: $(TARGETS)
