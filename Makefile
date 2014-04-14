# This Makefile is for the WebTKS extension to perl.
#
# It was generated automatically by MakeMaker version
# 6.62 (Revision: 66200) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#       ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker ARGV: ()
#

#   MakeMaker Parameters:

#     ABSTRACT => q[Catalyst based application]
#     AUTHOR => [q[Catalyst developer]]
#     BUILD_REQUIRES => { Test::More=>q[0.88], ExtUtils::MakeMaker=>q[6.36] }
#     CONFIGURE_REQUIRES => {  }
#     DISTNAME => q[WebTKS]
#     EXE_FILES => [q[script/order_create.pl], q[script/order_test.pl], q[script/webtks_cgi.pl], q[script/webtks_create.pl], q[script/webtks_fastcgi.pl], q[script/webtks_server.pl], q[script/webtks_test.pl]]
#     LICENSE => q[perl]
#     NAME => q[WebTKS]
#     NO_META => q[1]
#     PREREQ_PM => { namespace::autoclean=>q[0], Catalyst::Plugin::Static::Simple=>q[0], ExtUtils::MakeMaker=>q[6.36], Catalyst::Plugin::ConfigLoader=>q[0], Catalyst::Action::RenderView=>q[0], Test::More=>q[0.88], Catalyst::Model::Adaptor=>q[0], Catalyst::Plugin::Unicode=>q[0], Catalyst::Plugin::RedirectAndDetach=>q[0], Config::General=>q[0], Catalyst::Runtime=>q[5.90020], Moose=>q[0] }
#     VERSION => q[0.01]
#     VERSION_FROM => q[lib/WebTKS.pm]
#     dist => { PREOP=>q[$(PERL) -I. "-MModule::Install::Admin" -e "dist_preop(q($(DISTVNAME)))"] }
#     realclean => { FILES=>q[MYMETA.yml] }
#     test => { TESTS=>q[t/01app.t t/02pod.t t/03podcoverage.t t/controller_Orders.t t/model_DB-TKS.t t/view_HTML.t] }

# --- MakeMaker post_initialize section:


# --- MakeMaker const_config section:

# These definitions are from config.sh (via /usr/lib64/perl5/5.8.8/x86_64-linux-thread-multi/Config.pm).
# They may have been overridden via Makefile.PL or on the command line.
AR = ar
CC = gcc
CCCDLFLAGS = -fPIC
CCDLFLAGS = -Wl,-E -Wl,-rpath,/usr/lib64/perl5/5.8.8/x86_64-linux-thread-multi/CORE
DLEXT = so
DLSRC = dl_dlopen.xs
EXE_EXT = 
FULL_AR = /usr/bin/ar
LD = gcc
LDDLFLAGS = -shared -O2 -g -pipe -Wall -Wp,-D_FORTIFY_SOURCE=2 -fexceptions -fstack-protector --param=ssp-buffer-size=4 -m64 -mtune=generic
LDFLAGS = 
LIBC = 
LIB_EXT = .a
OBJ_EXT = .o
OSNAME = linux
OSVERS = 2.6.18-53.el5
RANLIB = :
SITELIBEXP = /usr/lib/perl5/site_perl/5.8.8
SITEARCHEXP = /usr/lib64/perl5/site_perl/5.8.8/x86_64-linux-thread-multi
SO = so
VENDORARCHEXP = /usr/lib64/perl5/vendor_perl/5.8.8/x86_64-linux-thread-multi
VENDORLIBEXP = /usr/lib/perl5/vendor_perl/5.8.8


# --- MakeMaker constants section:
AR_STATIC_ARGS = cr
DIRFILESEP = /
DFSEP = $(DIRFILESEP)
NAME = WebTKS
NAME_SYM = WebTKS
VERSION = 0.01
VERSION_MACRO = VERSION
VERSION_SYM = 0_01
DEFINE_VERSION = -D$(VERSION_MACRO)=\"$(VERSION)\"
XS_VERSION = 0.01
XS_VERSION_MACRO = XS_VERSION
XS_DEFINE_VERSION = -D$(XS_VERSION_MACRO)=\"$(XS_VERSION)\"
INST_ARCHLIB = blib/arch
INST_SCRIPT = blib/script
INST_BIN = blib/bin
INST_LIB = blib/lib
INST_MAN1DIR = blib/man1
INST_MAN3DIR = blib/man3
MAN1EXT = 1
MAN3EXT = 3pm
INSTALLDIRS = site
DESTDIR = 
PREFIX = $(SITEPREFIX)
PERLPREFIX = /usr
SITEPREFIX = /usr
VENDORPREFIX = /usr
INSTALLPRIVLIB = /usr/lib/perl5/5.8.8
DESTINSTALLPRIVLIB = $(DESTDIR)$(INSTALLPRIVLIB)
INSTALLSITELIB = /usr/lib/perl5/site_perl/5.8.8
DESTINSTALLSITELIB = $(DESTDIR)$(INSTALLSITELIB)
INSTALLVENDORLIB = /usr/lib/perl5/vendor_perl/5.8.8
DESTINSTALLVENDORLIB = $(DESTDIR)$(INSTALLVENDORLIB)
INSTALLARCHLIB = /usr/lib64/perl5/5.8.8/x86_64-linux-thread-multi
DESTINSTALLARCHLIB = $(DESTDIR)$(INSTALLARCHLIB)
INSTALLSITEARCH = /usr/lib64/perl5/site_perl/5.8.8/x86_64-linux-thread-multi
DESTINSTALLSITEARCH = $(DESTDIR)$(INSTALLSITEARCH)
INSTALLVENDORARCH = /usr/lib64/perl5/vendor_perl/5.8.8/x86_64-linux-thread-multi
DESTINSTALLVENDORARCH = $(DESTDIR)$(INSTALLVENDORARCH)
INSTALLBIN = /usr/bin
DESTINSTALLBIN = $(DESTDIR)$(INSTALLBIN)
INSTALLSITEBIN = /usr/bin
DESTINSTALLSITEBIN = $(DESTDIR)$(INSTALLSITEBIN)
INSTALLVENDORBIN = /usr/bin
DESTINSTALLVENDORBIN = $(DESTDIR)$(INSTALLVENDORBIN)
INSTALLSCRIPT = /usr/bin
DESTINSTALLSCRIPT = $(DESTDIR)$(INSTALLSCRIPT)
INSTALLSITESCRIPT = /usr/bin
DESTINSTALLSITESCRIPT = $(DESTDIR)$(INSTALLSITESCRIPT)
INSTALLVENDORSCRIPT = /usr/bin
DESTINSTALLVENDORSCRIPT = $(DESTDIR)$(INSTALLVENDORSCRIPT)
INSTALLMAN1DIR = /usr/share/man/man1
DESTINSTALLMAN1DIR = $(DESTDIR)$(INSTALLMAN1DIR)
INSTALLSITEMAN1DIR = /usr/share/man/man1
DESTINSTALLSITEMAN1DIR = $(DESTDIR)$(INSTALLSITEMAN1DIR)
INSTALLVENDORMAN1DIR = /usr/share/man/man1
DESTINSTALLVENDORMAN1DIR = $(DESTDIR)$(INSTALLVENDORMAN1DIR)
INSTALLMAN3DIR = /usr/share/man/man3
DESTINSTALLMAN3DIR = $(DESTDIR)$(INSTALLMAN3DIR)
INSTALLSITEMAN3DIR = /usr/share/man/man3
DESTINSTALLSITEMAN3DIR = $(DESTDIR)$(INSTALLSITEMAN3DIR)
INSTALLVENDORMAN3DIR = /usr/share/man/man3
DESTINSTALLVENDORMAN3DIR = $(DESTDIR)$(INSTALLVENDORMAN3DIR)
PERL_LIB =
PERL_ARCHLIB = /usr/lib64/perl5/5.8.8/x86_64-linux-thread-multi
LIBPERL_A = libperl.a
FIRST_MAKEFILE = Makefile
MAKEFILE_OLD = Makefile.old
MAKE_APERL_FILE = Makefile.aperl
PERLMAINCC = $(CC)
PERL_INC = /usr/lib64/perl5/5.8.8/x86_64-linux-thread-multi/CORE
PERL = /usr/bin/perl "-Iinc"
FULLPERL = /usr/bin/perl "-Iinc"
ABSPERL = $(PERL)
PERLRUN = $(PERL)
FULLPERLRUN = $(FULLPERL)
ABSPERLRUN = $(ABSPERL)
PERLRUNINST = $(PERLRUN) "-I$(INST_ARCHLIB)" "-Iinc" "-I$(INST_LIB)"
FULLPERLRUNINST = $(FULLPERLRUN) "-I$(INST_ARCHLIB)" "-Iinc" "-I$(INST_LIB)"
ABSPERLRUNINST = $(ABSPERLRUN) "-I$(INST_ARCHLIB)" "-Iinc" "-I$(INST_LIB)"
PERL_CORE = 0
PERM_DIR = 755
PERM_RW = 644
PERM_RWX = 755

MAKEMAKER   = /usr/lib/perl5/5.8.8/ExtUtils/MakeMaker.pm
MM_VERSION  = 6.62
MM_REVISION = 66200

# FULLEXT = Pathname for extension directory (eg Foo/Bar/Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT. (eg Oracle)
# PARENT_NAME = NAME without BASEEXT and no trailing :: (eg Foo::Bar)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
MAKE = make
FULLEXT = WebTKS
BASEEXT = WebTKS
PARENT_NAME = 
DLBASE = $(BASEEXT)
VERSION_FROM = lib/WebTKS.pm
OBJECT = 
LDFROM = $(OBJECT)
LINKTYPE = dynamic
BOOTDEP = 

# Handy lists of source code files:
XS_FILES = 
C_FILES  = 
O_FILES  = 
H_FILES  = 
MAN1PODS = script/webtks_cgi.pl \
	script/webtks_create.pl \
	script/webtks_fastcgi.pl \
	script/webtks_server.pl \
	script/webtks_test.pl
MAN3PODS = lib/TKS/Schema/Result/Order.pm \
	lib/Vicidial/Schema/Result/CallLog.pm \
	lib/Vicidial/Schema/Result/CallLogArchive.pm \
	lib/Vicidial/Schema/Result/GroupsAlias.pm \
	lib/Vicidial/Schema/Result/InboundNumber.pm \
	lib/Vicidial/Schema/Result/LiveChannel.pm \
	lib/Vicidial/Schema/Result/LiveInbound.pm \
	lib/Vicidial/Schema/Result/LiveInboundLog.pm \
	lib/Vicidial/Schema/Result/LiveSipChannel.pm \
	lib/Vicidial/Schema/Result/ParkLog.pm \
	lib/Vicidial/Schema/Result/ParkedChannel.pm \
	lib/Vicidial/Schema/Result/Phone.pm \
	lib/Vicidial/Schema/Result/PhoneFavorite.pm \
	lib/Vicidial/Schema/Result/PhonesAlias.pm \
	lib/Vicidial/Schema/Result/RecordingLog.pm \
	lib/Vicidial/Schema/Result/Server.pm \
	lib/Vicidial/Schema/Result/ServerPerformance.pm \
	lib/Vicidial/Schema/Result/ServerUpdater.pm \
	lib/Vicidial/Schema/Result/SystemSetting.pm \
	lib/Vicidial/Schema/Result/TwodayCallLog.pm \
	lib/Vicidial/Schema/Result/TwodayRecordingLog.pm \
	lib/Vicidial/Schema/Result/TwodayVicidialAgentLog.pm \
	lib/Vicidial/Schema/Result/TwodayVicidialCloserLog.pm \
	lib/Vicidial/Schema/Result/TwodayVicidialLog.pm \
	lib/Vicidial/Schema/Result/TwodayVicidialXferLog.pm \
	lib/Vicidial/Schema/Result/UserCallLog.pm \
	lib/Vicidial/Schema/Result/VicidialAdminLog.pm \
	lib/Vicidial/Schema/Result/VicidialAgentLog.pm \
	lib/Vicidial/Schema/Result/VicidialAgentLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialAgentSkipLog.pm \
	lib/Vicidial/Schema/Result/VicidialAgentSph.pm \
	lib/Vicidial/Schema/Result/VicidialApiLog.pm \
	lib/Vicidial/Schema/Result/VicidialAutoCall.pm \
	lib/Vicidial/Schema/Result/VicidialCallMenu.pm \
	lib/Vicidial/Schema/Result/VicidialCallMenuOption.pm \
	lib/Vicidial/Schema/Result/VicidialCallNote.pm \
	lib/Vicidial/Schema/Result/VicidialCallNotesArchive.pm \
	lib/Vicidial/Schema/Result/VicidialCallTime.pm \
	lib/Vicidial/Schema/Result/VicidialCallback.pm \
	lib/Vicidial/Schema/Result/VicidialCampaign.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignAgent.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignCidAreacode.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignDnc.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignHotkey.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignServerStat.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignStat.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignStatsDebug.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignStatus.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignsListMix.pm \
	lib/Vicidial/Schema/Result/VicidialCarrierLog.pm \
	lib/Vicidial/Schema/Result/VicidialCarrierLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialCloserLog.pm \
	lib/Vicidial/Schema/Result/VicidialCloserLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialConfTemplate.pm \
	lib/Vicidial/Schema/Result/VicidialConference.pm \
	lib/Vicidial/Schema/Result/VicidialCpdLog.pm \
	lib/Vicidial/Schema/Result/VicidialCustomCid.pm \
	lib/Vicidial/Schema/Result/VicidialCustomLeadloaderTemplate.pm \
	lib/Vicidial/Schema/Result/VicidialDailyMaxStat.pm \
	lib/Vicidial/Schema/Result/VicidialDailyRaStat.pm \
	lib/Vicidial/Schema/Result/VicidialDidAgentLog.pm \
	lib/Vicidial/Schema/Result/VicidialDidAgentLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialDidLog.pm \
	lib/Vicidial/Schema/Result/VicidialDidRaExtension.pm \
	lib/Vicidial/Schema/Result/VicidialDnc.pm \
	lib/Vicidial/Schema/Result/VicidialDropRateGroup.pm \
	lib/Vicidial/Schema/Result/VicidialExtensionGroup.pm \
	lib/Vicidial/Schema/Result/VicidialFilterPhoneGroup.pm \
	lib/Vicidial/Schema/Result/VicidialFilterPhoneNumber.pm \
	lib/Vicidial/Schema/Result/VicidialGrabCallLog.pm \
	lib/Vicidial/Schema/Result/VicidialHopper.pm \
	lib/Vicidial/Schema/Result/VicidialInboundDid.pm \
	lib/Vicidial/Schema/Result/VicidialInboundGroup.pm \
	lib/Vicidial/Schema/Result/VicidialInboundGroupAgent.pm \
	lib/Vicidial/Schema/Result/VicidialIvr.pm \
	lib/Vicidial/Schema/Result/VicidialLead.pm \
	lib/Vicidial/Schema/Result/VicidialLeadFilter.pm \
	lib/Vicidial/Schema/Result/VicidialLeadRecycle.pm \
	lib/Vicidial/Schema/Result/VicidialLeadSearchLog.pm \
	lib/Vicidial/Schema/Result/VicidialLeadSearchLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialList.pm \
	lib/Vicidial/Schema/Result/VicidialListAltPhone.pm \
	lib/Vicidial/Schema/Result/VicidialListPin.pm \
	lib/Vicidial/Schema/Result/VicidialListUpdateLog.pm \
	lib/Vicidial/Schema/Result/VicidialListsField.pm \
	lib/Vicidial/Schema/Result/VicidialLiveAgent.pm \
	lib/Vicidial/Schema/Result/VicidialLiveInboundAgent.pm \
	lib/Vicidial/Schema/Result/VicidialLog.pm \
	lib/Vicidial/Schema/Result/VicidialLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialLogExtended.pm \
	lib/Vicidial/Schema/Result/VicidialLogExtendedArchive.pm \
	lib/Vicidial/Schema/Result/VicidialLogNoanswer.pm \
	lib/Vicidial/Schema/Result/VicidialLogNoanswerArchive.pm \
	lib/Vicidial/Schema/Result/VicidialManager.pm \
	lib/Vicidial/Schema/Result/VicidialManualDialQueue.pm \
	lib/Vicidial/Schema/Result/VicidialMusicOnHold.pm \
	lib/Vicidial/Schema/Result/VicidialMusicOnHoldFiles.pm \
	lib/Vicidial/Schema/Result/VicidialNanpaPrefixCode.pm \
	lib/Vicidial/Schema/Result/VicidialOutboundIvrLog.pm \
	lib/Vicidial/Schema/Result/VicidialOutboundIvrLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialOverrideId.pm \
	lib/Vicidial/Schema/Result/VicidialPauseCode.pm \
	lib/Vicidial/Schema/Result/VicidialPhoneCode.pm \
	lib/Vicidial/Schema/Result/VicidialPostalCode.pm \
	lib/Vicidial/Schema/Result/VicidialProcessTrigger.pm \
	lib/Vicidial/Schema/Result/VicidialProcessTriggerLog.pm \
	lib/Vicidial/Schema/Result/VicidialQcCode.pm \
	lib/Vicidial/Schema/Result/VicidialRemoteAgent.pm \
	lib/Vicidial/Schema/Result/VicidialRemoteAgentLog.pm \
	lib/Vicidial/Schema/Result/VicidialScreenLabel.pm \
	lib/Vicidial/Schema/Result/VicidialScript.pm \
	lib/Vicidial/Schema/Result/VicidialServerCarrier.pm \
	lib/Vicidial/Schema/Result/VicidialServerTrunk.pm \
	lib/Vicidial/Schema/Result/VicidialSessionData.pm \
	lib/Vicidial/Schema/Result/VicidialShift.pm \
	lib/Vicidial/Schema/Result/VicidialStateCallTime.pm \
	lib/Vicidial/Schema/Result/VicidialStation.pm \
	lib/Vicidial/Schema/Result/VicidialStatus.pm \
	lib/Vicidial/Schema/Result/VicidialStatusCategory.pm \
	lib/Vicidial/Schema/Result/VicidialTerritory.pm \
	lib/Vicidial/Schema/Result/VicidialTimeclockAuditLog.pm \
	lib/Vicidial/Schema/Result/VicidialTimeclockLog.pm \
	lib/Vicidial/Schema/Result/VicidialTimeclockStatus.pm \
	lib/Vicidial/Schema/Result/VicidialTtsPrompt.pm \
	lib/Vicidial/Schema/Result/VicidialUrlLog.pm \
	lib/Vicidial/Schema/Result/VicidialUser.pm \
	lib/Vicidial/Schema/Result/VicidialUserCloserLog.pm \
	lib/Vicidial/Schema/Result/VicidialUserGroup.pm \
	lib/Vicidial/Schema/Result/VicidialUserLog.pm \
	lib/Vicidial/Schema/Result/VicidialUserTerritory.pm \
	lib/Vicidial/Schema/Result/VicidialUserTerritoryLog.pm \
	lib/Vicidial/Schema/Result/VicidialVoicemail.pm \
	lib/Vicidial/Schema/Result/VicidialXferLog.pm \
	lib/Vicidial/Schema/Result/VicidialXferPreset.pm \
	lib/Vicidial/Schema/Result/VicidialXferStat.pm \
	lib/Vicidial/Schema/Result/VtigerRankData.pm \
	lib/Vicidial/Schema/Result/VtigerRankParameter.pm \
	lib/Vicidial/Schema/Result/VtigerVicidialRole.pm \
	lib/Vicidial/Schema/Result/WebClientSession.pm \
	lib/Vicidial/Schema/ResultSet/VicidialCampaign.pm \
	lib/WebTKS.pm \
	lib/WebTKS/Controller/Orders.pm \
	lib/WebTKS/Controller/Root.pm \
	lib/WebTKS/Model/DB/TKS.pm \
	lib/WebTKS/Model/DB/Vicidial.pm \
	lib/WebTKS/View/HTML.pm

