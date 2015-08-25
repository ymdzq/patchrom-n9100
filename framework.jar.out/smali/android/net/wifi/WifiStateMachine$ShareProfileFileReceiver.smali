.class Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;
.super Ljava/lang/Thread;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareProfileFileReceiver"
.end annotation


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field dis:Ljava/io/DataInputStream;

.field fos:Ljava/io/FileOutputStream;

.field socket:Ljava/net/Socket;

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;Ljava/net/Socket;)V
    .locals 0
    .param p2, "socket"    # Ljava/net/Socket;

    .prologue
    .line 10492
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10493
    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->socket:Ljava/net/Socket;

    .line 10494
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 10498
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "WifiStateMachine"

    const-string v10, "ShareProfileFileReceiver - File reception starts."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10500
    :cond_0
    :try_start_0
    new-instance v9, Ljava/io/DataInputStream;

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->socket:Ljava/net/Socket;

    invoke-virtual {v10}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v9, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->dis:Ljava/io/DataInputStream;

    .line 10503
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 10504
    .local v6, "senderID":Ljava/lang/String;
    const-string v4, "ReceivedEncrypted.conf"

    .line 10505
    .local v4, "fName":Ljava/lang/String;
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "WifiStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ShareProfileFileReceiver - senderID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10508
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/misc/wifi/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10509
    .local v3, "f":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v9, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->fos:Ljava/io/FileOutputStream;

    .line 10510
    new-instance v9, Ljava/io/BufferedOutputStream;

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->fos:Ljava/io/FileOutputStream;

    invoke-direct {v9, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v9, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->bos:Ljava/io/BufferedOutputStream;

    .line 10511
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "WifiStateMachine"

    const-string v10, "ShareProfileFileReceiver - File is created."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10515
    :cond_2
    const/16 v7, 0x1000

    .line 10516
    .local v7, "size":I
    new-array v1, v7, [B

    .line 10517
    .local v1, "data":[B
    :goto_0
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v9, v1}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_3

    .line 10518
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->bos:Ljava/io/BufferedOutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10, v5}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10533
    .end local v1    # "data":[B
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "fName":Ljava/lang/String;
    .end local v5    # "len":I
    .end local v6    # "senderID":Ljava/lang/String;
    .end local v7    # "size":I
    :catch_0
    move-exception v2

    .line 10534
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "WifiStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while receiving file. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10536
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v10, 0x20137

    invoke-virtual {v9, v10}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 10537
    return-void

    .line 10521
    .restart local v1    # "data":[B
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "fName":Ljava/lang/String;
    .restart local v5    # "len":I
    .restart local v6    # "senderID":Ljava/lang/String;
    .restart local v7    # "size":I
    :cond_3
    :try_start_1
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    .line 10522
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V

    .line 10523
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 10524
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->dis:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    .line 10526
    const/4 v8, 0x0

    .line 10527
    .local v8, "sourceDevice":Ljava/lang/String;
    const-string v9, "Sender:"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 10528
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 10529
    .local v0, "args":Landroid/os/Bundle;
    const-string v9, "fName"

    invoke-virtual {v0, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10530
    const-string v9, "sourceDevice"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10531
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileReceiver;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v10, 0x2013b

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(IIILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
