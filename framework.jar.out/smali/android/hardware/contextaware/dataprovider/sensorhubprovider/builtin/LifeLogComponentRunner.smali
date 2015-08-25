.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "LifeLogComponentRunner.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;


# static fields
.field private static final DEFAULT_BATCHING_PERIOD:I = 0xffff

.field private static final DEFAULT_STOP_PERIOD:I = 0x12c

.field private static final DEFAULT_WAIT_PERIOD:I = 0x5dc


# instance fields
.field private final mCurrentPositionRequest:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

.field protected final mPassiveCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

.field private mStopPeriod:I

.field private mWaitPeriod:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 62
    const/16 v0, 0x12c

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    .line 65
    const/16 v0, 0x5dc

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    .line 88
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-direct {v0, p2, p3, p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mPassiveCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    .line 90
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    .line 92
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;->registerObserver(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;)V

    .line 93
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    check-cast v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->addRequestParser(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V

    .line 94
    return-void
.end method

.method private checkMovingPacket([BI)Z
    .locals 2
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 291
    add-int/lit8 v0, p2, 0x5

    array-length v1, p1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkStayingAreaPacket([BI)Z
    .locals 2
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 278
    add-int/lit8 v0, p2, 0x17

    array-length v1, p1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseForMoving([BIJJ)I
    .locals 20
    .param p1, "packet"    # [B
    .param p2, "next"    # I
    .param p3, "curUtcTime"    # J
    .param p5, "curTimeMillis"    # J

    .prologue
    .line 417
    move/from16 v18, p2

    .line 419
    .local v18, "tmpNext":I
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v18

    add-int/lit8 v3, v3, -0x4

    if-gez v3, :cond_0

    .line 420
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 421
    const/16 v19, -0x1

    .line 465
    :goto_0
    return v19

    .line 424
    :cond_0
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "tmpNext":I
    .local v19, "tmpNext":I
    aget-byte v3, p1, v18

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v18    # "tmpNext":I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v18    # "tmpNext":I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-long v8, v3

    .line 429
    .local v8, "timeStamp":J
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    move-result-object v3

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(JJJ)J

    move-result-wide v15

    .line 432
    .local v15, "movingTimeStamp":J
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v18

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_1

    .line 433
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 434
    const/16 v19, -0x1

    goto :goto_0

    .line 436
    :cond_1
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v13, p1, v18

    .line 437
    .local v13, "movingCount":I
    if-gtz v13, :cond_2

    move/from16 v18, v19

    .line 438
    .end local v19    # "tmpNext":I
    .restart local v18    # "tmpNext":I
    goto :goto_0

    .line 441
    .end local v18    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    :cond_2
    new-array v12, v13, [I

    .line 442
    .local v12, "movingActivity":[I
    new-array v11, v13, [I

    .line 443
    .local v11, "movingAccuracy":[I
    new-array v14, v13, [I

    .line 445
    .local v14, "movingTimeDuration":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_5

    .line 446
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->checkMovingPacket([BI)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v13, -0x1

    if-le v10, v3, :cond_4

    .line 447
    :cond_3
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 448
    const/4 v3, -0x1

    move/from16 v18, v19

    .end local v19    # "tmpNext":I
    .restart local v18    # "tmpNext":I
    move/from16 v19, v3

    goto :goto_0

    .line 451
    .end local v18    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    :cond_4
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v18    # "tmpNext":I
    aget-byte v3, p1, v19

    aput v3, v12, v10

    .line 452
    add-int/lit8 v19, v18, 0x1

    .end local v18    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v3, p1, v18

    aput v3, v11, v10

    .line 453
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v18    # "tmpNext":I
    aget-byte v3, p1, v19

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v19, v18, 0x1

    .end local v18    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v18, v19, 0x1

    .end local v19    # "tmpNext":I
    .restart local v18    # "tmpNext":I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    aput v3, v14, v10

    .line 445
    add-int/lit8 v10, v10, 0x1

    move/from16 v19, v18

    .end local v18    # "tmpNext":I
    .restart local v19    # "tmpNext":I
    goto :goto_1

    .line 458
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v17

    .line 459
    .local v17, "names":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x8

    aget-object v4, v17, v4

    invoke-virtual {v3, v4, v13}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x9

    aget-object v4, v17, v4

    move-wide v0, v15

    invoke-virtual {v3, v4, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xa

    aget-object v4, v17, v4

    invoke-virtual {v3, v4, v12}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 462
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xb

    aget-object v4, v17, v4

    invoke-virtual {v3, v4, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 463
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xc

    aget-object v4, v17, v4

    invoke-virtual {v3, v4, v14}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    move/from16 v18, v19

    .line 465
    .end local v19    # "tmpNext":I
    .restart local v18    # "tmpNext":I
    goto/16 :goto_0
.end method

.method private parseForStayingArea([BIJJ)I
    .locals 22
    .param p1, "packet"    # [B
    .param p2, "next"    # I
    .param p3, "curUtcTime"    # J
    .param p5, "curTimeMillis"    # J

    .prologue
    .line 332
    move/from16 v20, p2

    .line 334
    .local v20, "tmpNext":I
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v20

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    .line 335
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 336
    const/16 v21, -0x1

    .line 399
    :goto_0
    return v21

    .line 339
    :cond_0
    add-int/lit8 v21, v20, 0x1

    .end local v20    # "tmpNext":I
    .local v21, "tmpNext":I
    aget-byte v13, p1, v20

    .line 340
    .local v13, "stayingAreaCount":I
    if-gtz v13, :cond_1

    move/from16 v20, v21

    .line 341
    .end local v21    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    goto :goto_0

    .line 344
    .end local v20    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    :cond_1
    new-array v0, v13, [J

    move-object/from16 v19, v0

    .line 346
    .local v19, "stayingAreaTimeStamp":[J
    new-array v14, v13, [D

    .line 347
    .local v14, "stayingAreaLatitude":[D
    new-array v15, v13, [D

    .line 348
    .local v15, "stayingAreaLongitude":[D
    new-array v12, v13, [D

    .line 349
    .local v12, "stayingAreaAltitude":[D
    new-array v0, v13, [I

    move-object/from16 v18, v0

    .line 350
    .local v18, "stayingAreaTimeDuration":[I
    new-array v0, v13, [I

    move-object/from16 v16, v0

    .line 351
    .local v16, "stayingAreaRadius":[I
    new-array v0, v13, [I

    move-object/from16 v17, v0

    .line 353
    .local v17, "stayingAreaStatus":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_3

    .line 354
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->checkStayingAreaPacket([BI)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v3, v13, -0x1

    if-lt v10, v3, :cond_2

    .line 356
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 357
    const/4 v3, -0x1

    move/from16 v20, v21

    .end local v21    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    move/from16 v21, v3

    goto :goto_0

    .line 360
    .end local v20    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    :cond_2
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v3, p1, v21

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v4, p1, v20

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v4, p1, v21

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v4, p1, v20

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-long v8, v3

    .line 365
    .local v8, "timeStamp":J
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    move-result-object v3

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(JJJ)J

    move-result-wide v3

    aput-wide v3, v19, v10

    .line 368
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v3, p1, v21

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v4, p1, v20

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v4, p1, v21

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v4, p1, v20

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-double v3, v3

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v5

    aput-wide v3, v14, v10

    .line 371
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v3, p1, v21

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v4, p1, v20

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v4, p1, v21

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v4, p1, v20

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-double v3, v3

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v5

    aput-wide v3, v15, v10

    .line 374
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v3, p1, v21

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v4, p1, v20

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v4, p1, v21

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v4, p1, v20

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    int-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    aput-wide v3, v12, v10

    .line 378
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v3, p1, v21

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v4, p1, v20

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    add-int/lit8 v20, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v4, p1, v21

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v4, p1, v20

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    aput v3, v18, v10

    .line 382
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v3, p1, v21

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v21, v20, 0x1

    .end local v20    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    aget-byte v4, p1, v20

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    aput v3, v16, v10

    .line 385
    add-int/lit8 v20, v21, 0x1

    .end local v21    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    aget-byte v3, p1, v21

    aput v3, v17, v10

    .line 353
    add-int/lit8 v10, v10, 0x1

    move/from16 v21, v20

    .end local v20    # "tmpNext":I
    .restart local v21    # "tmpNext":I
    goto/16 :goto_1

    .line 389
    .end local v8    # "timeStamp":J
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v11

    .line 390
    .local v11, "names":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v11, v4

    invoke-virtual {v3, v4, v13}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 391
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v11, v4

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 392
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v11, v4

    invoke-virtual {v3, v4, v14}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 393
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v4, v11, v4

    invoke-virtual {v3, v4, v15}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v4, v11, v4

    invoke-virtual {v3, v4, v12}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x5

    aget-object v4, v11, v4

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x6

    aget-object v4, v11, v4

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 397
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x7

    aget-object v4, v11, v4

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    move/from16 v20, v21

    .line 399
    .end local v21    # "tmpNext":I
    .restart local v20    # "tmpNext":I
    goto/16 :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 502
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 503
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 504
    return-void
.end method

.method public final disable()V
    .locals 1

    .prologue
    .line 489
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 490
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mPassiveCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->disable()V

    .line 491
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 492
    return-void
.end method

.method protected display()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public final enable()V
    .locals 1

    .prologue
    .line 476
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 477
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mPassiveCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->enable()V

    .line 478
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 479
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "StayingAreaCount"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "StayingAreaTimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "StayingAreaLatitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "StayingAreaLongitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "StayingAreaAltitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "StayingAreaTimeDuration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "StayingAreaRadius"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "StayingAreaStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "MovingCount"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MovingTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "MovingActivity"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "MovingAccuracy"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MovingTimeDuration"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 126
    const/16 v3, 0x9

    new-array v1, v3, [B

    .line 128
    .local v1, "packet":[B
    iget v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    invoke-static {v3, v7}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 129
    .local v0, "data":[B
    aget-byte v3, v0, v5

    aput-byte v3, v1, v5

    .line 130
    aget-byte v3, v0, v6

    aput-byte v3, v1, v6

    .line 132
    iget v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    invoke-static {v3, v7}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 133
    aget-byte v3, v0, v5

    aput-byte v3, v1, v7

    .line 134
    const/4 v3, 0x3

    aget-byte v4, v0, v6

    aput-byte v4, v1, v3

    .line 136
    const v3, 0xffff

    invoke-static {v3, v7}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 137
    const/4 v3, 0x4

    aget-byte v4, v0, v5

    aput-byte v4, v1, v3

    .line 138
    const/4 v3, 0x5

    aget-byte v4, v0, v6

    aput-byte v4, v1, v3

    .line 140
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v2

    .line 143
    .local v2, "utcTime":[I
    const/4 v3, 0x6

    aget v4, v2, v5

    invoke-static {v4, v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 144
    const/4 v3, 0x7

    aget v4, v2, v6

    invoke-static {v4, v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 145
    const/16 v3, 0x8

    aget v4, v2, v7

    invoke-static {v4, v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v1, v3

    .line 147
    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 580
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 115
    const/16 v0, 0x1d

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 302
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 314
    return-object p0
.end method

.method public parse([BI)I
    .locals 14
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 174
    move/from16 v2, p2

    .line 176
    .local v2, "tmpNext":I
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v13, "GMT"

    invoke-direct {v0, v1, v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    .line 178
    .local v7, "calender":Ljava/util/Calendar;
    const/16 v0, 0xb

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 179
    .local v8, "hour":I
    const/16 v0, 0xc

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 180
    .local v10, "minute":I
    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 181
    .local v11, "second":I
    const/16 v0, 0xe

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 183
    .local v9, "milliSec":I
    mul-int/lit16 v0, v8, 0xe10

    mul-int/lit8 v1, v10, 0x3c

    add-int/2addr v0, v1

    add-int/2addr v0, v11

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v9

    int-to-long v3, v0

    .line 184
    .local v3, "curUtcTime":J
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 186
    .local v5, "curTimeMillis":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    .line 188
    invoke-direct/range {v0 .. v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->parseForStayingArea([BIJJ)I

    move-result v2

    .line 190
    if-gtz v2, :cond_0

    move v12, v2

    .line 203
    .end local v2    # "tmpNext":I
    .local v12, "tmpNext":I
    :goto_0
    return v12

    .end local v12    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    :cond_0
    move-object v0, p0

    move-object v1, p1

    .line 194
    invoke-direct/range {v0 .. v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->parseForMoving([BIJJ)I

    move-result v2

    .line 195
    if-gtz v2, :cond_1

    move v12, v2

    .line 196
    .end local v2    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    goto :goto_0

    .line 199
    .end local v12    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    :cond_1
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    move v12, v2

    .line 203
    .end local v2    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    goto :goto_0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 10
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/16 v9, 0x17

    const/16 v8, 0x1d

    const/4 v7, 0x2

    .line 215
    const/4 v0, 0x1

    .line 217
    .local v0, "result":Z
    const/16 v5, 0x1c

    if-ne p1, v5, :cond_0

    .line 218
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 220
    .local v3, "stopPeriod":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StopPeriod = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 221
    iput v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    .line 222
    const/4 v5, 0x1

    invoke-static {v3, v7}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    invoke-virtual {p0, v9, v8, v5, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    .line 260
    .end local v3    # "stopPeriod":I
    :goto_0
    return v0

    .line 227
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    if-ne p1, v8, :cond_1

    .line 228
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 230
    .local v4, "waitPeriod":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WaitPeriod = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 231
    iput v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    .line 232
    invoke-static {v4, v7}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    invoke-virtual {p0, v9, v8, v7, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    .line 237
    goto :goto_0

    .end local v4    # "waitPeriod":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    const/16 v5, 0x1e

    if-ne p1, v5, :cond_2

    .line 238
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 240
    .local v2, "stayingRadius":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StayingRadius = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 241
    const/4 v5, 0x3

    invoke-static {v2, v7}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    invoke-virtual {p0, v9, v8, v5, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    .line 246
    goto :goto_0

    .end local v2    # "stayingRadius":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    const/16 v5, 0x1f

    if-ne p1, v5, :cond_3

    .line 247
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 249
    .local v1, "stayingAreaRadius":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StayingAreaRadius = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 251
    const/4 v5, 0x4

    invoke-static {v1, v7}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    invoke-virtual {p0, v9, v8, v5, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    .line 256
    goto/16 :goto_0

    .line 257
    .end local v1    # "stayingAreaRadius":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public updatePassiveCurrentPosition(I[IDDDDFFI)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "utcTime"    # [I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "distance"    # D
    .param p11, "speed"    # F
    .param p12, "accuracy"    # F
    .param p13, "satelliteCount"    # I

    .prologue
    .line 596
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->isDisable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    const-string v1, "send the passive current position to SensorHub"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 602
    invoke-static/range {p1 .. p13}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->sendPositionToSensorHub(I[IDDDDFFI)I

    move-result v0

    .line 605
    .local v0, "result":I
    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 606
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final updatePosition(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V
    .locals 17
    .param p1, "position"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    .prologue
    .line 517
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->isDisable()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 568
    :goto_0
    return-void

    .line 521
    :cond_0
    if-nez p1, :cond_1

    .line 522
    sget-object v13, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CURRENT_POSITION_NULL_EXCEPTION:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v13}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v13

    invoke-static {v13}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 528
    :cond_1
    move-object/from16 v7, p1

    .line 530
    .local v7, "pos":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getLatitude()D

    move-result-wide v13

    const-wide v15, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v13, v15

    double-to-int v5, v13

    .line 531
    .local v5, "latitude":I
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getLongitude()D

    move-result-wide v13

    const-wide v15, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v13, v15

    double-to-int v6, v13

    .line 532
    .local v6, "longitude":I
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getAltitude()D

    move-result-wide v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    mul-double/2addr v13, v15

    double-to-int v2, v13

    .line 533
    .local v2, "altitude":I
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getAccuracy()F

    move-result v13

    float-to-int v1, v13

    .line 534
    .local v1, "accuracy":I
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getUtcTime()[I

    move-result-object v12

    .line 535
    .local v12, "utcTime":[I
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getSatelliteCount()I

    move-result v8

    .line 536
    .local v8, "satelliteCount":I
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getSpeed()F

    move-result v13

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v13, v14

    float-to-int v10, v13

    .line 537
    .local v10, "speed":I
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getDistance()D

    move-result-wide v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    mul-double/2addr v13, v15

    double-to-int v4, v13

    .line 538
    .local v4, "distance":I
    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getType()I

    move-result v11

    .line 540
    .local v11, "type":I
    const/16 v13, 0x16

    new-array v3, v13, [B

    .line 541
    .local v3, "dataPacket":[B
    const/4 v9, 0x0

    .line 543
    .local v9, "size":I
    const/4 v13, 0x4

    invoke-static {v5, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x4

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    const/4 v13, 0x4

    invoke-static {v6, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x4

    const/4 v15, 0x4

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 547
    const/4 v13, 0x4

    invoke-static {v2, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x4

    const/4 v15, 0x4

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    const/4 v13, 0x1

    invoke-static {v1, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x4

    const/4 v15, 0x1

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    const/4 v13, 0x0

    aget v13, v12, v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x1

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    const/4 v13, 0x1

    aget v13, v12, v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x1

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    const/4 v13, 0x2

    aget v13, v12, v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x1

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    const/4 v13, 0x1

    invoke-static {v8, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x1

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    const/4 v13, 0x2

    invoke-static {v10, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x1

    const/4 v15, 0x2

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    const/4 v13, 0x2

    invoke-static {v4, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x2

    const/4 v15, 0x2

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    const/4 v13, 0x1

    invoke-static {v11, v13}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    const/4 v14, 0x0

    add-int/lit8 v9, v9, 0x2

    const/4 v15, 0x1

    invoke-static {v13, v14, v3, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    const/16 v13, 0x16

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendCommonValueToSensorHub(B[B)Z

    goto/16 :goto_0
.end method