# Where is the Config information that we are using/depend on
CONFIGDEP = $(PERL_ARCHLIB)$(DFSEP)Config.pm $(PERL_INC)$(DFSEP)config.h

# Where to build things
INST_LIBDIR      = $(INST_LIB)
INST_ARCHLIBDIR  = $(INST_ARCHLIB)

INST_AUTODIR     = $(INST_LIB)/auto/$(FULLEXT)
INST_ARCHAUTODIR = $(INST_ARCHLIB)/auto/$(FULLEXT)

INST_STATIC      = 
INST_DYNAMIC     = 
INST_BOOT        = 

# Extra linker info
EXPORT_LIST        = 
PERL_ARCHIVE       = 
PERL_ARCHIVE_AFTER = 


TO_INST_PM = lib/TKS/API/AppSender.pm \
	lib/TKS/API/AppSender/Result.pm \
	lib/TKS/Role/SendOrder.pm \
	lib/TKS/Schema.pm \
	lib/TKS/Schema/Result/Order.pm \
	lib/TKS/Schema/ResultSet/Order.pm \
	lib/Vicidial/Schema.pm \
	lib/Vicidial/Schema/Result/CallLog.pm \
	lib/Vicidial/Schema/Result/CallLogArchive.pm \
	lib/Vicidial/Schema/Result/GroupsAlias.pm \
	lib/Vicidial/Schema/Result/InboundNumber.pm \
	lib/Vicidial/Schema/Result/LiveChannel.pm \
	lib/Vicidial/Schema/Result/LiveInbound.pm \
	lib/Vicidial/Schema/Result/LiveInboundLog.pm \
	lib/Vicidial/Schema/Result/LiveSipChannel.pm \
	lib/Vicidial/Schema/Result/ParkLog.pm \
	lib/Vicidial/Schema/Result/ParkedChannel.pm \
	lib/Vicidial/Schema/Result/Phone.pm \
	lib/Vicidial/Schema/Result/PhoneFavorite.pm \
	lib/Vicidial/Schema/Result/PhonesAlias.pm \
	lib/Vicidial/Schema/Result/RecordingLog.pm \
	lib/Vicidial/Schema/Result/Server.pm \
	lib/Vicidial/Schema/Result/ServerPerformance.pm \
	lib/Vicidial/Schema/Result/ServerUpdater.pm \
	lib/Vicidial/Schema/Result/SystemSetting.pm \
	lib/Vicidial/Schema/Result/TwodayCallLog.pm \
	lib/Vicidial/Schema/Result/TwodayRecordingLog.pm \
	lib/Vicidial/Schema/Result/TwodayVicidialAgentLog.pm \
	lib/Vicidial/Schema/Result/TwodayVicidialCloserLog.pm \
	lib/Vicidial/Schema/Result/TwodayVicidialLog.pm \
	lib/Vicidial/Schema/Result/TwodayVicidialXferLog.pm \
	lib/Vicidial/Schema/Result/UserCallLog.pm \
	lib/Vicidial/Schema/Result/VicidialAdminLog.pm \
	lib/Vicidial/Schema/Result/VicidialAgentLog.pm \
	lib/Vicidial/Schema/Result/VicidialAgentLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialAgentSkipLog.pm \
	lib/Vicidial/Schema/Result/VicidialAgentSph.pm \
	lib/Vicidial/Schema/Result/VicidialApiLog.pm \
	lib/Vicidial/Schema/Result/VicidialAutoCall.pm \
	lib/Vicidial/Schema/Result/VicidialCallMenu.pm \
	lib/Vicidial/Schema/Result/VicidialCallMenuOption.pm \
	lib/Vicidial/Schema/Result/VicidialCallNote.pm \
	lib/Vicidial/Schema/Result/VicidialCallNotesArchive.pm \
	lib/Vicidial/Schema/Result/VicidialCallTime.pm \
	lib/Vicidial/Schema/Result/VicidialCallback.pm \
	lib/Vicidial/Schema/Result/VicidialCampaign.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignAgent.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignCidAreacode.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignDnc.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignHotkey.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignServerStat.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignStat.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignStatsDebug.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignStatus.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignsListMix.pm \
	lib/Vicidial/Schema/Result/VicidialCarrierLog.pm \
	lib/Vicidial/Schema/Result/VicidialCarrierLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialCloserLog.pm \
	lib/Vicidial/Schema/Result/VicidialCloserLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialConfTemplate.pm \
	lib/Vicidial/Schema/Result/VicidialConference.pm \
	lib/Vicidial/Schema/Result/VicidialCpdLog.pm \
	lib/Vicidial/Schema/Result/VicidialCustomCid.pm \
	lib/Vicidial/Schema/Result/VicidialCustomLeadloaderTemplate.pm \
	lib/Vicidial/Schema/Result/VicidialDailyMaxStat.pm \
	lib/Vicidial/Schema/Result/VicidialDailyRaStat.pm \
	lib/Vicidial/Schema/Result/VicidialDidAgentLog.pm \
	lib/Vicidial/Schema/Result/VicidialDidAgentLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialDidLog.pm \
	lib/Vicidial/Schema/Result/VicidialDidRaExtension.pm \
	lib/Vicidial/Schema/Result/VicidialDnc.pm \
	lib/Vicidial/Schema/Result/VicidialDropRateGroup.pm \
	lib/Vicidial/Schema/Result/VicidialExtensionGroup.pm \
	lib/Vicidial/Schema/Result/VicidialFilterPhoneGroup.pm \
	lib/Vicidial/Schema/Result/VicidialFilterPhoneNumber.pm \
	lib/Vicidial/Schema/Result/VicidialGrabCallLog.pm \
	lib/Vicidial/Schema/Result/VicidialHopper.pm \
	lib/Vicidial/Schema/Result/VicidialInboundDid.pm \
	lib/Vicidial/Schema/Result/VicidialInboundGroup.pm \
	lib/Vicidial/Schema/Result/VicidialInboundGroupAgent.pm \
	lib/Vicidial/Schema/Result/VicidialIvr.pm \
	lib/Vicidial/Schema/Result/VicidialLead.pm \
	lib/Vicidial/Schema/Result/VicidialLeadFilter.pm \
	lib/Vicidial/Schema/Result/VicidialLeadRecycle.pm \
	lib/Vicidial/Schema/Result/VicidialLeadSearchLog.pm \
	lib/Vicidial/Schema/Result/VicidialLeadSearchLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialList.pm \
	lib/Vicidial/Schema/Result/VicidialListAltPhone.pm \
	lib/Vicidial/Schema/Result/VicidialListPin.pm \
	lib/Vicidial/Schema/Result/VicidialListUpdateLog.pm \
	lib/Vicidial/Schema/Result/VicidialListsField.pm \
	lib/Vicidial/Schema/Result/VicidialLiveAgent.pm \
	lib/Vicidial/Schema/Result/VicidialLiveInboundAgent.pm \
	lib/Vicidial/Schema/Result/VicidialLog.pm \
	lib/Vicidial/Schema/Result/VicidialLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialLogExtended.pm \
	lib/Vicidial/Schema/Result/VicidialLogExtendedArchive.pm \
	lib/Vicidial/Schema/Result/VicidialLogNoanswer.pm \
	lib/Vicidial/Schema/Result/VicidialLogNoanswerArchive.pm \
	lib/Vicidial/Schema/Result/VicidialManager.pm \
	lib/Vicidial/Schema/Result/VicidialManualDialQueue.pm \
	lib/Vicidial/Schema/Result/VicidialMusicOnHold.pm \
	lib/Vicidial/Schema/Result/VicidialMusicOnHoldFiles.pm \
	lib/Vicidial/Schema/Result/VicidialNanpaPrefixCode.pm \
	lib/Vicidial/Schema/Result/VicidialOutboundIvrLog.pm \
	lib/Vicidial/Schema/Result/VicidialOutboundIvrLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialOverrideId.pm \
	lib/Vicidial/Schema/Result/VicidialPauseCode.pm \
	lib/Vicidial/Schema/Result/VicidialPhoneCode.pm \
	lib/Vicidial/Schema/Result/VicidialPostalCode.pm \
	lib/Vicidial/Schema/Result/VicidialProcessTrigger.pm \
	lib/Vicidial/Schema/Result/VicidialProcessTriggerLog.pm \
	lib/Vicidial/Schema/Result/VicidialQcCode.pm \
	lib/Vicidial/Schema/Result/VicidialRemoteAgent.pm \
	lib/Vicidial/Schema/Result/VicidialRemoteAgentLog.pm \
	lib/Vicidial/Schema/Result/VicidialScreenLabel.pm \
	lib/Vicidial/Schema/Result/VicidialScript.pm \
	lib/Vicidial/Schema/Result/VicidialServerCarrier.pm \
	lib/Vicidial/Schema/Result/VicidialServerTrunk.pm \
	lib/Vicidial/Schema/Result/VicidialSessionData.pm \
	lib/Vicidial/Schema/Result/VicidialShift.pm \
	lib/Vicidial/Schema/Result/VicidialStateCallTime.pm \
	lib/Vicidial/Schema/Result/VicidialStation.pm \
	lib/Vicidial/Schema/Result/VicidialStatus.pm \
	lib/Vicidial/Schema/Result/VicidialStatusCategory.pm \
	lib/Vicidial/Schema/Result/VicidialTerritory.pm \
	lib/Vicidial/Schema/Result/VicidialTimeclockAuditLog.pm \
	lib/Vicidial/Schema/Result/VicidialTimeclockLog.pm \
	lib/Vicidial/Schema/Result/VicidialTimeclockStatus.pm \
	lib/Vicidial/Schema/Result/VicidialTtsPrompt.pm \
	lib/Vicidial/Schema/Result/VicidialUrlLog.pm \
	lib/Vicidial/Schema/Result/VicidialUser.pm \
	lib/Vicidial/Schema/Result/VicidialUserCloserLog.pm \
	lib/Vicidial/Schema/Result/VicidialUserGroup.pm \
	lib/Vicidial/Schema/Result/VicidialUserLog.pm \
	lib/Vicidial/Schema/Result/VicidialUserTerritory.pm \
	lib/Vicidial/Schema/Result/VicidialUserTerritoryLog.pm \
	lib/Vicidial/Schema/Result/VicidialVoicemail.pm \
	lib/Vicidial/Schema/Result/VicidialXferLog.pm \
	lib/Vicidial/Schema/Result/VicidialXferPreset.pm \
	lib/Vicidial/Schema/Result/VicidialXferStat.pm \
	lib/Vicidial/Schema/Result/VtigerRankData.pm \
	lib/Vicidial/Schema/Result/VtigerRankParameter.pm \
	lib/Vicidial/Schema/Result/VtigerVicidialRole.pm \
	lib/Vicidial/Schema/Result/WebClientSession.pm \
	lib/Vicidial/Schema/ResultSet/VicidialCampaign.pm \
	lib/WebTKS.pm \
	lib/WebTKS/Controller/Orders.pm \
	lib/WebTKS/Controller/Root.pm \
	lib/WebTKS/Form/Base.pm \
	lib/WebTKS/Form/Order.pm \
	lib/WebTKS/Model/AppSender.pm \
	lib/WebTKS/Model/DB/TKS.pm \
	lib/WebTKS/Model/DB/TKS.pm.new \
	lib/WebTKS/Model/DB/Vicidial.pm \
	lib/WebTKS/View/HTML.pm

