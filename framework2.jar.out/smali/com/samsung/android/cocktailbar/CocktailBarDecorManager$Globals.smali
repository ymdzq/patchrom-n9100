.class Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;
.super Lcom/samsung/android/cocktailbar/ICocktailBarDecorManagerCallback$Stub;
.source "CocktailBarDecorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_COCKTAILBAR_DECOR:I = 0x1


# instance fields
.field private mCocktailBarDecor:Landroid/graphics/Bitmap;

.field private mDefaultCocktailBarDecor:Landroid/graphics/Bitmap;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarDecorManagerCallback$Stub;-><init>()V

    .line 79
    const-string v1, "CocktailBarService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 80
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    .line 81
    new-instance v1, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals$1;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mCocktailBarDecor:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mDefaultCocktailBarDecor:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;)Lcom/samsung/android/cocktailbar/ICocktailBarService;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    return-object v0
.end method

.method static generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 239
    if-nez p1, :cond_1

    move-object p1, v5

    .line 305
    .end local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 243
    .restart local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    const-string/jumbo v10, "window"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 244
    .local v9, "wm":Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 245
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 246
    iget v10, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {p1, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 248
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ne v10, p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-eq v10, p3, :cond_0

    .line 251
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    if-nez v10, :cond_3

    .line 252
    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Assuming Texture compressed bitmap."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_3
    const/4 v5, 0x0

    .line 258
    .local v5, "newbm":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 259
    iget v10, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v5, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 261
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 262
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 263
    .local v8, "targetRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 266
    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v10

    .line 267
    .local v2, "deltaw":I
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v10

    .line 269
    .local v1, "deltah":I
    if-gtz v2, :cond_4

    if-lez v1, :cond_6

    .line 272
    :cond_4
    if-le v2, v1, :cond_5

    .line 273
    int-to-float v10, p2

    iget v11, v8, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 277
    .local v7, "scale":F
    :goto_1
    iget v10, v8, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 278
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 289
    .end local v7    # "scale":F
    :goto_2
    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v10

    .line 290
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v10

    .line 291
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v1, 0x2

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 293
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 294
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 295
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 296
    const/4 v10, 0x0

    invoke-virtual {v0, p1, v10, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 298
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 299
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v5

    .line 300
    goto/16 :goto_0

    .line 275
    .end local v6    # "paint":Landroid/graphics/Paint;
    :cond_5
    int-to-float v10, p3

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    div-float v7, v10, v11

    .restart local v7    # "scale":F
    goto :goto_1

    .line 280
    .end local v7    # "scale":F
    :cond_6
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    iget v11, v8, Landroid/graphics/Rect;->right:I

    if-le v10, v11, :cond_7

    .line 281
    iput p2, v8, Landroid/graphics/Rect;->right:I

    .line 282
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v10, p2

    iget v11, v8, Landroid/graphics/Rect;->right:I

    div-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 301
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "deltah":I
    .end local v2    # "deltaw":I
    .end local v8    # "targetRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v3

    .line 302
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Can\'t generate default bitmap"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 303
    if-eqz v5, :cond_0

    .line 304
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 284
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v0    # "c":Landroid/graphics/Canvas;
    .restart local v1    # "deltah":I
    .restart local v2    # "deltaw":I
    .restart local v8    # "targetRect":Landroid/graphics/Rect;
    :cond_7
    :try_start_1
    iget v10, v8, Landroid/graphics/Rect;->right:I

    mul-int/2addr v10, p3

    iget v11, v8, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v10, v11

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 285
    iput p3, v8, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private getCocktailBarDecorTypeLocked(Landroid/graphics/BitmapFactory$Options;)I
    .locals 2
    .param p1, "opt"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 440
    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const/4 v0, 0x2

    .line 443
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCurrentCocktailBarDecorBitmapLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 127
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v5, "params":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v7, p0, v5}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarDecor(Lcom/samsung/android/cocktailbar/ICocktailBarDecorManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 129
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 130
    const-string/jumbo v7, "width"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 131
    .local v6, "width":I
    const-string v7, "height"

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 134
    .local v3, "height":I
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 135
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v6, v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 141
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 150
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :goto_0
    return-object v7

    .line 137
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Can\'t decode file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :cond_0
    :goto_1
    move-object v7, v8

    .line 150
    goto :goto_0

    .line 140
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catchall_0
    move-exception v7

    .line 141
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 140
    :goto_2
    :try_start_6
    throw v7
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 147
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :catch_1
    move-exception v7

    goto :goto_1

    .line 142
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_2
    move-exception v9

    goto :goto_2

    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v7

    goto :goto_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v8

    goto :goto_0
.end method

.method private getCurrentCocktailBarDecorMovieLocked(Landroid/content/Context;)Landroid/graphics/Movie;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    const/4 v3, 0x0

    .line 321
    .local v3, "movie":Landroid/graphics/Movie;
    const/4 v1, 0x0

    .line 322
    .local v1, "is":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 324
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v4, "params":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v5, p0, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarDecor(Lcom/samsung/android/cocktailbar/ICocktailBarDecorManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 326
    if-eqz v0, :cond_1

    .line 327
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 330
    if-eqz v2, :cond_0

    .line 331
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    move-object v1, v2

    .line 340
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 342
    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 348
    .end local v4    # "params":Landroid/os/Bundle;
    :cond_2
    :goto_1
    return-object v3

    .line 333
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "params":Landroid/os/Bundle;
    :catch_0
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 340
    .end local v4    # "params":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v0, :cond_3

    .line 342
    :try_start_4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 340
    :cond_3
    :goto_3
    throw v5

    .line 337
    :catch_1
    move-exception v5

    .line 340
    :goto_4
    if-eqz v0, :cond_2

    .line 342
    :try_start_5
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 343
    :catch_2
    move-exception v5

    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_3

    .line 340
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "params":Landroid/os/Bundle;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 337
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v5

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_4
.end method

.method private getDefaultCocktailBarDecorBitmapLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getDefaultCocktailBarDecorInputSteamLocked()Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 156
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 158
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v6}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getWidthHint()I

    move-result v5

    .line 159
    .local v5, "width":I
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v6}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getHeightHint()I

    move-result v2

    .line 160
    .local v2, "height":I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 161
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    invoke-static {v3, v6, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-static {p1, v0, v5, v2}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 167
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 176
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "height":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "width":I
    :goto_0
    return-object v6

    .line 163
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Can\'t decode stream"

    invoke-static {v6, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_1
    move-object v6, v7

    .line 176
    goto :goto_0

    .line 166
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    .line 167
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 166
    :goto_2
    :try_start_6
    throw v6
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 173
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v6

    goto :goto_1

    .line 168
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v8

    goto :goto_2

    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v6

    goto :goto_1

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "height":I
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "width":I
    :catch_4
    move-exception v7

    goto :goto_0
.end method

.method private getDefaultCocktailBarDecorFileLocked()Ljava/io/File;
    .locals 14

    .prologue
    .line 195
    const-string v7, "/system/cocktailbar_decor/default_cocktailbar_decor/"

    .line 196
    .local v7, "defaultCocktailBarDecorFilePath":Ljava/lang/String;
    const-string v8, "/system/csc_contents/"

    .line 197
    .local v8, "defaultCocktailBarDecorFilePathMultiCSC":Ljava/lang/String;
    const/4 v3, 0x0

    .line 199
    .local v3, "cocktailBarDecorFileMultiCSC":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v6, "cocktailBarDecorFilePathMultiCSC":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "cocktailBarDecorFileListMultiCSC":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 203
    .local v10, "isDefaultCocktailBarDecorInMultiCsc":Z
    if-eqz v2, :cond_1

    .line 205
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v11, v2

    if-ge v9, v11, :cond_0

    .line 206
    aget-object v11, v2, v9

    const-string v12, "default_cocktailbar_decor"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 207
    const/4 v10, 0x1

    .line 211
    :cond_0
    if-eqz v10, :cond_1

    .line 212
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v2, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v3    # "cocktailBarDecorFileMultiCSC":Ljava/io/File;
    .local v4, "cocktailBarDecorFileMultiCSC":Ljava/io/File;
    move-object v3, v4

    .line 216
    .end local v4    # "cocktailBarDecorFileMultiCSC":Ljava/io/File;
    .end local v9    # "i":I
    .restart local v3    # "cocktailBarDecorFileMultiCSC":Ljava/io/File;
    :cond_1
    const/4 v5, 0x0

    .line 217
    .local v5, "cocktailBarDecorFilePath":Ljava/io/File;
    if-eqz v10, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 218
    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v11

    const-string v12, "getDefaultCocktailBarDecorLocked() symbolic link is used."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v5, Ljava/io/File;

    .end local v5    # "cocktailBarDecorFilePath":Ljava/io/File;
    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .restart local v5    # "cocktailBarDecorFilePath":Ljava/io/File;
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "cocktailBarDecorFileList":[Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "cocktailBarDecorFile":Ljava/io/File;
    if-eqz v10, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 228
    move-object v0, v3

    .line 229
    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getDefaultCocktailBarDecorLocked(). symbolic link path is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v0    # "cocktailBarDecorFile":Ljava/io/File;
    :goto_2
    return-object v0

    .line 205
    .end local v1    # "cocktailBarDecorFileList":[Ljava/lang/String;
    .end local v5    # "cocktailBarDecorFilePath":Ljava/io/File;
    .restart local v9    # "i":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 221
    .end local v9    # "i":I
    .restart local v5    # "cocktailBarDecorFilePath":Ljava/io/File;
    :cond_3
    new-instance v5, Ljava/io/File;

    .end local v5    # "cocktailBarDecorFilePath":Ljava/io/File;
    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v5    # "cocktailBarDecorFilePath":Ljava/io/File;
    goto :goto_1

    .line 231
    .restart local v0    # "cocktailBarDecorFile":Ljava/io/File;
    .restart local v1    # "cocktailBarDecorFileList":[Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/io/File;

    .end local v0    # "cocktailBarDecorFile":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "cocktailBarDecorFile":Ljava/io/File;
    goto :goto_2

    .line 235
    .end local v0    # "cocktailBarDecorFile":Ljava/io/File;
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private getDefaultCocktailBarDecorInputSteamLocked()Ljava/io/InputStream;
    .locals 8

    .prologue
    .line 180
    const/4 v2, 0x0

    .line 181
    .local v2, "is":Ljava/io/InputStream;
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getDefaultCocktailBarDecorFileLocked()Ljava/io/File;

    move-result-object v0

    .line 182
    .local v0, "cocktailBarDecorFile":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 185
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    move-object v2, v3

    .line 190
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v2

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CSC CocktailBar Decor FileInputStream error"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getDefaultCocktailBarDecorMovieLocked()Landroid/graphics/Movie;
    .locals 9

    .prologue
    .line 352
    const/4 v4, 0x0

    .line 353
    .local v4, "movie":Landroid/graphics/Movie;
    const/4 v2, 0x0

    .line 354
    .local v2, "is":Ljava/io/InputStream;
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getDefaultCocktailBarDecorFileLocked()Ljava/io/File;

    move-result-object v0

    .line 355
    .local v0, "cocktailBarDecorFile":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 358
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    .end local v2    # "is":Ljava/io/InputStream;
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v3}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 364
    if-eqz v3, :cond_0

    .line 365
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v2, v3

    .line 372
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_1
    return-object v4

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CSC CocktailBar Decor FileInputStream error"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 364
    if-eqz v2, :cond_1

    .line 365
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 367
    :catch_1
    move-exception v5

    goto :goto_1

    .line 363
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 364
    :goto_3
    if-eqz v2, :cond_2

    .line 365
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 363
    :cond_2
    :goto_4
    throw v5

    .line 367
    :catch_2
    move-exception v6

    goto :goto_4

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v5

    goto :goto_0

    .line 363
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 360
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private getSystemCocktailBarDecorTypeLocked()I
    .locals 8

    .prologue
    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "decorType":I
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 421
    .local v5, "params":Landroid/os/Bundle;
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v6, p0, v5}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getCocktailBarDecor(Lcom/samsung/android/cocktailbar/ICocktailBarDecorManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 422
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_0

    .line 423
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 424
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 425
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 426
    invoke-direct {p0, v4}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getCocktailBarDecorTypeLocked(Landroid/graphics/BitmapFactory$Options;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 428
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 436
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return v0

    .line 429
    .restart local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 433
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v2

    .line 434
    .local v2, "e1":Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCocktailBarDecorBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mCocktailBarDecor:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mCocktailBarDecor:Landroid/graphics/Bitmap;

    monitor-exit p0

    .line 121
    :goto_0
    return-object v1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mDefaultCocktailBarDecor:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mDefaultCocktailBarDecor:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 109
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mCocktailBarDecor:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :try_start_2
    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getCurrentCocktailBarDecorBitmapLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mCocktailBarDecor:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mCocktailBarDecor:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 116
    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getDefaultCocktailBarDecorBitmapLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mDefaultCocktailBarDecor:Landroid/graphics/Bitmap;

    .line 117
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mDefaultCocktailBarDecor:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No memory load current mDecorailBarDecor"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 119
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mDefaultCocktailBarDecor:Landroid/graphics/Bitmap;

    .line 121
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mCocktailBarDecor:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public getCocktailBarDecorMovie(Landroid/content/Context;)Landroid/graphics/Movie;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 310
    monitor-enter p0

    .line 311
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getCurrentCocktailBarDecorMovieLocked(Landroid/content/Context;)Landroid/graphics/Movie;

    move-result-object v0

    .line 312
    .local v0, "movie":Landroid/graphics/Movie;
    if-nez v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getDefaultCocktailBarDecorMovieLocked()Landroid/graphics/Movie;

    move-result-object v0

    .line 315
    :cond_0
    monitor-exit p0

    return-object v0

    .line 316
    .end local v0    # "movie":Landroid/graphics/Movie;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCocktailBarDecorType()I
    .locals 5

    .prologue
    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "decorType":I
    monitor-enter p0

    .line 392
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->getDecorType()I

    move-result v0

    .line 393
    if-nez v0, :cond_1

    .line 394
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getSystemCocktailBarDecorTypeLocked()I

    move-result v0

    .line 395
    if-nez v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getDefaultCocktailBarDecorFileLocked()Ljava/io/File;

    move-result-object v2

    .line 397
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_0

    .line 398
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 399
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 400
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 401
    invoke-direct {p0, v3}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getCocktailBarDecorTypeLocked(Landroid/graphics/BitmapFactory$Options;)I

    move-result v0

    .line 404
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    if-eqz v0, :cond_1

    .line 405
    iget-object v4, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v4, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->setDecorType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return v0

    .line 408
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 413
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public notifyCocktailBarDecorChanged()V
    .locals 3

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "decorType":I
    monitor-enter p0

    .line 379
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->getSystemCocktailBarDecorTypeLocked()I

    move-result v0

    .line 380
    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mService:Lcom/samsung/android/cocktailbar/ICocktailBarService;

    invoke-interface {v2, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService;->notifyCocktailBarDecorChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 386
    return-void

    .line 381
    :catch_0
    move-exception v1

    .line 383
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 385
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onCocktailBarDecorChanged()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarDecorManager$Globals;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 99
    return-void
.end method
