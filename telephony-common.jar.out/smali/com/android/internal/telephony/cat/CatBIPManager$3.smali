.class Lcom/android/internal/telephony/cat/CatBIPManager$3;
.super Ljava/lang/Object;
.source "CatBIPManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/CatBIPManager;->handleSendData(Lcom/android/internal/telephony/cat/SendDataParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

.field final synthetic val$bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

.field final synthetic val$channelData:[B

.field final synthetic val$sendImmediate:Z


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPConnection;[BZ)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->val$bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    iput-object p3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->val$channelData:[B

    iput-boolean p4, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->val$sendImmediate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 642
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->this$0:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->val$bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->val$channelData:[B

    iget-boolean v3, p0, Lcom/android/internal/telephony/cat/CatBIPManager$3;->val$sendImmediate:Z

    # invokes: Lcom/android/internal/telephony/cat/CatBIPManager;->sendDataClientMode(Lcom/android/internal/telephony/cat/CatBIPClientConnection;[BZ)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/internal/telephony/cat/CatBIPManager;->access$200(Lcom/android/internal/telephony/cat/CatBIPManager;Lcom/android/internal/telephony/cat/CatBIPClientConnection;[BZ)V

    .line 643
    return-void
.end method
