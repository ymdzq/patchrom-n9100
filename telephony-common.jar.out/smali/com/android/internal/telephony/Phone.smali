.class public interface abstract Lcom/android/internal/telephony/Phone;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Phone$SuppService;,
        Lcom/android/internal/telephony/Phone$DataActivityState;
    }
.end annotation


# static fields
.field public static final APN_TYPE_BIP:Ljava/lang/String; = "bip"

.field public static final BIP_PREF_APN:Ljava/lang/String; = "bip.pref.apn"

.field public static final BIP_PREF_ENABLE:Ljava/lang/String; = "bip.pref.enable"

.field public static final BIP_PREF_PASSWD:Ljava/lang/String; = "bip.pref.passwd"

.field public static final BIP_PREF_PROTOCOL:Ljava/lang/String; = "bip.pref.protocol"

.field public static final BIP_PREF_PROXY:Ljava/lang/String; = "bip.pref.proxy"

.field public static final BIP_PREF_ROAMING_PROTOCOL:Ljava/lang/String; = "bip.pref.roaming_protocol"

.field public static final BIP_PREF_USER:Ljava/lang/String; = "bip.pref.user"

.field public static final BM_AUS2_BAND:I = 0x5

.field public static final BM_AUS_BAND:I = 0x4

.field public static final BM_BOUNDARY:I = 0x6

.field public static final BM_EURO_BAND:I = 0x1

.field public static final BM_JPN_BAND:I = 0x3

.field public static final BM_UNSPECIFIED:I = 0x0

.field public static final BM_US_BAND:I = 0x2

.field public static final CDMA_OTA_PROVISION_STATUS_A_KEY_EXCHANGED:I = 0x2

.field public static final CDMA_OTA_PROVISION_STATUS_COMMITTED:I = 0x8

.field public static final CDMA_OTA_PROVISION_STATUS_IMSI_DOWNLOADED:I = 0x6

.field public static final CDMA_OTA_PROVISION_STATUS_MDN_DOWNLOADED:I = 0x5

.field public static final CDMA_OTA_PROVISION_STATUS_NAM_DOWNLOADED:I = 0x4

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_ABORTED:I = 0xb

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_COMMITTED:I = 0xc

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_STARTED:I = 0x9

.field public static final CDMA_OTA_PROVISION_STATUS_OTAPA_STOPPED:I = 0xa

.field public static final CDMA_OTA_PROVISION_STATUS_PRL_DOWNLOADED:I = 0x7

.field public static final CDMA_OTA_PROVISION_STATUS_SPC_RETRIES_EXCEEDED:I = 0x1

.field public static final CDMA_OTA_PROVISION_STATUS_SPL_UNLOCKED:I = 0x0

.field public static final CDMA_OTA_PROVISION_STATUS_SSD_UPDATED:I = 0x3

.field public static final CDMA_RM_AFFILIATED:I = 0x1

.field public static final CDMA_RM_ANY:I = 0x2

.field public static final CDMA_RM_AUTOMATIC_A:I = 0x3

.field public static final CDMA_RM_AUTOMATIC_B:I = 0x4

.field public static final CDMA_RM_BLANK:I = 0x8

.field public static final CDMA_RM_DOMESTIC:I = 0x5

.field public static final CDMA_RM_DOMESTIC_INTERNATIONAL:I = 0x7

.field public static final CDMA_RM_HOME:I = 0x0

.field public static final CDMA_RM_INTERNATIONAL:I = 0x6

.field public static final CDMA_SUBSCRIPTION_NV:I = 0x1

.field public static final CDMA_SUBSCRIPTION_RUIM_SIM:I = 0x0

.field public static final CDMA_SUBSCRIPTION_UNKNOWN:I = -0x1

.field public static final DEBUG_PHONE:Z = true

.field public static final EMERGENCY_CALL_STATUS_KEY:Ljava/lang/String; = "emergencyCallOngoing"

.field public static final FEATURE_ENABLE_BIP:Ljava/lang/String; = "enableBIP"

.field public static final FEATURE_ENABLE_CBS:Ljava/lang/String; = "enableCBS"

.field public static final FEATURE_ENABLE_CMDM:Ljava/lang/String; = "enableCMDM"

.field public static final FEATURE_ENABLE_CMMAIL:Ljava/lang/String; = "enableCMMAIL"

.field public static final FEATURE_ENABLE_DUN:Ljava/lang/String; = "enableDUN"