PM_TO_BLIB = lib/WebTKS/Form/Base.pm \
	blib/lib/WebTKS/Form/Base.pm \
	lib/Vicidial/Schema/Result/ServerPerformance.pm \
	blib/lib/Vicidial/Schema/Result/ServerPerformance.pm \
	lib/Vicidial/Schema/Result/VicidialUser.pm \
	blib/lib/Vicidial/Schema/Result/VicidialUser.pm \
	lib/Vicidial/Schema/Result/VicidialStatusCategory.pm \
	blib/lib/Vicidial/Schema/Result/VicidialStatusCategory.pm \
	lib/Vicidial/Schema/Result/VicidialAgentLogArchive.pm \
	blib/lib/Vicidial/Schema/Result/VicidialAgentLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialAdminLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialAdminLog.pm \
	lib/Vicidial/Schema/Result/VicidialProcessTriggerLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialProcessTriggerLog.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignHotkey.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCampaignHotkey.pm \
	lib/Vicidial/Schema/Result/VicidialScript.pm \
	blib/lib/Vicidial/Schema/Result/VicidialScript.pm \
	lib/Vicidial/Schema/Result/VicidialCloserLogArchive.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCloserLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignStatus.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCampaignStatus.pm \
	lib/Vicidial/Schema/Result/VicidialCampaign.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCampaign.pm \
	lib/Vicidial/Schema/Result/VicidialCarrierLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCarrierLog.pm \
	lib/Vicidial/Schema.pm \
	blib/lib/Vicidial/Schema.pm \
	lib/Vicidial/Schema/Result/VicidialLogArchive.pm \
	blib/lib/Vicidial/Schema/Result/VicidialLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialLeadSearchLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialLeadSearchLog.pm \
	lib/Vicidial/Schema/Result/VicidialList.pm \
	blib/lib/Vicidial/Schema/Result/VicidialList.pm \
	lib/Vicidial/Schema/Result/VicidialUserCloserLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialUserCloserLog.pm \
	lib/Vicidial/Schema/Result/VtigerRankData.pm \
	blib/lib/Vicidial/Schema/Result/VtigerRankData.pm \
	lib/Vicidial/Schema/Result/VicidialLogNoanswer.pm \
	blib/lib/Vicidial/Schema/Result/VicidialLogNoanswer.pm \
	lib/Vicidial/Schema/Result/VicidialConference.pm \
	blib/lib/Vicidial/Schema/Result/VicidialConference.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignAgent.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCampaignAgent.pm \
	lib/Vicidial/Schema/Result/VicidialIvr.pm \
	blib/lib/Vicidial/Schema/Result/VicidialIvr.pm \
	lib/WebTKS/Form/Order.pm \
	blib/lib/WebTKS/Form/Order.pm \
	lib/Vicidial/Schema/Result/VicidialTimeclockAuditLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialTimeclockAuditLog.pm \
	lib/Vicidial/Schema/Result/VicidialLogNoanswerArchive.pm \
	blib/lib/Vicidial/Schema/Result/VicidialLogNoanswerArchive.pm \
	lib/Vicidial/Schema/Result/VicidialManualDialQueue.pm \
	blib/lib/Vicidial/Schema/Result/VicidialManualDialQueue.pm \
	lib/Vicidial/Schema/Result/VicidialVoicemail.pm \
	blib/lib/Vicidial/Schema/Result/VicidialVoicemail.pm \
	lib/Vicidial/Schema/Result/VicidialUserTerritory.pm \
	blib/lib/Vicidial/Schema/Result/VicidialUserTerritory.pm \
	lib/Vicidial/Schema/Result/Phone.pm \
	blib/lib/Vicidial/Schema/Result/Phone.pm \
	lib/Vicidial/Schema/Result/Server.pm \
	blib/lib/Vicidial/Schema/Result/Server.pm \
	lib/Vicidial/Schema/Result/VicidialXferStat.pm \
	blib/lib/Vicidial/Schema/Result/VicidialXferStat.pm \
	lib/Vicidial/Schema/Result/VicidialDailyMaxStat.pm \
	blib/lib/Vicidial/Schema/Result/VicidialDailyMaxStat.pm \
	lib/Vicidial/Schema/Result/VicidialDailyRaStat.pm \
	blib/lib/Vicidial/Schema/Result/VicidialDailyRaStat.pm \
	lib/Vicidial/Schema/Result/VicidialSessionData.pm \
	blib/lib/Vicidial/Schema/Result/VicidialSessionData.pm \
	lib/Vicidial/Schema/Result/WebClientSession.pm \
	blib/lib/Vicidial/Schema/Result/WebClientSession.pm \
	lib/Vicidial/Schema/Result/VicidialConfTemplate.pm \
	blib/lib/Vicidial/Schema/Result/VicidialConfTemplate.pm \
	lib/Vicidial/Schema/Result/ParkedChannel.pm \
	blib/lib/Vicidial/Schema/Result/ParkedChannel.pm \
	lib/Vicidial/Schema/Result/VicidialStation.pm \
	blib/lib/Vicidial/Schema/Result/VicidialStation.pm \
	lib/Vicidial/Schema/Result/VicidialDidLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialDidLog.pm \
	lib/Vicidial/Schema/Result/VicidialScreenLabel.pm \
	blib/lib/Vicidial/Schema/Result/VicidialScreenLabel.pm \
	lib/Vicidial/Schema/Result/VtigerRankParameter.pm \
	blib/lib/Vicidial/Schema/Result/VtigerRankParameter.pm \
	lib/Vicidial/Schema/Result/VicidialLogExtended.pm \
	blib/lib/Vicidial/Schema/Result/VicidialLogExtended.pm \
	lib/Vicidial/Schema/Result/RecordingLog.pm \
	blib/lib/Vicidial/Schema/Result/RecordingLog.pm \
	lib/Vicidial/Schema/Result/VtigerVicidialRole.pm \
	blib/lib/Vicidial/Schema/Result/VtigerVicidialRole.pm \
	lib/Vicidial/Schema/Result/VicidialXferLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialXferLog.pm \
	lib/Vicidial/Schema/Result/LiveInboundLog.pm \
	blib/lib/Vicidial/Schema/Result/LiveInboundLog.pm \
	lib/TKS/Schema/ResultSet/Order.pm \
	blib/lib/TKS/Schema/ResultSet/Order.pm \
	lib/Vicidial/Schema/Result/VicidialNanpaPrefixCode.pm \
	blib/lib/Vicidial/Schema/Result/VicidialNanpaPrefixCode.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignCidAreacode.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCampaignCidAreacode.pm \
	lib/Vicidial/Schema/Result/VicidialAutoCall.pm \
	blib/lib/Vicidial/Schema/Result/VicidialAutoCall.pm \
	lib/Vicidial/Schema/Result/VicidialQcCode.pm \
	blib/lib/Vicidial/Schema/Result/VicidialQcCode.pm \
	lib/Vicidial/Schema/Result/TwodayVicidialCloserLog.pm \
	blib/lib/Vicidial/Schema/Result/TwodayVicidialCloserLog.pm \
	lib/WebTKS/Model/AppSender.pm \
	blib/lib/WebTKS/Model/AppSender.pm \
	lib/Vicidial/Schema/Result/VicidialLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialLog.pm \
	lib/TKS/Role/SendOrder.pm \
	blib/lib/TKS/Role/SendOrder.pm \
	lib/Vicidial/Schema/Result/VicidialCustomCid.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCustomCid.pm \
	lib/Vicidial/Schema/Result/TwodayVicidialAgentLog.pm \
	blib/lib/Vicidial/Schema/Result/TwodayVicidialAgentLog.pm \
	lib/TKS/API/AppSender.pm \
	blib/lib/TKS/API/AppSender.pm \
	lib/Vicidial/Schema/Result/VicidialMusicOnHold.pm \
	blib/lib/Vicidial/Schema/Result/VicidialMusicOnHold.pm \
	lib/Vicidial/Schema/Result/VicidialLead.pm \
	blib/lib/Vicidial/Schema/Result/VicidialLead.pm \
	lib/Vicidial/Schema/Result/VicidialLeadSearchLogArchive.pm \
	blib/lib/Vicidial/Schema/Result/VicidialLeadSearchLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialAgentSkipLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialAgentSkipLog.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignStatsDebug.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCampaignStatsDebug.pm \
	lib/Vicidial/Schema/Result/VicidialPauseCode.pm \
	blib/lib/Vicidial/Schema/Result/VicidialPauseCode.pm \
	lib/Vicidial/Schema/Result/VicidialInboundGroup.pm \
	blib/lib/Vicidial/Schema/Result/VicidialInboundGroup.pm \
	lib/Vicidial/Schema/Result/VicidialCallMenuOption.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCallMenuOption.pm \
	lib/Vicidial/Schema/Result/UserCallLog.pm \
	blib/lib/Vicidial/Schema/Result/UserCallLog.pm \
	lib/Vicidial/Schema/Result/VicidialXferPreset.pm \
	blib/lib/Vicidial/Schema/Result/VicidialXferPreset.pm \
	lib/Vicidial/Schema/Result/VicidialMusicOnHoldFiles.pm \
	blib/lib/Vicidial/Schema/Result/VicidialMusicOnHoldFiles.pm \
	lib/Vicidial/Schema/Result/LiveSipChannel.pm \
	blib/lib/Vicidial/Schema/Result/LiveSipChannel.pm \
	lib/WebTKS/Model/DB/TKS.pm.new \
	blib/lib/WebTKS/Model/DB/TKS.pm.new \
	lib/Vicidial/Schema/Result/VicidialListPin.pm \
	blib/lib/Vicidial/Schema/Result/VicidialListPin.pm \
	lib/Vicidial/Schema/Result/TwodayVicidialLog.pm \
	blib/lib/Vicidial/Schema/Result/TwodayVicidialLog.pm \
	lib/WebTKS/Controller/Orders.pm \
	blib/lib/WebTKS/Controller/Orders.pm \
	lib/Vicidial/Schema/Result/VicidialCallMenu.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCallMenu.pm \
	lib/Vicidial/Schema/Result/VicidialHopper.pm \
	blib/lib/Vicidial/Schema/Result/VicidialHopper.pm \
	lib/Vicidial/Schema/Result/VicidialListAltPhone.pm \
	blib/lib/Vicidial/Schema/Result/VicidialListAltPhone.pm \
	lib/Vicidial/Schema/Result/InboundNumber.pm \
	blib/lib/Vicidial/Schema/Result/InboundNumber.pm \
	lib/Vicidial/Schema/Result/PhoneFavorite.pm \
	blib/lib/Vicidial/Schema/Result/PhoneFavorite.pm \
	lib/WebTKS/Model/DB/Vicidial.pm \
	blib/lib/WebTKS/Model/DB/Vicidial.pm \
	lib/Vicidial/Schema/Result/PhonesAlias.pm \
	blib/lib/Vicidial/Schema/Result/PhonesAlias.pm \
	lib/Vicidial/Schema/Result/VicidialDnc.pm \
	blib/lib/Vicidial/Schema/Result/VicidialDnc.pm \
	lib/Vicidial/Schema/Result/VicidialUserTerritoryLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialUserTerritoryLog.pm \
	lib/Vicidial/Schema/Result/VicidialAgentSph.pm \
	blib/lib/Vicidial/Schema/Result/VicidialAgentSph.pm \
	lib/Vicidial/Schema/Result/VicidialDidAgentLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialDidAgentLog.pm \
	lib/Vicidial/Schema/Result/VicidialLogExtendedArchive.pm \
	blib/lib/Vicidial/Schema/Result/VicidialLogExtendedArchive.pm \
	lib/Vicidial/Schema/Result/VicidialCustomLeadloaderTemplate.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCustomLeadloaderTemplate.pm \
	lib/Vicidial/Schema/Result/VicidialLeadRecycle.pm \
	blib/lib/Vicidial/Schema/Result/VicidialLeadRecycle.pm \
	lib/Vicidial/Schema/Result/VicidialServerCarrier.pm \
	blib/lib/Vicidial/Schema/Result/VicidialServerCarrier.pm \
	lib/Vicidial/Schema/Result/VicidialListUpdateLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialListUpdateLog.pm \
	lib/Vicidial/Schema/Result/VicidialTtsPrompt.pm \
	blib/lib/Vicidial/Schema/Result/VicidialTtsPrompt.pm \
	lib/Vicidial/Schema/Result/VicidialRemoteAgentLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialRemoteAgentLog.pm \
	lib/Vicidial/Schema/Result/VicidialCarrierLogArchive.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCarrierLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignsListMix.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCampaignsListMix.pm \
	lib/Vicidial/Schema/Result/ServerUpdater.pm \
	blib/lib/Vicidial/Schema/Result/ServerUpdater.pm \
	lib/Vicidial/Schema/Result/VicidialLeadFilter.pm \
	blib/lib/Vicidial/Schema/Result/VicidialLeadFilter.pm \
	lib/Vicidial/Schema/Result/VicidialProcessTrigger.pm \
	blib/lib/Vicidial/Schema/Result/VicidialProcessTrigger.pm \
	lib/Vicidial/Schema/Result/CallLog.pm \
	blib/lib/Vicidial/Schema/Result/CallLog.pm \
	lib/Vicidial/Schema/Result/VicidialCallNotesArchive.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCallNotesArchive.pm \
	lib/Vicidial/Schema/Result/VicidialDidAgentLogArchive.pm \
	blib/lib/Vicidial/Schema/Result/VicidialDidAgentLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialGrabCallLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialGrabCallLog.pm \
	lib/Vicidial/Schema/Result/VicidialServerTrunk.pm \
	blib/lib/Vicidial/Schema/Result/VicidialServerTrunk.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignStat.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCampaignStat.pm \
	lib/Vicidial/Schema/Result/TwodayVicidialXferLog.pm \
	blib/lib/Vicidial/Schema/Result/TwodayVicidialXferLog.pm \
	lib/Vicidial/Schema/Result/LiveChannel.pm \
	blib/lib/Vicidial/Schema/Result/LiveChannel.pm \
	lib/WebTKS/Model/DB/TKS.pm \
	blib/lib/WebTKS/Model/DB/TKS.pm \
	lib/WebTKS.pm \
	blib/lib/WebTKS.pm \
	lib/Vicidial/Schema/Result/CallLogArchive.pm \
	blib/lib/Vicidial/Schema/Result/CallLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialOutboundIvrLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialOutboundIvrLog.pm \
	lib/Vicidial/Schema/Result/VicidialStateCallTime.pm \
	blib/lib/Vicidial/Schema/Result/VicidialStateCallTime.pm \
	lib/Vicidial/Schema/Result/VicidialTerritory.pm \
	blib/lib/Vicidial/Schema/Result/VicidialTerritory.pm \
	lib/Vicidial/Schema/Result/VicidialLiveInboundAgent.pm \
	blib/lib/Vicidial/Schema/Result/VicidialLiveInboundAgent.pm \
	lib/Vicidial/Schema/Result/VicidialListsField.pm \
	blib/lib/Vicidial/Schema/Result/VicidialListsField.pm \
	lib/Vicidial/Schema/Result/VicidialDropRateGroup.pm \
	blib/lib/Vicidial/Schema/Result/VicidialDropRateGroup.pm \
	lib/Vicidial/Schema/Result/VicidialManager.pm \
	blib/lib/Vicidial/Schema/Result/VicidialManager.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignServerStat.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCampaignServerStat.pm \
	lib/Vicidial/Schema/Result/VicidialInboundGroupAgent.pm \
	blib/lib/Vicidial/Schema/Result/VicidialInboundGroupAgent.pm \
	lib/Vicidial/Schema/ResultSet/VicidialCampaign.pm \
	blib/lib/Vicidial/Schema/ResultSet/VicidialCampaign.pm \
	lib/Vicidial/Schema/Result/VicidialTimeclockStatus.pm \
	blib/lib/Vicidial/Schema/Result/VicidialTimeclockStatus.pm \
	lib/Vicidial/Schema/Result/VicidialOverrideId.pm \
	blib/lib/Vicidial/Schema/Result/VicidialOverrideId.pm \
	lib/TKS/API/AppSender/Result.pm \
	blib/lib/TKS/API/AppSender/Result.pm \
	lib/Vicidial/Schema/Result/VicidialTimeclockLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialTimeclockLog.pm \
	lib/Vicidial/Schema/Result/VicidialCloserLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCloserLog.pm \
	lib/Vicidial/Schema/Result/VicidialPhoneCode.pm \
	blib/lib/Vicidial/Schema/Result/VicidialPhoneCode.pm \
	lib/Vicidial/Schema/Result/SystemSetting.pm \
	blib/lib/Vicidial/Schema/Result/SystemSetting.pm \
	lib/Vicidial/Schema/Result/VicidialCallTime.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCallTime.pm \
	lib/Vicidial/Schema/Result/VicidialUserLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialUserLog.pm \
	lib/Vicidial/Schema/Result/VicidialFilterPhoneGroup.pm \
	blib/lib/Vicidial/Schema/Result/VicidialFilterPhoneGroup.pm \
	lib/Vicidial/Schema/Result/VicidialInboundDid.pm \
	blib/lib/Vicidial/Schema/Result/VicidialInboundDid.pm \
	lib/Vicidial/Schema/Result/VicidialRemoteAgent.pm \
	blib/lib/Vicidial/Schema/Result/VicidialRemoteAgent.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignDnc.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCampaignDnc.pm \
	lib/Vicidial/Schema/Result/VicidialFilterPhoneNumber.pm \
	blib/lib/Vicidial/Schema/Result/VicidialFilterPhoneNumber.pm \
	lib/Vicidial/Schema/Result/VicidialDidRaExtension.pm \
	blib/lib/Vicidial/Schema/Result/VicidialDidRaExtension.pm \
	lib/Vicidial/Schema/Result/VicidialAgentLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialAgentLog.pm \
	lib/Vicidial/Schema/Result/VicidialPostalCode.pm \
	blib/lib/Vicidial/Schema/Result/VicidialPostalCode.pm \
	lib/WebTKS/View/HTML.pm \
	blib/lib/WebTKS/View/HTML.pm \
	lib/Vicidial/Schema/Result/LiveInbound.pm \
	blib/lib/Vicidial/Schema/Result/LiveInbound.pm \
	lib/Vicidial/Schema/Result/VicidialStatus.pm \
	blib/lib/Vicidial/Schema/Result/VicidialStatus.pm \
	lib/Vicidial/Schema/Result/TwodayRecordingLog.pm \
	blib/lib/Vicidial/Schema/Result/TwodayRecordingLog.pm \
	lib/Vicidial/Schema/Result/VicidialOutboundIvrLogArchive.pm \
	blib/lib/Vicidial/Schema/Result/VicidialOutboundIvrLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialUserGroup.pm \
	blib/lib/Vicidial/Schema/Result/VicidialUserGroup.pm \
	lib/TKS/Schema.pm \
	blib/lib/TKS/Schema.pm \
	lib/Vicidial/Schema/Result/VicidialExtensionGroup.pm \
	blib/lib/Vicidial/Schema/Result/VicidialExtensionGroup.pm \
	lib/TKS/Schema/Result/Order.pm \
	blib/lib/TKS/Schema/Result/Order.pm \
	lib/Vicidial/Schema/Result/VicidialLiveAgent.pm \
	blib/lib/Vicidial/Schema/Result/VicidialLiveAgent.pm \
	lib/Vicidial/Schema/Result/VicidialShift.pm \
	blib/lib/Vicidial/Schema/Result/VicidialShift.pm \
	lib/Vicidial/Schema/Result/VicidialApiLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialApiLog.pm \
	lib/WebTKS/Controller/Root.pm \
	blib/lib/WebTKS/Controller/Root.pm \
	lib/Vicidial/Schema/Result/VicidialCpdLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCpdLog.pm \
	lib/Vicidial/Schema/Result/VicidialCallback.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCallback.pm \
	lib/Vicidial/Schema/Result/VicidialCallNote.pm \
	blib/lib/Vicidial/Schema/Result/VicidialCallNote.pm \
	lib/Vicidial/Schema/Result/TwodayCallLog.pm \
	blib/lib/Vicidial/Schema/Result/TwodayCallLog.pm \
	lib/Vicidial/Schema/Result/VicidialUrlLog.pm \
	blib/lib/Vicidial/Schema/Result/VicidialUrlLog.pm \
	lib/Vicidial/Schema/Result/ParkLog.pm \
	blib/lib/Vicidial/Schema/Result/ParkLog.pm \
	lib/Vicidial/Schema/Result/GroupsAlias.pm \
	blib/lib/Vicidial/Schema/Result/GroupsAlias.pm


