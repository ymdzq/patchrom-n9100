.class public final Lcom/android/internal/telephony/uicc/CsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "CsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 5
    .param p1, "efid"    # I

    .prologue
    const/4 v4, 0x1

    .line 43
    const-string v2, "CTC"

    const-string v3, "OPEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 47
    const-string v2, "ril.IsCSIM"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 48
    .local v0, "isCsim":I
    const/16 v2, 0x6f3c

    if-ne p1, v2, :cond_3

    .line 49
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    const-string v1, "3F007F10"

    .line 96
    .end local v0    # "isCsim":I
    :cond_0
    :goto_0
    return-object v1

    .line 52
    .restart local v0    # "isCsim":I
    :cond_1
    if-ne v0, v4, :cond_2

    .line 53
    const-string v1, "3F007FFF"

    goto :goto_0

    .line 55
    :cond_2
    const-string v1, "3F007F25"

    goto :goto_0

    .line 59
    :cond_3
    const/16 v2, 0x6f22

    if-ne p1, v2, :cond_5

    .line 60
    if-ne v0, v4, :cond_4

    .line 61
    const-string v1, "3F007FFF"

    goto :goto_0

    .line 63
    :cond_4
    const-string v1, "3F007F25"

    goto :goto_0

    .line 65
    :cond_5
    const/16 v2, 0x4f20

    if-eq p1, v2, :cond_6

    const/16 v2, 0x4f21

    if-eq p1, v2, :cond_6

    const/16 v2, 0x4f22

    if-ne p1, v2, :cond_7

    .line 66
    :cond_6
    const-string v1, "3F007F105F3C"

    goto :goto_0

    .line 69
    .end local v0    # "isCsim":I
    :cond_7
    sparse-switch p1, :sswitch_data_0

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 94
    const-string v1, "3F007F105F3A"

    goto :goto_0

    .line 87
    .end local v1    # "path":Ljava/lang/String;
    :sswitch_0
    const-string v1, "3F007FFF"

    goto :goto_0

    .line 69
    :sswitch_data_0
    .sparse-switch
        0x6f22 -> :sswitch_0
        0x6f28 -> :sswitch_0
        0x6f31 -> :sswitch_0
        0x6f32 -> :sswitch_0
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f41 -> :sswitch_0
        0x6f44 -> :sswitch_0
        0x6f4c -> :sswitch_0
        0x6f4d -> :sswitch_0
        0x6f57 -> :sswitch_0
        0x6f5a -> :sswitch_0
        0x6f74 -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method