.field public static final FEATURE_ENABLE_DUN_ALWAYS:Ljava/lang/String; = "enableDUNAlways"

.field public static final FEATURE_ENABLE_ENT1:Ljava/lang/String; = "enableENT1"

.field public static final FEATURE_ENABLE_ENT2:Ljava/lang/String; = "enableENT2"

.field public static final FEATURE_ENABLE_FOTA:Ljava/lang/String; = "enableFOTA"

.field public static final FEATURE_ENABLE_HIPRI:Ljava/lang/String; = "enableHIPRI"

.field public static final FEATURE_ENABLE_IMS:Ljava/lang/String; = "enableIMS"

.field public static final FEATURE_ENABLE_IMSUT:Ljava/lang/String; = "enableIMSUT"

.field public static final FEATURE_ENABLE_MMS:Ljava/lang/String; = "enableMMS"

.field public static final FEATURE_ENABLE_MMS2:Ljava/lang/String; = "enableMMS2"

.field public static final FEATURE_ENABLE_SUPL:Ljava/lang/String; = "enableSUPL"

.field public static final FEATURE_ENABLE_VZW800:Ljava/lang/String; = "enable800APN"

.field public static final FEATURE_ENABLE_WAP:Ljava/lang/String; = "enableWAP"

.field public static final LGT_CDMA_OTAPA_CALL_START_MODE:I = 0x10

.field public static final LGT_CDMA_OTAPA_CALL_STOP_MODE:I = 0xf

.field public static final LGT_CDMA_OTA_PROVISION_STATUS_A_KEY_EXCHANGED:I = 0x1

.field public static final LGT_CDMA_OTA_PROVISION_STATUS_COMMITTED:I = 0x7

.field public static final LGT_CDMA_OTA_PROVISION_STATUS_FAILURES_EXCESS_SPC:I = 0xd

.field public static final LGT_CDMA_OTA_PROVISION_STATUS_IMSI_DOWNLOADED:I = 0x5

.field public static final LGT_CDMA_OTA_PROVISION_STATUS_LOCK_CODE_PASSWORD_SET:I = 0xe

.field public static final LGT_CDMA_OTA_PROVISION_STATUS_MDN_DOWNLOADED:I = 0x4

.field public static final LGT_CDMA_OTA_PROVISION_STATUS_NAM_DOWNLOADED:I = 0x3

.field public static final LGT_CDMA_OTA_PROVISION_STATUS_OTAPA_STOPPED:I = 0x11

.field public static final LGT_CDMA_OTA_PROVISION_STATUS_OTAPA_VERIFY:I = 0xb

.field public static final LGT_CDMA_OTA_PROVISION_STATUS_PRL_DOWNLOADED:I = 0x6

.field public static final LGT_CDMA_OTA_PROVISION_STATUS_PROGRAMMING:I = 0x8

.field public static final LGT_CDMA_OTA_PROVISION_STATUS_PROGRESS:I = 0xc

.field public static final LGT_CDMA_OTA_PROVISION_STATUS_SPC_RETRIES_EXCEEDED:I = 0x12

.field public static final LGT_CDMA_OTA_PROVISION_STATUS_SPL_UNLOCKED:I = 0x0

.field public static final LGT_CDMA_OTA_PROVISION_STATUS_SSD_UPDATED:I = 0x2

.field public static final LGT_CDMA_OTA_PROVISION_STATUS_SUCCESSFUL:I = 0x9

.field public static final LGT_CDMA_OTA_PROVISION_STATUS_UNSUCCESSFUL:I = 0xa

.field public static final NT_MODE_CDMA:I = 0x4

.field public static final NT_MODE_CDMA_NO_EVDO:I = 0x5

.field public static final NT_MODE_EVDO_NO_CDMA:I = 0x6

.field public static final NT_MODE_GLOBAL:I = 0x7

.field public static final NT_MODE_GSM_ONLY:I = 0x1

.field public static final NT_MODE_GSM_UMTS:I = 0x3

.field public static final NT_MODE_LTE_CDMA_AND_EVDO:I = 0x8

.field public static final NT_MODE_LTE_CMDA_EVDO_GSM_WCDMA:I = 0xa

.field public static final NT_MODE_LTE_GSM_WCDMA:I = 0x9

.field public static final NT_MODE_LTE_ONLY:I = 0xb

.field public static final NT_MODE_LTE_WCDMA:I = 0xc