# --- MakeMaker platform_constants section:
MM_Unix_VERSION = 6.62
PERL_MALLOC_DEF = -DPERL_EXTMALLOC_DEF -Dmalloc=Perl_malloc -Dfree=Perl_mfree -Drealloc=Perl_realloc -Dcalloc=Perl_calloc


# --- MakeMaker tool_autosplit section:
# Usage: $(AUTOSPLITFILE) FileToSplit AutoDirToSplitInto
AUTOSPLITFILE = $(ABSPERLRUN)  -e 'use AutoSplit;  autosplit($$ARGV[0], $$ARGV[1], 0, 1, 1)' --



# --- MakeMaker tool_xsubpp section:


# --- MakeMaker tools_other section:
SHELL = /bin/sh
CHMOD = chmod
CP = cp
MV = mv
NOOP = $(TRUE)
NOECHO = @
RM_F = rm -f
RM_RF = rm -rf
TEST_F = test -f
TOUCH = touch
UMASK_NULL = umask 0
DEV_NULL = > /dev/null 2>&1
MKPATH = $(ABSPERLRUN) -MExtUtils::Command -e 'mkpath' --
EQUALIZE_TIMESTAMP = $(ABSPERLRUN) -MExtUtils::Command -e 'eqtime' --
FALSE = false
TRUE = true
ECHO = echo
ECHO_N = echo -n
UNINST = 0
VERBINST = 0
MOD_INSTALL = $(ABSPERLRUN) -MExtUtils::Install -e 'install([ from_to => {@ARGV}, verbose => '\''$(VERBINST)'\'', uninstall_shadows => '\''$(UNINST)'\'', dir_mode => '\''$(PERM_DIR)'\'' ]);' --
DOC_INSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'perllocal_install' --
UNINSTALL = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'uninstall' --
WARN_IF_OLD_PACKLIST = $(ABSPERLRUN) -MExtUtils::Command::MM -e 'warn_if_old_packlist' --
MACROSTART = 
MACROEND = 
USEMAKEFILE = -f
FIXIN = $(ABSPERLRUN) -MExtUtils::MY -e 'MY->fixin(shift)' --


# --- MakeMaker makemakerdflt section:
makemakerdflt : all
	$(NOECHO) $(NOOP)


# --- MakeMaker dist section:
TAR = tar
TARFLAGS = cvf
ZIP = zip
ZIPFLAGS = -r
COMPRESS = gzip --best
SUFFIX = .gz
SHAR = shar
PREOP = $(PERL) -I. "-MModule::Install::Admin" -e "dist_preop(q($(DISTVNAME)))"
POSTOP = $(NOECHO) $(NOOP)
TO_UNIX = $(NOECHO) $(NOOP)
CI = ci -u
RCS_LABEL = rcs -Nv$(VERSION_SYM): -q
DIST_CP = best
DIST_DEFAULT = tardist
DISTNAME = WebTKS
DISTVNAME = WebTKS-0.01


# --- MakeMaker macro section:


# --- MakeMaker depend section:


# --- MakeMaker cflags section:


# --- MakeMaker const_loadlibs section:


# --- MakeMaker const_cccmd section:


# --- MakeMaker post_constants section:


# --- MakeMaker pasthru section:

PASTHRU = LIBPERL_A="$(LIBPERL_A)"\
	LINKTYPE="$(LINKTYPE)"\
	PREFIX="$(PREFIX)"


# --- MakeMaker special_targets section:
.SUFFIXES : .xs .c .C .cpp .i .s .cxx .cc $(OBJ_EXT)

.PHONY: all config static dynamic test linkext manifest blibdirs clean realclean disttest distdir



# --- MakeMaker c_o section:


# --- MakeMaker xs_c section:


# --- MakeMaker xs_o section:


# --- MakeMaker top_targets section:
all :: pure_all manifypods
	$(NOECHO) $(NOOP)


pure_all :: config pm_to_blib subdirs linkext
	$(NOECHO) $(NOOP)

subdirs :: $(MYEXTLIB)
	$(NOECHO) $(NOOP)

config :: $(FIRST_MAKEFILE) blibdirs
	$(NOECHO) $(NOOP)

help :
	perldoc ExtUtils::MakeMaker


# --- MakeMaker blibdirs section:
blibdirs : $(INST_LIBDIR)$(DFSEP).exists $(INST_ARCHLIB)$(DFSEP).exists $(INST_AUTODIR)$(DFSEP).exists $(INST_ARCHAUTODIR)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists $(INST_SCRIPT)$(DFSEP).exists $(INST_MAN1DIR)$(DFSEP).exists $(INST_MAN3DIR)$(DFSEP).exists
	$(NOECHO) $(NOOP)

# Backwards compat with 6.18 through 6.25
blibdirs.ts : blibdirs
	$(NOECHO) $(NOOP)

$(INST_LIBDIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_LIBDIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_LIBDIR)
	$(NOECHO) $(TOUCH) $(INST_LIBDIR)$(DFSEP).exists

$(INST_ARCHLIB)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHLIB)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHLIB)
	$(NOECHO) $(TOUCH) $(INST_ARCHLIB)$(DFSEP).exists

$(INST_AUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_AUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_AUTODIR)
	$(NOECHO) $(TOUCH) $(INST_AUTODIR)$(DFSEP).exists

$(INST_ARCHAUTODIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_ARCHAUTODIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_ARCHAUTODIR)
	$(NOECHO) $(TOUCH) $(INST_ARCHAUTODIR)$(DFSEP).exists

$(INST_BIN)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_BIN)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_BIN)
	$(NOECHO) $(TOUCH) $(INST_BIN)$(DFSEP).exists

$(INST_SCRIPT)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_SCRIPT)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_SCRIPT)
	$(NOECHO) $(TOUCH) $(INST_SCRIPT)$(DFSEP).exists

$(INST_MAN1DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN1DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN1DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN1DIR)$(DFSEP).exists

$(INST_MAN3DIR)$(DFSEP).exists :: Makefile.PL
	$(NOECHO) $(MKPATH) $(INST_MAN3DIR)
	$(NOECHO) $(CHMOD) $(PERM_DIR) $(INST_MAN3DIR)
	$(NOECHO) $(TOUCH) $(INST_MAN3DIR)$(DFSEP).exists



# --- MakeMaker linkext section:

linkext :: $(LINKTYPE)
	$(NOECHO) $(NOOP)


# --- MakeMaker dlsyms section:


# --- MakeMaker dynamic section:

dynamic :: $(FIRST_MAKEFILE) $(INST_DYNAMIC) $(INST_BOOT)
	$(NOECHO) $(NOOP)


# --- MakeMaker dynamic_bs section:

BOOTSTRAP =


# --- MakeMaker dynamic_lib section:


# --- MakeMaker static section:

## $(INST_PM) has been moved to the all: target.
## It remains here for awhile to allow for old usage: "make static"
static :: $(FIRST_MAKEFILE) $(INST_STATIC)
	$(NOECHO) $(NOOP)


# --- MakeMaker static_lib section:


# --- MakeMaker manifypods section:

POD2MAN_EXE = $(PERLRUN) "-MExtUtils::Command::MM" -e pod2man "--"
POD2MAN = $(POD2MAN_EXE)


