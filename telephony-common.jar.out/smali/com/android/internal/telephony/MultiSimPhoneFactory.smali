.class public Lcom/android/internal/telephony/MultiSimPhoneFactory;
.super Lcom/android/internal/telephony/PhoneFactory;
.source "MultiSimPhoneFactory.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "MULTISIMPHONE"

.field static final SOCKET_OPEN_MAX_RETRY:I = 0x3

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0x7d0

.field private static mCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;

.field private static mSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

.field private static sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

.field private static sProxyPhone:[Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 52
    sput-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 62
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    sput-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    .line 63
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface;

    sput-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    .line 64
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/PhoneNotifier;

    sput-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/telephony/PhoneFactory;-><init>()V

    return-void
.end method

.method public static getCdmaPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "simSlot"    # I

    .prologue
    .line 282
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 283
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 291
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v1, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    aget-object v4, v4, p0

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 295
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    :goto_0
    monitor-exit v2

    .line 296
    return-object v0

    .line 285
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v1, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    aget-object v4, v4, p0

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 286
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    goto :goto_0

    .line 295
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefaultPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .param p0, "simSlot"    # I

    .prologue
    .line 265
    sget-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sLooper:Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PhoneFactory.getDefaultPhone must be called from Looper thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    sget-boolean v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sMadeDefaults:Z

    if-nez v0, :cond_1

    .line 271
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default phones haven\'t been made yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static getGsmPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 5
    .param p0, "simSlot"    # I

    .prologue
    .line 305
    sget-object v2, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v2

    .line 306
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v1, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, p0

    sget-object v4, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    aget-object v4, v4, p0

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    .line 307
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    monitor-exit v2

    .line 308
    return-object v0

    .line 307
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static makeDefaultPhone(Landroid/content/Context;)V
    .locals 23
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const-class v18, Lcom/android/internal/telephony/Phone;

    monitor-enter v18

    .line 85
    :try_start_0
    sget-boolean v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sMadeDefaults:Z

    if-nez v17, :cond_14

    .line 86
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v17

    sput-object v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sLooper:Landroid/os/Looper;

    .line 87
    sput-object p0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sContext:Landroid/content/Context;

    .line 89
    sget-object v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sLooper:Landroid/os/Looper;

    if-nez v17, :cond_0

    .line 90
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v19, "PhoneFactory.makeDefaultPhone must be called from Looper thread"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 251
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 94
    :cond_0
    const/4 v14, 0x0

    .line 96
    .local v14, "retryCount":I
    :goto_0
    const/4 v8, 0x0

    .line 97
    .local v8, "hasException":Z
    add-int/lit8 v14, v14, 0x1

    .line 102
    :try_start_1
    new-instance v17, Landroid/net/LocalServerSocket;

    const-string v19, "com.android.internal.telephony"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :goto_1
    if-nez v8, :cond_1

    .line 119
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v16

    .line 121
    .local v16, "slotCount":I
    const/4 v15, 0x0

    .local v15, "simSlotNum":I
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 122
    sget-object v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    new-instance v19, Lcom/android/internal/telephony/DefaultPhoneNotifier;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/DefaultPhoneNotifier;-><init>(I)V

    aput-object v19, v17, v15

    .line 121
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 103
    .end local v15    # "simSlotNum":I
    .end local v16    # "slotCount":I
    :catch_0
    move-exception v7

    .line 104
    .local v7, "ex":Ljava/io/IOException;
    const/4 v8, 0x1

    goto :goto_1

    .line 109
    .end local v7    # "ex":Ljava/io/IOException;
    :cond_1
    const/16 v17, 0x3

    move/from16 v0, v17

    if-le v14, v0, :cond_2

    .line 110
    new-instance v17, Ljava/lang/RuntimeException;

    const-string v19, "PhoneFactory probably already running"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    :cond_2
    const-wide/16 v19, 0x7d0

    :try_start_3
    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 114
    :catch_1
    move-exception v17

    goto :goto_0

    .line 125
    .restart local v15    # "simSlotNum":I
    .restart local v16    # "slotCount":I
    :cond_3
    :try_start_4
    move/from16 v0, v16

    new-array v9, v0, [I

    .line 141
    .local v9, "networkMode":[I
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getDefault(Landroid/content/Context;)I

    move-result v4

    .line 142
    .local v4, "cdmaSubscription":I
    const-string v17, "MULTISIMPHONE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cdma Subscription set to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v11, "0123456789"

    .line 146
    .local v11, "num":Ljava/lang/String;
    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 147
    const-string v17, "persist.radio.networktype"

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    const-string v19, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 148
    const-string v17, "persist.radio.networktype"

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_4
    const-string v17, "persist.radio.networktype"

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    const-string v19, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    aput v17, v9, v15

    .line 153
    const-string v17, "MULTISIMPHONE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "simSlotNum = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", networkMode = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget v20, v9, v15

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    new-instance v19, Lcom/android/internal/telephony/RIL;

    aget v20, v9, v15

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v4, v15}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V

    aput-object v19, v17, v15

    .line 146
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 158
    :cond_5
    const-string v17, "persist.radio.dsds.msimm"

    const-string v19, "false"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 160
    .local v10, "networkModeFlag":Ljava/lang/String;
    const-string v17, "Combination"

    const-string v19, "Combination"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    const-string v17, "IMC"

    const-string v19, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    :cond_6
    const-string v17, "ril.MSIMM"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 163
    const-string v17, "MULTISIMPHONE"

    const-string v19, "sim2 only mode. swap commandsinterfaces"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v19, 0x0

    aget-object v5, v17, v19

    .line 165
    .local v5, "ci":Lcom/android/internal/telephony/CommandsInterface;
    sget-object v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v19, 0x0

    sget-object v20, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v21, 0x1

    aget-object v20, v20, v21

    aput-object v20, v17, v19

    .line 166
    sget-object v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    const/16 v19, 0x1

    aput-object v5, v17, v19

    .line 168
    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 169
    :cond_7
    const-string v17, "MULTISIMPHONE"

    const-string v19, "sim2 only mode. dsds msimm property set false"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v17, "persist.radio.dsds.msimm"

    const-string v19, "false"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v5    # "ci":Lcom/android/internal/telephony/CommandsInterface;
    :cond_8
    :goto_4
    const/4 v15, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v15, v0, :cond_a

    .line 180
    sget-object v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v17, v17, v15

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1, v15}, Lcom/android/internal/telephony/uicc/UiccController;->make(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)Lcom/android/internal/telephony/uicc/UiccController;

    .line 178
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 172
    :cond_9
    const-string v17, "ril.MSIMM"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_8

    const-string v17, "2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 173
    const-string v17, "MULTISIMPHONE"

    const-string v19, "Not sim2 only mode. dsds msimm property set false"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v17, "persist.radio.dsds.msimm"

    const-string v19, "false"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 185
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isSubscriptionManagerEnabled()Z

    move-result v17

    if-nez v17, :cond_b

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isSubscriptionManagerPatialEnabled()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 187
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isSubscriptionManagerPatialEnabled()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 188
    const-string v17, "MULTISIMPHONE"

    const-string v19, "Make SubscriptionManager"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_6
    sget-object v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionManager;

    move-result-object v17

    sput-object v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->mSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    .line 198
    :cond_c
    const/4 v15, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v15, v0, :cond_10

    .line 199
    aget v17, v9, v15

    invoke-static/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v13

    .line 200
    .local v13, "phoneType":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_f

    .line 201
    const-string v17, "MULTISIMPHONE"

    const-string v19, "Creating GSMPhone"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    new-instance v19, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v20, Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v21, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v21, v21, v15

    sget-object v22, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    aget-object v22, v22, v15

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    invoke-direct/range {v19 .. v20}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    aput-object v19, v17, v15

    .line 198
    :cond_d
    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 190
    .end local v13    # "phoneType":I
    :cond_e
    const-string v17, "MULTISIMPHONE"

    const-string v19, "Make CardSubscriptionManager & SubscriptionManager"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/CardSubscriptionManager;->getInstance(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/CardSubscriptionManager;

    move-result-object v17

    sput-object v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->mCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;

    goto :goto_6

    .line 204
    .restart local v13    # "phoneType":I
    :cond_f
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v13, v0, :cond_d

    .line 205
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 214
    const-string v17, "MULTISIMPHONE"

    const-string v19, "Creating CDMAPhone"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    new-instance v19, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v20, Lcom/android/internal/telephony/cdma/CDMAPhone;

    sget-object v21, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v21, v21, v15

    sget-object v22, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    aget-object v22, v22, v15

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    invoke-direct/range {v19 .. v20}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    aput-object v19, v17, v15

    goto :goto_8

    .line 207
    :pswitch_0
    const-string v17, "MULTISIMPHONE"

    const-string v19, "Creating CDMALTEPhone"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    new-instance v19, Lcom/android/internal/telephony/PhoneProxy;

    new-instance v20, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    sget-object v21, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v21, v21, v15

    sget-object v22, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    aget-object v22, v22, v15

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;I)V

    invoke-direct/range {v19 .. v20}, Lcom/android/internal/telephony/PhoneProxy;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    aput-object v19, v17, v15

    goto :goto_8

    .line 224
    .end local v13    # "phoneType":I
    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isSubscriptionManagerEnabled()Z

    move-result v17

    if-nez v17, :cond_11

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isSubscriptionManagerPatialEnabled()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 226
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isSubscriptionManagerPatialEnabled()Z

    move-result v17

    if-eqz v17, :cond_15

    .line 227
    const-string v17, "MULTISIMPHONE"

    const-string v19, "SET SubscriptionManager"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_9
    sget-object v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->mSubscriptionManager:Lcom/android/internal/telephony/SubscriptionManager;

    sget-object v19, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionManager;->setPhones([Lcom/android/internal/telephony/Phone;)V

    .line 236
    :cond_12
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v6

    .line 238
    .local v6, "componentName":Landroid/content/ComponentName;
    const-string v12, "NONE"

    .line 239
    .local v12, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_13

    .line 240
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 242
    :cond_13
    const-string v17, "MULTISIMPHONE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "defaultSmsApplication: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/SmsApplication;->initSmsPackageMonitor(Landroid/content/Context;)V

    .line 248
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sMadeDefaults:Z

    .line 249
    invoke-static {}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->setDefaultPhone()V

    .line 251
    .end local v4    # "cdmaSubscription":I
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "hasException":Z
    .end local v9    # "networkMode":[I
    .end local v10    # "networkModeFlag":Ljava/lang/String;
    .end local v11    # "num":Ljava/lang/String;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v14    # "retryCount":I
    .end local v15    # "simSlotNum":I
    .end local v16    # "slotCount":I
    :cond_14
    monitor-exit v18

    .line 253
    return-void

    .line 229
    .restart local v4    # "cdmaSubscription":I
    .restart local v8    # "hasException":Z
    .restart local v9    # "networkMode":[I
    .restart local v10    # "networkModeFlag":Ljava/lang/String;
    .restart local v11    # "num":Ljava/lang/String;
    .restart local v14    # "retryCount":I
    .restart local v15    # "simSlotNum":I
    .restart local v16    # "slotCount":I
    :cond_15
    const-string v17, "MULTISIMPHONE"

    const-string v19, "SET CardSubscriptionManager & SubscriptionManager"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v17, Lcom/android/internal/telephony/MultiSimPhoneFactory;->mCardSubscriptionManager:Lcom/android/internal/telephony/CardSubscriptionManager;

    sget-object v19, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CardSubscriptionManager;->setPhones([Lcom/android/internal/telephony/Phone;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeDefaultPhones(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->makeDefaultPhone(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method private static setDefaultPhone()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 256
    sget-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sProxyPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 257
    sget-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sCommandsInterface:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 258
    sget-object v0, Lcom/android/internal/telephony/MultiSimPhoneFactory;->sPhoneNotifier:[Lcom/android/internal/telephony/PhoneNotifier;

    aget-object v0, v0, v1

    sput-object v0, Lcom/android/internal/telephony/PhoneFactory;->sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 259
    return-void
.end method
