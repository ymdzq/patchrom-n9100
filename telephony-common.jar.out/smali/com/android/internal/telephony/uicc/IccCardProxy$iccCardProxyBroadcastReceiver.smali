.class Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IccCardProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "iccCardProxyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/IccCardProxy;)V
    .locals 0

    .prologue
    .line 1314
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/IccCardProxy;Lcom/android/internal/telephony/uicc/IccCardProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/IccCardProxy;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/IccCardProxy$1;

    .prologue
    .line 1314
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/IccCardProxy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1317
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1318
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1320
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->prepareStartSimManagement()V
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$100(Lcom/android/internal/telephony/uicc/IccCardProxy;)V

    .line 1326
    :cond_0
    const-string v2, "com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CTC"

    const-string v3, "OPEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1328
    const-string v2, "IOCTL"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1329
    .local v1, "isfromIOCTL":Z
    const-string v2, "IccCardProxy"

    const-string v3, "Receive com.samsung.intent.action.ICC_CARD_STATE_CHANGED"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    if-eqz v1, :cond_1

    .line 1331
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string v3, "ABSENT"

    const/4 v4, 0x0

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$200(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    .end local v1    # "isfromIOCTL":Z
    :cond_1
    return-void
.end method