manifypods : pure_all  \
	script/webtks_create.pl \
	script/webtks_server.pl \
	script/webtks_test.pl \
	script/webtks_fastcgi.pl \
	script/webtks_cgi.pl \
	lib/Vicidial/Schema/Result/ServerPerformance.pm \
	lib/Vicidial/Schema/Result/VicidialUser.pm \
	lib/Vicidial/Schema/Result/VicidialStatusCategory.pm \
	lib/Vicidial/Schema/Result/VicidialAgentLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialAdminLog.pm \
	lib/Vicidial/Schema/Result/VicidialProcessTriggerLog.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignHotkey.pm \
	lib/Vicidial/Schema/Result/VicidialScript.pm \
	lib/Vicidial/Schema/Result/VicidialCloserLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignStatus.pm \
	lib/Vicidial/Schema/Result/VicidialCampaign.pm \
	lib/Vicidial/Schema/Result/VicidialCarrierLog.pm \
	lib/Vicidial/Schema/Result/VicidialLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialLeadSearchLog.pm \
	lib/Vicidial/Schema/Result/VicidialList.pm \
	lib/Vicidial/Schema/Result/VicidialUserCloserLog.pm \
	lib/Vicidial/Schema/Result/VtigerRankData.pm \
	lib/Vicidial/Schema/Result/VicidialLogNoanswer.pm \
	lib/Vicidial/Schema/Result/VicidialConference.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignAgent.pm \
	lib/Vicidial/Schema/Result/VicidialIvr.pm \
	lib/Vicidial/Schema/Result/VicidialTimeclockAuditLog.pm \
	lib/Vicidial/Schema/Result/VicidialLogNoanswerArchive.pm \
	lib/Vicidial/Schema/Result/VicidialManualDialQueue.pm \
	lib/Vicidial/Schema/Result/VicidialVoicemail.pm \
	lib/Vicidial/Schema/Result/VicidialUserTerritory.pm \
	lib/Vicidial/Schema/Result/Phone.pm \
	lib/Vicidial/Schema/Result/Server.pm \
	lib/Vicidial/Schema/Result/VicidialXferStat.pm \
	lib/Vicidial/Schema/Result/VicidialDailyMaxStat.pm \
	lib/Vicidial/Schema/Result/VicidialDailyRaStat.pm \
	lib/Vicidial/Schema/Result/VicidialSessionData.pm \
	lib/Vicidial/Schema/Result/WebClientSession.pm \
	lib/Vicidial/Schema/Result/VicidialConfTemplate.pm \
	lib/Vicidial/Schema/Result/ParkedChannel.pm \
	lib/Vicidial/Schema/Result/VicidialStation.pm \
	lib/Vicidial/Schema/Result/VicidialDidLog.pm \
	lib/Vicidial/Schema/Result/VicidialScreenLabel.pm \
	lib/Vicidial/Schema/Result/VtigerRankParameter.pm \
	lib/Vicidial/Schema/Result/VicidialLogExtended.pm \
	lib/Vicidial/Schema/Result/RecordingLog.pm \
	lib/Vicidial/Schema/Result/VtigerVicidialRole.pm \
	lib/Vicidial/Schema/Result/VicidialXferLog.pm \
	lib/Vicidial/Schema/Result/LiveInboundLog.pm \
	lib/Vicidial/Schema/Result/VicidialNanpaPrefixCode.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignCidAreacode.pm \
	lib/Vicidial/Schema/Result/VicidialAutoCall.pm \
	lib/Vicidial/Schema/Result/VicidialQcCode.pm \
	lib/Vicidial/Schema/Result/TwodayVicidialCloserLog.pm \
	lib/Vicidial/Schema/Result/VicidialLog.pm \
	lib/Vicidial/Schema/Result/VicidialCustomCid.pm \
	lib/Vicidial/Schema/Result/TwodayVicidialAgentLog.pm \
	lib/Vicidial/Schema/Result/VicidialMusicOnHold.pm \
	lib/Vicidial/Schema/Result/VicidialLead.pm \
	lib/Vicidial/Schema/Result/VicidialLeadSearchLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialAgentSkipLog.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignStatsDebug.pm \
	lib/Vicidial/Schema/Result/VicidialPauseCode.pm \
	lib/Vicidial/Schema/Result/VicidialInboundGroup.pm \
	lib/Vicidial/Schema/Result/VicidialCallMenuOption.pm \
	lib/Vicidial/Schema/Result/UserCallLog.pm \
	lib/Vicidial/Schema/Result/VicidialXferPreset.pm \
	lib/Vicidial/Schema/Result/VicidialMusicOnHoldFiles.pm \
	lib/Vicidial/Schema/Result/LiveSipChannel.pm \
	lib/Vicidial/Schema/Result/VicidialListPin.pm \
	lib/Vicidial/Schema/Result/TwodayVicidialLog.pm \
	lib/WebTKS/Controller/Orders.pm \
	lib/Vicidial/Schema/Result/VicidialCallMenu.pm \
	lib/Vicidial/Schema/Result/VicidialHopper.pm \
	lib/Vicidial/Schema/Result/VicidialListAltPhone.pm \
	lib/Vicidial/Schema/Result/InboundNumber.pm \
	lib/Vicidial/Schema/Result/PhoneFavorite.pm \
	lib/WebTKS/Model/DB/Vicidial.pm \
	lib/Vicidial/Schema/Result/PhonesAlias.pm \
	lib/Vicidial/Schema/Result/VicidialDnc.pm \
	lib/Vicidial/Schema/Result/VicidialUserTerritoryLog.pm \
	lib/Vicidial/Schema/Result/VicidialAgentSph.pm \
	lib/Vicidial/Schema/Result/VicidialDidAgentLog.pm \
	lib/Vicidial/Schema/Result/VicidialLogExtendedArchive.pm \
	lib/Vicidial/Schema/Result/VicidialCustomLeadloaderTemplate.pm \
	lib/Vicidial/Schema/Result/VicidialLeadRecycle.pm \
	lib/Vicidial/Schema/Result/VicidialServerCarrier.pm \
	lib/Vicidial/Schema/Result/VicidialListUpdateLog.pm \
	lib/Vicidial/Schema/Result/VicidialTtsPrompt.pm \
	lib/Vicidial/Schema/Result/VicidialRemoteAgentLog.pm \
	lib/Vicidial/Schema/Result/VicidialCarrierLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignsListMix.pm \
	lib/Vicidial/Schema/Result/ServerUpdater.pm \
	lib/Vicidial/Schema/Result/VicidialLeadFilter.pm \
	lib/Vicidial/Schema/Result/VicidialProcessTrigger.pm \
	lib/Vicidial/Schema/Result/CallLog.pm \
	lib/Vicidial/Schema/Result/VicidialCallNotesArchive.pm \
	lib/Vicidial/Schema/Result/VicidialDidAgentLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialGrabCallLog.pm \
	lib/Vicidial/Schema/Result/VicidialServerTrunk.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignStat.pm \
	lib/Vicidial/Schema/Result/TwodayVicidialXferLog.pm \
	lib/Vicidial/Schema/Result/LiveChannel.pm \
	lib/WebTKS/Model/DB/TKS.pm \
	lib/WebTKS.pm \
	lib/Vicidial/Schema/Result/CallLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialOutboundIvrLog.pm \
	lib/Vicidial/Schema/Result/VicidialStateCallTime.pm \
	lib/Vicidial/Schema/Result/VicidialTerritory.pm \
	lib/Vicidial/Schema/Result/VicidialLiveInboundAgent.pm \
	lib/Vicidial/Schema/Result/VicidialListsField.pm \
	lib/Vicidial/Schema/Result/VicidialDropRateGroup.pm \
	lib/Vicidial/Schema/Result/VicidialManager.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignServerStat.pm \
	lib/Vicidial/Schema/Result/VicidialInboundGroupAgent.pm \
	lib/Vicidial/Schema/ResultSet/VicidialCampaign.pm \
	lib/Vicidial/Schema/Result/VicidialTimeclockStatus.pm \
	lib/Vicidial/Schema/Result/VicidialOverrideId.pm \
	lib/Vicidial/Schema/Result/VicidialTimeclockLog.pm \
	lib/Vicidial/Schema/Result/VicidialCloserLog.pm \
	lib/Vicidial/Schema/Result/VicidialPhoneCode.pm \
	lib/Vicidial/Schema/Result/SystemSetting.pm \
	lib/Vicidial/Schema/Result/VicidialCallTime.pm \
	lib/Vicidial/Schema/Result/VicidialUserLog.pm \
	lib/Vicidial/Schema/Result/VicidialFilterPhoneGroup.pm \
	lib/Vicidial/Schema/Result/VicidialInboundDid.pm \
	lib/Vicidial/Schema/Result/VicidialRemoteAgent.pm \
	lib/Vicidial/Schema/Result/VicidialCampaignDnc.pm \
	lib/Vicidial/Schema/Result/VicidialFilterPhoneNumber.pm \
	lib/Vicidial/Schema/Result/VicidialDidRaExtension.pm \
	lib/Vicidial/Schema/Result/VicidialAgentLog.pm \
	lib/Vicidial/Schema/Result/VicidialPostalCode.pm \
	lib/WebTKS/View/HTML.pm \
	lib/Vicidial/Schema/Result/LiveInbound.pm \
	lib/Vicidial/Schema/Result/VicidialStatus.pm \
	lib/Vicidial/Schema/Result/TwodayRecordingLog.pm \
	lib/Vicidial/Schema/Result/VicidialOutboundIvrLogArchive.pm \
	lib/Vicidial/Schema/Result/VicidialUserGroup.pm \
	lib/Vicidial/Schema/Result/VicidialExtensionGroup.pm \
	lib/TKS/Schema/Result/Order.pm \
	lib/Vicidial/Schema/Result/VicidialLiveAgent.pm \
	lib/Vicidial/Schema/Result/VicidialShift.pm \
	lib/Vicidial/Schema/Result/VicidialApiLog.pm \
	lib/WebTKS/Controller/Root.pm \
	lib/Vicidial/Schema/Result/VicidialCpdLog.pm \
	lib/Vicidial/Schema/Result/VicidialCallback.pm \
	lib/Vicidial/Schema/Result/VicidialCallNote.pm \
	lib/Vicidial/Schema/Result/TwodayCallLog.pm \
	lib/Vicidial/Schema/Result/VicidialUrlLog.pm \
	lib/Vicidial/Schema/Result/ParkLog.pm \
	lib/Vicidial/Schema/Result/GroupsAlias.pm
	$(NOECHO) $(POD2MAN) --section=1 --perm_rw=$(PERM_RW) \
	  script/webtks_create.pl $(INST_MAN1DIR)/webtks_create.pl.$(MAN1EXT) \
	  script/webtks_server.pl $(INST_MAN1DIR)/webtks_server.pl.$(MAN1EXT) \
	  script/webtks_test.pl $(INST_MAN1DIR)/webtks_test.pl.$(MAN1EXT) \
	  script/webtks_fastcgi.pl $(INST_MAN1DIR)/webtks_fastcgi.pl.$(MAN1EXT) \
	  script/webtks_cgi.pl $(INST_MAN1DIR)/webtks_cgi.pl.$(MAN1EXT) 
	$(NOECHO) $(POD2MAN) --section=3 --perm_rw=$(PERM_RW) \
	  lib/Vicidial/Schema/Result/ServerPerformance.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::ServerPerformance.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialUser.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialUser.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialStatusCategory.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialStatusCategory.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialAgentLogArchive.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialAgentLogArchive.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialAdminLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialAdminLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialProcessTriggerLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialProcessTriggerLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCampaignHotkey.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCampaignHotkey.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialScript.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialScript.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCloserLogArchive.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCloserLogArchive.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCampaignStatus.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCampaignStatus.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCampaign.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCampaign.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCarrierLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCarrierLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialLogArchive.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialLogArchive.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialLeadSearchLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialLeadSearchLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialList.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialList.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialUserCloserLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialUserCloserLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VtigerRankData.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VtigerRankData.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialLogNoanswer.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialLogNoanswer.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialConference.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialConference.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCampaignAgent.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCampaignAgent.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialIvr.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialIvr.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialTimeclockAuditLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialTimeclockAuditLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialLogNoanswerArchive.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialLogNoanswerArchive.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialManualDialQueue.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialManualDialQueue.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialVoicemail.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialVoicemail.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialUserTerritory.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialUserTerritory.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/Phone.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::Phone.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/Server.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::Server.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialXferStat.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialXferStat.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialDailyMaxStat.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialDailyMaxStat.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialDailyRaStat.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialDailyRaStat.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialSessionData.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialSessionData.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/WebClientSession.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::WebClientSession.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialConfTemplate.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialConfTemplate.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/ParkedChannel.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::ParkedChannel.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialStation.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialStation.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialDidLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialDidLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialScreenLabel.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialScreenLabel.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VtigerRankParameter.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VtigerRankParameter.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialLogExtended.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialLogExtended.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/RecordingLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::RecordingLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VtigerVicidialRole.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VtigerVicidialRole.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialXferLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialXferLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/LiveInboundLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::LiveInboundLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialNanpaPrefixCode.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialNanpaPrefixCode.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCampaignCidAreacode.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCampaignCidAreacode.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialAutoCall.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialAutoCall.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialQcCode.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialQcCode.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/TwodayVicidialCloserLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::TwodayVicidialCloserLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCustomCid.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCustomCid.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/TwodayVicidialAgentLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::TwodayVicidialAgentLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialMusicOnHold.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialMusicOnHold.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialLead.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialLead.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialLeadSearchLogArchive.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialLeadSearchLogArchive.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialAgentSkipLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialAgentSkipLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCampaignStatsDebug.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCampaignStatsDebug.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialPauseCode.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialPauseCode.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialInboundGroup.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialInboundGroup.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCallMenuOption.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCallMenuOption.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/UserCallLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::UserCallLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialXferPreset.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialXferPreset.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialMusicOnHoldFiles.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialMusicOnHoldFiles.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/LiveSipChannel.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::LiveSipChannel.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialListPin.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialListPin.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/TwodayVicidialLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::TwodayVicidialLog.$(MAN3EXT) \
	  lib/WebTKS/Controller/Orders.pm $(INST_MAN3DIR)/WebTKS::Controller::Orders.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCallMenu.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCallMenu.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialHopper.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialHopper.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialListAltPhone.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialListAltPhone.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/InboundNumber.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::InboundNumber.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/PhoneFavorite.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::PhoneFavorite.$(MAN3EXT) \
	  lib/WebTKS/Model/DB/Vicidial.pm $(INST_MAN3DIR)/WebTKS::Model::DB::Vicidial.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/PhonesAlias.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::PhonesAlias.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialDnc.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialDnc.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialUserTerritoryLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialUserTerritoryLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialAgentSph.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialAgentSph.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialDidAgentLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialDidAgentLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialLogExtendedArchive.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialLogExtendedArchive.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCustomLeadloaderTemplate.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCustomLeadloaderTemplate.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialLeadRecycle.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialLeadRecycle.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialServerCarrier.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialServerCarrier.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialListUpdateLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialListUpdateLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialTtsPrompt.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialTtsPrompt.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialRemoteAgentLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialRemoteAgentLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCarrierLogArchive.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCarrierLogArchive.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCampaignsListMix.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCampaignsListMix.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/ServerUpdater.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::ServerUpdater.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialLeadFilter.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialLeadFilter.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialProcessTrigger.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialProcessTrigger.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/CallLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::CallLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCallNotesArchive.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCallNotesArchive.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialDidAgentLogArchive.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialDidAgentLogArchive.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialGrabCallLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialGrabCallLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialServerTrunk.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialServerTrunk.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCampaignStat.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCampaignStat.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/TwodayVicidialXferLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::TwodayVicidialXferLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/LiveChannel.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::LiveChannel.$(MAN3EXT) \
	  lib/WebTKS/Model/DB/TKS.pm $(INST_MAN3DIR)/WebTKS::Model::DB::TKS.$(MAN3EXT) \
	  lib/WebTKS.pm $(INST_MAN3DIR)/WebTKS.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/CallLogArchive.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::CallLogArchive.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialOutboundIvrLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialOutboundIvrLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialStateCallTime.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialStateCallTime.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialTerritory.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialTerritory.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialLiveInboundAgent.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialLiveInboundAgent.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialListsField.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialListsField.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialDropRateGroup.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialDropRateGroup.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialManager.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialManager.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCampaignServerStat.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCampaignServerStat.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialInboundGroupAgent.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialInboundGroupAgent.$(MAN3EXT) \
	  lib/Vicidial/Schema/ResultSet/VicidialCampaign.pm $(INST_MAN3DIR)/Vicidial::Schema::ResultSet::VicidialCampaign.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialTimeclockStatus.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialTimeclockStatus.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialOverrideId.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialOverrideId.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialTimeclockLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialTimeclockLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCloserLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCloserLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialPhoneCode.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialPhoneCode.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/SystemSetting.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::SystemSetting.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCallTime.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCallTime.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialUserLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialUserLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialFilterPhoneGroup.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialFilterPhoneGroup.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialInboundDid.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialInboundDid.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialRemoteAgent.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialRemoteAgent.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCampaignDnc.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCampaignDnc.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialFilterPhoneNumber.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialFilterPhoneNumber.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialDidRaExtension.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialDidRaExtension.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialAgentLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialAgentLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialPostalCode.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialPostalCode.$(MAN3EXT) \
	  lib/WebTKS/View/HTML.pm $(INST_MAN3DIR)/WebTKS::View::HTML.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/LiveInbound.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::LiveInbound.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialStatus.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialStatus.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/TwodayRecordingLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::TwodayRecordingLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialOutboundIvrLogArchive.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialOutboundIvrLogArchive.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialUserGroup.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialUserGroup.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialExtensionGroup.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialExtensionGroup.$(MAN3EXT) \
	  lib/TKS/Schema/Result/Order.pm $(INST_MAN3DIR)/TKS::Schema::Result::Order.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialLiveAgent.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialLiveAgent.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialShift.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialShift.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialApiLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialApiLog.$(MAN3EXT) \
	  lib/WebTKS/Controller/Root.pm $(INST_MAN3DIR)/WebTKS::Controller::Root.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCpdLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCpdLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCallback.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCallback.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialCallNote.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialCallNote.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/TwodayCallLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::TwodayCallLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/VicidialUrlLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::VicidialUrlLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/ParkLog.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::ParkLog.$(MAN3EXT) \
	  lib/Vicidial/Schema/Result/GroupsAlias.pm $(INST_MAN3DIR)/Vicidial::Schema::Result::GroupsAlias.$(MAN3EXT) 




