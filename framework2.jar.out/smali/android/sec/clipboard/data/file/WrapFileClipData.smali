.class public Landroid/sec/clipboard/data/file/WrapFileClipData;
.super Ljava/lang/Object;
.source "WrapFileClipData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient mClip:Landroid/sec/clipboard/data/ClipboardData;

.field private mDir:Ljava/io/File;

.field private mIsProtected:Z

.field private mPath:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 1
    .param p1, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p1, :cond_0

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/sec/clipboard/data/ClipboardData;->setClipdata(Landroid/content/ClipData;)V

    .line 37
    :cond_0
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    .line 39
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    .line 41
    return-void
.end method

.method private loadData()Landroid/sec/clipboard/data/ClipboardData;
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->loadObjectFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/ClipboardData;

    return-object v0
.end method


# virtual methods
.method public getClipData()Landroid/sec/clipboard/data/ClipboardData;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    if-nez v0, :cond_0

    .line 45
    invoke-direct {p0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->loadData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    .line 48
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/ClipboardData;->setClipdata(Landroid/content/ClipData;)V

    .line 50
    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    return-object v0
.end method

.method public getDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDir:Ljava/io/File;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    return-object v0
.end method

.method public load()Z
    .locals 5

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "result":Z
    invoke-direct {p0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->loadData()Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    .line 95
    iget-object v3, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v3, :cond_0

    .line 97
    iget-object v3, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    iget-boolean v4, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mIsProtected:Z

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/ClipboardData;->SetProtectState(Z)V

    .line 100
    iget-object v3, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 101
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 102
    .local v0, "bitmap":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, "tempFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    const/4 v1, 0x1

    .line 113
    .end local v0    # "bitmap":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .end local v2    # "tempFile":Ljava/io/File;
    :cond_0
    :goto_0
    return v1

    .line 109
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setClipData(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 1
    .param p1, "clip"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/sec/clipboard/data/ClipboardData;->setClipdata(Landroid/content/ClipData;)V

    .line 57
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Landroid/sec/clipboard/data/ClipboardData;

    .line 58
    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .locals 0
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 83
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDir:Ljava/io/File;

    .line 85
    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 65
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    .line 66
    return-void
.end method

.method public setProtectState(Z)V
    .locals 0
    .param p1, "isProtected"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mIsProtected:Z

    return-void
.end method