.field public static final NT_MODE_TD_SCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x15

.field public static final NT_MODE_WCDMA_ONLY:I = 0x2

.field public static final NT_MODE_WCDMA_PREF:I = 0x0

.field public static final PREFERRED_CDMA_SUBSCRIPTION:I

.field public static final PREFERRED_NT_MODE:I

.field public static final REASON_APN_CHANGED:Ljava/lang/String; = "apnChanged"

.field public static final REASON_APN_FAILED:Ljava/lang/String; = "apnFailed"

.field public static final REASON_APN_SWITCHED:Ljava/lang/String; = "apnSwitched"

.field public static final REASON_CDMA_DATA_ATTACHED:Ljava/lang/String; = "cdmaDataAttached"

.field public static final REASON_CDMA_DATA_DETACHED:Ljava/lang/String; = "cdmaDataDetached"

.field public static final REASON_CDMA_OTA_PROVISIONED:Ljava/lang/String; = "cdmaOtaProvisioned"

.field public static final REASON_CONNECTED:Ljava/lang/String; = "connected"

.field public static final REASON_DATA_ATTACHED:Ljava/lang/String; = "dataAttached"

.field public static final REASON_DATA_DEPENDENCY_MET:Ljava/lang/String; = "dependencyMet"

.field public static final REASON_DATA_DEPENDENCY_UNMET:Ljava/lang/String; = "dependencyUnmet"

.field public static final REASON_DATA_DETACHED:Ljava/lang/String; = "dataDetached"

.field public static final REASON_DATA_DISABLED:Ljava/lang/String; = "dataDisabled"

.field public static final REASON_DATA_ENABLED:Ljava/lang/String; = "dataEnabled"

.field public static final REASON_DATA_STATE_CHANGED:Ljava/lang/String; = "dataStateChanged"

.field public static final REASON_LOST_DATA_CONNECTION:Ljava/lang/String; = "lostDataConnection"

.field public static final REASON_LOST_MULTI_APN_SUPPORT:Ljava/lang/String; = "LostMultiApnSupport"

.field public static final REASON_MULTI_APN_SUPPORT:Ljava/lang/String; = "MultiApnSupport"

.field public static final REASON_NW_TYPE_CHANGED:Ljava/lang/String; = "nwTypeChanged"

.field public static final REASON_PDP_RESET:Ljava/lang/String; = "pdpReset"

.field public static final REASON_PLMN_CHANGED:Ljava/lang/String; = "plmnChanged"

.field public static final REASON_PS_RESTRICT_DISABLED:Ljava/lang/String; = "psRestrictDisabled"

.field public static final REASON_PS_RESTRICT_ENABLED:Ljava/lang/String; = "psRestrictEnabled"

.field public static final REASON_RADIO_TURNED_OFF:Ljava/lang/String; = "radioTurnedOff"

.field public static final REASON_RAT_CHANGED:Ljava/lang/String; = "ratChanged"

.field public static final REASON_RESTORE_DEFAULT_APN:Ljava/lang/String; = "restoreDefaultApn"

.field public static final REASON_ROAMING_OFF:Ljava/lang/String; = "roamingOff"

.field public static final REASON_ROAMING_ON:Ljava/lang/String; = "roamingOn"

.field public static final REASON_SIM_LOADED:Ljava/lang/String; = "simLoaded"

.field public static final REASON_SINGLE_PDN_ARBITRATION:Ljava/lang/String; = "SinglePdnArbitration"

.field public static final REASON_SLOT_SWITCHED:Ljava/lang/String; = "slotSwitched"

.field public static final REASON_SLOT_SWITCHED_FOR_MMS:Ljava/lang/String; = "slotSwitchedForMms"

.field public static final REASON_VOICE_CALL_ENDED:Ljava/lang/String; = "2GVoiceCallEnded"

.field public static final REASON_VOICE_CALL_STARTED:Ljava/lang/String; = "2GVoiceCallStarted"

.field public static final SEC_PHONE_DEFAULT:I = 0x0

.field public static final SEC_PHONE_SECONDARY:I = 0x1

.field public static final SEC_SIM_DEFAULT:I = 0x1

.field public static final SEC_SIM_SECONDARY:I = 0x2

.field public static final TTY_MODE_FULL:I = 0x1

.field public static final TTY_MODE_HCO:I = 0x2

.field public static final TTY_MODE_OFF:I = 0x0