# --- MakeMaker processPL section:


# --- MakeMaker installbin section:

EXE_FILES = script/order_create.pl script/order_test.pl script/webtks_cgi.pl script/webtks_create.pl script/webtks_fastcgi.pl script/webtks_server.pl script/webtks_test.pl

pure_all :: $(INST_SCRIPT)/webtks_create.pl $(INST_SCRIPT)/webtks_server.pl $(INST_SCRIPT)/order_test.pl $(INST_SCRIPT)/webtks_test.pl $(INST_SCRIPT)/webtks_fastcgi.pl $(INST_SCRIPT)/webtks_cgi.pl $(INST_SCRIPT)/order_create.pl
	$(NOECHO) $(NOOP)

realclean ::
	$(RM_F) \
	  $(INST_SCRIPT)/webtks_create.pl $(INST_SCRIPT)/webtks_server.pl \
	  $(INST_SCRIPT)/order_test.pl $(INST_SCRIPT)/webtks_test.pl \
	  $(INST_SCRIPT)/webtks_fastcgi.pl $(INST_SCRIPT)/webtks_cgi.pl \
	  $(INST_SCRIPT)/order_create.pl 

$(INST_SCRIPT)/webtks_create.pl : script/webtks_create.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/webtks_create.pl
	$(CP) script/webtks_create.pl $(INST_SCRIPT)/webtks_create.pl
	$(FIXIN) $(INST_SCRIPT)/webtks_create.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/webtks_create.pl

$(INST_SCRIPT)/webtks_server.pl : script/webtks_server.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/webtks_server.pl
	$(CP) script/webtks_server.pl $(INST_SCRIPT)/webtks_server.pl
	$(FIXIN) $(INST_SCRIPT)/webtks_server.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/webtks_server.pl

$(INST_SCRIPT)/order_test.pl : script/order_test.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/order_test.pl
	$(CP) script/order_test.pl $(INST_SCRIPT)/order_test.pl
	$(FIXIN) $(INST_SCRIPT)/order_test.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/order_test.pl

$(INST_SCRIPT)/webtks_test.pl : script/webtks_test.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/webtks_test.pl
	$(CP) script/webtks_test.pl $(INST_SCRIPT)/webtks_test.pl
	$(FIXIN) $(INST_SCRIPT)/webtks_test.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/webtks_test.pl

$(INST_SCRIPT)/webtks_fastcgi.pl : script/webtks_fastcgi.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/webtks_fastcgi.pl
	$(CP) script/webtks_fastcgi.pl $(INST_SCRIPT)/webtks_fastcgi.pl
	$(FIXIN) $(INST_SCRIPT)/webtks_fastcgi.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/webtks_fastcgi.pl

$(INST_SCRIPT)/webtks_cgi.pl : script/webtks_cgi.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/webtks_cgi.pl
	$(CP) script/webtks_cgi.pl $(INST_SCRIPT)/webtks_cgi.pl
	$(FIXIN) $(INST_SCRIPT)/webtks_cgi.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/webtks_cgi.pl

$(INST_SCRIPT)/order_create.pl : script/order_create.pl $(FIRST_MAKEFILE) $(INST_SCRIPT)$(DFSEP).exists $(INST_BIN)$(DFSEP).exists
	$(NOECHO) $(RM_F) $(INST_SCRIPT)/order_create.pl
	$(CP) script/order_create.pl $(INST_SCRIPT)/order_create.pl
	$(FIXIN) $(INST_SCRIPT)/order_create.pl
	-$(NOECHO) $(CHMOD) $(PERM_RWX) $(INST_SCRIPT)/order_create.pl



# --- MakeMaker subdirs section:

# none

# --- MakeMaker clean_subdirs section:
clean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker clean section:

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean :: clean_subdirs
	- $(RM_F) \
	  *$(LIB_EXT) core \
	  core.[0-9] $(INST_ARCHAUTODIR)/extralibs.all \
	  core.[0-9][0-9] $(BASEEXT).bso \
	  pm_to_blib.ts MYMETA.json \
	  core.[0-9][0-9][0-9][0-9] MYMETA.yml \
	  $(BASEEXT).x $(BOOTSTRAP) \
	  perl$(EXE_EXT) tmon.out \
	  *$(OBJ_EXT) pm_to_blib \
	  $(INST_ARCHAUTODIR)/extralibs.ld blibdirs.ts \
	  core.[0-9][0-9][0-9][0-9][0-9] *perl.core \
	  core.*perl.*.? $(MAKE_APERL_FILE) \
	  $(BASEEXT).def perl \
	  core.[0-9][0-9][0-9] mon.out \
	  lib$(BASEEXT).def perlmain.c \
	  perl.exe so_locations \
	  $(BASEEXT).exp 
	- $(RM_RF) \
	  blib 
	- $(MV) $(FIRST_MAKEFILE) $(MAKEFILE_OLD) $(DEV_NULL)


# --- MakeMaker realclean_subdirs section:
realclean_subdirs :
	$(NOECHO) $(NOOP)


# --- MakeMaker realclean section:
# Delete temporary files (via clean) and also delete dist files
realclean purge ::  clean realclean_subdirs
	- $(RM_F) \
	  $(MAKEFILE_OLD) $(FIRST_MAKEFILE) 
	- $(RM_RF) \
	  MYMETA.yml $(DISTVNAME) 


# --- MakeMaker metafile section:
metafile :
	$(NOECHO) $(NOOP)


# --- MakeMaker signature section:
signature :
	cpansign -s


# --- MakeMaker dist_basics section:
distclean :: realclean distcheck
	$(NOECHO) $(NOOP)

distcheck :
	$(PERLRUN) "-MExtUtils::Manifest=fullcheck" -e fullcheck

skipcheck :
	$(PERLRUN) "-MExtUtils::Manifest=skipcheck" -e skipcheck

manifest :
	$(PERLRUN) "-MExtUtils::Manifest=mkmanifest" -e mkmanifest

veryclean : realclean
	$(RM_F) *~ */*~ *.orig */*.orig *.bak */*.bak *.old */*.old 



# --- MakeMaker dist_core section:

dist : $(DIST_DEFAULT) $(FIRST_MAKEFILE)
	$(NOECHO) $(ABSPERLRUN) -l -e 'print '\''Warning: Makefile possibly out of date with $(VERSION_FROM)'\''' \
	  -e '    if -e '\''$(VERSION_FROM)'\'' and -M '\''$(VERSION_FROM)'\'' < -M '\''$(FIRST_MAKEFILE)'\'';' --

tardist : $(DISTVNAME).tar$(SUFFIX)
	$(NOECHO) $(NOOP)

uutardist : $(DISTVNAME).tar$(SUFFIX)
	uuencode $(DISTVNAME).tar$(SUFFIX) $(DISTVNAME).tar$(SUFFIX) > $(DISTVNAME).tar$(SUFFIX)_uu

$(DISTVNAME).tar$(SUFFIX) : distdir
	$(PREOP)
	$(TO_UNIX)
	$(TAR) $(TARFLAGS) $(DISTVNAME).tar $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(COMPRESS) $(DISTVNAME).tar
	$(POSTOP)

zipdist : $(DISTVNAME).zip
	$(NOECHO) $(NOOP)

$(DISTVNAME).zip : distdir
	$(PREOP)
	$(ZIP) $(ZIPFLAGS) $(DISTVNAME).zip $(DISTVNAME)
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)

shdist : distdir
	$(PREOP)
	$(SHAR) $(DISTVNAME) > $(DISTVNAME).shar
	$(RM_RF) $(DISTVNAME)
	$(POSTOP)


# --- MakeMaker distdir section:
create_distdir :
	$(RM_RF) $(DISTVNAME)
	$(PERLRUN) "-MExtUtils::Manifest=manicopy,maniread" \
		-e "manicopy(maniread(),'$(DISTVNAME)', '$(DIST_CP)');"

distdir : create_distdir  
	$(NOECHO) $(NOOP)



# --- MakeMaker dist_test section:
disttest : distdir
	cd $(DISTVNAME) && $(ABSPERLRUN) Makefile.PL 
	cd $(DISTVNAME) && $(MAKE) $(PASTHRU)
	cd $(DISTVNAME) && $(MAKE) test $(PASTHRU)



# --- MakeMaker dist_ci section:

ci :
	$(PERLRUN) "-MExtUtils::Manifest=maniread" \
	  -e "@all = keys %{ maniread() };" \
	  -e "print(qq{Executing $(CI) @all\n}); system(qq{$(CI) @all});" \
	  -e "print(qq{Executing $(RCS_LABEL) ...\n}); system(qq{$(RCS_LABEL) @all});"


