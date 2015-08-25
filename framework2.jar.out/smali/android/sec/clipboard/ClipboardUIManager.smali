.class public Landroid/sec/clipboard/ClipboardUIManager;
.super Ljava/lang/Object;
.source "ClipboardUIManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardUIManager"

.field private static mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

.field private static mClipboardMode:I

.field private static sInstance:Landroid/sec/clipboard/ClipboardUIManager;


# instance fields
.field mAdapter:Landroid/widget/BaseAdapter;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mParentView:Landroid/view/View;

.field private mViewID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    .line 51
    const/4 v0, 0x0

    sput v0, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mAdapter:Landroid/widget/BaseAdapter;

    .line 64
    iput-object p1, p0, Landroid/sec/clipboard/ClipboardUIManager;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mAdapter:Landroid/widget/BaseAdapter;

    .line 60
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->initVariable()V

    .line 61
    return-void
.end method

.method private closeClopboardUI(Z)Z
    .locals 4
    .param p1, "immediate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 153
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntime()Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v3

    .line 157
    :cond_1
    :try_start_0
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-eqz v1, :cond_0

    .line 158
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    iget v2, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    invoke-interface {v1, v2, p1}, Landroid/sec/clipboard/IClipboardUIManager;->dismiss(IZ)V

    .line 159
    const/4 v1, 0x0

    sput-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ClipboardUIManager"

    const-string v2, "Can not close Clipbaord, RemoteException happened"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/clipboard/ClipboardUIManager;
    .locals 1
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 215
    sget-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Landroid/sec/clipboard/ClipboardUIManager;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/ClipboardUIManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    .line 218
    :cond_0
    sget-object v0, Landroid/sec/clipboard/ClipboardUIManager;->sInstance:Landroid/sec/clipboard/ClipboardUIManager;

    return-object v0
.end method

.method private initVariable()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mParentView:Landroid/view/View;

    .line 69
    sput-object v0, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    .line 70
    return-void
.end method

.method private setupInRuntime()Z
    .locals 4

    .prologue
    .line 73
    const/4 v1, 0x1

    .line 75
    .local v1, "result":Z
    const-string v2, "clipboarduiservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 76
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardUIManager;

    move-result-object v2

    sput-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    .line 78
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-nez v2, :cond_0

    .line 79
    const-string v2, "ClipboardUIManager"

    const-string v3, "Failed to get ClipboardService"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v1, 0x0

    .line 83
    :cond_0
    return v1
.end method

.method private setupInRuntimeForKeep()Z
    .locals 4

    .prologue
    .line 88
    const/4 v1, 0x1

    .line 90
    .local v1, "result":Z
    const-string/jumbo v2, "penableservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 91
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardUIManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardUIManager;

    move-result-object v2

    sput-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    .line 93
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    if-nez v2, :cond_0

    .line 94
    const-string v2, "ClipboardUIManager"

    const-string v3, "Failed to get ClipboardService"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v1, 0x0

    .line 98
    :cond_0
    return v1
.end method

