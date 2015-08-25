.class Lcom/android/internal/telephony/cat/GetChannelStatusResponse;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field channelIds:[Z

.field i:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;[Z)V
    .locals 1
    .param p1, "iter"    # Ljava/util/Iterator;
    .param p2, "chIds"    # [Z

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 575
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->i:Ljava/util/Iterator;

    .line 625
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->i:Ljava/util/Iterator;

    .line 626
    iput-object p2, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->channelIds:[Z

    .line 627
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 10
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    const/4 v9, 0x2

    .line 580
    const/4 v6, 0x0

    .line 581
    .local v6, "z":I
    const/4 v0, 0x0

    .line 582
    .local v0, "bipcon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    :goto_0
    const/4 v7, 0x7

    if-ge v6, v7, :cond_5

    .line 583
    iget-object v7, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->channelIds:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_4

    .line 584
    iget-object v7, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->i:Ljava/util/Iterator;

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bipcon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 587
    .restart local v0    # "bipcon":Lcom/android/internal/telephony/cat/CatBIPConnection;
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v4, v7, 0x80

    .line 588
    .local v4, "tag":I
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 589
    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 591
    const/4 v2, 0x0

    .line 592
    .local v2, "s":B
    iget v7, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v7, v7, 0x7

    int-to-byte v2, v7

    .line 595
    iget-object v7, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/TransportLevel;->isLocal()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    move-object v3, v0

    .line 596
    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .line 597
    .local v3, "server":Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    iget-byte v7, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v7, v2

    int-to-byte v2, v7

    .line 606
    .end local v3    # "server":Lcom/android/internal/telephony/cat/CatBIPServerConnection;
    :cond_1
    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 607
    iget-byte v7, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 608
    const-string v7, "GetChannelStatusResponse-wrote all"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    .end local v2    # "s":B
    .end local v4    # "tag":I
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .restart local v2    # "s":B
    .restart local v4    # "tag":I
    :cond_3
    move-object v1, v0

    .line 600
    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 601
    .local v1, "cl":Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    iget-boolean v7, v1, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v7, :cond_1

    .line 602
    or-int/lit8 v7, v2, -0x80

    int-to-byte v2, v7

    goto :goto_1

    .line 609
    .end local v1    # "cl":Lcom/android/internal/telephony/cat/CatBIPClientConnection;
    .end local v2    # "s":B
    .end local v4    # "tag":I
    :cond_4
    const-string v7, "TMO"

    const-string v8, "OPEN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 611
    const-string v7, "GetChannelStatusResponse-ID not there"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    sget-object v7, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    or-int/lit16 v4, v7, 0x80

    .line 613
    .restart local v4    # "tag":I
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 614
    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 615
    add-int/lit8 v5, v6, 0x1

    .line 616
    .local v5, "temp":I
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 617
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 618
    const-string v7, "GetChannelStatusResponse-wrote all"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 622
    .end local v4    # "tag":I
    .end local v5    # "temp":I
    :cond_5
    return-void
.end method