# --- MakeMaker distmeta section:
distmeta : create_distdir metafile
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -e q{META.yml};' \
	  -e 'eval { maniadd({q{META.yml} => q{Module YAML meta-data (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add META.yml to MANIFEST: $${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'exit unless -f q{META.json};' \
	  -e 'eval { maniadd({q{META.json} => q{Module JSON meta-data (added by MakeMaker)}}) }' \
	  -e '    or print "Could not add META.json to MANIFEST: $${'\''@'\''}\n"' --



# --- MakeMaker distsignature section:
distsignature : create_distdir
	$(NOECHO) cd $(DISTVNAME) && $(ABSPERLRUN) -MExtUtils::Manifest=maniadd -e 'eval { maniadd({q{SIGNATURE} => q{Public-key signature (added by MakeMaker)}}) } ' \
	  -e '    or print "Could not add SIGNATURE to MANIFEST: $${'\''@'\''}\n"' --
	$(NOECHO) cd $(DISTVNAME) && $(TOUCH) SIGNATURE
	cd $(DISTVNAME) && cpansign -s



# --- MakeMaker install section:

install :: pure_install doc_install
	$(NOECHO) $(NOOP)

install_perl :: pure_perl_install doc_perl_install
	$(NOECHO) $(NOOP)

install_site :: pure_site_install doc_site_install
	$(NOECHO) $(NOOP)

install_vendor :: pure_vendor_install doc_vendor_install
	$(NOECHO) $(NOOP)

pure_install :: pure_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

doc_install :: doc_$(INSTALLDIRS)_install
	$(NOECHO) $(NOOP)

pure__install : pure_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

doc__install : doc_site_install
	$(NOECHO) $(ECHO) INSTALLDIRS not defined, defaulting to INSTALLDIRS=site

pure_perl_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLARCHLIB)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLPRIVLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLARCHLIB) \
		$(INST_BIN) $(DESTINSTALLBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(SITEARCHEXP)/auto/$(FULLEXT)


pure_site_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLSITEARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLSITELIB) \
		$(INST_ARCHLIB) $(DESTINSTALLSITEARCH) \
		$(INST_BIN) $(DESTINSTALLSITEBIN) \
		$(INST_SCRIPT) $(DESTINSTALLSITESCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLSITEMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLSITEMAN3DIR)
	$(NOECHO) $(WARN_IF_OLD_PACKLIST) \
		$(PERL_ARCHLIB)/auto/$(FULLEXT)

pure_vendor_install :: all
	$(NOECHO) $(MOD_INSTALL) \
		read $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist \
		write $(DESTINSTALLVENDORARCH)/auto/$(FULLEXT)/.packlist \
		$(INST_LIB) $(DESTINSTALLVENDORLIB) \
		$(INST_ARCHLIB) $(DESTINSTALLVENDORARCH) \
		$(INST_BIN) $(DESTINSTALLVENDORBIN) \
		$(INST_SCRIPT) $(DESTINSTALLVENDORSCRIPT) \
		$(INST_MAN1DIR) $(DESTINSTALLVENDORMAN1DIR) \
		$(INST_MAN3DIR) $(DESTINSTALLVENDORMAN3DIR)

doc_perl_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLPRIVLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_site_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLSITELIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod

doc_vendor_install :: all
	$(NOECHO) $(ECHO) Appending installation info to $(DESTINSTALLARCHLIB)/perllocal.pod
	-$(NOECHO) $(MKPATH) $(DESTINSTALLARCHLIB)
	-$(NOECHO) $(DOC_INSTALL) \
		"Module" "$(NAME)" \
		"installed into" "$(INSTALLVENDORLIB)" \
		LINKTYPE "$(LINKTYPE)" \
		VERSION "$(VERSION)" \
		EXE_FILES "$(EXE_FILES)" \
		>> $(DESTINSTALLARCHLIB)/perllocal.pod


uninstall :: uninstall_from_$(INSTALLDIRS)dirs
	$(NOECHO) $(NOOP)

uninstall_from_perldirs ::
	$(NOECHO) $(UNINSTALL) $(PERL_ARCHLIB)/auto/$(FULLEXT)/.packlist

uninstall_from_sitedirs ::
	$(NOECHO) $(UNINSTALL) $(SITEARCHEXP)/auto/$(FULLEXT)/.packlist

uninstall_from_vendordirs ::
	$(NOECHO) $(UNINSTALL) $(VENDORARCHEXP)/auto/$(FULLEXT)/.packlist


# --- MakeMaker force section:
# Phony target to force checking subdirectories.
FORCE :
	$(NOECHO) $(NOOP)


# --- MakeMaker perldepend section:


# --- MakeMaker makefile section:
# We take a very conservative approach here, but it's worth it.
# We move Makefile to Makefile.old here to avoid gnu make looping.
$(FIRST_MAKEFILE) : Makefile.PL $(CONFIGDEP)
	$(NOECHO) $(ECHO) "Makefile out-of-date with respect to $?"
	$(NOECHO) $(ECHO) "Cleaning current config before rebuilding Makefile..."
	-$(NOECHO) $(RM_F) $(MAKEFILE_OLD)
	-$(NOECHO) $(MV)   $(FIRST_MAKEFILE) $(MAKEFILE_OLD)
	- $(MAKE) $(USEMAKEFILE) $(MAKEFILE_OLD) clean $(DEV_NULL)
	$(PERLRUN) Makefile.PL 
	$(NOECHO) $(ECHO) "==> Your Makefile has been rebuilt. <=="
	$(NOECHO) $(ECHO) "==> Please rerun the $(MAKE) command.  <=="
	$(FALSE)



# --- MakeMaker staticmake section:

# --- MakeMaker makeaperl section ---
MAP_TARGET    = perl
FULLPERL      = /usr/bin/perl

$(MAP_TARGET) :: static $(MAKE_APERL_FILE)
	$(MAKE) $(USEMAKEFILE) $(MAKE_APERL_FILE) $@

$(MAKE_APERL_FILE) : $(FIRST_MAKEFILE) pm_to_blib
	$(NOECHO) $(ECHO) Writing \"$(MAKE_APERL_FILE)\" for this $(MAP_TARGET)
	$(NOECHO) $(PERLRUNINST) \
		Makefile.PL DIR= \
		MAKEFILE=$(MAKE_APERL_FILE) LINKTYPE=static \
		MAKEAPERL=1 NORECURS=1 CCCDLFLAGS=


# --- MakeMaker test section:

TEST_VERBOSE=0
TEST_TYPE=test_$(LINKTYPE)
TEST_FILE = test.pl
TEST_FILES = t/01app.t t/02pod.t t/03podcoverage.t t/controller_Orders.t t/model_DB-TKS.t t/view_HTML.t
TESTDB_SW = -d

testdb :: testdb_$(LINKTYPE)

test :: $(TEST_TYPE) subdirs-test

subdirs-test ::
	$(NOECHO) $(NOOP)


test_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-MExtUtils::Command::MM" "-e" "test_harness($(TEST_VERBOSE), 'inc', '$(INST_LIB)', '$(INST_ARCHLIB)')" $(TEST_FILES)
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) "-Iinc" "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

testdb_dynamic :: pure_all
	PERL_DL_NONLAZY=1 $(FULLPERLRUN) $(TESTDB_SW) "-Iinc" "-I$(INST_LIB)" "-I$(INST_ARCHLIB)" $(TEST_FILE)

test_ : test_dynamic

test_static :: test_dynamic
testdb_static :: testdb_dynamic


# --- MakeMaker ppd section:
# Creates a PPD (Perl Package Description) for a binary distribution.
ppd :
	$(NOECHO) $(ECHO) '<SOFTPKG NAME="$(DISTNAME)" VERSION="0.01">' > $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <ABSTRACT>Catalyst based application</ABSTRACT>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <AUTHOR>Catalyst developer</AUTHOR>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    <IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Action::RenderView" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Model::Adaptor" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Plugin::ConfigLoader" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Plugin::RedirectAndDetach" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Plugin::Static::Simple" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Plugin::Unicode" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Catalyst::Runtime" VERSION="5.9002" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Config::General" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="Moose::" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <REQUIRE NAME="namespace::autoclean" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <ARCHITECTURE NAME="x86_64-linux-thread-multi-5.8" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '        <CODEBASE HREF="" />' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '    </IMPLEMENTATION>' >> $(DISTNAME).ppd
	$(NOECHO) $(ECHO) '</SOFTPKG>' >> $(DISTNAME).ppd


# --- MakeMaker pm_to_blib section:

pm_to_blib : $(FIRST_MAKEFILE) $(TO_INST_PM)
	$(NOECHO) $(ABSPERLRUN) -MExtUtils::Install -e 'pm_to_blib({@ARGV}, '\''$(INST_LIB)/auto'\'', q[$(PM_FILTER)], '\''$(PERM_DIR)'\'')' -- \
	  lib/WebTKS/Form/Base.pm blib/lib/WebTKS/Form/Base.pm \
	  lib/Vicidial/Schema/Result/ServerPerformance.pm blib/lib/Vicidial/Schema/Result/ServerPerformance.pm \
	  lib/Vicidial/Schema/Result/VicidialUser.pm blib/lib/Vicidial/Schema/Result/VicidialUser.pm \
	  lib/Vicidial/Schema/Result/VicidialStatusCategory.pm blib/lib/Vicidial/Schema/Result/VicidialStatusCategory.pm \
	  lib/Vicidial/Schema/Result/VicidialAgentLogArchive.pm blib/lib/Vicidial/Schema/Result/VicidialAgentLogArchive.pm \
	  lib/Vicidial/Schema/Result/VicidialAdminLog.pm blib/lib/Vicidial/Schema/Result/VicidialAdminLog.pm \
	  lib/Vicidial/Schema/Result/VicidialProcessTriggerLog.pm blib/lib/Vicidial/Schema/Result/VicidialProcessTriggerLog.pm \
	  lib/Vicidial/Schema/Result/VicidialCampaignHotkey.pm blib/lib/Vicidial/Schema/Result/VicidialCampaignHotkey.pm \
	  lib/Vicidial/Schema/Result/VicidialScript.pm blib/lib/Vicidial/Schema/Result/VicidialScript.pm \
	  lib/Vicidial/Schema/Result/VicidialCloserLogArchive.pm blib/lib/Vicidial/Schema/Result/VicidialCloserLogArchive.pm \
	  lib/Vicidial/Schema/Result/VicidialCampaignStatus.pm blib/lib/Vicidial/Schema/Result/VicidialCampaignStatus.pm \
	  lib/Vicidial/Schema/Result/VicidialCampaign.pm blib/lib/Vicidial/Schema/Result/VicidialCampaign.pm \
	  lib/Vicidial/Schema/Result/VicidialCarrierLog.pm blib/lib/Vicidial/Schema/Result/VicidialCarrierLog.pm \
	  lib/Vicidial/Schema.pm blib/lib/Vicidial/Schema.pm \
	  lib/Vicidial/Schema/Result/VicidialLogArchive.pm blib/lib/Vicidial/Schema/Result/VicidialLogArchive.pm \
	  lib/Vicidial/Schema/Result/VicidialLeadSearchLog.pm blib/lib/Vicidial/Schema/Result/VicidialLeadSearchLog.pm \
	  lib/Vicidial/Schema/Result/VicidialList.pm blib/lib/Vicidial/Schema/Result/VicidialList.pm \
	  lib/Vicidial/Schema/Result/VicidialUserCloserLog.pm blib/lib/Vicidial/Schema/Result/VicidialUserCloserLog.pm \
	  lib/Vicidial/Schema/Result/VtigerRankData.pm blib/lib/Vicidial/Schema/Result/VtigerRankData.pm \
	  lib/Vicidial/Schema/Result/VicidialLogNoanswer.pm blib/lib/Vicidial/Schema/Result/VicidialLogNoanswer.pm \
	  lib/Vicidial/Schema/Result/VicidialConference.pm blib/lib/Vicidial/Schema/Result/VicidialConference.pm \
	  lib/Vicidial/Schema/Result/VicidialCampaignAgent.pm blib/lib/Vicidial/Schema/Result/VicidialCampaignAgent.pm \
	  lib/Vicidial/Schema/Result/VicidialIvr.pm blib/lib/Vicidial/Schema/Result/VicidialIvr.pm \
	  lib/WebTKS/Form/Order.pm blib/lib/WebTKS/Form/Order.pm \
	  lib/Vicidial/Schema/Result/VicidialTimeclockAuditLog.pm blib/lib/Vicidial/Schema/Result/VicidialTimeclockAuditLog.pm \
	  lib/Vicidial/Schema/Result/VicidialLogNoanswerArchive.pm blib/lib/Vicidial/Schema/Result/VicidialLogNoanswerArchive.pm \
	  lib/Vicidial/Schema/Result/VicidialManualDialQueue.pm blib/lib/Vicidial/Schema/Result/VicidialManualDialQueue.pm \
	  lib/Vicidial/Schema/Result/VicidialVoicemail.pm blib/lib/Vicidial/Schema/Result/VicidialVoicemail.pm \
	  lib/Vicidial/Schema/Result/VicidialUserTerritory.pm blib/lib/Vicidial/Schema/Result/VicidialUserTerritory.pm \
	  lib/Vicidial/Schema/Result/Phone.pm blib/lib/Vicidial/Schema/Result/Phone.pm \
	  lib/Vicidial/Schema/Result/Server.pm blib/lib/Vicidial/Schema/Result/Server.pm \
	  lib/Vicidial/Schema/Result/VicidialXferStat.pm blib/lib/Vicidial/Schema/Result/VicidialXferStat.pm \
	  lib/Vicidial/Schema/Result/VicidialDailyMaxStat.pm blib/lib/Vicidial/Schema/Result/VicidialDailyMaxStat.pm \
	  lib/Vicidial/Schema/Result/VicidialDailyRaStat.pm blib/lib/Vicidial/Schema/Result/VicidialDailyRaStat.pm \
	  lib/Vicidial/Schema/Result/VicidialSessionData.pm blib/lib/Vicidial/Schema/Result/VicidialSessionData.pm \
	  lib/Vicidial/Schema/Result/WebClientSession.pm blib/lib/Vicidial/Schema/Result/WebClientSession.pm \
	  lib/Vicidial/Schema/Result/VicidialConfTemplate.pm blib/lib/Vicidial/Schema/Result/VicidialConfTemplate.pm \
	  lib/Vicidial/Schema/Result/ParkedChannel.pm blib/lib/Vicidial/Schema/Result/ParkedChannel.pm \
	  lib/Vicidial/Schema/Result/VicidialStation.pm blib/lib/Vicidial/Schema/Result/VicidialStation.pm \
	  lib/Vicidial/Schema/Result/VicidialDidLog.pm blib/lib/Vicidial/Schema/Result/VicidialDidLog.pm \
	  lib/Vicidial/Schema/Result/VicidialScreenLabel.pm blib/lib/Vicidial/Schema/Result/VicidialScreenLabel.pm \
	  lib/Vicidial/Schema/Result/VtigerRankParameter.pm blib/lib/Vicidial/Schema/Result/VtigerRankParameter.pm \
	  lib/Vicidial/Schema/Result/VicidialLogExtended.pm blib/lib/Vicidial/Schema/Result/VicidialLogExtended.pm \
	  lib/Vicidial/Schema/Result/RecordingLog.pm blib/lib/Vicidial/Schema/Result/RecordingLog.pm \
	  lib/Vicidial/Schema/Result/VtigerVicidialRole.pm blib/lib/Vicidial/Schema/Result/VtigerVicidialRole.pm \
	  lib/Vicidial/Schema/Result/VicidialXferLog.pm blib/lib/Vicidial/Schema/Result/VicidialXferLog.pm \
	  lib/Vicidial/Schema/Result/LiveInboundLog.pm blib/lib/Vicidial/Schema/Result/LiveInboundLog.pm \
	  lib/TKS/Schema/ResultSet/Order.pm blib/lib/TKS/Schema/ResultSet/Order.pm \
	  lib/Vicidial/Schema/Result/VicidialNanpaPrefixCode.pm blib/lib/Vicidial/Schema/Result/VicidialNanpaPrefixCode.pm \
	  lib/Vicidial/Schema/Result/VicidialCampaignCidAreacode.pm blib/lib/Vicidial/Schema/Result/VicidialCampaignCidAreacode.pm \
	  lib/Vicidial/Schema/Result/VicidialAutoCall.pm blib/lib/Vicidial/Schema/Result/VicidialAutoCall.pm \
	  lib/Vicidial/Schema/Result/VicidialQcCode.pm blib/lib/Vicidial/Schema/Result/VicidialQcCode.pm \
	  lib/Vicidial/Schema/Result/TwodayVicidialCloserLog.pm blib/lib/Vicidial/Schema/Result/TwodayVicidialCloserLog.pm \
	  lib/WebTKS/Model/AppSender.pm blib/lib/WebTKS/Model/AppSender.pm \
	  lib/Vicidial/Schema/Result/VicidialLog.pm blib/lib/Vicidial/Schema/Result/VicidialLog.pm \
	  lib/TKS/Role/SendOrder.pm blib/lib/TKS/Role/SendOrder.pm \
	  lib/Vicidial/Schema/Result/VicidialCustomCid.pm blib/lib/Vicidial/Schema/Result/VicidialCustomCid.pm \
	  lib/Vicidial/Schema/Result/TwodayVicidialAgentLog.pm blib/lib/Vicidial/Schema/Result/TwodayVicidialAgentLog.pm \
	  lib/TKS/API/AppSender.pm blib/lib/TKS/API/AppSender.pm \
	  lib/Vicidial/Schema/Result/VicidialMusicOnHold.pm blib/lib/Vicidial/Schema/Result/VicidialMusicOnHold.pm \
	  lib/Vicidial/Schema/Result/VicidialLead.pm blib/lib/Vicidial/Schema/Result/VicidialLead.pm \
	  lib/Vicidial/Schema/Result/VicidialLeadSearchLogArchive.pm blib/lib/Vicidial/Schema/Result/VicidialLeadSearchLogArchive.pm \
	  lib/Vicidial/Schema/Result/VicidialAgentSkipLog.pm blib/lib/Vicidial/Schema/Result/VicidialAgentSkipLog.pm \
	  lib/Vicidial/Schema/Result/VicidialCampaignStatsDebug.pm blib/lib/Vicidial/Schema/Result/VicidialCampaignStatsDebug.pm \
	  lib/Vicidial/Schema/Result/VicidialPauseCode.pm blib/lib/Vicidial/Schema/Result/VicidialPauseCode.pm \
	  lib/Vicidial/Schema/Result/VicidialInboundGroup.pm blib/lib/Vicidial/Schema/Result/VicidialInboundGroup.pm \
	  lib/Vicidial/Schema/Result/VicidialCallMenuOption.pm blib/lib/Vicidial/Schema/Result/VicidialCallMenuOption.pm \
	  lib/Vicidial/Schema/Result/UserCallLog.pm blib/lib/Vicidial/Schema/Result/UserCallLog.pm \
	  lib/Vicidial/Schema/Result/VicidialXferPreset.pm blib/lib/Vicidial/Schema/Result/VicidialXferPreset.pm \
	  lib/Vicidial/Schema/Result/VicidialMusicOnHoldFiles.pm blib/lib/Vicidial/Schema/Result/VicidialMusicOnHoldFiles.pm \
	  lib/Vicidial/Schema/Result/LiveSipChannel.pm blib/lib/Vicidial/Schema/Result/LiveSipChannel.pm \
	  lib/WebTKS/Model/DB/TKS.pm.new blib/lib/WebTKS/Model/DB/TKS.pm.new \
	  lib/Vicidial/Schema/Result/VicidialListPin.pm blib/lib/Vicidial/Schema/Result/VicidialListPin.pm \
	  lib/Vicidial/Schema/Result/TwodayVicidialLog.pm blib/lib/Vicidial/Schema/Result/TwodayVicidialLog.pm \
	  lib/WebTKS/Controller/Orders.pm blib/lib/WebTKS/Controller/Orders.pm \
	  lib/Vicidial/Schema/Result/VicidialCallMenu.pm blib/lib/Vicidial/Schema/Result/VicidialCallMenu.pm \
	  lib/Vicidial/Schema/Result/VicidialHopper.pm blib/lib/Vicidial/Schema/Result/VicidialHopper.pm \
	  lib/Vicidial/Schema/Result/VicidialListAltPhone.pm blib/lib/Vicidial/Schema/Result/VicidialListAltPhone.pm \
	  lib/Vicidial/Schema/Result/InboundNumber.pm blib/lib/Vicidial/Schema/Result/InboundNumber.pm \
	  lib/Vicidial/Schema/Result/PhoneFavorite.pm blib/lib/Vicidial/Schema/Result/PhoneFavorite.pm \
	  lib/WebTKS/Model/DB/Vicidial.pm blib/lib/WebTKS/Model/DB/Vicidial.pm \
	  lib/Vicidial/Schema/Result/PhonesAlias.pm blib/lib/Vicidial/Schema/Result/PhonesAlias.pm \
	  lib/Vicidial/Schema/Result/VicidialDnc.pm blib/lib/Vicidial/Schema/Result/VicidialDnc.pm \
	  lib/Vicidial/Schema/Result/VicidialUserTerritoryLog.pm blib/lib/Vicidial/Schema/Result/VicidialUserTerritoryLog.pm \
	  lib/Vicidial/Schema/Result/VicidialAgentSph.pm blib/lib/Vicidial/Schema/Result/VicidialAgentSph.pm \
	  lib/Vicidial/Schema/Result/VicidialDidAgentLog.pm blib/lib/Vicidial/Schema/Result/VicidialDidAgentLog.pm \
	  lib/Vicidial/Schema/Result/VicidialLogExtendedArchive.pm blib/lib/Vicidial/Schema/Result/VicidialLogExtendedArchive.pm \
	  lib/Vicidial/Schema/Result/VicidialCustomLeadloaderTemplate.pm blib/lib/Vicidial/Schema/Result/VicidialCustomLeadloaderTemplate.pm \
	  lib/Vicidial/Schema/Result/VicidialLeadRecycle.pm blib/lib/Vicidial/Schema/Result/VicidialLeadRecycle.pm \
	  lib/Vicidial/Schema/Result/VicidialServerCarrier.pm blib/lib/Vicidial/Schema/Result/VicidialServerCarrier.pm \
	  lib/Vicidial/Schema/Result/VicidialListUpdateLog.pm blib/lib/Vicidial/Schema/Result/VicidialListUpdateLog.pm \
	  lib/Vicidial/Schema/Result/VicidialTtsPrompt.pm blib/lib/Vicidial/Schema/Result/VicidialTtsPrompt.pm \
	  lib/Vicidial/Schema/Result/VicidialRemoteAgentLog.pm blib/lib/Vicidial/Schema/Result/VicidialRemoteAgentLog.pm \
	  lib/Vicidial/Schema/Result/VicidialCarrierLogArchive.pm blib/lib/Vicidial/Schema/Result/VicidialCarrierLogArchive.pm \
	  lib/Vicidial/Schema/Result/VicidialCampaignsListMix.pm blib/lib/Vicidial/Schema/Result/VicidialCampaignsListMix.pm \
	  lib/Vicidial/Schema/Result/ServerUpdater.pm blib/lib/Vicidial/Schema/Result/ServerUpdater.pm \
	  lib/Vicidial/Schema/Result/VicidialLeadFilter.pm blib/lib/Vicidial/Schema/Result/VicidialLeadFilter.pm \
	  lib/Vicidial/Schema/Result/VicidialProcessTrigger.pm blib/lib/Vicidial/Schema/Result/VicidialProcessTrigger.pm \
	  lib/Vicidial/Schema/Result/CallLog.pm blib/lib/Vicidial/Schema/Result/CallLog.pm \
	  lib/Vicidial/Schema/Result/VicidialCallNotesArchive.pm blib/lib/Vicidial/Schema/Result/VicidialCallNotesArchive.pm \
	  lib/Vicidial/Schema/Result/VicidialDidAgentLogArchive.pm blib/lib/Vicidial/Schema/Result/VicidialDidAgentLogArchive.pm \
	  lib/Vicidial/Schema/Result/VicidialGrabCallLog.pm blib/lib/Vicidial/Schema/Result/VicidialGrabCallLog.pm \
	  lib/Vicidial/Schema/Result/VicidialServerTrunk.pm blib/lib/Vicidial/Schema/Result/VicidialServerTrunk.pm \
	  lib/Vicidial/Schema/Result/VicidialCampaignStat.pm blib/lib/Vicidial/Schema/Result/VicidialCampaignStat.pm \
	  lib/Vicidial/Schema/Result/TwodayVicidialXferLog.pm blib/lib/Vicidial/Schema/Result/TwodayVicidialXferLog.pm \
	  lib/Vicidial/Schema/Result/LiveChannel.pm blib/lib/Vicidial/Schema/Result/LiveChannel.pm \
	  lib/WebTKS/Model/DB/TKS.pm blib/lib/WebTKS/Model/DB/TKS.pm \
	  lib/WebTKS.pm blib/lib/WebTKS.pm \
	  lib/Vicidial/Schema/Result/CallLogArchive.pm blib/lib/Vicidial/Schema/Result/CallLogArchive.pm \
	  lib/Vicidial/Schema/Result/VicidialOutboundIvrLog.pm blib/lib/Vicidial/Schema/Result/VicidialOutboundIvrLog.pm \
	  lib/Vicidial/Schema/Result/VicidialStateCallTime.pm blib/lib/Vicidial/Schema/Result/VicidialStateCallTime.pm \
	  lib/Vicidial/Schema/Result/VicidialTerritory.pm blib/lib/Vicidial/Schema/Result/VicidialTerritory.pm \
	  lib/Vicidial/Schema/Result/VicidialLiveInboundAgent.pm blib/lib/Vicidial/Schema/Result/VicidialLiveInboundAgent.pm \
	  lib/Vicidial/Schema/Result/VicidialListsField.pm blib/lib/Vicidial/Schema/Result/VicidialListsField.pm \
	  lib/Vicidial/Schema/Result/VicidialDropRateGroup.pm blib/lib/Vicidial/Schema/Result/VicidialDropRateGroup.pm \
	  lib/Vicidial/Schema/Result/VicidialManager.pm blib/lib/Vicidial/Schema/Result/VicidialManager.pm \
	  lib/Vicidial/Schema/Result/VicidialCampaignServerStat.pm blib/lib/Vicidial/Schema/Result/VicidialCampaignServerStat.pm \
	  lib/Vicidial/Schema/Result/VicidialInboundGroupAgent.pm blib/lib/Vicidial/Schema/Result/VicidialInboundGroupAgent.pm \
	  lib/Vicidial/Schema/ResultSet/VicidialCampaign.pm blib/lib/Vicidial/Schema/ResultSet/VicidialCampaign.pm \
	  lib/Vicidial/Schema/Result/VicidialTimeclockStatus.pm blib/lib/Vicidial/Schema/Result/VicidialTimeclockStatus.pm \
	  lib/Vicidial/Schema/Result/VicidialOverrideId.pm blib/lib/Vicidial/Schema/Result/VicidialOverrideId.pm \
	  lib/TKS/API/AppSender/Result.pm blib/lib/TKS/API/AppSender/Result.pm \
	  lib/Vicidial/Schema/Result/VicidialTimeclockLog.pm blib/lib/Vicidial/Schema/Result/VicidialTimeclockLog.pm \
	  lib/Vicidial/Schema/Result/VicidialCloserLog.pm blib/lib/Vicidial/Schema/Result/VicidialCloserLog.pm \
	  lib/Vicidial/Schema/Result/VicidialPhoneCode.pm blib/lib/Vicidial/Schema/Result/VicidialPhoneCode.pm \
	  lib/Vicidial/Schema/Result/SystemSetting.pm blib/lib/Vicidial/Schema/Result/SystemSetting.pm \
	  lib/Vicidial/Schema/Result/VicidialCallTime.pm blib/lib/Vicidial/Schema/Result/VicidialCallTime.pm \
	  lib/Vicidial/Schema/Result/VicidialUserLog.pm blib/lib/Vicidial/Schema/Result/VicidialUserLog.pm \
	  lib/Vicidial/Schema/Result/VicidialFilterPhoneGroup.pm blib/lib/Vicidial/Schema/Result/VicidialFilterPhoneGroup.pm \
	  lib/Vicidial/Schema/Result/VicidialInboundDid.pm blib/lib/Vicidial/Schema/Result/VicidialInboundDid.pm \
	  lib/Vicidial/Schema/Result/VicidialRemoteAgent.pm blib/lib/Vicidial/Schema/Result/VicidialRemoteAgent.pm \
	  lib/Vicidial/Schema/Result/VicidialCampaignDnc.pm blib/lib/Vicidial/Schema/Result/VicidialCampaignDnc.pm \
	  lib/Vicidial/Schema/Result/VicidialFilterPhoneNumber.pm blib/lib/Vicidial/Schema/Result/VicidialFilterPhoneNumber.pm \
	  lib/Vicidial/Schema/Result/VicidialDidRaExtension.pm blib/lib/Vicidial/Schema/Result/VicidialDidRaExtension.pm \
	  lib/Vicidial/Schema/Result/VicidialAgentLog.pm blib/lib/Vicidial/Schema/Result/VicidialAgentLog.pm \
	  lib/Vicidial/Schema/Result/VicidialPostalCode.pm blib/lib/Vicidial/Schema/Result/VicidialPostalCode.pm \
	  lib/WebTKS/View/HTML.pm blib/lib/WebTKS/View/HTML.pm \
	  lib/Vicidial/Schema/Result/LiveInbound.pm blib/lib/Vicidial/Schema/Result/LiveInbound.pm \
	  lib/Vicidial/Schema/Result/VicidialStatus.pm blib/lib/Vicidial/Schema/Result/VicidialStatus.pm \
	  lib/Vicidial/Schema/Result/TwodayRecordingLog.pm blib/lib/Vicidial/Schema/Result/TwodayRecordingLog.pm \
	  lib/Vicidial/Schema/Result/VicidialOutboundIvrLogArchive.pm blib/lib/Vicidial/Schema/Result/VicidialOutboundIvrLogArchive.pm \
	  lib/Vicidial/Schema/Result/VicidialUserGroup.pm blib/lib/Vicidial/Schema/Result/VicidialUserGroup.pm \
	  lib/TKS/Schema.pm blib/lib/TKS/Schema.pm \
	  lib/Vicidial/Schema/Result/VicidialExtensionGroup.pm blib/lib/Vicidial/Schema/Result/VicidialExtensionGroup.pm \
	  lib/TKS/Schema/Result/Order.pm blib/lib/TKS/Schema/Result/Order.pm \
	  lib/Vicidial/Schema/Result/VicidialLiveAgent.pm blib/lib/Vicidial/Schema/Result/VicidialLiveAgent.pm \
	  lib/Vicidial/Schema/Result/VicidialShift.pm blib/lib/Vicidial/Schema/Result/VicidialShift.pm \
	  lib/Vicidial/Schema/Result/VicidialApiLog.pm blib/lib/Vicidial/Schema/Result/VicidialApiLog.pm \
	  lib/WebTKS/Controller/Root.pm blib/lib/WebTKS/Controller/Root.pm \
	  lib/Vicidial/Schema/Result/VicidialCpdLog.pm blib/lib/Vicidial/Schema/Result/VicidialCpdLog.pm \
	  lib/Vicidial/Schema/Result/VicidialCallback.pm blib/lib/Vicidial/Schema/Result/VicidialCallback.pm \
	  lib/Vicidial/Schema/Result/VicidialCallNote.pm blib/lib/Vicidial/Schema/Result/VicidialCallNote.pm \
	  lib/Vicidial/Schema/Result/TwodayCallLog.pm blib/lib/Vicidial/Schema/Result/TwodayCallLog.pm \
	  lib/Vicidial/Schema/Result/VicidialUrlLog.pm blib/lib/Vicidial/Schema/Result/VicidialUrlLog.pm \
	  lib/Vicidial/Schema/Result/ParkLog.pm blib/lib/Vicidial/Schema/Result/ParkLog.pm \
	  lib/Vicidial/Schema/Result/GroupsAlias.pm blib/lib/Vicidial/Schema/Result/GroupsAlias.pm 
	$(NOECHO) $(TOUCH) pm_to_blib