.method private showClipBoard()Z
    .locals 6

    .prologue
    .line 130
    const-string v3, "ClipboardUIManager"

    const-string v4, "ClipboardUIMAnager showClipBoard()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const/4 v2, 0x0

    .line 134
    .local v2, "result":Z
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntime()Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    iget-object v3, p0, Landroid/sec/clipboard/ClipboardUIManager;->mContext:Landroid/content/Context;

    const-string v4, "clipboardEx"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 136
    .local v0, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->showUIDataDialog()V

    .line 137
    const/4 v3, 0x0

    .line 149
    .end local v0    # "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    :goto_0
    return v3

    .line 141
    :cond_0
    :try_start_0
    sget-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    iget v4, p0, Landroid/sec/clipboard/ClipboardUIManager;->mViewID:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/sec/clipboard/IClipboardUIManager;->show(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    const/4 v2, 0x1

    :goto_1
    move v3, v2

    .line 149
    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 146
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public checkScrapMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 257
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v3

    if-nez v3, :cond_0

    .line 273
    :goto_0
    return v2

    .line 262
    :cond_0
    :try_start_0
    sget-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardUIManager;->getClipboardUIMode()I

    move-result v3

    sput v3, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_1
    sget v3, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardMode:I

    if-ne v3, v1, :cond_1

    .line 269
    const-string v3, "ClipboardUIManager"

    const-string v4, "ClipboardUIMAnager checkScrapMode() : ScrapMode"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_2
    sget v3, Landroid/sec/clipboard/ClipboardUIManager;->mClipboardMode:I

    if-ne v3, v1, :cond_2

    :goto_3
    move v2, v1

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 271
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v3, "ClipboardUIManager"

    const-string v4, "ClipboardUIMAnager checkScrapMode() : Normal Mode"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move v1, v2

    .line 273
    goto :goto_3
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 174
    const-string v0, "ClipboardUIManager"

    const-string v1, "ClipboardUIMAnager closeClipBoard()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/sec/clipboard/ClipboardUIManager;->closeClopboardUI(Z)Z

    .line 176
    return-void
.end method

.method public enabledDismissIntent(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 181
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "ClipboardUIManager"

    const-string v1, "Finish ClipboardService"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/sec/clipboard/ClipboardUIManager;->finish(Z)V

    .line 108
    return-void
.end method

.method public finish(Z)V
    .locals 4
    .param p1, "immediate"    # Z

    .prologue
    const/4 v3, 0x0

    .line 116
    const-string v0, "ClipboardUIManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/sec/clipboard/ClipboardUIManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 125
    :cond_0
    invoke-direct {p0, p1}, Landroid/sec/clipboard/ClipboardUIManager;->closeClopboardUI(Z)Z

    .line 126
    sput-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    .line 127
    return-void
.end method

.method public getPreviewIconXpos()F
    .locals 5

    .prologue
    .line 222
    const-string v3, "ClipboardUIManager"

    const-string v4, "ClipboardUIMAnager getPreviewIconXpos()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, "iconXpos":F
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 234
    .end local v1    # "iconXpos":F
    .local v2, "iconXpos":F
    :goto_0
    return v2

    .line 230
    .end local v2    # "iconXpos":F
    .restart local v1    # "iconXpos":F
    :cond_0
    :try_start_0
    sget-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardUIManager;->getIconXpos()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 234
    .end local v1    # "iconXpos":F
    .restart local v2    # "iconXpos":F
    goto :goto_0

    .line 231
    .end local v2    # "iconXpos":F
    .restart local v1    # "iconXpos":F
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getPreviewIconYpos()F
    .locals 5

    .prologue
    .line 238
    const-string v3, "ClipboardUIManager"

    const-string v4, "ClipboardUIMAnager getPreviewIconYpos()"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "iconYpos":F
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 250
    .end local v1    # "iconYpos":F
    .local v2, "iconYpos":F
    :goto_0
    return v2

    .line 246
    .end local v2    # "iconYpos":F
    .restart local v1    # "iconYpos":F
    :cond_0
    :try_start_0
    sget-object v3, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v3}, Landroid/sec/clipboard/IClipboardUIManager;->getIconYpos()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 250
    .end local v1    # "iconYpos":F
    .restart local v2    # "iconYpos":F
    goto :goto_0

    .line 247
    .end local v2    # "iconYpos":F
    .restart local v1    # "iconYpos":F
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public hideFloatingIconForScrap()V
    .locals 3

    .prologue
    .line 294
    const-string v1, "ClipboardUIManager"

    const-string v2, "ClipboardUIMAnager hideFloatingIconForScrap"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    :goto_0
    return-void

    .line 301
    :cond_0
    :try_start_0
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v1}, Landroid/sec/clipboard/IClipboardUIManager;->hideFloatingIconForScrap()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 4

    .prologue
    .line 184
    const-string v2, "ClipboardUIManager"

    const-string v3, "ClipboardUIMAnager isShowingClipBoard()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/4 v1, 0x0

    .line 188
    .local v1, "result":Z
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntime()Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    const/4 v2, 0x0

    .line 199
    :goto_0
    return v2

    .line 193
    :cond_0
    :try_start_0
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardUIManager;->isShowing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 199
    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public sendCropRectForAnimation(Landroid/graphics/Rect;Z)V
    .locals 7
    .param p1, "cropRect"    # Landroid/graphics/Rect;
    .param p2, "showAni"    # Z

    .prologue
    .line 309
    const-string v0, "ClipboardUIManager"

    const-string v1, "ClipboardUIMAnager hideFloatingIconForScrap"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 315
    :cond_0
    if-nez p1, :cond_1

    .line 316
    const-string v0, "ClipboardUIManager"

    const-string v1, "ClipboardUIMAnager cropRect is null. so, can not sendCropRectforAni"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 321
    :cond_1
    :try_start_0
    sget-object v0, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/sec/clipboard/IClipboardUIManager;->sendCropRectforAni(IIIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v6

    .line 323
    .local v6, "e1":Landroid/os/RemoteException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "clPasteEvent"    # Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .prologue
    .line 203
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntime()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    :goto_0
    return-void

    .line 207
    :cond_0
    :try_start_0
    sget-object v1, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v1, p1, p2}, Landroid/sec/clipboard/IClipboardUIManager;->setPasteTargetViewType(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "ClipboardUIManager"

    const-string v1, "ClipboardUIMAnager show()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->showClipBoard()Z

    .line 171
    return-void
.end method

.method public showFloatingIconForScrap()V
    .locals 4

    .prologue
    .line 277
    const-string v2, "ClipboardUIManager"

    const-string v3, "ClipboardUIMAnager showFloatingIconForScrap"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardUIManager;->setupInRuntimeForKeep()Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    iget-object v2, p0, Landroid/sec/clipboard/ClipboardUIManager;->mContext:Landroid/content/Context;

    const-string v3, "clipboardEx"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 281
    .local v0, "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->showUIFloatingIcon()V

    .line 290
    .end local v0    # "clipEx":Landroid/sec/clipboard/ClipboardExManager;
    :goto_0
    return-void

    .line 286
    :cond_0
    :try_start_0
    sget-object v2, Landroid/sec/clipboard/ClipboardUIManager;->mCBUIManager:Landroid/sec/clipboard/IClipboardUIManager;

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardUIManager;->showFloatingIconForScrap()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
