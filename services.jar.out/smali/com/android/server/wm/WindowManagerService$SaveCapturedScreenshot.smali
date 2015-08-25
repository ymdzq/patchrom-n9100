.class Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;
.super Ljava/lang/Thread;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveCapturedScreenshot"
.end annotation


# instance fields
.field scAppToken:Landroid/os/IBinder;

.field scHeight:I

.field scKey:Ljava/lang/String;

.field scRot:I

.field scTempBitmap:Landroid/graphics/Bitmap;

.field scWidth:I

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .prologue
    .line 15170
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    .line 15166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    .line 15171
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p2, "appToken"    # Landroid/os/IBinder;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 15173
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 15163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    .line 15166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    .line 15174
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scAppToken:Landroid/os/IBinder;

    .line 15175
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    .line 15176
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->captureFullScreen()V

    .line 15177
    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;

    .prologue
    .line 15162
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->checkCaptureFolder()V

    return-void
.end method

.method private checkCaptureFolder()V
    .locals 21

    .prologue
    .line 15483
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 15485
    .local v4, "before":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCapturedScreensPortFile:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/WindowManagerService;->access$3100(Lcom/android/server/wm/WindowManagerService;)Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->clear()V

    .line 15486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCapturedScreensLandFile:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/WindowManagerService;->access$3000(Lcom/android/server/wm/WindowManagerService;)Ljava/util/Map;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->clear()V

    .line 15488
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->makingCaptureFolder()Z

    .line 15490
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2700()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v17, v0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2700()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v19, v0

    div-double v17, v17, v19

    const-wide/high16 v19, 0x4059000000000000L    # 100.0

    mul-double v13, v17, v19

    .line 15491
    .local v13, "perFree":D
    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    cmpg-double v17, v13, v17

    if-gez v17, :cond_0

    .line 15492
    const-string v17, "*"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeCaptureFiles(Ljava/lang/String;)V

    .line 15493
    const-string v17, "WindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "precap there is too small space "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "%, so delete captures "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15544
    :goto_0
    return-void

    .line 15497
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 15498
    .local v15, "pm":Landroid/content/pm/PackageManager;
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathPort:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2900()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    .line 15500
    .local v16, "tmpCapturedFolders":[Ljava/io/File;
    move-object/from16 v2, v16

    .local v2, "arr$":[Ljava/io/File;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v2    # "arr$":[Ljava/io/File;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .local v10, "i$":I
    :goto_1
    if-ge v10, v11, :cond_4

    aget-object v8, v2, v10

    .line 15501
    .local v8, "folder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_2

    .line 15502
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 15500
    .end local v10    # "i$":I
    :cond_1
    :goto_2
    add-int/lit8 v9, v10, 0x1

    .restart local v9    # "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto :goto_1

    .line 15506
    :cond_2
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15512
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .local v3, "arr$":[Ljava/io/File;
    array-length v12, v3

    .local v12, "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_3
    if-ge v9, v12, :cond_1

    aget-object v7, v3, v9

    .line 15513
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, ".tmp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 15514
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 15512
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 15507
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .restart local v10    # "i$":I
    :catch_0
    move-exception v6

    .line 15508
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v17, "WindowManager"

    const-string v18, "precap the app is removed. capture remove also"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15509
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeFolder(Ljava/io/File;)V

    goto :goto_2

    .line 15517
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "i$":I
    .restart local v3    # "arr$":[Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    :cond_3
    const-string v17, "WindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "precap checked file is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCapturedScreensPortFile:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/WindowManagerService;->access$3100(Lcom/android/server/wm/WindowManagerService;)Ljava/util/Map;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 15522
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "folder":Ljava/io/File;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .restart local v10    # "i$":I
    :cond_4
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathLand:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2800()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    .line 15523
    move-object/from16 v2, v16

    .restart local v2    # "arr$":[Ljava/io/File;
    array-length v11, v2

    .restart local v11    # "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    move v10, v9

    .end local v2    # "arr$":[Ljava/io/File;
    .end local v9    # "i$":I
    .end local v11    # "len$":I
    .restart local v10    # "i$":I
    :goto_5
    if-ge v10, v11, :cond_8

    aget-object v8, v2, v10

    .line 15524
    .restart local v8    # "folder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_6

    .line 15525
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 15523
    .end local v10    # "i$":I
    :cond_5
    :goto_6
    add-int/lit8 v9, v10, 0x1

    .restart local v9    # "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto :goto_5

    .line 15529
    :cond_6
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 15535
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .restart local v3    # "arr$":[Ljava/io/File;
    array-length v12, v3

    .restart local v12    # "len$":I
    const/4 v9, 0x0

    .end local v10    # "i$":I
    .restart local v9    # "i$":I
    :goto_7
    if-ge v9, v12, :cond_5

    aget-object v7, v3, v9

    .line 15536
    .restart local v7    # "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, ".tmp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 15537
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 15535
    :goto_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 15530
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .restart local v10    # "i$":I
    :catch_1
    move-exception v6

    .line 15531
    .restart local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v17, "WindowManager"

    const-string v18, "precap the app was removed. capture remove also"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15532
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeFolder(Ljava/io/File;)V

    goto :goto_6

    .line 15540
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "i$":I
    .restart local v3    # "arr$":[Ljava/io/File;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCapturedScreensLandFile:Ljava/util/Map;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/WindowManagerService;->access$3000(Lcom/android/server/wm/WindowManagerService;)Ljava/util/Map;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 15543
    .end local v3    # "arr$":[Ljava/io/File;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "folder":Ljava/io/File;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .restart local v10    # "i$":I
    :cond_8
    const-string v17, "WindowManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "precap check capture folder "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v4

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private makingCaptureFolder()Z
    .locals 1

    .prologue
    .line 15547
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathPort:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2900()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathLand:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2800()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 15548
    :cond_0
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2700()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15549
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2700()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 15551
    :cond_1
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathLand:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2800()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 15552
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathLand:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2800()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 15554
    :cond_2
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathPort:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2900()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 15555
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathPort:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2900()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 15557
    :cond_3
    const/4 v0, 0x1

    .line 15559
    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeFolder(Ljava/io/File;)V
    .locals 7
    .param p1, "folder"    # Ljava/io/File;

    .prologue
    .line 15640
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 15652
    :goto_0
    return-void

    .line 15643
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 15644
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "land"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 15645
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCapturedScreensLandFile:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->access$3000(Lcom/android/server/wm/WindowManagerService;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15649
    :goto_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 15643
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 15647
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCapturedScreensPortFile:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->access$3100(Lcom/android/server/wm/WindowManagerService;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 15651
    .end local v1    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private removeOldestCaptureFiles()V
    .locals 12

    .prologue
    .line 15601
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 15603
    .local v1, "before":J
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->makingCaptureFolder()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 15604
    const-string v8, "WindowManager"

    const-string v9, "precap There are no folders to delete"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15637
    :goto_0
    return-void

    .line 15608
    :cond_0
    const/4 v7, 0x0

    .line 15610
    .local v7, "oldestCaptureFolder":Ljava/io/File;
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathLand:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2800()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 15611
    .local v3, "checkingFolders":[Ljava/io/File;
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v4, v0, v5

    .line 15612
    .local v4, "folder":Ljava/io/File;
    if-nez v7, :cond_2

    .line 15613
    move-object v7, v4

    .line 15611
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 15616
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_1

    .line 15617
    move-object v7, v4

    goto :goto_2

    .line 15621
    .end local v4    # "folder":Ljava/io/File;
    :cond_3
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathPort:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2900()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 15622
    move-object v0, v3

    array-length v6, v0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v6, :cond_6

    aget-object v4, v0, v5

    .line 15623
    .restart local v4    # "folder":Ljava/io/File;
    if-nez v7, :cond_5

    .line 15624
    move-object v7, v4

    .line 15622
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 15627
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gtz v8, :cond_4

    .line 15628
    move-object v7, v4

    goto :goto_4

    .line 15632
    .end local v4    # "folder":Ljava/io/File;
    :cond_6
    if-eqz v7, :cond_7

    .line 15633
    invoke-direct {p0, v7}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeFolder(Ljava/io/File;)V

    .line 15636
    :cond_7
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "precap oldest file deleted "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public captureFullScreen()V
    .locals 28

    .prologue
    .line 15327
    const/4 v15, 0x0

    .line 15329
    .local v15, "maxLayer":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scAppToken:Landroid/os/IBinder;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 15330
    const/16 v17, 0x1

    .line 15331
    .local v17, "screenshotReady":Z
    const/16 v16, 0x0

    .line 15337
    .local v16, "minLayer":I
    :goto_0
    const/4 v4, 0x0

    .line 15338
    .local v4, "appWin":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 15339
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    .line 15340
    .local v8, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v8, :cond_2

    .line 15341
    const-string v23, "WindowManager"

    const-string v25, "precap displayContent isn\'t"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15342
    monitor-exit v24

    .line 15480
    :cond_0
    :goto_1
    return-void

    .line 15333
    .end local v4    # "appWin":Lcom/android/server/wm/WindowState;
    .end local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v16    # "minLayer":I
    .end local v17    # "screenshotReady":Z
    :cond_1
    const/16 v17, 0x0

    .line 15334
    .restart local v17    # "screenshotReady":Z
    const v16, 0x7fffffff

    .restart local v16    # "minLayer":I
    goto :goto_0

    .line 15344
    .restart local v4    # "appWin":Lcom/android/server/wm/WindowState;
    .restart local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v9

    .line 15345
    .local v9, "displayInfo":Landroid/view/DisplayInfo;
    iget v0, v9, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    .line 15346
    iget v0, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    .line 15348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v23, v0

    const/16 v25, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v23

    move/from16 v0, v23

    mul-int/lit16 v0, v0, 0x2710

    move/from16 v23, v0

    move/from16 v0, v23

    add-int/lit16 v3, v0, 0x3e8

    .line 15350
    .local v3, "aboveAppLayer":I
    add-int/lit16 v3, v3, 0x2710

    .line 15352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scAppToken:Landroid/os/IBinder;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    const/4 v14, 0x1

    .line 15359
    .local v14, "isImeShowing":Z
    :goto_2
    if-eqz v14, :cond_4

    .line 15360
    const-string v23, "WindowManager"

    const-string v25, "precap There is an IME. so it should not be captured."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15361
    monitor-exit v24

    goto/16 :goto_1

    .line 15474
    .end local v3    # "aboveAppLayer":I
    .end local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v9    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v14    # "isImeShowing":Z
    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    .line 15352
    .restart local v3    # "aboveAppLayer":I
    .restart local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v9    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 15365
    .restart local v14    # "isImeShowing":Z
    :cond_4
    const/4 v13, 0x0

    .line 15366
    .local v13, "including":Z
    const/4 v4, 0x0

    .line 15368
    :try_start_1
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v21

    .line 15370
    .local v21, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v11, v23, -0x1

    .local v11, "i":I
    :goto_3
    if-ltz v11, :cond_d

    .line 15371
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/wm/WindowState;

    .line 15372
    .local v22, "ws":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move/from16 v23, v0

    if-nez v23, :cond_6

    .line 15370
    :cond_5
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 15375
    :cond_6
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v0, v3, :cond_5

    .line 15378
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v23, v0

    const/16 v25, 0x3

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    .line 15381
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->isFloating()Z

    move-result v23

    if-nez v23, :cond_5

    .line 15387
    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scAppToken:Landroid/os/IBinder;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    .line 15390
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scAppToken:Landroid/os/IBinder;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 15393
    move-object/from16 v4, v22

    .line 15396
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    move/from16 v25, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->isFullscreen(II)Z

    move-result v10

    .line 15398
    .local v10, "fullscreen":Z
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v20, v0

    .line 15399
    .local v20, "winAnim":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_8

    .line 15400
    move-object/from16 v0, v20

    iget v15, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    .line 15402
    :cond_8
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-le v0, v1, :cond_9

    .line 15403
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v16, v0

    .line 15406
    :cond_9
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scAppToken:Landroid/os/IBinder;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_a

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 15407
    const/16 v17, 0x1

    .line 15410
    :cond_a
    if-eqz v10, :cond_5

    .line 15412
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .line 15413
    .local v7, "cw":Lcom/android/server/wm/WindowState;
    iget-boolean v0, v7, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 15416
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    .line 15417
    iget-object v0, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceLayer:I

    move/from16 v16, v0

    goto :goto_4

    .line 15421
    .end local v7    # "cw":Lcom/android/server/wm/WindowState;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v18

    .line 15422
    .local v18, "spec":Landroid/view/MagnificationSpec;
    if-eqz v18, :cond_d

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v23, v0

    const/high16 v25, 0x3f800000    # 1.0f

    cmpg-float v23, v23, v25

    if-gez v23, :cond_d

    .line 15423
    const-string v23, "WindowManager"

    const-string v25, "precap frame isn\'t real fullscreen. it may using onehand operation."

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15424
    monitor-exit v24

    goto/16 :goto_1

    .line 15432
    .end local v10    # "fullscreen":Z
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v18    # "spec":Landroid/view/MagnificationSpec;
    .end local v20    # "winAnim":Lcom/android/server/wm/WindowStateAnimator;
    .end local v22    # "ws":Lcom/android/server/wm/WindowState;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scAppToken:Landroid/os/IBinder;

    move-object/from16 v23, v0

    if-eqz v23, :cond_e

    if-nez v4, :cond_e

    .line 15435
    monitor-exit v24

    goto/16 :goto_1

    .line 15437
    :cond_e
    if-nez v17, :cond_f

    .line 15441
    monitor-exit v24

    goto/16 :goto_1

    .line 15444
    :cond_f
    if-nez v15, :cond_10

    .line 15446
    monitor-exit v24

    goto/16 :goto_1

    .line 15451
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/view/Display;->getRotation()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    .line 15453
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v23, v0

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v23, v0

    const/16 v25, 0x3

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    .line 15454
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    move/from16 v19, v0

    .line 15455
    .local v19, "tmp":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    .line 15456
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    .line 15457
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v23, v0

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    const/16 v23, 0x3

    :goto_5
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    .line 15470
    .end local v19    # "tmp":I
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 15472
    .local v5, "before":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v15}, Landroid/view/SurfaceControl;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    .line 15473
    const-string v23, "WindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "precap Surface screenshot "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v5

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15474
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 15477
    const-string v23, "WindowManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "precap Screenshot failure taking screenshot for ("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "x"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ") to layer "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 15457
    .end local v5    # "before":J
    .restart local v19    # "tmp":I
    :cond_13
    const/16 v23, 0x1

    goto/16 :goto_5
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15180
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    .line 15181
    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    .line 15182
    return-void
.end method

.method public removeCaptureFiles(Ljava/lang/String;)V
    .locals 14
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 15563
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 15565
    .local v1, "before":J
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->makingCaptureFolder()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 15566
    const-string v10, "WindowManager"

    const-string v11, "precap There are no folders to delete"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15598
    :goto_0
    return-void

    .line 15570
    :cond_0
    const-string v10, "*"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 15571
    .local v3, "deleteAll":Z
    const-string v10, "land"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 15572
    .local v4, "deleteLand":Z
    const-string v10, "port"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 15574
    .local v5, "deletePort":Z
    const/4 v9, 0x0

    .line 15576
    .local v9, "removeFolders":[Ljava/io/File;
    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    .line 15577
    :cond_1
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathLand:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2800()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 15578
    move-object v0, v9

    .local v0, "arr$":[Ljava/io/File;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v8, :cond_2

    aget-object v6, v0, v7

    .line 15579
    .local v6, "folder":Ljava/io/File;
    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeFolder(Ljava/io/File;)V

    .line 15578
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 15583
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v6    # "folder":Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_2
    if-nez v3, :cond_3

    if-eqz v5, :cond_4

    .line 15584
    :cond_3
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathPort:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2900()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 15585
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/io/File;
    array-length v8, v0

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v8, :cond_4

    aget-object v6, v0, v7

    .line 15586
    .restart local v6    # "folder":Ljava/io/File;
    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeFolder(Ljava/io/File;)V

    .line 15585
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 15590
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v6    # "folder":Ljava/io/File;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :cond_4
    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-nez v5, :cond_5

    .line 15591
    new-instance v6, Ljava/io/File;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathLand:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2800()Ljava/io/File;

    move-result-object v10

    invoke-direct {v6, v10, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15592
    .restart local v6    # "folder":Ljava/io/File;
    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeFolder(Ljava/io/File;)V

    .line 15593
    new-instance v6, Ljava/io/File;

    .end local v6    # "folder":Ljava/io/File;
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathPort:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2900()Ljava/io/File;

    move-result-object v10

    invoke-direct {v6, v10, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15594
    .restart local v6    # "folder":Ljava/io/File;
    invoke-direct {p0, v6}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeFolder(Ljava/io/File;)V

    .line 15597
    .end local v6    # "folder":Ljava/io/File;
    :cond_5
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "precap file deleted with option "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v1

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public run()V
    .locals 33

    .prologue
    .line 15186
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 15188
    .local v5, "before":J
    const/4 v12, 0x0

    .line 15189
    .local v12, "folderName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 15190
    .local v9, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    move-object/from16 v28, v0

    if-nez v28, :cond_0

    .line 15191
    const-string v28, "WindowManager"

    const-string v29, "precap there is no component. skip saving"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15322
    :goto_0
    return-void

    .line 15194
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 15195
    .local v25, "tmp":[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 15196
    const/16 v28, 0x0

    aget-object v12, v25, v28

    .line 15197
    const/16 v28, 0x1

    aget-object v9, v25, v28

    .line 15204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    if-nez v28, :cond_2

    .line 15205
    const-string v28, "WindowManager"

    const-string v29, "precap there is no Bitmap. skip saving"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15199
    :cond_1
    const-string v28, "WindowManager"

    const-string v29, "precap key is invalid. skip saving"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15209
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scAppToken:Landroid/os/IBinder;

    move-object/from16 v28, v0

    if-nez v28, :cond_3

    .line 15210
    const-string v28, "WindowManager"

    const-string v29, "precap there is no AppToken. skip saving"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15214
    :cond_3
    const/4 v4, 0x1

    .line 15215
    .local v4, "allBlack":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v10

    .line 15216
    .local v10, "firstColor":I
    const/4 v15, 0x1

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    move/from16 v0, v28

    if-ge v15, v0, :cond_6

    .line 15217
    const/16 v16, 0x1

    .local v16, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    .line 15218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v28

    move/from16 v0, v28

    if-eq v0, v10, :cond_5

    .line 15219
    const/4 v4, 0x0

    .line 15216
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    div-int/lit8 v28, v28, 0x64

    add-int v15, v15, v28

    goto :goto_1

    .line 15217
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v28

    div-int/lit8 v28, v28, 0x64

    add-int v16, v16, v28

    goto :goto_2

    .line 15224
    .end local v16    # "j":I
    :cond_6
    if-eqz v4, :cond_7

    .line 15225
    const-string v28, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "precap Black screen. skip capture saving "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v5

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 15230
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 15232
    const/16 v22, 0x0

    .line 15233
    .local v22, "rawssFullsize":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v28, v0

    if-nez v28, :cond_d

    .line 15234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    .line 15249
    :goto_3
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    .line 15250
    const-string v28, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "precap ImageRotation "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v5

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 15254
    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2700()Ljava/io/File;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-double v0, v0

    move-wide/from16 v28, v0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPath:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2700()Ljava/io/File;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    const-wide/high16 v30, 0x4059000000000000L    # 100.0

    mul-double v18, v28, v30

    .line 15255
    .local v18, "perFree":D
    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    cmpg-double v28, v18, v28

    if-gez v28, :cond_8

    .line 15256
    const-string v28, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "precap there is only "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "% space. remove oldest capture"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15257
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->removeOldestCaptureFiles()V

    .line 15260
    :cond_8
    const/4 v13, 0x0

    .line 15261
    .local v13, "fos":Ljava/io/FileOutputStream;
    const/4 v11, 0x0

    .line 15263
    .local v11, "fis":Ljava/io/FileInputStream;
    const/16 v20, 0x0

    .line 15264
    .local v20, "pkgFolder":Ljava/io/File;
    const/16 v26, 0x0

    .line 15265
    .local v26, "tmpFile":Ljava/io/File;
    const/16 v23, 0x0

    .line 15266
    .local v23, "realFile":Ljava/io/File;
    :try_start_0
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_10

    .line 15268
    new-instance v21, Ljava/io/File;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathLand:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2800()Ljava/io/File;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15269
    .end local v20    # "pkgFolder":Ljava/io/File;
    .local v21, "pkgFolder":Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_9

    .line 15270
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdir()Z

    .line 15272
    :cond_9
    new-instance v27, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ".tmp"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15273
    .end local v26    # "tmpFile":Ljava/io/File;
    .local v27, "tmpFile":Ljava/io/File;
    :try_start_2
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15274
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .local v14, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    sget-object v28, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v29, 0x64

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 15276
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v23    # "realFile":Ljava/io/File;
    .local v24, "realFile":Ljava/io/File;
    move-object/from16 v23, v24

    .end local v24    # "realFile":Ljava/io/File;
    .restart local v23    # "realFile":Ljava/io/File;
    move-object/from16 v26, v27

    .end local v27    # "tmpFile":Ljava/io/File;
    .restart local v26    # "tmpFile":Ljava/io/File;
    move-object/from16 v20, v21

    .end local v21    # "pkgFolder":Ljava/io/File;
    .restart local v20    # "pkgFolder":Ljava/io/File;
    move-object v13, v14

    .line 15289
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_4
    const-string v28, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "precap write "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v5

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15290
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 15292
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_a

    .line 15293
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    .line 15296
    :cond_a
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 15298
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v28

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_12

    .line 15299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCapturedScreensLandFile:Ljava/util/Map;
    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->access$3000(Lcom/android/server/wm/WindowManagerService;)Ljava/util/Map;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 15308
    :goto_5
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    .line 15309
    const/16 v22, 0x0

    .line 15310
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->clear()V

    .line 15312
    if-eqz v13, :cond_b

    .line 15313
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 15315
    :cond_b
    if-eqz v11, :cond_c

    .line 15316
    throw v11
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b

    .line 15320
    :cond_c
    :goto_6
    const-string v28, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "precap copy "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v5

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 15236
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v18    # "perFree":D
    .end local v20    # "pkgFolder":Ljava/io/File;
    .end local v23    # "realFile":Ljava/io/File;
    .end local v26    # "tmpFile":Ljava/io/File;
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    .line 15237
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    move/from16 v29, v0

    sget-object v30, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v28 .. v30}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    .line 15242
    :goto_7
    new-instance v17, Landroid/graphics/Matrix;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Matrix;-><init>()V

    .line 15243
    .local v17, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    move/from16 v30, v0

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenRotationAnimation;->createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 15244
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 15245
    .local v7, "canvas":Landroid/graphics/Canvas;
    const/high16 v28, -0x1000000

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 15246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scTempBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    move-object/from16 v2, v29

    invoke-virtual {v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 15247
    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 15239
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v17    # "matrix":Landroid/graphics/Matrix;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scWidth:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scHeight:I

    move/from16 v29, v0

    sget-object v30, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v28 .. v30}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v22

    goto :goto_7

    .line 15279
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "perFree":D
    .restart local v20    # "pkgFolder":Ljava/io/File;
    .restart local v23    # "realFile":Ljava/io/File;
    .restart local v26    # "tmpFile":Ljava/io/File;
    :cond_10
    :try_start_6
    new-instance v21, Ljava/io/File;

    # getter for: Lcom/android/server/wm/WindowManagerService;->mSystemCapturedPathPort:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$2900()Ljava/io/File;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 15280
    .end local v20    # "pkgFolder":Ljava/io/File;
    .restart local v21    # "pkgFolder":Ljava/io/File;
    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v28

    if-nez v28, :cond_11

    .line 15281
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdir()Z

    .line 15283
    :cond_11
    new-instance v27, Ljava/io/File;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ".tmp"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 15284
    .end local v26    # "tmpFile":Ljava/io/File;
    .restart local v27    # "tmpFile":Ljava/io/File;
    :try_start_8
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v27

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 15285
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    :try_start_9
    sget-object v28, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v29, 0x64

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v14}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 15287
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .end local v23    # "realFile":Ljava/io/File;
    .restart local v24    # "realFile":Ljava/io/File;
    move-object/from16 v23, v24

    .end local v24    # "realFile":Ljava/io/File;
    .restart local v23    # "realFile":Ljava/io/File;
    move-object/from16 v26, v27

    .end local v27    # "tmpFile":Ljava/io/File;
    .restart local v26    # "tmpFile":Ljava/io/File;
    move-object/from16 v20, v21

    .end local v21    # "pkgFolder":Ljava/io/File;
    .restart local v20    # "pkgFolder":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 15301
    :cond_12
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/wm/WindowManagerService;->mCapturedScreensPortFile:Ljava/util/Map;
    invoke-static/range {v28 .. v28}, Lcom/android/server/wm/WindowManagerService;->access$3100(Lcom/android/server/wm/WindowManagerService;)Ljava/util/Map;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scKey:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    .line 15303
    :catch_0
    move-exception v8

    .line 15304
    .local v8, "e":Ljava/io/FileNotFoundException;
    :goto_8
    :try_start_b
    const-string v28, "WindowManager"

    const-string v29, "precap file saving FNE. just skip it."

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 15308
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    .line 15309
    const/16 v22, 0x0

    .line 15310
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->clear()V

    .line 15312
    if-eqz v13, :cond_13

    .line 15313
    :try_start_c
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 15315
    :cond_13
    if-eqz v11, :cond_14

    .line 15316
    throw v11
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 15320
    :cond_14
    :goto_9
    const-string v28, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "precap copy "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v5

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 15305
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v8

    .line 15306
    .local v8, "e":Ljava/io/IOException;
    :goto_a
    :try_start_d
    const-string v28, "WindowManager"

    const-string v29, "precap file saving IOE. just skip it."

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 15308
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    .line 15309
    const/16 v22, 0x0

    .line 15310
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->clear()V

    .line 15312
    if-eqz v13, :cond_15

    .line 15313
    :try_start_e
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 15315
    :cond_15
    if-eqz v11, :cond_16

    .line 15316
    throw v11
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    .line 15320
    :cond_16
    :goto_b
    const-string v28, "WindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "precap copy "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v30, v30, v5

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 15308
    .end local v8    # "e":Ljava/io/IOException;
    .end local v20    # "pkgFolder":Ljava/io/File;
    :catchall_0
    move-exception v28

    :goto_c
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->recycle()V

    .line 15309
    const/16 v22, 0x0

    .line 15310
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->clear()V

    .line 15312
    if-eqz v13, :cond_17

    .line 15313
    :try_start_f
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 15315
    :cond_17
    if-eqz v11, :cond_18

    .line 15316
    throw v11
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    .line 15320
    :cond_18
    :goto_d
    const-string v29, "WindowManager"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "precap copy "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowManagerService$SaveCapturedScreenshot;->scRot:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v31

    sub-long v31, v31, v5

    invoke-virtual/range {v30 .. v32}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v28

    .line 15318
    :catch_2
    move-exception v29

    goto :goto_d

    .line 15308
    .end local v26    # "tmpFile":Ljava/io/File;
    .restart local v21    # "pkgFolder":Ljava/io/File;
    .restart local v27    # "tmpFile":Ljava/io/File;
    :catchall_1
    move-exception v28

    move-object/from16 v26, v27

    .end local v27    # "tmpFile":Ljava/io/File;
    .restart local v26    # "tmpFile":Ljava/io/File;
    goto :goto_c

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v26    # "tmpFile":Ljava/io/File;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v27    # "tmpFile":Ljava/io/File;
    :catchall_2
    move-exception v28

    move-object/from16 v26, v27

    .end local v27    # "tmpFile":Ljava/io/File;
    .restart local v26    # "tmpFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto :goto_c

    .line 15318
    .end local v21    # "pkgFolder":Ljava/io/File;
    .restart local v8    # "e":Ljava/io/IOException;
    .restart local v20    # "pkgFolder":Ljava/io/File;
    :catch_3
    move-exception v28

    goto :goto_b

    .line 15305
    .end local v8    # "e":Ljava/io/IOException;
    .end local v20    # "pkgFolder":Ljava/io/File;
    .restart local v21    # "pkgFolder":Ljava/io/File;
    :catch_4
    move-exception v8

    move-object/from16 v20, v21

    .end local v21    # "pkgFolder":Ljava/io/File;
    .restart local v20    # "pkgFolder":Ljava/io/File;
    goto/16 :goto_a

    .end local v20    # "pkgFolder":Ljava/io/File;
    .end local v26    # "tmpFile":Ljava/io/File;
    .restart local v21    # "pkgFolder":Ljava/io/File;
    .restart local v27    # "tmpFile":Ljava/io/File;
    :catch_5
    move-exception v8

    move-object/from16 v26, v27

    .end local v27    # "tmpFile":Ljava/io/File;
    .restart local v26    # "tmpFile":Ljava/io/File;
    move-object/from16 v20, v21

    .end local v21    # "pkgFolder":Ljava/io/File;
    .restart local v20    # "pkgFolder":Ljava/io/File;
    goto/16 :goto_a

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v20    # "pkgFolder":Ljava/io/File;
    .end local v26    # "tmpFile":Ljava/io/File;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v21    # "pkgFolder":Ljava/io/File;
    .restart local v27    # "tmpFile":Ljava/io/File;
    :catch_6
    move-exception v8

    move-object/from16 v26, v27

    .end local v27    # "tmpFile":Ljava/io/File;
    .restart local v26    # "tmpFile":Ljava/io/File;
    move-object/from16 v20, v21

    .end local v21    # "pkgFolder":Ljava/io/File;
    .restart local v20    # "pkgFolder":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_a

    .line 15318
    .local v8, "e":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v28

    goto/16 :goto_9

    .line 15303
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .end local v20    # "pkgFolder":Ljava/io/File;
    .restart local v21    # "pkgFolder":Ljava/io/File;
    :catch_8
    move-exception v8

    move-object/from16 v20, v21

    .end local v21    # "pkgFolder":Ljava/io/File;
    .restart local v20    # "pkgFolder":Ljava/io/File;
    goto/16 :goto_8

    .end local v20    # "pkgFolder":Ljava/io/File;
    .end local v26    # "tmpFile":Ljava/io/File;
    .restart local v21    # "pkgFolder":Ljava/io/File;
    .restart local v27    # "tmpFile":Ljava/io/File;
    :catch_9
    move-exception v8

    move-object/from16 v26, v27

    .end local v27    # "tmpFile":Ljava/io/File;
    .restart local v26    # "tmpFile":Ljava/io/File;
    move-object/from16 v20, v21

    .end local v21    # "pkgFolder":Ljava/io/File;
    .restart local v20    # "pkgFolder":Ljava/io/File;
    goto/16 :goto_8

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v20    # "pkgFolder":Ljava/io/File;
    .end local v26    # "tmpFile":Ljava/io/File;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v21    # "pkgFolder":Ljava/io/File;
    .restart local v27    # "tmpFile":Ljava/io/File;
    :catch_a
    move-exception v8

    move-object/from16 v26, v27

    .end local v27    # "tmpFile":Ljava/io/File;
    .restart local v26    # "tmpFile":Ljava/io/File;
    move-object/from16 v20, v21

    .end local v21    # "pkgFolder":Ljava/io/File;
    .restart local v20    # "pkgFolder":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_8

    .line 15318
    :catch_b
    move-exception v28

    goto/16 :goto_6
.end method
