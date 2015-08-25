.class Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;
.super Ljava/lang/Thread;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareProfileFileSender"
.end annotation


# instance fields
.field IP:Ljava/lang/String;

.field bis:Ljava/io/BufferedInputStream;

.field disconnect:Z

.field dos:Ljava/io/DataOutputStream;

.field filePath:Ljava/lang/String;

.field fis:Ljava/io/FileInputStream;

.field r:Landroid/content/res/Resources;

.field senderName:Ljava/lang/String;

.field socket:Ljava/net/Socket;

.field ssidsToSend:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p2, "socket"    # Ljava/net/Socket;
    .param p3, "IP"    # Ljava/lang/String;
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "senderName"    # Ljava/lang/String;
    .param p6, "ssidsToSend"    # Ljava/lang/String;
    .param p7, "disconnect"    # Z

    .prologue
    .line 11173
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 11171
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->r:Landroid/content/res/Resources;

    .line 11174
    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->socket:Ljava/net/Socket;

    .line 11175
    iput-object p3, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->IP:Ljava/lang/String;

    .line 11176
    iput-object p4, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->filePath:Ljava/lang/String;

    .line 11177
    iput-object p5, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->senderName:Ljava/lang/String;

    .line 11178
    iput-object p6, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->ssidsToSend:Ljava/lang/String;

    .line 11179
    iput-boolean p7, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->disconnect:Z

    .line 11182
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->dos:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11187
    :cond_0
    :goto_0
    return-void

    .line 11183
    :catch_0
    move-exception v0

    .line 11184
    .local v0, "e":Ljava/io/IOException;
    const v1, 0x2013d

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 11185
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShareProfileFileSender: Exception while creating DataOutputStream. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 11192
    :try_start_0
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "WifiStateMachine"

    const-string v6, "ShareProfileFileSender: Begin file transfer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11194
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sender:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->senderName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 11195
    .local v3, "senderID":Ljava/lang/String;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v5, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 11196
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShareProfileFileSender: Sender ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is sent."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11199
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->filePath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # setter for: Landroid/net/wifi/WifiStateMachine;->f:Ljava/io/File;
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$44802(Landroid/net/wifi/WifiStateMachine;Ljava/io/File;)Ljava/io/File;

    .line 11200
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->f:Ljava/io/File;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$44800(Landroid/net/wifi/WifiStateMachine;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->fis:Ljava/io/FileInputStream;

    .line 11201
    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->fis:Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->bis:Ljava/io/BufferedInputStream;

    .line 11204
    const/16 v4, 0x1000

    .line 11205
    .local v4, "size":I
    new-array v0, v4, [B

    .line 11206
    .local v0, "data":[B
    :goto_0
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->bis:Ljava/io/BufferedInputStream;

    invoke-virtual {v5, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .local v2, "len":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    .line 11207
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->dos:Ljava/io/DataOutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11221
    .end local v0    # "data":[B
    .end local v2    # "len":I
    .end local v3    # "senderID":Ljava/lang/String;
    .end local v4    # "size":I
    :catch_0
    move-exception v1

    .line 11222
    .local v1, "e":Ljava/io/IOException;
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShareProfileFileSender: Exception while file transfer."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11224
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "WifiStateMachine"

    const-string v6, "ShareProfileFileSender: End of run()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11225
    :cond_3
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x2013d

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 11226
    return-void

    .line 11210
    .restart local v0    # "data":[B
    .restart local v2    # "len":I
    .restart local v3    # "senderID":Ljava/lang/String;
    .restart local v4    # "size":I
    :cond_4
    :try_start_1
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 11211
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->dos:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    .line 11212
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->bis:Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 11213
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 11214
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShareProfileFileSender: File transfer completed. File size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->f:Ljava/io/File;
    invoke-static {v7}, Landroid/net/wifi/WifiStateMachine;->access$44800(Landroid/net/wifi/WifiStateMachine;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11215
    :cond_5
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ShareProfileFileSender: ssid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->ssidsToSend:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11216
    :cond_6
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->ssidsToSend:Ljava/lang/String;

    # invokes: Landroid/net/wifi/WifiStateMachine;->notifyShareProfileTransmission(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$44900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 11217
    iget-boolean v5, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->disconnect:Z

    if-eqz v5, :cond_2

    .line 11218
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x2013f

    # invokes: Landroid/net/wifi/WifiStateMachine;->removeMessages(I)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$45000(Landroid/net/wifi/WifiStateMachine;I)V

    .line 11219
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$ShareProfileFileSender;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v6, 0x2013f

    const-wide/32 v7, 0x9c40

    invoke-virtual {v5, v6, v7, v8}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
