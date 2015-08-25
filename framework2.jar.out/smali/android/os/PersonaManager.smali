.class public Landroid/os/PersonaManager;
.super Ljava/lang/Object;
.source "PersonaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PersonaManager$AppType;
    }
.end annotation


# static fields
.field public static final ACCESS_TYPE_BLUETOOTH:Ljava/lang/String; = "bluetooth"

.field public static final ACCESS_TYPE_SDCARD:Ljava/lang/String; = "sdcard"

.field public static final ACTION_SHORTCUT_REINSTATE:Ljava/lang/String; = "com.sec.knox.shortcutReinstate"

.field private static final ADAPT_SOUND_PACKAGE_NAME:Ljava/lang/String; = "com.sec.hearingadjust"

.field public static final CALLER_DISPLAY_NAME:Ljava/lang/String; = "caller_display_name"

.field public static final CALLER_PHONE_NUMBER:Ljava/lang/String; = "caller_phone_number"

.field public static final CALLER_PHOTO:Ljava/lang/String; = "caller_photo"

.field public static final CONTACT_OWNER_ID:Ljava/lang/String; = "contact_owner_id"

.field public static final CONTAINER_COM_TYPE:I = 0x3

.field public static final CONTAINER_DEFAULT_TYPE:I = 0x1

.field public static final CONTAINER_LWC_TYPE:I = 0x2

.field public static final DEFAULT_SDP_ACTIVATION_TIME:I = 0x927c0

.field public static final ENABLE_EULA:Ljava/lang/String; = "enable_eula"

.field public static final ERROR_CREATE_PERSONA_ADMIN_ACTIVATION_FAILED:I = -0x3f1

.field public static final ERROR_CREATE_PERSONA_ADMIN_INSTALLATION_FAILED:I = -0x3f0

.field public static final ERROR_CREATE_PERSONA_FILESYSTEM_ERROR:I = -0x3f3

.field public static final ERROR_CREATE_PERSONA_HANDLER_INSTALLATION_FAILED:I = -0x3ee

.field public static final ERROR_CREATE_PERSONA_INTERNAL_ERROR:I = -0x3f6

.field public static final ERROR_CREATE_PERSONA_MAX_PERSONA_LIMIT_REACHED:I = -0x3f4

.field public static final ERROR_CREATE_PERSONA_NO_HANDLER_APK:I = -0x3ea

.field public static final ERROR_CREATE_PERSONA_NO_NAME:I = -0x3e9

.field public static final ERROR_CREATE_PERSONA_NO_PERSONA_ADMIN_APK:I = -0x3ec

.field public static final ERROR_CREATE_PERSONA_NO_PERSONA_TYPE:I = -0x3ed

.field public static final ERROR_CREATE_PERSONA_NO_SETUPWIZARD_APK:I = -0x3eb

.field public static final ERROR_CREATE_PERSONA_SETUPWIZARD_INSTALLATION_FAILED:I = -0x3ef

.field public static final ERROR_CREATE_PERSONA_SYSTEM_APP_INSTALLATION_FAILED:I = -0x3f2

.field public static final ERROR_PERSONA_APP_INSTALLATION_FAILED:I = -0x7d1

.field public static final ERROR_REMOVE_NOT_PERSONA_OWNER:I = -0x4b3

.field public static final ERROR_REMOVE_PERSONA_FAILED:I = -0x4b1

.field public static final ERROR_REMOVE_PERSONA_NOT_EXIST:I = -0x4b2

.field public static final ERROR_SWITCH_EQUALS_CURRENT_USER:I = -0x451

.field public static final ERROR_SWITCH_INVALID_PERSONA_ID:I = -0x44c

.field public static final ERROR_SWITCH_OUTSIDE_PERSONA_GROUP:I = -0x452

.field public static final ERROR_SWITCH_PERSONA_FILESYSTEM:I = -0x44f

.field public static final ERROR_SWITCH_PERSONA_HANDLER_NOT_RESPONDING:I = -0x450

.field public static final ERROR_SWITCH_PERSONA_LOCKED:I = -0x44e

.field public static final ERROR_SWITCH_PERSONA_NOT_INITIALIZED:I = -0x44d

.field public static final FLAG_ADMIN_TYPE_APK:I = 0x10

.field public static final FLAG_ADMIN_TYPE_NONE:I = 0x40

.field public static final FLAG_ADMIN_TYPE_PACKAGENAME:I = 0x20

.field private static final FLAG_BASE:I = 0x1

.field public static final FLAG_CREATOR_SELF_DESTROY:I = 0x8

.field public static final FLAG_ECRYPT_FILESYSTEM:I = 0x2

.field public static final FLAG_KIOSK_ENABLED:I = 0x400

.field public static final FLAG_LIGHT_WEIGHT_CONTAINER:I = 0x200

.field public static final FLAG_MIGRATION:I = 0x100

.field public static final FLAG_PURE_ENABLED:I = 0x800

.field public static final FLAG_TIMA_STORAGE:I = 0x4

.field public static final FLAG_USER_MANAGED_CONTAINER:I = 0x80

.field private static final GOOGLE_MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field public static final INTENT_ACCESS_EXT_SDCARD:Ljava/lang/String; = "com.sec.knox.container.access.extsdcard"

.field public static final INTENT_ACTION_SDP_TIMEOUT:Ljava/lang/String; = "com.sec.knox.container.INTENT_KNOX_SDP_ACTIVATED"

.field public static final INTENT_CONTAINER_NEED_RESTART:Ljava/lang/String; = "com.sec.knox.container.need.restart"

.field public static final INTENT_EXTRA_CONTAINER_ID:Ljava/lang/String; = "containerId"

.field public static final INTENT_EXTRA_SOURCE:Ljava/lang/String; = "source"

.field public static final INTENT_EXTRA_SOURCE_SBA:I = 0x1

.field public static final INTENT_EXTRA_SOURCE_SBA_BLACKLIST:I = 0x2

.field public static final INTENT_EXTRA_SOURCE_WHITELIST:I = 0x0

.field private static final KNOX_SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent2"

.field public static final MAX_PERSONA_ALLOWED:I = 0x2

.field private static final MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.shortcutsms"

.field public static final MINIMUM_SCREEN_OFF_TIMEOUT:I = 0x1388

.field public static final MIN_PERSONA_ID:I = 0x64

.field public static final MOVE_TO_APP_TYPE_GALLERY:I = 0x1

.field public static final MOVE_TO_APP_TYPE_MUSIC:I = 0x3

.field public static final MOVE_TO_APP_TYPE_MYFILES:I = 0x4

.field public static final MOVE_TO_APP_TYPE_VIDEO:I = 0x2

.field private static final PERSONAL_HOME_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.switcher"

.field public static final PERSONA_DEVICE_POLICY_SERVICE:Ljava/lang/String; = "persona_device_policy"

.field public static final PERSONA_FILE_SYSTEM_SERVICE:Ljava/lang/String; = "persona_file_system"

.field public static final PERSONA_ID:Ljava/lang/String; = "persona_id"

