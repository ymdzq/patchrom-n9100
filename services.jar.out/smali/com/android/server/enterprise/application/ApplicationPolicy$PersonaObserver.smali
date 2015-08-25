.class Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;
.super Landroid/content/pm/IPersonaObserver$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# instance fields
.field private mContainerId:I

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V
    .locals 1
    .param p2, "userId"    # I

    .prologue
    .line 4903
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPersonaObserver$Stub;-><init>()V

    .line 4901
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->mContainerId:I

    .line 4904
    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->mContainerId:I

    .line 4905
    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;

    .prologue
    .line 4900
    iget v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->mContainerId:I

    return v0
.end method


# virtual methods
.method public onFirstBoot()V
    .locals 2

    .prologue
    .line 4919
    const-string v0, "ApplicationPolicy"

    const-string v1, "PersonaObserver.onFirstBoot()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4920
    return-void
.end method

.method public onInit()V
    .locals 2

    .prologue
    .line 4914
    const-string v0, "ApplicationPolicy"

    const-string v1, "PersonaObserver.onInit()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4915
    return-void
.end method

.method public onKeyGuardStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 4929
    const-string v0, "ApplicationPolicy"

    const-string v1, "PersonaObserver.onKeyGuardStateChanged()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4930
    return-void
.end method

.method public onPersonaSwitch()V
    .locals 2

    .prologue
    .line 4909
    const-string v0, "ApplicationPolicy"

    const-string v1, "PersonaObserver.onPersonaSwitch()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4910
    return-void
.end method

.method public onSessionExpired()V
    .locals 2

    .prologue
    .line 4924
    const-string v0, "ApplicationPolicy"

    const-string v1, "PersonaObserver.onSessionExpired()"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4925
    return-void
.end method

.method public onStateChange(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "oldState"    # I

    .prologue
    .line 4934
    const-string v0, "ApplicationPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persona.onStateChange: oldstate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 4935
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2200(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$PersonaObserver;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4965
    return-void
.end method
