.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    .line 437
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 439
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->runAdminUpdate()V
    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$200(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V

    .line 442
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->updateConstrainedStateData(Z)V
    invoke-static {v6, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$300(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Z)V

    .line 443
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getConstrainedStateAll()Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$400(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)Ljava/util/List;

    move-result-object v2

    .line 444
    .local v2, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    if-eqz v2, :cond_2

    .line 445
    const/4 v4, 0x0

    .line 446
    .local v4, "policyBitMask":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnrollData;

    .line 447
    .local v1, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v1}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v6

    if-nez v6, :cond_0

    .line 448
    invoke-virtual {v1}, Landroid/app/enterprise/EnrollData;->getPolicyBitMask()I

    move-result v6

    or-int/2addr v4, v6

    goto :goto_0

    .line 453
    .end local v1    # "data":Landroid/app/enterprise/EnrollData;
    .end local v2    # "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "policyBitMask":I
    :cond_1
    const-string v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 454
    const-string v6, "android.intent.extra.user_handle"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 455
    .local v5, "userId":I
    if-ge v5, v10, :cond_3

    .line 471
    .end local v5    # "userId":I
    :cond_2
    :goto_1
    return-void

    .line 457
    .restart local v5    # "userId":I
    :cond_3
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->deactivateProxyAdminsForUser(I)V

    goto :goto_1

    .line 458
    .end local v5    # "userId":I
    :cond_4
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 459
    const-string v6, "EnterpriseDeviceManagerService"

    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getConstrainedStateAll()Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$400(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)Ljava/util/List;

    move-result-object v2

    .line 461
    .restart local v2    # "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    if-eqz v2, :cond_2

    .line 462
    const/4 v4, 0x0

    .line 463
    .restart local v4    # "policyBitMask":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnrollData;

    .line 464
    .restart local v1    # "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v1}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v6

    if-nez v6, :cond_5

    .line 465
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v1}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v6, v7, v8, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$500(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 466
    iget-object v6, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$1;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v1}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/app/enterprise/EnrollData;->getComment()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v6, v7, v8, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$500(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2
.end method
