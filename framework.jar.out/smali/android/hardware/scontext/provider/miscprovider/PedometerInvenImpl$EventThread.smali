.class Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;
.super Ljava/lang/Thread;
.source "PedometerInvenImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventThread"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;
    .param p2, "x1"    # Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$1;

    .prologue
    .line 422
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;-><init>(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 427
    const/4 v10, 0x0

    .line 428
    .local v10, "len":I
    const/4 v8, 0x0

    .line 429
    .local v8, "interrupt":I
    sget-object v9, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->UNKNOWN:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 430
    .local v9, "interruptMode":Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    const/4 v6, 0x0

    .line 431
    .local v6, "intFile":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 432
    .local v2, "cadFile":Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 434
    .local v11, "stepFile":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z
    invoke-static {v15}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$100(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 436
    const/16 v15, 0x800

    :try_start_0
    new-array v1, v15, [C

    .line 437
    .local v1, "buffer":[C
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v17, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/event_shealth_int"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    .end local v6    # "intFile":Ljava/io/BufferedReader;
    .local v7, "intFile":Ljava/io/BufferedReader;
    if-eqz v7, :cond_1

    if-eqz v1, :cond_1

    .line 440
    :try_start_1
    invoke-virtual {v7, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v10

    .line 441
    const/4 v15, -0x1

    if-eq v10, v15, :cond_1

    .line 442
    const/4 v15, 0x0

    add-int/lit8 v16, v10, -0x1

    move/from16 v0, v16

    invoke-static {v1, v15, v0}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 443
    const-string v15, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Interrupt = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_1
    and-int/lit8 v15, v8, 0x1

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 448
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v17, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/shealth_cadence"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 449
    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .local v3, "cadFile":Ljava/io/BufferedReader;
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 450
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v10

    .line 451
    const/4 v15, -0x1

    if-eq v10, v15, :cond_2

    .line 452
    const/4 v15, 0x0

    add-int/lit8 v16, v10, -0x1

    move/from16 v0, v16

    invoke-static {v1, v15, v0}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v13

    .line 453
    .local v13, "strCad":Ljava/lang/String;
    const-string v15, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "CAD = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    sget-object v9, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 455
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    # invokes: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    invoke-static {v15, v9, v13}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_10
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v13    # "strCad":Ljava/lang/String;
    :cond_2
    move-object v2, v3

    .line 460
    .end local v3    # "cadFile":Ljava/io/BufferedReader;
    .restart local v2    # "cadFile":Ljava/io/BufferedReader;
    :cond_3
    and-int/lit8 v15, v8, 0x2

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 461
    :try_start_3
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v17, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$200(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/pedometer_steps"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 462
    .end local v11    # "stepFile":Ljava/io/BufferedReader;
    .local v12, "stepFile":Ljava/io/BufferedReader;
    if-eqz v12, :cond_4

    if-eqz v1, :cond_4

    .line 463
    :try_start_4
    invoke-virtual {v12, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v10

    .line 464
    const/4 v15, -0x1

    if-eq v10, v15, :cond_4

    .line 465
    const/4 v15, 0x0

    add-int/lit8 v16, v10, -0x1

    move/from16 v0, v16

    invoke-static {v1, v15, v0}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v14

    .line 466
    .local v14, "strStep":Ljava/lang/String;
    const-string v15, "SContext.MiscProvider.PedometerInvenImpl"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Count = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v15, 0x6

    if-ne v8, v15, :cond_b

    .line 468
    sget-object v9, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 472
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    # invokes: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    invoke-static {v15, v9, v14}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .end local v14    # "strStep":Ljava/lang/String;
    :cond_4
    move-object v11, v12

    .line 477
    .end local v12    # "stepFile":Ljava/io/BufferedReader;
    .restart local v11    # "stepFile":Ljava/io/BufferedReader;
    :cond_5
    and-int/lit8 v15, v8, 0x4

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 478
    :try_start_5
    const-string v15, "SContext.MiscProvider.PedometerInvenImpl"

    const-string v16, "Start walking"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_6
    and-int/lit8 v15, v8, 0x8

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 482
    const-string v15, "SContext.MiscProvider.PedometerInvenImpl"

    const-string v16, "Stop walking"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    sget-object v9, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->STOP:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 484
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    # invokes: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->parseCadence(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    invoke-static {v15, v9, v0}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$300(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 493
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static {v15}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v17, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v17 .. v17}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v17

    const/16 v18, 0x1

    aget-wide v17, v17, v18

    aput-wide v17, v15, v16

    .line 494
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    # setter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    invoke-static {v15, v9}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$502(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 495
    if-eqz v7, :cond_8

    .line 497
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c

    .line 503
    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    .line 505
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d

    .line 511
    :cond_9
    :goto_3
    if-eqz v11, :cond_a

    .line 513
    :try_start_8
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e

    :cond_a
    :goto_4
    move-object v6, v7

    .line 519
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v6    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 470
    .end local v6    # "intFile":Ljava/io/BufferedReader;
    .end local v11    # "stepFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v12    # "stepFile":Ljava/io/BufferedReader;
    .restart local v14    # "strStep":Ljava/lang/String;
    :cond_b
    :try_start_9
    sget-object v9, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;->NORMAL:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    .line 486
    .end local v1    # "buffer":[C
    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .end local v12    # "stepFile":Ljava/io/BufferedReader;
    .end local v14    # "strStep":Ljava/lang/String;
    .restart local v6    # "intFile":Ljava/io/BufferedReader;
    .restart local v11    # "stepFile":Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    .line 488
    .local v5, "e1":Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 493
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static {v15}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v17, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v17 .. v17}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v17

    const/16 v18, 0x1

    aget-wide v17, v17, v18

    aput-wide v17, v15, v16

    .line 494
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    # setter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    invoke-static {v15, v9}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$502(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 495
    if-eqz v6, :cond_c

    .line 497
    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 503
    :cond_c
    :goto_6
    if-eqz v2, :cond_d

    .line 505
    :try_start_c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 511
    :cond_d
    :goto_7
    if-eqz v11, :cond_0

    .line 513
    :try_start_d
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_0

    .line 514
    :catch_1
    move-exception v4

    .line 516
    .end local v5    # "e1":Ljava/io/FileNotFoundException;
    .local v4, "e":Ljava/io/IOException;
    :goto_8
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 489
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 491
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_9
    :try_start_e
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 493
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static {v15}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v17, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v17 .. v17}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v17

    const/16 v18, 0x1

    aget-wide v17, v17, v18

    aput-wide v17, v15, v16

    .line 494
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    # setter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    invoke-static {v15, v9}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$502(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 495
    if-eqz v6, :cond_e

    .line 497
    :try_start_f
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 503
    :cond_e
    :goto_a
    if-eqz v2, :cond_f

    .line 505
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    .line 511
    :cond_f
    :goto_b
    if-eqz v11, :cond_0

    .line 513
    :try_start_11
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    goto/16 :goto_0

    .line 514
    :catch_3
    move-exception v4

    goto :goto_8

    .line 493
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v16 .. v16}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v18, v0

    # getter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J
    invoke-static/range {v18 .. v18}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$400(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;)[J

    move-result-object v18

    const/16 v19, 0x1

    aget-wide v18, v18, v19

    aput-wide v18, v16, v17

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$EventThread;->this$0:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    # setter for: Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    invoke-static {v0, v9}, Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;->access$502(Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl;Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;)Landroid/hardware/scontext/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 495
    if-eqz v6, :cond_10

    .line 497
    :try_start_12
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    .line 503
    :cond_10
    :goto_d
    if-eqz v2, :cond_11

    .line 505
    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6

    .line 511
    :cond_11
    :goto_e
    if-eqz v11, :cond_12

    .line 513
    :try_start_14
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    .line 493
    :cond_12
    :goto_f
    throw v15

    .line 522
    :cond_13
    const-wide/16 v15, 0x64

    :try_start_15
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_4

    goto/16 :goto_0

    .line 523
    :catch_4
    move-exception v4

    .line 525
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 498
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catch_5
    move-exception v4

    .line 500
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 506
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 508
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 514
    .end local v4    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v4

    .line 516
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 498
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v5    # "e1":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v4

    .line 500
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 506
    .end local v4    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v4

    .line 508
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 498
    .end local v5    # "e1":Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v4

    .line 500
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 506
    :catch_b
    move-exception v4

    .line 508
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 498
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "intFile":Ljava/io/BufferedReader;
    .restart local v1    # "buffer":[C
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    :catch_c
    move-exception v4

    .line 500
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 506
    .end local v4    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v4

    .line 508
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 514
    .end local v4    # "e":Ljava/io/IOException;
    :catch_e
    move-exception v4

    .line 516
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 493
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v15

    move-object v6, v7

    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v6    # "intFile":Ljava/io/BufferedReader;
    goto :goto_c

    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .end local v6    # "intFile":Ljava/io/BufferedReader;
    .restart local v3    # "cadFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v15

    move-object v2, v3

    .end local v3    # "cadFile":Ljava/io/BufferedReader;
    .restart local v2    # "cadFile":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v6    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_c

    .end local v6    # "intFile":Ljava/io/BufferedReader;
    .end local v11    # "stepFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v12    # "stepFile":Ljava/io/BufferedReader;
    :catchall_3
    move-exception v15

    move-object v11, v12

    .end local v12    # "stepFile":Ljava/io/BufferedReader;
    .restart local v11    # "stepFile":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v6    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_c

    .line 489
    .end local v6    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    :catch_f
    move-exception v4

    move-object v6, v7

    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v6    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_9

    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .end local v6    # "intFile":Ljava/io/BufferedReader;
    .restart local v3    # "cadFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    :catch_10
    move-exception v4

    move-object v2, v3

    .end local v3    # "cadFile":Ljava/io/BufferedReader;
    .restart local v2    # "cadFile":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v6    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_9

    .end local v6    # "intFile":Ljava/io/BufferedReader;
    .end local v11    # "stepFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v12    # "stepFile":Ljava/io/BufferedReader;
    :catch_11
    move-exception v4

    move-object v11, v12

    .end local v12    # "stepFile":Ljava/io/BufferedReader;
    .restart local v11    # "stepFile":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v6    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_9

    .line 486
    .end local v6    # "intFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    :catch_12
    move-exception v5

    move-object v6, v7

    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v6    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .end local v2    # "cadFile":Ljava/io/BufferedReader;
    .end local v6    # "intFile":Ljava/io/BufferedReader;
    .restart local v3    # "cadFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    :catch_13
    move-exception v5

    move-object v2, v3

    .end local v3    # "cadFile":Ljava/io/BufferedReader;
    .restart local v2    # "cadFile":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v6    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .end local v6    # "intFile":Ljava/io/BufferedReader;
    .end local v11    # "stepFile":Ljava/io/BufferedReader;
    .restart local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v12    # "stepFile":Ljava/io/BufferedReader;
    :catch_14
    move-exception v5

    move-object v11, v12

    .end local v12    # "stepFile":Ljava/io/BufferedReader;
    .restart local v11    # "stepFile":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "intFile":Ljava/io/BufferedReader;
    .restart local v6    # "intFile":Ljava/io/BufferedReader;
    goto/16 :goto_5
.end method
