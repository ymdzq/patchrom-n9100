.class public Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;
.super Ljava/lang/Object;
.source "CaGpsPositionManager.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/ICurrentPositionObservable;
.implements Landroid/hardware/contextaware/utilbundle/IUtilManager;


# instance fields
.field private mDisabler:Landroid/os/Handler;

.field private mEnable:Z

.field private mGpsManager:Landroid/location/LocationManager;

.field private mGpsTime:J

.field private final mLocationListener:Landroid/location/LocationListener;

.field private final mLooper:Landroid/os/Looper;

.field private mObserver:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

.field private preLatitude:D

.field private preLongitude:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observer"    # Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    const-wide/16 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mGpsTime:J

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    .line 53
    iput-wide v2, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->preLatitude:D

    .line 56
    iput-wide v2, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->preLongitude:D

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    .line 122
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager$2;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager$2;-><init>(Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mLocationListener:Landroid/location/LocationListener;

    .line 73
    iput-object p2, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    .line 74
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->initializeManager(Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0, p3}, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->registerCurrentPositionObserver(Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->notifyListener(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$302(Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;D)D
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;
    .param p1, "x1"    # D

    .prologue
    .line 35
    iput-wide p1, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->preLatitude:D

    return-wide p1
.end method

.method static synthetic access$402(Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;D)D
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;
    .param p1, "x1"    # D

    .prologue
    .line 35
    iput-wide p1, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->preLongitude:D

    return-wide p1
.end method

.method static synthetic access$500(Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method private notifyListener(Landroid/location/Location;)V
    .locals 17
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    if-nez v1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v16

    .line 173
    .local v16, "utcTime":[I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 175
    .local v15, "bun":Landroid/os/Bundle;
    const/4 v14, 0x0

    .line 176
    .local v14, "numSat":I
    if-eqz v15, :cond_1

    .line 177
    const-string v1, "satellites"

    invoke-virtual {v15, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 180
    :cond_1
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->preLatitude:D

    move-object/from16 v0, p0

    iget-wide v3, v0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->preLongitude:D

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->calculationDistance(DDDD)D

    move-result-wide v10

    .line 184
    .local v10, "distance":D
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v13

    move-object/from16 v3, v16

    invoke-interface/range {v1 .. v14}, Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;->updateCurrentPosition(I[IDDDDFFI)V

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 242
    const-string v0, "cannot unregister the gps listener"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    if-eqz v0, :cond_0

    .line 250
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 252
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager$5;

    invoke-direct {v1, p0}, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager$5;-><init>(Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    .line 262
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final enable()V
    .locals 4

    .prologue
    .line 196
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 197
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 202
    const-string v0, "Looper is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    if-eqz v0, :cond_2

    .line 207
    const-string v0, "mEnable value is true."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->disable()V

    .line 211
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    .line 214
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 218
    :cond_3
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager$3;

    invoke-direct {v1, p0}, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager$3;-><init>(Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    .line 228
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mDisabler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager$4;

    invoke-direct {v1, p0}, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager$4;-><init>(Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;)V

    iget-wide v2, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mGpsTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    .line 91
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 92
    const-string v0, "cannot create the GpsManager object"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 95
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    .line 96
    return-void
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mEnable:Z

    return v0
.end method

.method public notifyCurrentPositionObserver()V
    .locals 0

    .prologue
    .line 297
    return-void
.end method

.method public registerCurrentPositionObserver(Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    .prologue
    .line 285
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    .line 286
    return-void
.end method

.method public setGpsUpdateTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 278
    iput-wide p1, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mGpsTime:J

    .line 279
    return-void
.end method

.method public final terminateManager()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 109
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager$1;

    invoke-direct {v1, p0}, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager$1;-><init>(Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public unregisterCurrentPositionObserver()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaGpsPositionManager;->mObserver:Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;

    .line 292
    return-void
.end method
