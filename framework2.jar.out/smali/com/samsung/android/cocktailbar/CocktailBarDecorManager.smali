.class public Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;
.super Ljava/lang/Object;
.source "CocktailBarDecorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;
    }
.end annotation


# static fields
.field public static final COCKTAILBAR_DECOR_TYPE_BITMAP:I = 0x1

.field public static final COCKTAILBAR_DECOR_TYPE_GIF:I = 0x2

.field public static final COCKTAILBAR_DECOR_TYPE_UNKNOWN:I

.field private static TAG:Ljava/lang/String;

.field private static sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

.field static sManagerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "CocktailBarDecorManager"

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sManagerCache:Ljava/util/WeakHashMap;

    .line 447
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->mContext:Landroid/content/Context;

    .line 461
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->initGlobals(Landroid/os/Looper;)V

    .line 462
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 465
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sManagerCache:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 466
    :try_start_0
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sManagerCache:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 467
    .local v0, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;>;"
    const/4 v1, 0x0

    .line 468
    .local v1, "result":Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "result":Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;
    check-cast v1, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;

    .line 471
    .restart local v1    # "result":Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;
    :cond_0
    if-nez v1, :cond_1

    .line 472
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;

    .end local v1    # "result":Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;
    invoke-direct {v1, p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;-><init>(Landroid/content/Context;)V

    .line 473
    .restart local v1    # "result":Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sManagerCache:Ljava/util/WeakHashMap;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_1
    monitor-exit v3

    return-object v1

    .line 476
    .end local v0    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;>;"
    .end local v1    # "result":Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static initGlobals(Landroid/os/Looper;)V
    .locals 2
    .param p0, "looper"    # Landroid/os/Looper;

    .prologue
    .line 452
    sget-object v1, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 453
    :try_start_0
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    invoke-direct {v0, p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    .line 456
    :cond_0
    monitor-exit v1

    .line 457
    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setCocktailBarDecor(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    const v2, 0x8000

    new-array v1, v2, [B

    .line 588
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_0

    .line 589
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 591
    :cond_0
    return-void
.end method


# virtual methods
.method public getDecorType()I
    .locals 2

    .prologue
    .line 502
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 503
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    const-string v1, "CocktailBarManagerService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v0, 0x0

    .line 506
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getCocktailBarDecorType()I

    move-result v0

    goto :goto_0
.end method

.method public getDesiredHeight()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 607
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 608
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    const-string v3, "CocktailBarManagerService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :goto_0
    return v1

    .line 612
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 613
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDesiredWidth()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 594
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 595
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    const-string v3, "CocktailBarManagerService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :goto_0
    return v1

    .line 599
    :cond_0
    :try_start_0
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getWidthHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 480
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 481
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    const-string v3, "CocktailBarManagerService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_0
    :goto_0
    return-object v1

    .line 484
    :cond_1
    sget-object v2, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    iget-object v3, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getCocktailBarDecorBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 485
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 486
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 487
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    goto :goto_0
.end method

.method public getMovie()Landroid/graphics/Movie;
    .locals 2

    .prologue
    .line 494
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 495
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    const-string v1, "CocktailBarManagerService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v0, 0x0

    .line 498
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getCocktailBarDecorMovie(Landroid/content/Context;)Landroid/graphics/Movie;

    move-result-object v0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 537
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    const-string v4, "CocktailBarManagerService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    :try_start_0
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailBarDecor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 542
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 545
    const/4 v1, 0x0

    .line 547
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 550
    if-eqz v2, :cond_2

    .line 551
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 553
    :cond_2
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailBarDecorChanged(I)V

    goto :goto_0

    .line 555
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 550
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_3

    .line 551
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 553
    :cond_3
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v4}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailBarDecorChanged(I)V

    .line 550
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setResource(I)V
    .locals 7
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v4}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v4

    if-nez v4, :cond_1

    .line 511
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    const-string v5, "CocktailBarManagerService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 516
    .local v3, "resources":Landroid/content/res/Resources;
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v4}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailBarDecor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 518
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 519
    const/4 v1, 0x0

    .line 521
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->setCocktailBarDecor(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 524
    if-eqz v2, :cond_2

    .line 525
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 527
    :cond_2
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->notifyCocktailBarDecorChanged()V

    goto :goto_0

    .line 530
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 524
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_3

    .line 525
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 527
    :cond_3
    sget-object v5, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->notifyCocktailBarDecorChanged()V

    .line 524
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 561
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 562
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;

    const-string v4, "CocktailBarManagerService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    :try_start_0
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;
    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setCocktailBarDecor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 567
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 570
    const/4 v1, 0x0

    .line 572
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->setCocktailBarDecor(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 575
    if-eqz v2, :cond_2

    .line 576
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 578
    :cond_2
    sget-object v3, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    invoke-virtual {v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->notifyCocktailBarDecorChanged()V

    goto :goto_0

    .line 580
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 575
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_3

    .line 576
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    .line 578
    :cond_3
    sget-object v4, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->sGlobals:Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->notifyCocktailBarDecorChanged()V

    .line 575
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
