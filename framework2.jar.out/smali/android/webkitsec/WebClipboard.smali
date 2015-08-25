.class public Landroid/webkitsec/WebClipboard;
.super Ljava/lang/Object;
.source "WebClipboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;,
        Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;
    }
.end annotation


# static fields
.field static final INIT:I = 0x1

.field static final tempDirectory:Ljava/lang/String;


# instance fields
.field public DEBUG:Z

.field private mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsUsingIntent:Z

.field protected mPasteEvent:Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;

.field mPasteListener:Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;

.field private mSelectionRemovalPatterns:[Ljava/util/regex/Pattern;

.field private mToastForClipboard:Landroid/widget/Toast;

.field private mViewWidth:I

.field private mZoomFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.EmailTempImage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkitsec/WebClipboard;->tempDirectory:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v2, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    .line 78
    iput-object v1, p0, Landroid/webkitsec/WebClipboard;->mPasteEvent:Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;

    .line 80
    iput-object v1, p0, Landroid/webkitsec/WebClipboard;->mPasteListener:Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;

    .line 86
    iput v2, p0, Landroid/webkitsec/WebClipboard;->mViewWidth:I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebClipboard;->mZoomFactor:F

    .line 89
    iput-object v1, p0, Landroid/webkitsec/WebClipboard;->mSelectionRemovalPatterns:[Ljava/util/regex/Pattern;

    .line 91
    iput-boolean v2, p0, Landroid/webkitsec/WebClipboard;->mIsUsingIntent:Z

    .line 93
    iput-object v1, p0, Landroid/webkitsec/WebClipboard;->mToastForClipboard:Landroid/widget/Toast;

    .line 99
    const-string v0, "clipboardEx"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    .line 102
    const-string/jumbo v0, "webclipboard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clipservice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-object p1, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;-><init>(Landroid/webkitsec/WebClipboard;)V

    iput-object v0, p0, Landroid/webkitsec/WebClipboard;->mPasteEvent:Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;

    .line 108
    invoke-virtual {p0}, Landroid/webkitsec/WebClipboard;->createHandler()V

    .line 109
    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/WebClipboard;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebClipboard;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkitsec/WebClipboard;->nativeInitPasteboardJni()V

    return-void
.end method

.method static synthetic access$100(Landroid/webkitsec/WebClipboard;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebClipboard;
    .param p1, "x1"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkitsec/WebClipboard;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkitsec/WebClipboard;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/WebClipboard;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/webkitsec/WebClipboard;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private deleteDirectory(Ljava/io/File;)V
    .locals 5
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 138
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteDirectory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 141
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 142
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/webkitsec/WebClipboard;->deleteDirectory(Ljava/io/File;)V

    .line 141
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 150
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 151
    return-void
.end method

.method private giveFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "giveFileUrl ent "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "mFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "fileURL":Ljava/lang/String;
    return-object v0
.end method

.method private makeHtmlFragmentForInsertedImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "htmlFragment"    # Ljava/lang/String;

    .prologue
    .line 662
    const/4 v13, 0x0

    .line 664
    .local v13, "result":Ljava/lang/String;
    const-string v16, "WebClipboard"

    const-string/jumbo v17, "makeHtmlFragmentForInsertedImage"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    if-nez p1, :cond_0

    .line 667
    const-string v16, "WebClipboard"

    const-string/jumbo v17, "makeHtmlFragmentForInsertedImage htmlFragment == null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string v16, ""

    .line 780
    :goto_0
    return-object v16

    .line 671
    :cond_0
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 673
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 674
    .local v6, "imageUri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, "absoluteFilePath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/webkitsec/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 679
    .local v3, "dstFilePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 681
    .local v7, "mFile":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 682
    .local v11, "originalFile":Ljava/io/File;
    const-wide/32 v16, 0x100000

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-gtz v16, :cond_1

    .line 684
    const-string v16, "WebClipboard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "####################### originalFile.length() : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_1
    const/4 v14, 0x0

    .line 690
    .local v14, "src":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {v2, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 699
    const-string v16, "WebClipboard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "####################### htmlFragment : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 702
    .local v10, "originWidth":I
    iget v9, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 703
    .local v9, "originHeight":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkitsec/WebClipboard;->mViewWidth:I

    .line 704
    .local v15, "width":I
    mul-int v16, v9, v15

    div-int v5, v16, v10

    .line 706
    .local v5, "height":I
    const-wide/32 v16, 0x100000

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-gtz v16, :cond_9

    .line 708
    const-string v16, "WebClipboard"

    const-string v17, "####################### htmlFragment : Big Data"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    if-eqz v14, :cond_3

    .line 713
    :try_start_1
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 715
    .local v12, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, ".jpg"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    if-gtz v16, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, ".jpeg"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_6

    .line 717
    :cond_2
    const-string v16, "WebClipboard"

    const-string v17, "####################### htmlFragment : Bitmap.CompressFormat.JPEG"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v17, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 719
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 720
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 757
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 761
    if-eqz v15, :cond_a

    .line 763
    if-le v15, v10, :cond_4

    .line 765
    move v15, v10

    .line 766
    move v5, v9

    .line 769
    :cond_4
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebClipboard;->mZoomFactor:F

    move/from16 v18, v0

    const/high16 v19, 0x42c80000    # 100.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v16, v16, v18

    if-gez v16, :cond_5

    .line 770
    mul-int/lit8 v16, v15, 0x64

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebClipboard;->mZoomFactor:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v15, v0

    .line 771
    mul-int/lit8 v16, v5, 0x64

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebClipboard;->mZoomFactor:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v5, v0

    .line 774
    :cond_5
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<img src="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " width="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " height="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " />"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v13

    .line 775
    goto/16 :goto_0

    .line 691
    .end local v5    # "height":I
    .end local v9    # "originHeight":I
    .end local v10    # "originWidth":I
    .end local v15    # "width":I
    :catch_0
    move-exception v4

    .line 692
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    const/4 v7, 0x0

    .line 693
    const/4 v11, 0x0

    .line 694
    const/4 v8, 0x0

    .line 696
    const-string v16, ""

    goto/16 :goto_0

    .line 722
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v5    # "height":I
    .restart local v9    # "originHeight":I
    .restart local v10    # "originWidth":I
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    .restart local v15    # "width":I
    :cond_6
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_7

    .line 724
    const-string v16, "WebClipboard"

    const-string v17, "####################### htmlFragment : Bitmap.CompressFormat.PNG"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v17, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 726
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 727
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 739
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    .line 740
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 741
    const-string v16, ""

    goto/16 :goto_0

    .line 731
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    :cond_7
    const/16 v16, 0x1

    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/webkitsec/WebClipboard;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    .line 733
    const-string v16, "WebClipboard"

    const-string v17, "####################### makeHtmlFragmentForInsertedImage : copyFile Fail !!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 735
    const-string v16, ""

    goto/16 :goto_0

    .line 737
    :cond_8
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 742
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    .line 743
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 744
    const-string v16, ""

    goto/16 :goto_0

    .line 750
    .end local v4    # "e":Ljava/io/IOException;
    :cond_9
    const/16 v16, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/webkitsec/WebClipboard;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 752
    const-string v16, "WebClipboard"

    const-string v17, "####################### makeHtmlFragmentForInsertedImage : copyFile Fail !!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const-string v16, ""

    goto/16 :goto_0

    .line 779
    :cond_a
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<img src="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " />"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v13

    .line 780
    goto/16 :goto_0
.end method

.method private native nativeInitPasteboardJni()V
.end method

.method private pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 12
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 596
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "pasteClipBoardData"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 598
    if-nez p1, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    const/4 v5, 0x0

    .line 602
    .local v5, "paste":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v0

    .line 604
    .local v0, "dataFormat":I
    const/4 v9, 0x4

    if-ne v0, v9, :cond_4

    move-object v2, p1

    .line 605
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 606
    .local v2, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 645
    .end local v2    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :cond_2
    :goto_1
    if-eqz v5, :cond_0

    .line 646
    iget-boolean v9, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v9, :cond_3

    .line 647
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pasteClipBoardData paste not NULL"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 649
    :cond_3
    iget-object v9, p0, Landroid/webkitsec/WebClipboard;->mPasteListener:Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;

    invoke-interface {v9, v5, v0}, Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;->onPaste(Ljava/lang/String;I)V

    goto :goto_0

    .line 607
    :cond_4
    const/4 v9, 0x2

    if-ne v0, v9, :cond_6

    .line 608
    const-string v9, "WebClipboard"

    const-string/jumbo v10, "pasteClipBoardData FORMAT_TEXT_ID"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, p1

    .line 609
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 610
    .local v6, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 611
    .local v7, "tmp_data_str":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 612
    invoke-static {v7}, Landroid/webkitsec/HtmlComposerViewUtils;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 616
    :goto_2
    iget-boolean v9, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 617
    const-string v9, "WebClipboard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pasteClipBoardData FORMAT_TEXT_ID"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 615
    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    .line 620
    .end local v6    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v7    # "tmp_data_str":Ljava/lang/String;
    :cond_6
    const/4 v9, 0x3

    if-ne v0, v9, :cond_8

    .line 621
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "pasteClipBoardData FORMAT_BITMAP_ID "

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v3, p1

    .line 622
    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 624
    .local v3, "imageData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/webkitsec/WebClipboard;->giveFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "fileUrl":Ljava/lang/String;
    iget-boolean v9, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 628
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pasteClipBoardData fileUrl "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 630
    :cond_7
    move-object v5, v1

    .line 631
    iget-boolean v9, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 632
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pasteClipBoardData paste fileUrl "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 635
    .end local v1    # "fileUrl":Ljava/lang/String;
    .end local v3    # "imageData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :cond_8
    const/4 v9, 0x5

    if-ne v0, v9, :cond_2

    .line 636
    const-string v9, "WebClipboard"

    const-string/jumbo v10, "pasteClipBoardDat FORMAT_URI_ID"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, p1

    .line 637
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 638
    .local v8, "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v4

    .line 639
    .local v4, "imgUri":Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 640
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1
.end method

.method private saveBitampTemporary(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 12
    .param p1, "bitmapForSave"    # Landroid/graphics/Bitmap;

    .prologue
    .line 228
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "saveBitampTemporary ent "

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/io/File;

    sget-object v9, Landroid/webkitsec/WebClipboard;->tempDirectory:Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "HtmlComposerTempDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 234
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 235
    .local v7, "randNum":Ljava/util/Random;
    const/16 v9, 0x1f4

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 236
    .local v8, "randNumber":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/webkitsec/WebClipboard;->tempDirectory:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "file_temp_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, "filePath":Ljava/lang/String;
    iget-boolean v9, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v9, :cond_0

    .line 239
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveBitampTemporary filePath "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 242
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v4, "mFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 245
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 248
    :cond_1
    const/4 v5, 0x0

    .line 251
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {p1, v9, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 257
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "fileURL":Ljava/lang/String;
    iget-boolean v9, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 259
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveBitampTemporary fileUrl "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    :cond_2
    if-eqz v6, :cond_3

    .line 263
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_0
    move-object v5, v6

    .line 267
    .end local v3    # "fileURL":Ljava/lang/String;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :goto_1
    return-object v3

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 255
    const/4 v3, 0x0

    goto :goto_1

    .line 264
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "fileURL":Ljava/lang/String;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 265
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 253
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileURL":Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private saveBitampTemporary(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "imageFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 171
    const/4 v3, 0x0

    .line 172
    .local v3, "in":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 174
    .local v6, "out":Ljava/io/FileWriter;
    :try_start_0
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v12, "saveBitampTemporary String ent "

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 176
    iget-boolean v11, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v11, :cond_0

    .line 177
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "saveBitmapTemporary imageFilePath: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkitsec/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 182
    .local v9, "tmpFilePath":Ljava/lang/String;
    iget-boolean v11, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v11, :cond_1

    .line 183
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "saveBitampTemporary String tmpFilePath "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 187
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v5, "inputFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .local v8, "outputFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 192
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 196
    :cond_2
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    .end local v3    # "in":Ljava/io/FileReader;
    .local v4, "in":Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 200
    .end local v6    # "out":Ljava/io/FileWriter;
    .local v7, "out":Ljava/io/FileWriter;
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v11, -0x1

    if-eq v0, v11, :cond_5

    .line 201
    invoke-virtual {v7, v0}, Ljava/io/OutputStreamWriter;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 207
    .end local v0    # "c":I
    :catch_0
    move-exception v1

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileWriter;
    .restart local v6    # "out":Ljava/io/FileWriter;
    move-object v3, v4

    .line 208
    .end local v4    # "in":Ljava/io/FileReader;
    .end local v5    # "inputFile":Ljava/io/File;
    .end local v8    # "outputFile":Ljava/io/File;
    .end local v9    # "tmpFilePath":Ljava/lang/String;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/FileReader;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    if-eqz v3, :cond_3

    .line 214
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 216
    :cond_3
    if-eqz v6, :cond_4

    .line 217
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    move-object v2, v10

    .line 220
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-object v2

    .line 203
    .end local v3    # "in":Ljava/io/FileReader;
    .end local v6    # "out":Ljava/io/FileWriter;
    .restart local v0    # "c":I
    .restart local v4    # "in":Ljava/io/FileReader;
    .restart local v5    # "inputFile":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/FileWriter;
    .restart local v8    # "outputFile":Ljava/io/File;
    .restart local v9    # "tmpFilePath":Ljava/lang/String;
    :cond_5
    :try_start_5
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v2

    .line 213
    .local v2, "fileURL":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 214
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 216
    :cond_6
    if-eqz v7, :cond_7

    .line 217
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_7
    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileWriter;
    .restart local v6    # "out":Ljava/io/FileWriter;
    move-object v3, v4

    .line 205
    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_2

    .line 212
    .end local v0    # "c":I
    .end local v2    # "fileURL":Ljava/lang/String;
    .end local v5    # "inputFile":Ljava/io/File;
    .end local v8    # "outputFile":Ljava/io/File;
    .end local v9    # "tmpFilePath":Ljava/lang/String;
    :catchall_0
    move-exception v11

    .line 213
    :goto_3
    if-eqz v3, :cond_8

    .line 214
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 216
    :cond_8
    if-eqz v6, :cond_9

    .line 217
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 212
    :cond_9
    throw v11

    .line 218
    :catch_1
    move-exception v1

    .line 219
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    move-object v2, v10

    .line 220
    goto :goto_2

    .line 218
    :catch_2
    move-exception v1

    .line 219
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 218
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/FileReader;
    .end local v6    # "out":Ljava/io/FileWriter;
    .restart local v0    # "c":I
    .restart local v2    # "fileURL":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/FileReader;
    .restart local v5    # "inputFile":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/FileWriter;
    .restart local v8    # "outputFile":Ljava/io/File;
    .restart local v9    # "tmpFilePath":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 219
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileWriter;
    .restart local v6    # "out":Ljava/io/FileWriter;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    move-object v2, v10

    .line 220
    goto :goto_2

    .line 212
    .end local v0    # "c":I
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileURL":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v4    # "in":Ljava/io/FileReader;
    :catchall_1
    move-exception v11

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_3

    .end local v3    # "in":Ljava/io/FileReader;
    .end local v6    # "out":Ljava/io/FileWriter;
    .restart local v4    # "in":Ljava/io/FileReader;
    .restart local v7    # "out":Ljava/io/FileWriter;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileWriter;
    .restart local v6    # "out":Ljava/io/FileWriter;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_3

    .line 207
    .end local v5    # "inputFile":Ljava/io/File;
    .end local v8    # "outputFile":Ljava/io/File;
    .end local v9    # "tmpFilePath":Ljava/lang/String;
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v4    # "in":Ljava/io/FileReader;
    .restart local v5    # "inputFile":Ljava/io/File;
    .restart local v8    # "outputFile":Ljava/io/File;
    .restart local v9    # "tmpFilePath":Ljava/lang/String;
    :catch_5
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_1
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 787
    const/4 v3, 0x0

    .line 788
    .local v3, "source":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 790
    .local v5, "target":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    .end local v3    # "source":Ljava/io/FileInputStream;
    .local v4, "source":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 793
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .local v6, "target":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    :try_start_2
    new-array v0, v8, [B

    .line 794
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 795
    .local v2, "i":I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    .line 796
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 799
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 800
    .end local v4    # "source":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 808
    if-eqz v3, :cond_0

    .line 809
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 811
    :cond_0
    if-eqz v5, :cond_1

    .line 812
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 816
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_2
    return v7

    .line 798
    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :cond_2
    const/4 v8, 0x1

    .line 808
    if-eqz v4, :cond_3

    .line 809
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 811
    :cond_3
    if-eqz v6, :cond_4

    .line 812
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    move v7, v8

    .line 798
    goto :goto_2

    .line 802
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_1
    move-exception v1

    .line 803
    .local v1, "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 808
    if-eqz v3, :cond_5

    .line 809
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 811
    :cond_5
    if-eqz v5, :cond_1

    .line 812
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 814
    :catch_2
    move-exception v1

    .line 815
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 807
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 808
    :goto_5
    if-eqz v3, :cond_6

    .line 809
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 811
    :cond_6
    if-eqz v5, :cond_7

    .line 812
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 807
    :cond_7
    throw v8

    .line 814
    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 815
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 816
    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_2

    .line 814
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_4
    move-exception v1

    goto :goto_4

    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_4

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v1

    goto :goto_4

    .line 807
    .end local v3    # "source":Ljava/io/FileInputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_5

    .line 802
    .end local v3    # "source":Ljava/io/FileInputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v1

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_3

    .line 799
    :catch_a
    move-exception v1

    goto :goto_1

    .end local v3    # "source":Ljava/io/FileInputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    :catch_b
    move-exception v1

    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public declared-synchronized createHandler()V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkitsec/WebClipboard;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Landroid/webkitsec/WebClipboard$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebClipboard$1;-><init>(Landroid/webkitsec/WebClipboard;)V

    iput-object v0, p0, Landroid/webkitsec/WebClipboard;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteTempDirectory()V
    .locals 3

    .prologue
    .line 154
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "deleteTempDirectory"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/webkitsec/WebClipboard;->tempDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "HtmlComposerTempDirectory":Ljava/io/File;
    invoke-direct {p0, v0}, Landroid/webkitsec/WebClipboard;->deleteDirectory(Ljava/io/File;)V

    .line 157
    return-void
.end method

.method public dismissClipboardUI()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 545
    return-void
.end method

.method public getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-boolean v5, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 276
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCloneFilePath filePath"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 278
    :cond_0
    if-nez p1, :cond_2

    .line 280
    const/4 v2, 0x0

    .line 308
    :cond_1
    :goto_0
    return-object v2

    .line 284
    :cond_2
    new-instance v0, Ljava/io/File;

    sget-object v5, Landroid/webkitsec/WebClipboard;->tempDirectory:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, "HtmlComposerTempDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 289
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    .local v3, "inputFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 293
    const-string v5, " "

    const-string v6, "_"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 296
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 298
    move-object v4, v1

    .line 299
    .local v4, "tmp":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/webkitsec/WebClipboard;->tempDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "fullFilePath":Ljava/lang/String;
    iget-boolean v5, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 305
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCloneFilePath String filePath "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getHTML()Ljava/lang/String;
    .locals 20

    .prologue
    .line 364
    const-string v17, "WebClipboard"

    const-string v18, "getHTML enter"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    .line 367
    .local v4, "data":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v6, 0x0

    .line 369
    .local v6, "data_str":Ljava/lang/String;
    const/4 v5, -0x1

    .line 371
    .local v5, "dataFormat":I
    if-eqz v4, :cond_0

    .line 372
    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v5

    .line 375
    :cond_0
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v5, v0, :cond_4

    move-object v9, v4

    .line 376
    check-cast v9, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 377
    .local v9, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 378
    const-string v17, "(?i)(?:(l|L)(i|I)(n|N)(e|E))(-)(h|H)(e|E)(i|I)(g|G)(h|H)(t|T)[\\s]*[\\=\\:][\\s]*([a-zA-Z]+|[0-9]+([a-zA-Z]+|%)|[0-9]+((.)[0-9]+|))[;\\s]?"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 384
    :try_start_0
    const-string v17, "<p"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "<pre"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_1

    .line 386
    const-string v17, "<p"

    const-string v18, "<span"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    .local v3, "b":Ljava/lang/StringBuilder;
    const-string v17, "/p>"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    const-string v18, "/p>"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x3

    const-string v19, "/span>"

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 391
    .end local v3    # "b":Ljava/lang/StringBuilder;
    :cond_1
    const-string v17, "<div"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_2

    .line 393
    const-string v17, "<div"

    const-string v18, "<span"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    .restart local v3    # "b":Ljava/lang/StringBuilder;
    const-string v17, "/div>"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    const-string v18, "/div>"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x5

    const-string v19, "/span>"

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 447
    .end local v3    # "b":Ljava/lang/StringBuilder;
    .end local v9    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 448
    const-string v17, "ClipboardEx"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getHTML:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v17, v6

    .line 460
    :goto_1
    return-object v17

    .line 398
    .restart local v9    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :catch_0
    move-exception v7

    .line 399
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 400
    const-string v17, ""

    goto :goto_1

    .line 402
    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    .end local v9    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :cond_4
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v5, v0, :cond_6

    .line 403
    const-string v17, "WebClipboard"

    const-string v18, "getHTML FORMAT_TEXT_ID"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v4

    .line 404
    check-cast v13, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 405
    .local v13, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v13}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 406
    .local v14, "tmp_data_str":Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 407
    invoke-static {v14}, Landroid/webkitsec/HtmlComposerViewUtils;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 411
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 412
    const-string v17, "WebClipboard"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getHTML FORMAT_TEXT_ID"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    :cond_5
    const-string v6, ""

    goto :goto_2

    .line 414
    .end local v13    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v14    # "tmp_data_str":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v5, v0, :cond_9

    .line 415
    const/4 v12, 0x0

    .line 416
    .local v12, "paste":Ljava/lang/String;
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v18, "pasteClipBoardData FORMAT_BITMAP_ID "

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v10, v4

    .line 417
    check-cast v10, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 419
    .local v10, "imageData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v10}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/WebClipboard;->giveFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 422
    .local v8, "fileUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 423
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "pasteClipBoardData fileUrl "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 425
    :cond_7
    move-object v12, v8

    .line 426
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 427
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "pasteClipBoardData paste fileUrl "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 431
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/webkitsec/WebClipboard;->makeHtmlFragmentForInsertedImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 432
    goto/16 :goto_0

    .end local v8    # "fileUrl":Ljava/lang/String;
    .end local v10    # "imageData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .end local v12    # "paste":Ljava/lang/String;
    :cond_9
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v5, v0, :cond_a

    .line 433
    const-string v17, "WebClipboard"

    const-string v18, "getHTML FORMAT_URI_ID"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v4

    .line 434
    check-cast v15, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 435
    .local v15, "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v15}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v11

    .line 436
    .local v11, "imgUri":Landroid/net/Uri;
    if-eqz v11, :cond_2

    .line 437
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    .line 438
    .local v16, "uriString":Ljava/lang/String;
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_2

    .line 439
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/WebClipboard;->makeHtmlFragmentForInsertedImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 444
    .end local v11    # "imgUri":Landroid/net/Uri;
    .end local v15    # "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    .end local v16    # "uriString":Ljava/lang/String;
    :cond_a
    const-string v17, ""

    goto/16 :goto_1
.end method

.method public getHTMLForCheckingSize()Ljava/lang/String;
    .locals 13

    .prologue
    .line 465
    iget-object v10, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v11, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 468
    .local v0, "data":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v1, -0x1

    .line 470
    .local v1, "dataFormat":I
    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    .line 474
    :cond_0
    const/4 v10, 0x4

    if-ne v1, v10, :cond_3

    move-object v5, v0

    .line 475
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 476
    .local v5, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    .end local v5    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    .local v2, "data_str":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-boolean v10, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v10, :cond_2

    .line 511
    const-string v10, "ClipboardEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getHTML:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    .end local v2    # "data_str":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v2

    .line 477
    :cond_3
    const/4 v10, 0x2

    if-ne v1, v10, :cond_5

    .line 478
    const-string v10, "WebClipboard"

    const-string v11, "getHTMLForCheckingSize FORMAT_TEXT_ID"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v0

    .line 479
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 480
    .local v8, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 481
    .local v9, "tmp_data_str":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 482
    invoke-static {v9}, Landroid/webkitsec/HtmlComposerViewUtils;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 486
    .restart local v2    # "data_str":Ljava/lang/String;
    :goto_2
    iget-boolean v10, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 487
    const-string v10, "WebClipboard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getHTMLForCheckingSize FORMAT_TEXT_ID"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 485
    .end local v2    # "data_str":Ljava/lang/String;
    :cond_4
    const-string v2, ""

    .restart local v2    # "data_str":Ljava/lang/String;
    goto :goto_2

    .line 489
    .end local v2    # "data_str":Ljava/lang/String;
    .end local v8    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v9    # "tmp_data_str":Ljava/lang/String;
    :cond_5
    const/4 v10, 0x3

    if-ne v1, v10, :cond_6

    .line 490
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "getHTML bitmap "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v6, v0

    .line 491
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 494
    .local v6, "imageData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/webkitsec/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    .local v7, "mFile":Ljava/io/File;
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, "fileUrl":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<img src="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " />"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 500
    .restart local v2    # "data_str":Ljava/lang/String;
    iget-boolean v10, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 501
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getHTML bitmap = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 507
    .end local v2    # "data_str":Ljava/lang/String;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "fileUrl":Ljava/lang/String;
    .end local v6    # "imageData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .end local v7    # "mFile":Ljava/io/File;
    :cond_6
    const-string v2, ""

    goto/16 :goto_1
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 342
    iget-object v1, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 344
    .local v0, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 345
    iget-boolean v1, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 346
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasData()Z
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initWebClipboard()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Landroid/webkitsec/WebClipboard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkitsec/WebClipboard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 114
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v0

    return v0
.end method

.method public launchClipboardUI()V
    .locals 4

    .prologue
    .line 549
    iget-object v0, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/webkitsec/WebClipboard;->mPasteEvent:Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2, v3}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    .line 550
    return-void
.end method

.method public setDataToClipboard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 326
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setDataToClipboard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 329
    :try_start_0
    const-string v1, "TEXT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    invoke-virtual {p0, p2}, Landroid/webkitsec/WebClipboard;->setText(Ljava/lang/String;)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    const-string v1, "HTML"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    invoke-virtual {p0, p2}, Landroid/webkitsec/WebClipboard;->setHTML(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataToClipboard: Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHTML(Ljava/lang/String;)V
    .locals 10
    .param p1, "charSeq"    # Ljava/lang/String;

    .prologue
    .line 518
    iget-boolean v7, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 519
    const-string v7, "WebClipboard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setHTML:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_0
    iget-object v6, p0, Landroid/webkitsec/WebClipboard;->mSelectionRemovalPatterns:[Ljava/util/regex/Pattern;

    .line 523
    .local v6, "patterns":[Ljava/util/regex/Pattern;
    if-eqz p1, :cond_1

    if-eqz v6, :cond_1

    array-length v7, v6

    if-lez v7, :cond_1

    .line 524
    move-object v0, v6

    .local v0, "arr$":[Ljava/util/regex/Pattern;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 525
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 524
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    .end local v0    # "arr$":[Ljava/util/regex/Pattern;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pattern":Ljava/util/regex/Pattern;
    :cond_1
    iget-boolean v7, p0, Landroid/webkitsec/WebClipboard;->mIsUsingIntent:Z

    if-eqz v7, :cond_2

    .line 531
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.samsung.clipboardsaveservice.CLIPBOARD_COPY_HTML_RECEIVER"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 532
    .local v3, "intent":Landroid/content/Intent;
    const/16 v7, 0x20

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 533
    const-string v7, "htmlPath"

    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    const-string v7, "darkTheme"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 535
    iget-object v7, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 541
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 537
    :cond_2
    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;-><init>()V

    .line 538
    .local v1, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetHTMLFragment(Ljava/lang/CharSequence;)Z

    .line 539
    iget-object v7, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v8, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v1}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    goto :goto_1
.end method

.method public setInterfaceWithClipboard(Z)V
    .locals 0
    .param p1, "isUsingIntent"    # Z

    .prologue
    .line 834
    iput-boolean p1, p0, Landroid/webkitsec/WebClipboard;->mIsUsingIntent:Z

    .line 835
    return-void
.end method

.method setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V
    .locals 0
    .param p1, "pasteListener"    # Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;

    .prologue
    .line 313
    iput-object p1, p0, Landroid/webkitsec/WebClipboard;->mPasteListener:Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;

    .line 314
    return-void
.end method

.method public setSelectionRemovalPatterns([Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "patterns"    # [Ljava/util/regex/Pattern;

    .prologue
    .line 830
    iput-object p1, p0, Landroid/webkitsec/WebClipboard;->mSelectionRemovalPatterns:[Ljava/util/regex/Pattern;

    .line 831
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 4
    .param p1, "charSeq"    # Ljava/lang/String;

    .prologue
    .line 355
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 356
    .local v0, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 357
    iget-object v1, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 358
    iget-boolean v1, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 359
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    return-void
.end method

.method public setWidthForCopiedImage(I)V
    .locals 0
    .param p1, "viewWidth"    # I

    .prologue
    .line 822
    iput p1, p0, Landroid/webkitsec/WebClipboard;->mViewWidth:I

    .line 823
    return-void
.end method

.method public setZoomFactorForPasting(F)V
    .locals 0
    .param p1, "factor"    # F

    .prologue
    .line 826
    iput p1, p0, Landroid/webkitsec/WebClipboard;->mZoomFactor:F

    .line 827
    return-void
.end method

.method public updateClipboardUI()V
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/webkitsec/WebClipboard;->mPasteEvent:Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 554
    return-void
.end method
