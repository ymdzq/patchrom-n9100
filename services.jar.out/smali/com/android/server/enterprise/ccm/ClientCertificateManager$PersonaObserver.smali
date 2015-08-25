.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
.super Landroid/content/pm/IPersonaObserver$Stub;
.source "ClientCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# instance fields
.field private mUserId:I

.field final synthetic this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V
    .locals 1
    .param p2, "userId"    # I

    .prologue
    .line 2796
    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {p0}, Landroid/content/pm/IPersonaObserver$Stub;-><init>()V

    .line 2794
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->mUserId:I

    .line 2797
    iput p2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->mUserId:I

    .line 2798
    return-void
.end method


# virtual methods
.method public onFirstBoot()V
    .locals 0

    .prologue
    .line 2810
    return-void
.end method

.method public onInit()V
    .locals 0

    .prologue
    .line 2806
    return-void
.end method

.method public onKeyGuardStateChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 2851
    return-void
.end method

.method public onPersonaSwitch()V
    .locals 0

    .prologue
    .line 2802
    return-void
.end method

.method public onSessionExpired()V
    .locals 0

    .prologue
    .line 2814
    return-void
.end method

.method public onStateChange(II)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "oldState"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2818
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 2822
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->mUserId:I

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    invoke-static {v1, v2, v4, v4, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$900(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    .line 2829
    :cond_1
    :goto_0
    if-ne p2, v4, :cond_2

    if-nez p1, :cond_2

    .line 2831
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->mPersonaMgr:Landroid/os/PersonaManager;
    invoke-static {v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$400(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Landroid/os/PersonaManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2833
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->mUserId:I

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMDefaultCertStore(I)Z
    invoke-static {v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$700(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    move-result v0

    .line 2834
    .local v0, "isCCMDefaultStore":Z
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChange: isCCMDefaultStore set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    if-nez v0, :cond_2

    .line 2837
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->mUserId:I

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMProfileDefaultForContainer(I)Z
    invoke-static {v1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$500(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2838
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onStateChange: Error making CCM default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2847
    .end local v0    # "isCCMDefaultStore":Z
    :cond_2
    :goto_1
    return-void

    .line 2823
    :cond_3
    if-nez p1, :cond_1

    .line 2824
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->mUserId:I

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    invoke-static {v1, v2, v4, v3, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$900(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto :goto_0

    .line 2842
    .restart local v0    # "isCCMDefaultStore":Z
    :cond_4
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->mUserId:I

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->setCCMAsDefaultCertStore(IZ)Z
    invoke-static {v1, v2, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$600(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZ)Z

    goto :goto_1
.end method
