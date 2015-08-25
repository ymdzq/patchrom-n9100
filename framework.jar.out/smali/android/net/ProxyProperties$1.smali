.class final Landroid/net/ProxyProperties$1;
.super Ljava/lang/Object;
.source "ProxyProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ProxyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/ProxyProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyProperties;
    .locals 15
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 347
    const/4 v1, 0x0

    .line 348
    .local v1, "host":Ljava/lang/String;
    const/4 v2, 0x0

    .line 350
    .local v2, "port":I
    const/4 v3, 0x0

    .line 351
    .local v3, "username":Ljava/lang/String;
    const/4 v4, 0x0

    .line 353
    .local v4, "password":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    if-eqz v7, :cond_0

    .line 354
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 355
    .local v14, "url":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 356
    .local v13, "localPort":I
    new-instance v0, Landroid/net/ProxyProperties;

    invoke-direct {v0, v14, v13}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;I)V

    .line 383
    .end local v13    # "localPort":I
    .end local v14    # "url":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 358
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    if-eqz v7, :cond_1

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 362
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    if-eqz v7, :cond_1

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 369
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "exclList":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 373
    .local v6, "parsedExclList":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 375
    .local v0, "proxyProperties":Landroid/net/ProxyProperties;
    if-eqz v3, :cond_2

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 376
    new-instance v0, Landroid/net/ProxyProperties;

    .end local v0    # "proxyProperties":Landroid/net/ProxyProperties;
    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/net/ProxyProperties$1;)V

    .restart local v0    # "proxyProperties":Landroid/net/ProxyProperties;
    goto :goto_0

    .line 379
    :cond_2
    new-instance v0, Landroid/net/ProxyProperties;

    .end local v0    # "proxyProperties":Landroid/net/ProxyProperties;
    const/4 v12, 0x0

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move-object v10, v5

    move-object v11, v6

    invoke-direct/range {v7 .. v12}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/net/ProxyProperties$1;)V

    .restart local v0    # "proxyProperties":Landroid/net/ProxyProperties;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Landroid/net/ProxyProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ProxyProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/ProxyProperties;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 387
    new-array v0, p1, [Landroid/net/ProxyProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Landroid/net/ProxyProperties$1;->newArray(I)[Landroid/net/ProxyProperties;

    move-result-object v0

    return-object v0
.end method