.field public static final TTY_MODE_VCO:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 192
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    sput v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 217
    const-string v0, "CTC"

    const-string v1, "OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput v0, Lcom/android/internal/telephony/Phone;->PREFERRED_CDMA_SUBSCRIPTION:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract IsApnExist(Ljava/lang/String;)Z
.end method

.method public abstract IsDomesticRoaming()Z
.end method

.method public abstract IsInternationalRoaming()Z
.end method

.method public abstract SimSlotActivation(Z)V
.end method

.method public abstract SimSlotOnOff(I)V
.end method

.method public abstract acceptCall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract acceptCall(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract acceptConnectionTypeChange(Lcom/android/internal/telephony/Connection;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract activateCellBroadcastSms(ILandroid/os/Message;)V
.end method

.method public abstract addUserToConfCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract akaAuthenticate([B[BLandroid/os/Message;)V
.end method

.method public abstract canConference()Z
.end method

.method public abstract canTransfer()Z
.end method

.method public abstract changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
.end method

.method public abstract changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
.end method

.method public abstract changeConnectionType(Landroid/os/Message;Lcom/android/internal/telephony/Connection;ILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Lcom/android/internal/telephony/Connection;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract clearDisconnected()V
.end method

.method public abstract conference()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dial(Ljava/lang/String;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dial(Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dial(Ljava/lang/String;Lcom/android/internal/telephony/Call$CallType;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dialConferenceCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract disableApnType(Ljava/lang/String;)I
.end method

.method public abstract disableDataConnectivity()Z
.end method

.method public abstract disableDnsCheck(Z)V
.end method

.method public abstract disableLocationUpdates()V
.end method

.method public abstract dispose()V
.end method

.method public abstract enableApnType(Ljava/lang/String;)I
.end method

.method public abstract enableDataConnectivity()Z
.end method

.method public abstract enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
.end method

.method public abstract enableLocationUpdates()V
.end method

.method public abstract exitEmergencyCallbackMode()V
.end method

.method public abstract explicitCallTransfer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V
.end method

.method public abstract gbaAuthenticateNaf([BLandroid/os/Message;)V
.end method

.method public abstract getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getActiveApnTypes()[Ljava/lang/String;
.end method

.method public abstract getAllCellInfo()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableNetworks(Landroid/os/Message;)V
.end method

.method public abstract getBackgroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract getBand(Landroid/os/Message;)V
.end method

.method public abstract getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getCallBarringOption(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract getCallDomain(Lcom/android/internal/telephony/Call;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract getCallForwardingIndicator()Z
.end method

.method public abstract getCallForwardingOption(ILandroid/os/Message;)V
.end method

.method public abstract getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract getCallType(Lcom/android/internal/telephony/Call;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract getCallWaiting(Landroid/os/Message;)V
.end method

.method public abstract getCatService()Lcom/android/internal/telephony/cat/CatService;
.end method

.method public abstract getCdmaEriIconIndex()I
.end method

.method public abstract getCdmaEriIconMode()I
.end method

.method public abstract getCdmaEriText()Ljava/lang/String;
.end method

.method public abstract getCdmaMin()Ljava/lang/String;
.end method

.method public abstract getCdmaPrlVersion()Ljava/lang/String;
.end method

.method public abstract getCellBroadcastSmsConfig(Landroid/os/Message;)V
.end method

.method public abstract getCellLocation()Landroid/telephony/CellLocation;
.end method

.method public abstract getComCfg(ILandroid/os/Message;)V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
.end method

.method public abstract getDataCallList(Landroid/os/Message;)V
.end method

.method public abstract getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
.end method

.method public abstract getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
.end method

.method public abstract getDataDunEnabled()Z
.end method

.method public abstract getDataRoamingEnabled()Z
.end method

.method public abstract getDataServiceState()I
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceSvn()Ljava/lang/String;
.end method

.method public abstract getDrxValue()I
.end method

.method public abstract getDualSimSlotActivationState()Z
.end method

.method public abstract getDunDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
.end method

.method public abstract getDunDataRxBarLevel()I
.end method

.method public abstract getDunDataState()I
.end method

.method public abstract getDunDataTxBarLevel()I
.end method

.method public abstract getDunNetworkType()I
.end method

.method public abstract getEnhancedVoicePrivacy(Landroid/os/Message;)V
.end method

.method public abstract getEsn()Ljava/lang/String;
.end method

.method public abstract getFDNavailable()Z
.end method

.method public abstract getForegroundCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract getGroupIdLevel1()Ljava/lang/String;
.end method

.method public abstract getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getIccCard()Lcom/android/internal/telephony/IccCard;
.end method

.method public abstract getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end method

.method public abstract getIccRecordsLoaded()Z
.end method

.method public abstract getIccSerialNumber()Ljava/lang/String;
.end method

.method public abstract getImei()Ljava/lang/String;
.end method

.method public abstract getImeiInCDMAGSMPhone()Ljava/lang/String;
.end method

.method public abstract getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
.end method

.method public abstract getLine1AlphaTag()Ljava/lang/String;
.end method

.method public abstract getLine1Number()Ljava/lang/String;
.end method

.method public abstract getLine1NumberType(I)Ljava/lang/String;
.end method

.method public abstract getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
.end method

.method public abstract getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
.end method

.method public abstract getLockNetworkInfos(Landroid/os/Message;)V
.end method

.method public abstract getLteOnCdmaMode()I
.end method

.method public abstract getMeid()Ljava/lang/String;
.end method

.method public abstract getMessageWaitingIndicator()Z
.end method

.method public abstract getMsisdn()Ljava/lang/String;
.end method

.method public abstract getMute()Z
.end method

.method public abstract getNeighboringCids(Landroid/os/Message;)V
.end method

.method public abstract getOCSGLAvailable()Z
.end method

.method public abstract getOutgoingCallerIdDisplay(Landroid/os/Message;)V
.end method

.method public abstract getPSISMSCavailable()Z
.end method

.method public abstract getPendingMmiCodes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhoneIndex()I
.end method

.method public abstract getPhoneName()Ljava/lang/String;
.end method

.method public abstract getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
.end method

.method public abstract getPhoneType()I
.end method

.method public abstract getPreferredNetworkList(Landroid/os/Message;)V
.end method

.method public abstract getPreferredNetworkType(Landroid/os/Message;)V
.end method

.method public abstract getProposedConnectionType(Lcom/android/internal/telephony/Connection;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract getProvisioningData()[Ljava/lang/String;
.end method

.method public abstract getPsismsc()[B
.end method

.method public abstract getReducedCycleTime()I
.end method

.method public abstract getRingingCall()Lcom/android/internal/telephony/Call;
.end method

.method public abstract getSMSPavailable()Z
.end method

.method public abstract getSMSavailable()Z
.end method

.method public abstract getServiceState()Landroid/telephony/ServiceState;
.end method

.method public abstract getSignalStrength()Landroid/telephony/SignalStrength;
.end method

.method public abstract getSimSlot()I
.end method

.method public abstract getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
.end method

.method public abstract getSktImsiM()Ljava/lang/String;
.end method

.method public abstract getSktIrm()Ljava/lang/String;
.end method

.method public abstract getSmscAddress(Landroid/os/Message;)V
.end method

.method public abstract getSponImsi()[Ljava/lang/String;
.end method

.method public abstract getState()Lcom/android/internal/telephony/PhoneConstants$State;
.end method

.method public abstract getSubscriberId()Ljava/lang/String;
.end method

.method public abstract getSubscriberIdType(I)Ljava/lang/String;
.end method

.method public abstract getUnitTestMode()Z
.end method

.method public abstract getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
.end method

.method public abstract getVoiceMailAlphaTag()Ljava/lang/String;
.end method

.method public abstract getVoiceMailNumber()Ljava/lang/String;
.end method

.method public abstract getVoiceMessageCount()I
.end method

.method public abstract handleInCallMmiCommands(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract handlePinMmi(Ljava/lang/String;)Z
.end method

.method public abstract hasCall(Ljava/lang/String;)Z
.end method

.method public abstract hasIsim()Z
.end method

.method public abstract holdCall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract invokeOemRilRequestRaw([BLandroid/os/Message;)V
.end method

.method public abstract invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract isCspPlmnEnabled()Z
.end method

.method public abstract isDataConnectivityPossible()Z
.end method

.method public abstract isDataConnectivityPossible(Ljava/lang/String;)Z
.end method

.method public abstract isDnsCheckDisabled()Z
.end method

.method public abstract isMMICode(Ljava/lang/String;)Z
.end method

.method public abstract isMinInfoReady()Z
.end method

.method public abstract isOtaSpNumber(Ljava/lang/String;)Z
.end method

.method public abstract needsOtaServiceProvisioning()Z
.end method

.method public abstract notifyDataActivity()V
.end method

.method public abstract notifyDunDataActivity()V
.end method

.method public abstract notifyDunDataConnection()V
.end method

.method public abstract queryAvailableBandMode(Landroid/os/Message;)V
.end method

.method public abstract queryCdmaRoamingPreference(Landroid/os/Message;)V
.end method

.method public abstract queryTTYMode(Landroid/os/Message;)V
.end method

.method public abstract registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForModifyCallRequest(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNewIMSCall(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSrvccHandOver(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract rejectCall()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract rejectConnectionTypeChange(Lcom/android/internal/telephony/Connection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract removeReferences()V
.end method

.method public abstract requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract selectBand(IIIIILandroid/os/Message;)V
.end method

.method public abstract selectBand(ILandroid/os/Message;)V
.end method

.method public abstract selectCsg(Landroid/os/Message;)V
.end method

.method public abstract selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
.end method

.method public abstract selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract sendDtmf(C)V
.end method

.method public abstract sendUssdResponse(Ljava/lang/String;)V
.end method

.method public abstract setBandMode(ILandroid/os/Message;)V
.end method

.method public abstract setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
.end method

.method public abstract setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
.end method

.method public abstract setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
.end method

.method public abstract setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setCallWaiting(ZLandroid/os/Message;)V
.end method

.method public abstract setCdmaRoamingPreference(ILandroid/os/Message;)V
.end method

.method public abstract setCdmaSubscription(ILandroid/os/Message;)V
.end method

.method public abstract setCellBroadcastSmsConfig([ILandroid/os/Message;)V
.end method

.method public abstract setCellInfoListRate(I)V
.end method

.method public abstract setComCfg(ZZIILandroid/os/Message;)V
.end method

.method public abstract setDataDunEnabled(Z)V
.end method

.method public abstract setDataRoamingEnabled(Z)V
.end method

.method public abstract setDrxMode(I)Z
.end method

.method public abstract setEchoSuppressionEnabled(Z)V
.end method

.method public abstract setFdy(ZILandroid/os/Message;)V
.end method

.method public abstract setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setLteBandMode(ILandroid/os/Message;)V
.end method

.method public abstract setMute(Z)V
.end method

.method public abstract setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
.end method

.method public abstract setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
.end method

.method public abstract setPcoValue(I)V
.end method

.method public abstract setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
.end method

.method public abstract setPreferredNetworkType(ILandroid/os/Message;)V
.end method

.method public abstract setRadioPower(Z)V
.end method

.method public abstract setRadioPowerOnNow()V
.end method

.method public abstract setReducedCycleTime(I)Z
.end method

.method public abstract setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setTTYMode(ILandroid/os/Message;)V
.end method

.method public abstract setTransmitPower(ILandroid/os/Message;)V
.end method

.method public abstract setUnitTestMode(Z)V
.end method

.method public abstract setVoiceDomainPref(ILandroid/os/Message;)V
.end method

.method public abstract setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setVoiceMessageWaiting(II)V
.end method

.method public abstract startDtmf(C)V
.end method

.method public abstract startGlobalNetworkSearchTimer()V
.end method

.method public abstract startGlobalNoSvcChkTimer()V
.end method

.method public abstract stopDtmf()V
.end method

.method public abstract stopGlobalNetworkSearchTimer()V
.end method

.method public abstract stopGlobalNoSvcChkTimer()V
.end method

.method public abstract switchHoldingAndActive()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public abstract switchModem(ILandroid/os/Message;)V
.end method

.method public abstract unSetOnUnsolOemHookExtApp(Landroid/os/Handler;)V
.end method

.method public abstract unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCallWaiting(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDisconnect(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForDisplayInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForEcmTimerReset(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIncomingRing(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForLineControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMmiComplete(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMmiInitiate(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForModifyCallRequest(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNewIMSCall(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNewRingingConnection(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForResendIncallMute(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForRingbackTone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForServiceStateChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSignalInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSrvccHandOver(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSuppServiceFailed(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSuppServiceNotification(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForT53ClirInfo(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForUnknownConnection(Landroid/os/Handler;)V
.end method

.method public abstract unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
.end method

.method public abstract updatePhoneObject(I)V
.end method

.method public abstract updateServiceLocation()V
.end method

.method public abstract writeDataToEF(I[B)V
.end method