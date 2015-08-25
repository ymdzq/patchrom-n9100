.class public Lcom/movial/ipphone/IPIccSmsInterfaceManager;
.super Lcom/android/internal/telephony/IccSmsInterfaceManager;
.source "IPIccSmsInterfaceManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IPSmsInterfaceManager"


# instance fields
.field private mImsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iput-object v0, p0, Lcom/movial/ipphone/IPIccSmsInterfaceManager;->mImsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 62
    return-void
.end method


# virtual methods
.method protected dispose()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "IPSmsInterfaceManager"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    .line 68
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "IPSmsInterfaceManager"

    const-string v1, "IccSmsInterfaceManager finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method protected getIMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    return-object v0
.end method

.method public setIPSMSDispatcher(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 2
    .param p1, "ipSMSDispatcher"    # Lcom/android/internal/telephony/SMSDispatcher;

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    const-string v0, "IPSmsInterfaceManager"

    const-string v1, "Switching dispatcher to Normal Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/movial/ipphone/IPIccSmsInterfaceManager;->mImsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v0, "IPSmsInterfaceManager"

    const-string v1, "Switching dispatcher to WFC Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    goto :goto_0
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 91
    return-void
.end method
