.class Lcom/android/internal/telephony/cat/CatBIPManager$2;
.super Ljava/lang/Object;
.source "CatBIPManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/CatBIPManager;->handleOpenChannel(Lcom/android/internal/telephony/cat/OpenChannelParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

.field final synthetic val$b:Lcom/android/internal/telephony/cat/CatBIPConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$2;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$2;->val$b:Lcom/android/internal/telephony/cat/CatBIPConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 534
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$2;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$2;->val$b:Lcom/android/internal/telephony/cat/CatBIPConnection;

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    # invokes: Lcom/android/internal/telephony/cat/CatBIPManager;->openChannelAsRemoteClient(Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V
    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$100(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPClientConnection;)V

    .line 535
    return-void
.end method
