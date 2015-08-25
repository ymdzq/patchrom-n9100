.class public Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;
.super Ljava/lang/Object;
.source "CaPassiveCurrentPositionManager.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/IPassiveCurrentPositionObservable;
.implements Landroid/hardware/contextaware/utilbundle/IUtilManager;


# static fields
.field private static final ACCURACY_GOOD_THRESHOLE:F = 48.0f

.field private static final GPS_MIN_DISTANCE:F = 0.0f

.field private static final GPS_MIN_TIME:J = 0x3e8L


# instance fields
.field private mEnable:Z

.field private mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

.field private final mGpsListener:Landroid/location/LocationListener;

.field private mGpsManager:Landroid/location/LocationManager;

.field private mListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

.field private final mLooper:Landroid/os/Looper;

.field private mPrePosition:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

.field private mSatelliteCount:I

.field private final m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observer"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    .line 126
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;-><init>(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    .line 176
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$2;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$2;-><init>(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;

    .line 79
    iput-object p2, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    .line 81
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->initializeManager(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p0, p3}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->registerPassiveCurrentPositionObserver(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/PositionContextBean;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    .prologue
    .line 34
    iget v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mSatelliteCount:I

    return v0
.end method

.method static synthetic access$102(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;I)I
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mSatelliteCount:I

    return p1
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Landroid/hardware/contextaware/utilbundle/PositionContextBean;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    .prologue
    .line 34
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->registerGpsListener()V

    return-void
.end method

.method static synthetic access$400(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->unregisterGpsListener()V

    return-void
.end method

.method private registerGpsListener()V
    .locals 7

    .prologue
    .line 317
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 318
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 325
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 324
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    goto :goto_0
.end method

.method public static sendPositionToSensorHub(I[IDDDDFFI)I
    .locals 6
    .param p0, "type"    # I
    .param p1, "utcTime"    # [I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "distance"    # D
    .param p10, "speed"    # F
    .param p11, "accuracy"    # F
    .param p12, "satelliteCount"    # I

    .prologue
    .line 367
    const/16 v3, 0x16

    new-array v1, v3, [B

    .line 368
    .local v1, "dataPacket":[B
    const/4 v2, 0x0

    .line 370
    .local v2, "size":I
    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v3, p2

    double-to-int v3, v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v3, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v3, p4

    double-to-int v3, v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x4

    const/4 v5, 0x4

    invoke-static {v3, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, p6

    double-to-int v3, v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x4

    const/4 v5, 0x4

    invoke-static {v3, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    move/from16 v0, p11

    float-to-int v3, v0

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x4

    const/4 v5, 0x1

    invoke-static {v3, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    const/4 v3, 0x0

    aget v3, p1, v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    const/4 v3, 0x1

    move/from16 v0, p12

    invoke-static {v0, v3}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x1

    invoke-static {v3, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v3, v3, p10

    float-to-int v3, v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x2

    invoke-static {v3, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    const-wide v3, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, p8

    double-to-int v3, v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x2

    const/4 v5, 0x2

    invoke-static {v3, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 394
    const/4 v3, 0x1

    invoke-static {p0, v3}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    const/4 v4, 0x0

    add-int/lit8 v2, v2, 0x2

    const/4 v5, 0x1

    invoke-static {v3, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    invoke-virtual {v3, v1, v4}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v3

    return v3

    nop

    :array_0
    .array-data 1
        -0x3ft
        0x16t
    .end array-data
.end method

.method private unregisterGpsListener()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 332
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 337
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    goto :goto_0
.end method


# virtual methods
.method public final disable()V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 237
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    if-eqz v0, :cond_0

    .line 245
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 247
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$4;

    invoke-direct {v1, p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$4;-><init>(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    goto :goto_0
.end method

.method public final enable()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 198
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_2

    .line 203
    const-string v0, "Looper is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_2
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    if-nez v0, :cond_0

    .line 211
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mSatelliteCount:I

    .line 215
    new-instance v0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    .line 216
    new-instance v0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    .line 218
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$3;

    invoke-direct {v1, p0}, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager$3;-><init>(Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    .line 100
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 101
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 104
    :cond_1
    new-instance v0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    .line 105
    new-instance v0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    goto :goto_0
.end method

.method public final notifyPassiveCurrentPositionObserver(Landroid/hardware/contextaware/utilbundle/PositionContextBean;)V
    .locals 14
    .param p1, "position"    # Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    .prologue
    .line 301
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 305
    :cond_0
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Landroid/hardware/contextaware/utilbundle/PositionContextBean;

    .line 306
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    invoke-virtual {p1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v5

    invoke-virtual {p1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v7

    invoke-virtual {p1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v9

    invoke-virtual {p1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v11

    invoke-virtual {p1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v12

    invoke-virtual {p1}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v13

    invoke-interface/range {v0 .. v13}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;->updatePassiveCurrentPosition(I[IDDDDFFI)V

    goto :goto_0
.end method

.method public final registerPassiveCurrentPositionObserver(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    .prologue
    .line 274
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    .line 275
    return-void
.end method

.method public final terminateManager()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 119
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method

.method public final unregisterPassiveCurrentPositionObserver()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    .line 287
    return-void
.end method
