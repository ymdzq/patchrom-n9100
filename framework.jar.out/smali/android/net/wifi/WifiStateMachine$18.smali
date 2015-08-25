.class Landroid/net/wifi/WifiStateMachine$18;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;->startShareProfileServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 10462
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$18;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 10467
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$18;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/net/ServerSocket;

    const/16 v4, 0x21b1

    invoke-direct {v3, v4}, Ljava/net/ServerSocket;-><init>(I)V

    # setter for: Landroid/net/wifi/WifiStateMachine;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$44402(Landroid/net/wifi/WifiStateMachine;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;

    .line 10468
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WifiStateMachine"

    const-string v3, "startShareProfileServer - Receive server started."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10471
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$18;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$18;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->serverSocket:Ljava/net/ServerSocket;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$44400(Landroid/net/wifi/WifiStateMachine;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    # setter for: Landroid/net/wifi/WifiStateMachine;->socket:Ljava/net/Socket;
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$44502(Landroid/net/wifi/WifiStateMachine;Ljava/net/Socket;)Ljava/net/Socket;

    .line 10472
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startShareProfileServer - Connected to client. - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$18;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->socket:Ljava/net/Socket;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$44500(Landroid/net/wifi/WifiStateMachine;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10476
    :cond_1
    new-instance v1, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$18;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$18;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->socket:Ljava/net/Socket;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$44500(Landroid/net/wifi/WifiStateMachine;)Ljava/net/Socket;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;-><init>(Landroid/net/wifi/WifiStateMachine;Ljava/net/Socket;)V

    .line 10477
    .local v1, "fr":Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;
    invoke-virtual {v1}, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10481
    .end local v1    # "fr":Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;
    :cond_2
    :goto_0
    return-void

    .line 10478
    :catch_0
    move-exception v0

    .line 10479
    .local v0, "e":Ljava/io/IOException;
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while creating sockets and connecting with client. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