.field public static final PERSONA_LOCK_SETTINGS_SERVICE:Ljava/lang/String; = "persona_lock_settings"

.field public static final PERSONA_POLICY_SERVICE:Ljava/lang/String; = "persona_policy"

.field public static final PERSONA_STATE_MANAGER_SERVICE:Ljava/lang/String; = "persona_state_manager"

.field public static final PERSONA_TIMA_ECRPTFS_INDEX1:I = 0x64

.field public static final PERSONA_TIMA_ECRPTFS_INDEX2:I = 0x66

.field public static final PERSONA_TIMA_PASSWORDHINT_INDEX:I = 0x68

.field public static final PERSONA_TIMA_PASSWORD_INDEX1:I = 0x65

.field public static final PERSONA_TIMA_PASSWORD_INDEX2:I = 0x67

.field public static final PERSONA_VALIDATOR_HANDLER:Ljava/lang/String; = "persona_validator"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.shortcutsms"

.field public static final REMOVE_OP_SUCCESS:I = 0x0

.field private static final SAMSUNG_APPS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field public static final SETUP_WIZARD_PKG_NAME:Ljava/lang/String; = "com.sec.knox.setup"

.field static final SHORTCUT_FILTER:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String; = null

.field public static final TIMA_COMPROMISED_TYPE1:I = 0x1000c

.field public static final TIMA_COMPROMISED_TYPE2:I = 0x1000d

.field public static final TIMA_COMPROMISED_TYPE3:I = 0x1000e

.field public static final TIMA_VALIDATION_SUCCESS:I

.field private static mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

.field private static mKnoxInfo:Landroid/os/Bundle;

.field public static m_bIsKnoxInfoInitialized:Z

.field private static personaManager:Landroid/os/PersonaManager;

.field private static personaPolicyMgr:Landroid/os/PersonaPolicyManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/os/IPersonaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 219
    sput-object v1, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    .line 250
    const-string v0, "PersonaManager"

    sput-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    .line 254
    sput-object v1, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    .line 255
    sput-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    .line 256
    sput-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    .line 267
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.sec.knox.shortcutsms"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.knox.switcher"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.hearingadjust"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.google.android.apps.maps"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.sec.knox.containeragent2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.android.app.samsungapps"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/PersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    .line 280
    sput-boolean v3, Landroid/os/PersonaManager;->m_bIsKnoxInfoInitialized:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IPersonaManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/os/IPersonaManager;

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    .line 285
    iput-object p1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    .line 286
    return-void
.end method