# --- MakeMaker selfdocument section:


# --- MakeMaker postamble section:


# End.
# Postamble by Module::Install 1.06
# --- Module::Install::Admin::Makefile section:

realclean purge ::
	$(RM_F) $(DISTVNAME).tar$(SUFFIX)
	$(RM_F) MANIFEST.bak _build
	$(PERL) "-Ilib" "-MModule::Install::Admin" -e "remove_meta()"
	$(RM_RF) inc

reset :: purge

upload :: test dist
	cpan-upload -verbose $(DISTVNAME).tar$(SUFFIX)

grok ::
	perldoc Module::Install

distsign ::
	cpansign -s

# --- Module::Install::AutoInstall section:

config :: installdeps
	$(NOECHO) $(NOOP)

checkdeps ::
	$(PERL) Makefile.PL --checkdeps

installdeps ::
	$(NOECHO) $(NOOP)

installdeps_notest ::
	$(NOECHO) $(NOOP)

upgradedeps ::
	$(PERL) Makefile.PL --config= --upgradedeps=Test::More,0.88,Catalyst::Runtime,5.90020,Catalyst::Plugin::ConfigLoader,0,Catalyst::Plugin::Static::Simple,0,Catalyst::Action::RenderView,0,Catalyst::Model::Adaptor,0,Catalyst::Plugin::Unicode,0,Catalyst::Plugin::RedirectAndDetach,0,Moose,0,namespace::autoclean,0,Config::General,0

upgradedeps_notest ::
	$(PERL) Makefile.PL --config=notest,1 --upgradedeps=Test::More,0.88,Catalyst::Runtime,5.90020,Catalyst::Plugin::ConfigLoader,0,Catalyst::Plugin::Static::Simple,0,Catalyst::Action::RenderView,0,Catalyst::Model::Adaptor,0,Catalyst::Plugin::Unicode,0,Catalyst::Plugin::RedirectAndDetach,0,Moose,0,namespace::autoclean,0,Config::General,0

listdeps ::
	@$(PERL) -le "print for @ARGV" 

listalldeps ::
	@$(PERL) -le "print for @ARGV" Test::More Catalyst::Runtime Catalyst::Plugin::ConfigLoader Catalyst::Plugin::Static::Simple Catalyst::Action::RenderView Catalyst::Model::Adaptor Catalyst::Plugin::Unicode Catalyst::Plugin::RedirectAndDetach Moose namespace::autoclean Config::General