.method private static containerExists(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "personaId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1879
    const-string v4, "0"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1890
    :cond_0
    :goto_0
    return v3

    .line 1882
    :cond_1
    const-string v0, ":"

    .line 1883
    .local v0, "SEPARATOR":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1884
    .local v1, "arr":[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 1885
    aget-object v4, v1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1886
    const/4 v3, 0x1

    goto :goto_0

    .line 1884
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1131
    if-nez p1, :cond_1

    .line 1132
    const/4 v3, 0x0

    .line 1163
    :cond_0
    :goto_0
    return-object v3

    .line 1135
    :cond_1
    const/4 v3, 0x0

    .line 1139
    .local v3, "ret":Landroid/os/Bundle;
    :try_start_0
    const-string v5, "RequestProxy"

    const-string v6, "action"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1140
    const-string/jumbo v5, "rcp"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RCPManager;

    .line 1142
    .local v2, "rcpm":Landroid/os/RCPManager;
    if-eqz v2, :cond_0

    .line 1143
    const/4 v5, 0x0

    invoke-virtual {v2, p0, v5, p1}, Landroid/os/RCPManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0

    .line 1146
    .end local v2    # "rcpm":Landroid/os/RCPManager;
    :cond_2
    const-string v5, "MoveTo"

    const-string v6, "action"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1147
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1149
    .end local v3    # "ret":Landroid/os/Bundle;
    .local v4, "ret":Landroid/os/Bundle;
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v5, "action.com.sec.knox.container.exchangeData"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1150
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1151
    const-string v5, "launchFromPersonaManager"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1152
    const-string v5, "com.sec.knox.bridge"

    const-string v6, "com.sec.knox.bridge.operations.ExchangeDataReceiver"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1156
    const-string/jumbo v5, "result"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .end local v4    # "ret":Landroid/os/Bundle;
    .restart local v3    # "ret":Landroid/os/Bundle;
    goto :goto_0

    .line 1159
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1160
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1159
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "ret":Landroid/os/Bundle;
    .restart local v4    # "ret":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "ret":Landroid/os/Bundle;
    .restart local v3    # "ret":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public static getKnoxInfo()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 877
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_2

    .line 878
    const-class v3, Landroid/os/PersonaManager;

    monitor-enter v3

    .line 879
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 880
    const/4 v1, 0x0

    .line 881
    .local v1, "version":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sput-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    :try_start_1
    const-string/jumbo v2, "ro.config.knox"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 886
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 887
    const-string/jumbo v2, "v30"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 888
    const-string v1, "2.0"

    .line 893
    :cond_0
    :goto_0
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :goto_1
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isSupportCallerInfo"

    const-string v5, "false"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 904
    :cond_1
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 906
    :cond_2
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v2

    .line 889
    :cond_3
    :try_start_3
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 890
    const-string v1, "1.0"

    goto :goto_0

    .line 895
    :cond_4
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    const-string v5, "1.0"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 898
    :catch_0
    move-exception v0

    .line 899
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 901
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v4, "version"

    const-string v5, "1.0"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 904
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1050
    sget-object v1, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 1051
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 1055
    :cond_0
    :try_start_0
    const-string v1, "2.0"

    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1056
    const-string v1, "isSupportMoveTo"

    invoke-static {p0, v1}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :cond_1
    :goto_0
    sget-object v1, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v1

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "req"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x64

    .line 989
    const/4 v1, 0x0

    .line 991
    .local v1, "userid":I
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 992
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    .line 995
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 1000
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1002
    sget-boolean v2, Landroid/os/PersonaManager;->m_bIsKnoxInfoInitialized:Z

    if-nez v2, :cond_2

    .line 1003
    if-lt v1, v5, :cond_1

    .line 1004
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKnoxMode"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isBlockExternalSD"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isBlockBluetoothMenu"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isSamsungAccountBlocked"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :cond_1
    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1011
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKioskModeEnabled"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Landroid/os/PersonaManager;->m_bIsKnoxInfoInitialized:Z

    .line 1020
    :cond_2
    const-string/jumbo v2, "true"

    sget-object v3, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v4, "isKioskModeEnabled"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1021
    const-string v2, "isSupportMoveTo"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1022
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    invoke-static {p0, v2, v1}, Landroid/os/PersonaManager;->setMoveToKnoxInfo(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 1026
    :cond_3
    const-string v2, "isKnoxModeActive"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1027
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-lt v2, v5, :cond_7

    .line 1028
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKnoxModeActive"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_4
    :goto_1
    const-string v2, "isKioskModeEnabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1035
    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1036
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKioskModeEnabled"

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1045
    :cond_5
    :goto_2
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    return-object v2

    .line 1013
    :cond_6
    :try_start_1
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKioskModeEnabled"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 1030
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_2
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKnoxModeActive"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1038
    :cond_8
    sget-object v2, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string v3, "isKioskModeEnabled"

    const-string v4, "false"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public static isCACEnabled(I)Z
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 1702
    sget-object v1, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    if-nez v1, :cond_0

    .line 1703
    invoke-static {}, Landroid/bluetooth/BluetoothSecureManager;->getInstant()Landroid/bluetooth/BluetoothSecureManager;

    move-result-object v1

    sput-object v1, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    .line 1706
    :cond_0
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->mBTSecureManager:Landroid/bluetooth/BluetoothSecureManager;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSecureManager;->isSecureModeEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1710
    :goto_0
    return v1

    .line 1707
    :catch_0
    move-exception v0

    .line 1708
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to isCACEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1710
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKioskModeEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 968
    const-string/jumbo v4, "sys.knox.exists"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 970
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 971
    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 985
    :cond_0
    :goto_0
    return v3

    .line 972
    :cond_1
    if-eqz p0, :cond_0

    .line 973
    const-string/jumbo v4, "persona"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 974
    .local v0, "pm":Landroid/os/PersonaManager;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v4, :cond_0

    .line 978
    :try_start_0
    iget-object v4, v0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v4}, Landroid/os/IPersonaManager;->isKioskContainerExistOnDevice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 979
    :catch_0
    move-exception v1

    .line 980
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "failed to isKioskContainerExistOnDevice"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isPossibleAddToPersonal(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1167
    if-eqz p0, :cond_0

    const-string v5, ""

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "null"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return v4

    .line 1170
    :cond_1
    sget-object v0, Landroid/os/PersonaManager;->SHORTCUT_FILTER:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1171
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1170
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1175
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isSupported(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 910
    if-eqz p2, :cond_0

    const-string/jumbo v1, "sec_container_1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 963
    :goto_0
    return v1

    .line 914
    :cond_0
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 915
    .local v0, "versionInfo":Landroid/os/Bundle;
    const-string v1, "2.0"

    const-string/jumbo v3, "version"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 916
    sget-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    if-nez v1, :cond_2

    .line 917
    const-class v3, Landroid/os/PersonaManager;

    monitor-enter v3

    .line 918
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    if-nez v1, :cond_1

    .line 919
    const-string/jumbo v1, "persona"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    sput-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    .line 921
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    :cond_2
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    if-nez v1, :cond_4

    .line 925
    const-class v3, Landroid/os/PersonaPolicyManager;

    monitor-enter v3

    .line 926
    :try_start_1
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    if-nez v1, :cond_3

    .line 927
    sget-object v1, Landroid/os/PersonaManager;->personaManager:Landroid/os/PersonaManager;

    const-string/jumbo v4, "persona_policy"

    invoke-virtual {v1, v4}, Landroid/os/PersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaPolicyManager;

    sput-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    .line 929
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 932
    :cond_4
    const/16 v1, 0x64

    if-lt p3, v1, :cond_11

    .line 933
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    .line 934
    goto :goto_0

    .line 921
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 929
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 935
    :cond_5
    const-string v1, "cameraMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 936
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getCameraModeChangeEnabled(I)Z

    move-result v1

    goto :goto_0

    .line 937
    :cond_6
    const-string v1, "dlnaDataTransfer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 938
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowDLNADataTransfer(I)Z

    move-result v1

    goto :goto_0

    .line 939
    :cond_7
    const-string/jumbo v1, "print"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 940
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowPrint(I)Z

    move-result v1

    goto/16 :goto_0

    .line 941
    :cond_8
    const-string v1, "allShare"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 942
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowAllShare(I)Z

    move-result v1

    goto/16 :goto_0

    .line 943
    :cond_9
    const-string v1, "gearSupport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 944
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getGearSupportEnabled(I)Z

    move-result v1

    goto/16 :goto_0

    .line 945
    :cond_a
    const-string/jumbo v1, "penWindow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 946
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getPenWindowEnabled(I)Z

    move-result v1

    goto/16 :goto_0

    .line 947
    :cond_b
    const-string v1, "airCommand"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 948
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAirCommandEnabled(I)Z

    move-result v1

    goto/16 :goto_0

    .line 949
    :cond_c
    const-string v1, "importFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 950
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowImportFiles(I)Z

    move-result v1

    goto/16 :goto_0

    .line 951
    :cond_d
    const-string v1, "exportFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 952
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowExportFiles(I)Z

    move-result v1

    goto/16 :goto_0

    .line 953
    :cond_e
    const-string v1, "exportAndDeleteFiles"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 954
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowExportAndDeleteFiles(I)Z

    move-result v1

    goto/16 :goto_0

    .line 955
    :cond_f
    const-string/jumbo v1, "print"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 956
    sget-object v1, Landroid/os/PersonaManager;->personaPolicyMgr:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v1, p3}, Landroid/os/PersonaPolicyManager;->getAllowPrint(I)Z

    move-result v1

    goto/16 :goto_0

    .line 957
    :cond_10
    const-string v1, "contacts-import-export"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v2

    .line 958
    goto/16 :goto_0

    .line 963
    :cond_11
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private static setMoveToKnoxInfo(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "userid"    # I

    .prologue
    .line 1067
    const-string v9, "isSupportMoveTo"

    const-string v10, "false"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    if-nez p2, :cond_5

    .line 1070
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1071
    .local v1, "bd1":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 1072
    .local v8, "resp":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 1073
    .local v4, "personaIds":[I
    const/4 v6, 0x0

    .line 1074
    .local v6, "personaTypes":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 1076
    .local v5, "personaNames":[Ljava/lang/String;
    const-string v9, "action"

    const-string v10, "RequestProxy"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string v9, "cmd"

    const-string/jumbo v10, "queryPersonaInfos"

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    invoke-static {p0, v1}, Landroid/os/PersonaManager;->exchangeData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v8

    .line 1081
    if-eqz v8, :cond_0

    .line 1082
    const-string/jumbo v9, "personaIds"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 1083
    const-string/jumbo v9, "personaTypes"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1084
    const-string/jumbo v9, "personaNames"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1086
    sget-object v9, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaIds"

    invoke-virtual {v9, v10, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1087
    sget-object v9, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaTypes"

    invoke-virtual {v9, v10, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1088
    sget-object v9, Landroid/os/PersonaManager;->mKnoxInfo:Landroid/os/Bundle;

    const-string/jumbo v10, "personaNames"

    invoke-virtual {v9, v10, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1092
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1094
    .local v0, "KnoxIdNamePair":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v4, :cond_3

    array-length v9, v4

    if-lez v9, :cond_3

    .line 1097
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v4

    if-ge v3, v9, :cond_1

    .line 1098
    aget v9, v4, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aget-object v10, v5, v3

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1101
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1102
    .local v7, "pkgName":Ljava/lang/String;
    const-string v9, "com.sec.android.app.voicenote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "com.samsung.android.snote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1104
    const-string v9, "isSupportMoveTo"

    const-string/jumbo v10, "true"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    :cond_2
    invoke-static {}, Lcom/samsung/android/secretmode/SecretModeManager;->isPersonalPageMode()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1107
    const-string v9, "isSupportMoveTo"

    const-string v10, "false"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    .end local v3    # "i":I
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_3
    const-string v9, "KnoxIdNamePair"

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    .end local v0    # "KnoxIdNamePair":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v1    # "bd1":Landroid/os/Bundle;
    .end local v4    # "personaIds":[I
    .end local v5    # "personaNames":[Ljava/lang/String;
    .end local v6    # "personaTypes":[Ljava/lang/String;
    .end local v8    # "resp":Landroid/os/Bundle;
    :cond_4
    :goto_1
    return-void

    .line 1112
    .restart local v1    # "bd1":Landroid/os/Bundle;
    .restart local v4    # "personaIds":[I
    .restart local v5    # "personaNames":[Ljava/lang/String;
    .restart local v6    # "personaTypes":[Ljava/lang/String;
    .restart local v8    # "resp":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 1113
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 1116
    .end local v1    # "bd1":Landroid/os/Bundle;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "personaIds":[I
    .end local v5    # "personaNames":[Ljava/lang/String;
    .end local v6    # "personaTypes":[Ljava/lang/String;
    .end local v8    # "resp":Landroid/os/Bundle;
    :cond_5
    const/16 v9, 0x64

    if-lt p2, v9, :cond_4

    .line 1118
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1119
    .restart local v7    # "pkgName":Ljava/lang/String;
    const-string v9, "com.sec.android.app.voicenote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "com.samsung.android.snote"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1121
    const-string v9, "isSupportMoveTo"

    const-string/jumbo v10, "true"

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1123
    .end local v7    # "pkgName":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1124
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public addAppForPersona(Landroid/os/PersonaManager$AppType;Ljava/lang/String;I)V
    .locals 3
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 1460
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1462
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/os/IPersonaManager;->addAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    :cond_0
    :goto_0
    return-void

    .line 1463
    :catch_0
    move-exception v0

    .line 1464
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to addAppForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 821
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 823
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 828
    :goto_0
    return-object v1

    .line 824
    :catch_0
    move-exception v0

    .line 825
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get addLockOnImage , inside PersonaManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 828
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addPackageToInstallWhiteList(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 1510
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1512
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->addPackageToInstallWhiteList(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1517
    :cond_0
    :goto_0
    return-void

    .line 1513
    :catch_0
    move-exception v0

    .line 1514
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to addPackageToInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adminLockPersona(ILjava/lang/String;)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1406
    const/4 v1, 0x0

    .line 1407
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1409
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->adminLockPersona(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1414
    :cond_0
    :goto_0
    return v1

    .line 1410
    :catch_0
    move-exception v0

    .line 1411
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to execute adminLockPersona"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public adminUnLockPersona(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1418
    const/4 v1, 0x0

    .line 1419
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1421
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->adminUnLockPersona(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1426
    :cond_0
    :goto_0
    return v1

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to execute adminUnLockPersona"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public canAccess(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 1935
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1937
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canAccess for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " personaId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->canAccess(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1943
    :goto_0
    return v1

    .line 1939
    :catch_0
    move-exception v0

    .line 1940
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get access permission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1943
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAppListForPersona(Landroid/os/PersonaManager$AppType;I)V
    .locals 3
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "personaId"    # I

    .prologue
    .line 1644
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1646
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/os/IPersonaManager;->clearAppListForPersona(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1651
    :cond_0
    :goto_0
    return-void

    .line 1647
    :catch_0
    move-exception v0

    .line 1648
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to clearAppListForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public convertContainerType(II)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "containerType"    # I

    .prologue
    .line 1960
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1962
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertContainerType for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->convertContainerType(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1968
    :cond_0
    :goto_0
    return-void

    .line 1964
    :catch_0
    move-exception v0

    .line 1965
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to convertContainerType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public copyFileBNR(ILjava/lang/String;ILjava/lang/String;)I
    .locals 5
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;

    .prologue
    .line 1213
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersonaManager.copyFileBNR() srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; srcFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    iget-object v2, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RCPManager;

    .line 1215
    .local v0, "rcpm":Landroid/os/RCPManager;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/RCPManager;->copyFile(ILjava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1219
    .end local v0    # "rcpm":Landroid/os/RCPManager;
    :goto_0
    return v2

    .line 1216
    :catch_0
    move-exception v1

    .line 1217
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "PersonaManager.copyFileBNR(), inside persona manager with exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1219
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "flags"    # J
    .param p5, "personaType"    # Ljava/lang/String;
    .param p6, "admin"    # Ljava/lang/String;
    .param p7, "handlerApkUri"    # Landroid/net/Uri;
    .param p8, "setupWizardApkUri"    # Landroid/net/Uri;
    .param p9, "mdmSecretKey"    # Ljava/lang/String;

    .prologue
    .line 323
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v0, :cond_0

    .line 325
    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/os/IPersonaManager;->createPersona(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 330
    :goto_0
    return v0

    .line 326
    :catch_0
    move-exception v10

    .line 327
    .local v10, "re":Landroid/os/RemoteException;
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not create a user"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .end local v10    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public deleteFile(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 1225
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PersonaManager.deleteFile() ContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; FilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    iget-object v2, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RCPManager;

    .line 1227
    .local v0, "rcpm":Landroid/os/RCPManager;
    invoke-virtual {v0, p1, p2}, Landroid/os/RCPManager;->deleteFile(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1231
    .end local v0    # "rcpm":Landroid/os/RCPManager;
    :goto_0
    return v2

    .line 1228
    :catch_0
    move-exception v1

    .line 1229
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "PersonaManager.deleteFile(), inside persona manager with exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1231
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public disablePersonaKeyGuard(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1349
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1351
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disablePersonaKeyGuard  persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->disablePersonaKeyGuard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1357
    :goto_0
    return v1

    .line 1353
    :catch_0
    move-exception v0

    .line 1354
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to disablePersonaKeyGuard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1357
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enablePersonaKeyGuard(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1365
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1367
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enablePersonaKeyGuard  persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->enablePersonaKeyGuard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1373
    :goto_0
    return v1

    .line 1369
    :catch_0
    move-exception v0

    .line 1370
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to enablePersonaKeyGuard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1373
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public exists(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 621
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_1

    .line 623
    :try_start_0
    const-string/jumbo v2, "sys.knox.exists"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 626
    invoke-static {v1, p1}, Landroid/os/PersonaManager;->containerExists(Ljava/lang/String;I)Z

    move-result v2

    .line 633
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return v2

    .line 628
    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->exists(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 629
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 630
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not get user info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public forceRollup(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "metadata"    # Landroid/os/Bundle;

    .prologue
    .line 698
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v1, "about to force switch to owner!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    invoke-virtual {p0}, Landroid/os/PersonaManager;->getParentUserForCurrentPersona()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/PersonaManager;->switchPersona(I)Z

    .line 704
    return-void
.end method

.method public getAdminUidForPersona(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 1236
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1238
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, getAdminUidForPersona()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getAdminUidForPersona(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1244
    :goto_0
    return v1

    .line 1240
    :catch_0
    move-exception v0

    .line 1241
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get getAdminUidForPersona id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1244
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getAppListForPersona(Landroid/os/PersonaManager$AppType;I)Ljava/util/List;
    .locals 3
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PersonaManager$AppType;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1493
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1495
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/os/IPersonaManager;->getAppListForPersona(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1500
    :goto_0
    return-object v1

    .line 1496
    :catch_0
    move-exception v0

    .line 1497
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getAppListForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1500
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;
    .locals 8
    .param p1, "contactRefUriAsString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 836
    const/4 v0, 0x0

    .line 837
    .local v0, "mRCPGlobalContactsDir":Landroid/content/IRCPGlobalContactsDir;
    const/4 v3, 0x0

    .line 838
    .local v3, "result":Landroid/content/CustomCursor;
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "PM.getCallerInfo()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v5, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "rcp"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RCPManager;

    .line 841
    .local v1, "rcpm":Landroid/os/RCPManager;
    if-nez v1, :cond_0

    .line 842
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "Received mRCPGlobalContactsDir as null from bridge manager: rcpm == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :goto_0
    return-object v4

    .line 846
    :cond_0
    invoke-virtual {v1}, Landroid/os/RCPManager;->getRCPProxy()Landroid/content/IRCPGlobalContactsDir;

    move-result-object v0

    .line 847
    if-nez v0, :cond_1

    .line 848
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "Received result as null from bridge manager for getCallerInfo: mRCPGlobalContactsDir == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 853
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Landroid/content/IRCPGlobalContactsDir;->getCallerInfo(Ljava/lang/String;)Landroid/content/CustomCursor;

    move-result-object v3

    .line 854
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PM.getCallerInfo(): Received result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 855
    goto :goto_0

    .line 856
    :catch_0
    move-exception v2

    .line 857
    .local v2, "re":Landroid/os/RemoteException;
    sget-object v5, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v6, "Couldn\'t complete call to getCallerInfo , inside PersonaManager with exception:"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCurrentPersonaForUser(I)I
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 510
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 512
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getCurrentPersonaForUser(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 517
    .end local p1    # "userId":I
    :cond_0
    :goto_0
    return p1

    .line 513
    .restart local p1    # "userId":I
    :catch_0
    move-exception v0

    .line 514
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get current persona for user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDisabledHomeLaunchers(IZ)Ljava/util/List;
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "clearList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1629
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1631
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->getDisabledHomeLaunchers(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1636
    :goto_0
    return-object v1

    .line 1632
    :catch_0
    move-exception v0

    .line 1633
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getDisabledHomeLaunchers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1636
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFingerCount()I
    .locals 3

    .prologue
    .line 2041
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2043
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getFingerCount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getFingerCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2049
    :goto_0
    return v1

    .line 2045
    :catch_0
    move-exception v0

    .line 2046
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getFingerCount from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2049
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIsFingerAsSupplement()Z
    .locals 3

    .prologue
    .line 1977
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1979
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsFingerAsSupplement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getIsFingerAsSupplement(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1985
    :goto_0
    return v1

    .line 1981
    :catch_0
    move-exception v0

    .line 1982
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getIsFingerAsSupplement from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1985
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIsFingerIdentifyFailed()Z
    .locals 3

    .prologue
    .line 2009
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2011
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "getIsFingerIdentifyFailed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getIsFingerIdentifyFailed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2017
    :goto_0
    return v1

    .line 2013
    :catch_0
    move-exception v0

    .line 2014
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read getIsFingerIdentifyFailed from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2017
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKeyguardShowState(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 1867
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1869
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getKeyguardShowState(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1874
    :goto_0
    return v1

    .line 1870
    :catch_0
    move-exception v0

    .line 1871
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getKeyguardShowState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1874
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastShortcutState(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1898
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1900
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastShortcutState for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getLastShortcutState(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1906
    :goto_0
    return v1

    .line 1902
    :catch_0
    move-exception v0

    .line 1903
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getLastShortcutState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1906
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMoveToKnoxStatus()Z
    .locals 3

    .prologue
    .line 477
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 479
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getMoveToKnoxStatus()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 484
    :goto_0
    return v1

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get move to knox status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNormalizedState(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 708
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 710
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getNormalizedState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 715
    :goto_0
    return v1

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPackagesFromInstallWhiteList(I)Ljava/util/List;
    .locals 3
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1676
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1678
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPackagesFromInstallWhiteList(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1683
    :goto_0
    return-object v1

    .line 1679
    :catch_0
    move-exception v0

    .line 1680
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getPackagesFromInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1683
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParentId(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 444
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 446
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getParentId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 451
    :goto_0
    return v1

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get parent id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getParentUserForCurrentPersona()I
    .locals 3

    .prologue
    .line 405
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 407
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getParentUserForCurrentPersona()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 412
    :goto_0
    return v1

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get parent of persona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPasswordHint()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1687
    const/4 v1, 0x0

    .line 1688
    .local v1, "result":Ljava/lang/String;
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1690
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "getPasswordHint"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2}, Landroid/os/IPersonaManager;->getPasswordHint()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1696
    :cond_0
    :goto_0
    return-object v1

    .line 1692
    :catch_0
    move-exception v0

    .line 1693
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to getPasswordHint"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPersonaBackgroundTime(I)J
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 1180
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1182
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaBackgroundTime(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1187
    :goto_0
    return-wide v1

    .line 1183
    :catch_0
    move-exception v0

    .line 1184
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get getPersonaBackgroundTime , inside PersonaManager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1187
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getPersonaIcon(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "personaHandle"    # I

    .prologue
    .line 592
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 594
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaIcon(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 599
    :goto_0
    return-object v1

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get the persona icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonaIdentification(I)Ljava/lang/String;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 1199
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1201
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, getPersonaIdentification()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaIdentification(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1207
    :goto_0
    return-object v1

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get getPersonaIdentification id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1207
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonaIds()[I
    .locals 3

    .prologue
    .line 1431
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1433
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getPersonaIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1438
    :goto_0
    return-object v1

    .line 1434
    :catch_0
    move-exception v0

    .line 1435
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to getPersonaIds"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1438
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    .locals 3
    .param p1, "userHandle"    # I

    .prologue
    .line 433
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 435
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 440
    :goto_0
    return-object v1

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonaSamsungAccount(I)Ljava/lang/String;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 554
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaSamsungAccount(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 557
    :goto_0
    return-object v1

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not retrieve persona SamsungAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    const-string v1, ""

    goto :goto_0
.end method

.method public getPersonaService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 801
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPersonaService() name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v0, :cond_3

    .line 803
    const-string/jumbo v0, "persona_state_manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    new-instance v0, Landroid/os/PersonaStateManager;

    iget-object v1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona_state_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPersonaStateHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaStateHandler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaStateManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaStateHandler;)V

    .line 816
    :goto_0
    return-object v0

    .line 806
    :cond_0
    const-string/jumbo v0, "persona_file_system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 807
    new-instance v0, Landroid/os/PersonaFileManager;

    iget-object v1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona_file_system"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPersonaFileHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaFileHandler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaFileManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaFileHandler;)V

    goto :goto_0

    .line 809
    :cond_1
    const-string/jumbo v0, "persona_policy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 810
    new-instance v0, Landroid/os/PersonaPolicyManager;

    iget-object v1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona_policy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPersonaPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaPolicyManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V

    goto :goto_0

    .line 812
    :cond_2
    const-string/jumbo v0, "persona_lock_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 813
    new-instance v0, Landroid/os/PersonaLockSettingsManager;

    iget-object v1, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona_lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/os/PersonaLockSettingsManager;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ILockSettings;)V

    goto :goto_0

    .line 816
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPersonaState(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 647
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 649
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 654
    :goto_0
    return v1

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 654
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPersonaType(I)Ljava/lang/String;
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 532
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 534
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonaType(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 539
    :goto_0
    return-object v1

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not retrieve persona Type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getPersonas()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 382
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->getPersonas(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 387
    :goto_0
    return-object v1

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonas(Z)Ljava/util/List;
    .locals 3
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 421
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getPersonas(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 426
    :goto_0
    return-object v1

    .line 422
    :catch_0
    move-exception v0

    .line 423
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonasForCreator(IZ)Ljava/util/List;
    .locals 3
    .param p1, "creatorUid"    # I
    .param p2, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 611
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->getPersonasForCreator(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 616
    :goto_0
    return-object v1

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get the personas for a creator uid "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 616
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPersonasForUser(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 396
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/os/IPersonaManager;->getPersonasForUser(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 401
    :goto_0
    return-object v1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get persona list for user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPhoneCaller()I
    .locals 3

    .prologue
    .line 465
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 467
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->getPhoneCaller()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 472
    :goto_0
    return v1

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get parent id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRCPInterface()Landroid/content/IRCPInterface;
    .locals 5

    .prologue
    .line 864
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "in getRCPInterface"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object v2, p0, Landroid/os/PersonaManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RCPManager;

    .line 866
    .local v1, "rcpm":Landroid/os/RCPManager;
    const/4 v0, 0x0

    .line 867
    .local v0, "rcpInterface":Landroid/content/IRCPInterface;
    if-eqz v1, :cond_0

    .line 868
    invoke-virtual {v1}, Landroid/os/RCPManager;->getRCPInterface()Landroid/content/IRCPInterface;

    move-result-object v0

    .line 869
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in getRCPInterface rcpInterface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    .line 873
    :goto_0
    return-object v2

    .line 872
    :cond_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Received getRCPInterface as null from bridge manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getScreenOffTime(I)J
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    .line 1580
    const-wide/16 v1, 0x1388

    .line 1581
    .local v1, "screenOffTime":J
    iget-object v3, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v3, :cond_0

    .line 1583
    :try_start_0
    iget-object v3, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v3, p1}, Landroid/os/IPersonaManager;->getScreenOffTime(I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1588
    :cond_0
    :goto_0
    return-wide v1

    .line 1584
    :catch_0
    move-exception v0

    .line 1585
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v3, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to screenOffTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getShortcutMode(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1394
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1396
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in PersonaManager, getShortcutMode() for persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v3, p1}, Landroid/os/IPersonaManager;->getShortcutMode(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getShortcutMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1402
    :goto_0
    return v1

    .line 1398
    :catch_0
    move-exception v0

    .line 1399
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get getShortcutMode "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1402
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserManagedPersonas(Z)Ljava/util/List;
    .locals 4
    .param p1, "excludeDying"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PersonaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1273
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1275
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserManagedPersonas() excludeDying is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->getUserManagedPersonas(Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1281
    :goto_0
    return-object v1

    .line 1277
    :catch_0
    move-exception v0

    .line 1278
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed getUserManagedPersonas()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1281
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleHomeShow()Z
    .locals 3

    .prologue
    .line 1336
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, handleHomeShow()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->handleHomeShow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1341
    :goto_0
    return v1

    .line 1338
    :catch_0
    move-exception v0

    .line 1339
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get handleHomeShow "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1341
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public installApplications(ILjava/util/List;)Z
    .locals 3
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 730
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 732
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, installDefaultApplications(), calling service API"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->installApplications(ILjava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 738
    :goto_0
    return v1

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not install default apps into persona with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 738
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFingerSupplementActivated()Z
    .locals 4

    .prologue
    .line 2073
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2075
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFingerSupplementActivated, pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/os/IPersonaManager;->isFingerSupplementActivated(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2081
    :goto_0
    return v1

    .line 2077
    :catch_0
    move-exception v0

    .line 2078
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read finger activated value from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2081
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKioskContainerExistOnDevice()Z
    .locals 6

    .prologue
    .line 1737
    const/4 v2, 0x0

    .line 1738
    .local v2, "result":Z
    iget-object v4, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v4, :cond_0

    .line 1740
    :try_start_0
    const-string/jumbo v4, "sys.knox.exists"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1741
    .local v3, "value":Ljava/lang/String;
    const-string v0, "5"

    .line 1743
    .local v0, "FLAG_KIOSK":Ljava/lang/String;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "isKioskContainerExistOnDevice"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 1745
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 1752
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 1747
    .restart local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v4}, Landroid/os/IPersonaManager;->isKioskContainerExistOnDevice()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1748
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1749
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "failed to isKioskContainerExistOnDevice"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isKioskModeEnabled(I)Z
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    .line 1718
    const/4 v2, 0x0

    .line 1719
    .local v2, "result":Z
    iget-object v4, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v4, :cond_0

    .line 1721
    :try_start_0
    const-string/jumbo v4, "sys.knox.exists"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1722
    .local v3, "value":Ljava/lang/String;
    const-string v0, "5"

    .line 1723
    .local v0, "FLAG_KIOSK":Ljava/lang/String;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "isKioskModeEnabled  persona "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1725
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3, p1}, Landroid/os/PersonaManager;->containerExists(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 1732
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 1725
    .restart local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1727
    :cond_2
    iget-object v4, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v4, p1}, Landroid/os/IPersonaManager;->isKioskModeEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1728
    .end local v0    # "FLAG_KIOSK":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1729
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v4, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v5, "failed to isKioskModeEnabled"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 1660
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1662
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->isPackageInInstallWhiteList(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1667
    :goto_0
    return v1

    .line 1663
    :catch_0
    move-exception v0

    .line 1664
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to isPackageInInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1667
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPersonaActivated()Z
    .locals 8

    .prologue
    .line 658
    const/4 v2, 0x0

    .line 660
    .local v2, "isKnoxActive":Z
    invoke-virtual {p0}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v5

    .line 662
    .local v5, "personaIds":[I
    if-eqz v5, :cond_1

    .line 663
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v4, v0, v1

    .line 664
    .local v4, "personaId":I
    invoke-virtual {p0, v4}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v4}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    invoke-virtual {p0, v4}, Landroid/os/PersonaManager;->getPersonaState(I)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    .line 667
    :cond_0
    const/4 v2, 0x1

    .line 673
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "personaId":I
    :cond_1
    return v2

    .line 663
    .restart local v0    # "arr$":[I
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "personaId":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isResetPersonaOnRebootEnabled(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1832
    const/4 v1, 0x0

    .line 1833
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1835
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "isResetPersonaOnRebootEnabled  persona "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->isResetPersonaOnRebootEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1841
    :cond_0
    :goto_0
    return v1

    .line 1837
    :catch_0
    move-exception v0

    .line 1838
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to isResetPersonaOnRebootEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isSessionExpired(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1318
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1320
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSessionExpired() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->isSessionExpired(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1326
    :goto_0
    return v1

    .line 1322
    :catch_0
    move-exception v0

    .line 1323
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to execute lockPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1326
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public lockPersona(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1307
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1309
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockPersona() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->lockPersona(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1315
    :cond_0
    :goto_0
    return-void

    .line 1311
    :catch_0
    move-exception v0

    .line 1312
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to execute lockPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public markForRemoval(ILandroid/content/ComponentName;)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "removalActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 1249
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1251
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "markForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->markForRemoval(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1253
    :catch_0
    move-exception v0

    .line 1254
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "markForRemoval()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyKeyguardShow(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "isShown"    # Z

    .prologue
    .line 1851
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1853
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyKeyguardShow for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is shown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->notifyKeyguardShow(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1859
    :cond_0
    :goto_0
    return-void

    .line 1855
    :catch_0
    move-exception v0

    .line 1856
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to notifyKeyguardShow"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSentinelActivityResumed()Z
    .locals 3

    .prologue
    .line 1775
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1777
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1}, Landroid/os/IPersonaManager;->onSentinelActivityResumed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1782
    :goto_0
    return v1

    .line 1778
    :catch_0
    move-exception v0

    .line 1779
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not handle sentinel activity resuming"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1782
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onWakeLockChange(ZIIILjava/lang/String;)V
    .locals 7
    .param p1, "isAcquired"    # Z
    .param p2, "flags"    # I
    .param p3, "ownerUid"    # I
    .param p4, "ownerPid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1614
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v0, :cond_0

    .line 1616
    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/IPersonaManager;->onWakeLockChange(ZIIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1621
    :cond_0
    :goto_0
    return-void

    .line 1617
    :catch_0
    move-exception v6

    .line 1618
    .local v6, "re":Landroid/os/RemoteException;
    sget-object v0, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to onWakeLockChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refreshTimer(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1593
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1595
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->refreshTimer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1600
    :cond_0
    :goto_0
    return-void

    .line 1596
    :catch_0
    move-exception v0

    .line 1597
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to refreshTimer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerHandler(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/pm/IPersonaObserver;)V
    .locals 3
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "mHandler"    # Landroid/os/IBinder;
    .param p3, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 757
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 759
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, registerHandler(), calling service API"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->registerHandler(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/pm/IPersonaObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not register Handler, inside persona manager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerObserver(ILandroid/content/pm/IPersonaObserver;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 779
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 781
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, registerObserver()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->registerOutsideObserver(ILandroid/content/pm/IPersonaObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not register observer, inside persona manager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerObserver(Landroid/content/pm/IPersonaObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 768
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 770
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, registerObserver()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->registerObserver(Landroid/content/pm/IPersonaObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not register observer, inside persona manager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    .locals 3
    .param p1, "mSystemPersonaObserver"    # Landroid/content/pm/ISystemPersonaObserver;

    .prologue
    .line 335
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 337
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 342
    :goto_0
    return v1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not registerSystemPersonaObserver a callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerUser(Landroid/content/pm/IPersonaCallback;)Z
    .locals 3
    .param p1, "client"    # Landroid/content/pm/IPersonaCallback;

    .prologue
    .line 296
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 298
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, registerUser(), calling service API"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->registerUser(Landroid/content/pm/IPersonaCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 304
    :goto_0
    return v1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not create a user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAppForPersona(Landroid/os/PersonaManager$AppType;Ljava/lang/String;I)V
    .locals 3
    .param p1, "type"    # Landroid/os/PersonaManager$AppType;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "personaId"    # I

    .prologue
    .line 1477
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1479
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-virtual {p1}, Landroid/os/PersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/os/IPersonaManager;->removeAppForPersona(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1484
    :cond_0
    :goto_0
    return-void

    .line 1480
    :catch_0
    move-exception v0

    .line 1481
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to removeAppForPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "personaId"    # I

    .prologue
    .line 1526
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1528
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->removePackageFromInstallWhiteList(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    :cond_0
    :goto_0
    return-void

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to removePackageFromInstallWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removePersona(I)I
    .locals 3
    .param p1, "personaHandle"    # I

    .prologue
    .line 369
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 371
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->removePersona(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 376
    :goto_0
    return v1

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not remove Persona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/16 v1, -0x4b1

    goto :goto_0
.end method

.method public resetPassword(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 1539
    const/4 v1, 0x0

    .line 1540
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1542
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->resetPassword(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1547
    :cond_0
    :goto_0
    return v1

    .line 1543
    :catch_0
    move-exception v0

    .line 1544
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to resetPassword"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetPersona(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 719
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 721
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->resetPersona(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 726
    :goto_0
    return v1

    .line 722
    :catch_0
    move-exception v0

    .line 723
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not reset the persona "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetPersonaOnReboot(IZ)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1790
    const/4 v1, 0x0

    .line 1791
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1793
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "resetPersonaOnReboot  persona "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->resetPersonaOnReboot(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1799
    :cond_0
    :goto_0
    return v1

    .line 1795
    :catch_0
    move-exception v0

    .line 1796
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to resetPersonaOnReboot"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public rollBackToPersona(I)V
    .locals 4
    .param p1, "parentId"    # I

    .prologue
    .line 1296
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1298
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in PersonaManager, rollBackToPersona() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->rollBackToPersona(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    :cond_0
    :goto_0
    return-void

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to execute rollBackToPersona"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public rollUpToParent(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1285
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1287
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in PersonaManager, rollUpToParent() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->rollUpToParent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    :cond_0
    :goto_0
    return-void

    .line 1289
    :catch_0
    move-exception v0

    .line 1290
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to execute rollUpToParent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public savePasswordInTima(ILjava/lang/String;)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 1556
    const/4 v1, 0x0

    .line 1557
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1559
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->savePasswordInTima(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1564
    :cond_0
    :goto_0
    return v1

    .line 1560
    :catch_0
    move-exception v0

    .line 1561
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to savePasswordInTima"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAccessPermission(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .param p3, "canAccess"    # Z

    .prologue
    .line 1917
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1919
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAccessPermission for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " personaId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " canAccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->setAccessPermission(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1925
    :cond_0
    :goto_0
    return-void

    .line 1921
    :catch_0
    move-exception v0

    .line 1922
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to setAccessPermission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBackPressed(IZ)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "isBackPressed"    # Z

    .prologue
    .line 1762
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1764
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setBackPressed(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1769
    :cond_0
    :goto_0
    return-void

    .line 1765
    :catch_0
    move-exception v0

    .line 1766
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set back pressed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCurrentPersonaForUser(II)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "personaId"    # I

    .prologue
    .line 521
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 523
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setCurrentPersonaForUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set current persona for user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFingerCount(I)V
    .locals 3
    .param p1, "setFingerCount"    # I

    .prologue
    .line 2057
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2059
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setFingerCount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Landroid/os/IPersonaManager;->setFingerCount(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2065
    :cond_0
    :goto_0
    return-void

    .line 2061
    :catch_0
    move-exception v0

    .line 2062
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setFingerCount from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFsMountState(IZ)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "mountState"    # Z

    .prologue
    .line 687
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 689
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setFsMountState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not setFsMountState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsFingerAsSupplement(IZ)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "isFingerprintAsSupplement"    # Z

    .prologue
    .line 1993
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1995
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsFingerAsSupplement"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setIsFingerAsSupplement(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2001
    :cond_0
    :goto_0
    return-void

    .line 1997
    :catch_0
    move-exception v0

    .line 1998
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setIsFingerAsSupplement from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setIsFingerIdentifyFailed(Z)V
    .locals 3
    .param p1, "isFingerIdentifyFailed"    # Z

    .prologue
    .line 2025
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 2027
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIsFingerIdentifyFailed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2, p1}, Landroid/os/IPersonaManager;->setIsFingerIdentifyFailed(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2033
    :cond_0
    :goto_0
    return-void

    .line 2029
    :catch_0
    move-exception v0

    .line 2030
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "can\'t read setIsFingerIdentifyFailed from PMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    .locals 4
    .param p1, "timeMs"    # J
    .param p3, "personaId"    # I

    .prologue
    .line 1569
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1571
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/os/IPersonaManager;->setMaximumScreenOffTimeoutFromDeviceAdmin(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    :cond_0
    :goto_0
    return-void

    .line 1572
    :catch_0
    move-exception v0

    .line 1573
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to setMaximumScreenOffTimeoutFromDeviceAdmin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMoveToKnoxStatus(Z)V
    .locals 3
    .param p1, "isProgressing"    # Z

    .prologue
    .line 489
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 491
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->setMoveToKnoxStatus(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set move to knox status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPersonaIcon(ILandroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "personaHandle"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 576
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 578
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 579
    :catch_0
    move-exception v0

    .line 580
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set the persona icon "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPersonaName(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 499
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 501
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set persona name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPersonaSamsungAccount(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "samsungAccount"    # Ljava/lang/String;

    .prologue
    .line 563
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaSamsungAccount(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set persona SamsungAccount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPersonaState(II)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "state"    # I

    .prologue
    .line 637
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 639
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get user info"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPersonaType(ILjava/lang/String;)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "personaType"    # Ljava/lang/String;

    .prologue
    .line 543
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 545
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setPersonaType(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not set persona Type"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPhoneCaller(I)V
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 455
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 457
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->setPhoneCaller(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not get parent id"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setShortcutGuideDisplay(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "value"    # Z

    .prologue
    .line 1948
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1950
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setShortcutGuideDisplay for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setShortcutGuideDisplay(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1956
    :cond_0
    :goto_0
    return-void

    .line 1952
    :catch_0
    move-exception v0

    .line 1953
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to setShortcutGuideDisplay"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setShortcutMode(IZ)V
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "isShortcutMode"    # Z

    .prologue
    .line 1383
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1385
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in PersonaManager, setShortcutMode() for persona "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " shortcut mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setShortcutMode(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    :cond_0
    :goto_0
    return-void

    .line 1387
    :catch_0
    move-exception v0

    .line 1388
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed to get setShortcutMode "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSuperLock(IZ)V
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "setLock"    # Z

    .prologue
    .line 677
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 679
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->setSuperLock(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not setSuperLock"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public settingSyncAllowed(I)Z
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1442
    const/4 v1, 0x0

    .line 1443
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1445
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1}, Landroid/os/IPersonaManager;->settingSyncAllowed(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1450
    :cond_0
    :goto_0
    return v1

    .line 1446
    :catch_0
    move-exception v0

    .line 1447
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to execute settingSyncAllowed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public switchPersona(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 347
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 349
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->switchPersona(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 354
    :goto_0
    return v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not switch to user"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 358
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 360
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1, p2}, Landroid/os/IPersonaManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 365
    :goto_0
    return v1

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not switch to persona and launch"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unInstallSystemApplications(ILjava/util/List;)I
    .locals 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 742
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, -0x1

    .line 743
    .local v1, "result":I
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 745
    :try_start_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "in PersonaManager, unInstallSystemApplications(), calling service API"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2}, Landroid/os/IPersonaManager;->unInstallSystemApplications(ILjava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 751
    :cond_0
    :goto_0
    return v1

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "Could not uninstall system package into persona with exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unmarkForRemoval(I)V
    .locals 4
    .param p1, "personaId"    # I

    .prologue
    .line 1261
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1263
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unmarkForRemoval() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->unmarkForRemoval(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    :cond_0
    :goto_0
    return-void

    .line 1265
    :catch_0
    move-exception v0

    .line 1266
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "failed unmarkForRemoval()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterObserver(Landroid/content/pm/IPersonaObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 790
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 792
    :try_start_0
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "in PersonaManager, unregisterObserver()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->unregisterObserver(Landroid/content/pm/IPersonaObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v2, "Could not unregister observer, inside persona manager with exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updatePersonaInfo(ILjava/lang/String;II)Z
    .locals 5
    .param p1, "personaId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "adminUid"    # I
    .param p4, "creatorUid"    # I

    .prologue
    .line 1815
    const/4 v1, 0x0

    .line 1816
    .local v1, "result":Z
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v2, :cond_0

    .line 1818
    :try_start_0
    iget-object v2, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/IPersonaManager;->updatePersonaInfo(ILjava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1824
    :cond_0
    :goto_0
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePersonaInfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    return v1

    .line 1820
    :catch_0
    move-exception v0

    .line 1821
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v2, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    const-string v3, "failed to updatePersonaInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public userActivity(I)V
    .locals 4
    .param p1, "event"    # I

    .prologue
    .line 1603
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    if-eqz v1, :cond_0

    .line 1605
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaManager;->mService:Landroid/os/IPersonaManager;

    invoke-interface {v1, p1}, Landroid/os/IPersonaManager;->userActivity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1610
    :cond_0
    :goto_0
    return-void

    .line 1606
    :catch_0
    move-exception v0

    .line 1607
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to userActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
