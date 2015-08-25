.class Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;
.super Ljava/lang/Object;
.source "PedoCalibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$1;,
        Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;
    }
.end annotation


# static fields
.field private static final MEAS_INVALID:B = 0x8t

.field private static final MEAS_IS_FULL:B = 0x4t

.field private static final MEAS_PEDOMETER:B = 0x1t

.field private static final MEAS_POSITION:B = 0x2t

.field static final STATE_COLLECT_MEASURE:I = 0x4

.field static final STATE_IDLE:I = 0x0

.field static final STATE_INITIALIZING:I = 0x1

.field static final STATE_SF_CALCULATED:I = 0x5

.field static final STATE_WAIT_FOR_ENABLE:I = 0x2

.field static final STATE_WAIT_FOR_GPS:I = 0x3


# instance fields
.field private final arrStepLength:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private bNeedData:Z

.field private deltaTime:J

.field private final mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

.field private mPedoCalibListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

.field private mStatus:I

.field private mTotalDistance:D


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    .line 18
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mTotalDistance:D

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->arrStepLength:Ljava/util/ArrayList;

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->deltaTime:J

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->bNeedData:Z

    .line 38
    return-void
.end method

.method private debugPedoCalibrator(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 421
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    invoke-interface {v0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;->debugPedoCalib(Ljava/lang/String;)V

    .line 423
    :cond_0
    return-void
.end method

.method private pedoCalCalculationSF()V
    .locals 15

    .prologue
    const-wide v13, 0x3ff4cccccccccccdL    # 1.3

    const-wide v5, 0x3fe6666666666666L    # 0.7

    const-wide v11, 0x3fe6666660000000L    # 0.699999988079071

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    const-wide v9, 0x3fd3333340000000L    # 0.30000001192092896

    .line 215
    const-string v3, "PCCalculationSF"

    invoke-direct {p0, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 217
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 218
    .local v0, "sf":D
    const/4 v2, 0x0

    .line 220
    .local v2, "sfbin":I
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v3, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLength:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 221
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v3, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumGpsDistance:F

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v4, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLength:F

    div-float/2addr v3, v4

    float-to-double v0, v3

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PC G accum SL :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v4, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumGpsDistance:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", P accum SL :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v4, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLength:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 229
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v3, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRefWalkOrRun:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 230
    cmpl-double v3, v0, v13

    if-lez v3, :cond_0

    .line 231
    const-string v3, "PC E - RSF is over MAX."

    invoke-direct {p0, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 232
    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    .line 234
    :cond_0
    cmpg-double v3, v0, v5

    if-gez v3, :cond_1

    .line 235
    const-string v3, "PC E - RSF is less MIN."

    invoke-direct {p0, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 236
    const-wide v0, 0x3fe6666666666666L    # 0.7

    .line 239
    :cond_1
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v3, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    const/high16 v4, 0x3fc00000    # 1.5f

    sub-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    add-int/lit8 v2, v3, 0x4

    .line 249
    :goto_0
    if-gez v2, :cond_9

    .line 250
    const/4 v2, 0x0

    .line 256
    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PC sf :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",sfbin :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v3, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v4, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    aget-wide v4, v4, v2

    mul-double/2addr v4, v7

    mul-double v6, v0, v7

    add-double/2addr v4, v6

    aput-wide v4, v3, v2

    .line 263
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v4, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    aget-wide v4, v4, v2

    invoke-interface {v3, v4, v5, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;->onPedoCalibCalcCompleted(DI)V

    .line 267
    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    const/4 v3, 0x7

    if-eq v2, v3, :cond_3

    .line 268
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v3, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    add-int/lit8 v4, v2, -0x1

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v5, v5, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    add-int/lit8 v6, v2, -0x1

    aget-wide v5, v5, v6

    mul-double/2addr v5, v11

    mul-double v7, v0, v9

    add-double/2addr v5, v7

    aput-wide v5, v3, v4

    .line 270
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v4, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    add-int/lit8 v5, v2, -0x1

    aget-wide v4, v4, v5

    add-int/lit8 v6, v2, -0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;->onPedoCalibCalcCompleted(DI)V

    .line 273
    :cond_3
    const/16 v3, 0x13

    if-ge v2, v3, :cond_4

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    .line 274
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v3, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v5, v5, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    add-int/lit8 v6, v2, 0x1

    aget-wide v5, v5, v6

    mul-double/2addr v5, v11

    mul-double v7, v0, v9

    add-double/2addr v5, v7

    aput-wide v5, v3, v4

    .line 276
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v4, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    add-int/lit8 v5, v2, 0x1

    aget-wide v4, v4, v5

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;->onPedoCalibCalcCompleted(DI)V

    .line 279
    :cond_4
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSystemTime:J

    .line 280
    :goto_2
    return-void

    .line 225
    :cond_5
    const-string v3, "PC E - AccumSL is zero"

    invoke-direct {p0, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    goto :goto_2

    .line 241
    :cond_6
    cmpl-double v3, v0, v13

    if-gtz v3, :cond_7

    cmpg-double v3, v0, v5

    if-gez v3, :cond_8

    .line 242
    :cond_7
    const-string v3, "PC E - WSF is over MAX or less MIN."

    invoke-direct {p0, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    goto :goto_2

    .line 246
    :cond_8
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v3, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    const/high16 v4, 0x3fc00000    # 1.5f

    sub-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    mul-double/2addr v3, v5

    double-to-int v2, v3

    goto/16 :goto_0

    .line 252
    :cond_9
    const/16 v3, 0x14

    if-lt v2, v3, :cond_2

    .line 253
    const/16 v2, 0x13

    goto/16 :goto_1
.end method

.method private pedoCalCheckGPSNoiseValid()Z
    .locals 6

    .prologue
    const-wide v4, 0x3fe3333333333333L    # 0.6

    .line 337
    const-string v0, "PCCheckGNValid"

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsHeadDiffSum:D

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumGpsDistance:F

    float-to-double v2, v2

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PC E GNoise :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsHeadDiffSum:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumGpsDistance:F

    float-to-double v1, v1

    mul-double/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x0

    .line 343
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private pedoCalCheckGPSValid()Z
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 283
    const-string v5, "PCCheckGValid"

    invoke-direct {p0, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 286
    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v5, v5, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoArrayStepLength:[D

    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v6, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    add-int/lit8 v6, v6, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v7, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsArrayDistance:[D

    iget-object v8, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v8, v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    add-int/lit8 v8, v8, -0x1

    aget-wide v7, v7, v8

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 287
    .local v1, "diff":D
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PC D between P and G : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalSumDoubleArrayData()[D

    move-result-object v0

    .line 295
    .local v0, "arrSum":[D
    aget-wide v5, v0, v3

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PC E - Not enough MDW : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v5, v0, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 306
    :goto_0
    return v3

    .line 300
    :cond_0
    aget-wide v5, v0, v4

    aget-wide v7, v0, v3

    const-wide v9, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    add-double/2addr v7, v9

    cmpl-double v5, v5, v7

    if-gtz v5, :cond_1

    aget-wide v5, v0, v4

    aget-wide v7, v0, v3

    const-wide v9, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v7, v9

    cmpg-double v5, v5, v7

    if-gez v5, :cond_2

    .line 301
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PC E - PSL in 5 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v0, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", GD in 5:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v0, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v3, v4

    .line 306
    goto :goto_0
.end method

.method private pedoCalCheckMeasUpdated()B
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    .line 349
    const/4 v4, 0x0

    .line 350
    .local v4, "mask":B
    const-wide/16 v1, 0x0

    .line 352
    .local v1, "dist":D
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-boolean v6, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoUpdated:Z

    if-eqz v6, :cond_1

    .line 353
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v6, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    .line 354
    const-string v6, "PCCheckMeasUpdated Error : ETC State included"

    invoke-direct {p0, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 355
    const/16 v4, 0x8

    .line 362
    :goto_0
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v6, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSystemTime:J

    iget-object v8, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v8, v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLastRequestTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x1d4c0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 363
    const-string v6, "PCCheckMeasUpdated Error : G TimeOut occurs"

    invoke-direct {p0, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 364
    const/16 v4, 0x8

    .line 367
    :cond_0
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput-boolean v10, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoUpdated:Z

    .line 370
    :cond_1
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-boolean v6, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUpdated:Z

    if-eqz v6, :cond_2

    .line 371
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v6, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    aget-wide v6, v6, v10

    cmpl-double v6, v6, v11

    if-nez v6, :cond_4

    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v6, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    cmpl-double v6, v6, v11

    if-nez v6, :cond_4

    .line 372
    const-wide/16 v1, 0x0

    .line 417
    :cond_2
    :goto_1
    return v4

    .line 357
    :cond_3
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLength:F

    iget-object v8, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v8, v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepLength:F

    add-float/2addr v7, v8

    iput v7, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLength:F

    .line 358
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepCnt:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepCnt:I

    .line 359
    const/4 v4, 0x1

    goto :goto_0

    .line 374
    :cond_4
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->arrStepLength:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 375
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;>;"
    const/4 v5, 0x0

    .line 377
    .local v5, "removeIndex":I
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 378
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;

    .line 379
    .local v0, "data":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;
    iget-wide v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->deltaTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 380
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLengthPer1Sec:F

    iget v8, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;->stepLength:F

    add-float/2addr v7, v8

    iput v7, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLengthPer1Sec:F

    .line 381
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 383
    :cond_5
    iget-wide v6, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;->timestamp:J

    iget-object v8, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v8, v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUpdateTimeStamp:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_6

    .line 384
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLengthPer1Sec:F

    iget v8, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;->stepLength:F

    add-float/2addr v7, v8

    iput v7, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLengthPer1Sec:F

    .line 387
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 394
    .end local v0    # "data":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;
    :cond_6
    :goto_3
    if-lez v5, :cond_7

    .line 395
    add-int/lit8 v5, v5, -0x1

    .line 396
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->arrStepLength:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 399
    :cond_7
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput-boolean v10, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUpdated:Z

    .line 400
    or-int/lit8 v6, v4, 0x2

    int-to-byte v4, v6

    .line 402
    iget v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 403
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalObtainTwoPointDistance()D

    move-result-wide v1

    .line 404
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumGpsDistance:F

    float-to-double v7, v7

    add-double/2addr v7, v1

    double-to-float v7, v7

    iput v7, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumGpsDistance:F

    .line 405
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccumCnt:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccumCnt:I

    .line 406
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v6, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLengthPer1Sec:F

    float-to-double v6, v6

    invoke-direct {p0, v1, v2, v6, v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalStockDoubleArrayData(DD)V

    .line 407
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const v7, 0x3c23d70a    # 0.01f

    iput v7, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLengthPer1Sec:F

    .line 409
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v6, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccumCnt:I

    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mMaxMeas:I

    if-le v6, v7, :cond_2

    .line 410
    const-string v6, "PC Total GC is full"

    invoke-direct {p0, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 411
    or-int/lit8 v6, v4, 0x4

    int-to-byte v4, v6

    goto/16 :goto_1
.end method

.method private pedoCalCheckPedoValid()Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 310
    const-string v4, "PCCheckPValid"

    invoke-direct {p0, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 312
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v5, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v6, v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    add-float/2addr v5, v6

    iput v5, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    .line 313
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v5, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    float-to-double v5, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WF = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v5, v5, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 316
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v4, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v5, v5, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v0, v4

    .line 318
    .local v0, "diff":D
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v4, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRefWalkOrRun:B

    if-ne v4, v9, :cond_1

    .line 319
    const-wide v4, 0x3fd3333333333333L    # 0.3

    cmpl-double v4, v0, v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v4, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    if-eq v4, v9, :cond_3

    .line 321
    :cond_0
    const-string v3, "PC E - P is 1st case"

    invoke-direct {p0, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 333
    :goto_0
    return v2

    .line 325
    :cond_1
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v4, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRefWalkOrRun:B

    if-ne v4, v3, :cond_3

    .line 327
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v4

    if-gtz v4, :cond_2

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v4, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    if-eq v4, v3, :cond_3

    .line 329
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PC E - P is 2nd case. diff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WOrR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v4, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 333
    goto :goto_0
.end method

.method private pedoCalInitializationArrayBuffer()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 70
    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/4 v2, 0x0

    iput v2, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsArrayDistance:[D

    aput-wide v3, v1, v0

    .line 74
    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoArrayStepLength:[D

    aput-wide v3, v1, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method private pedoCalLLHToXYZ([D)[D
    .locals 18
    .param p1, "llh"    # [D

    .prologue
    .line 496
    const/4 v14, 0x0

    aget-wide v14, p1, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 497
    .local v4, "sinPhi":D
    const/4 v14, 0x1

    aget-wide v14, p1, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 498
    .local v2, "sinLam":D
    const/4 v14, 0x1

    aget-wide v14, p1, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .line 499
    .local v0, "cosLam":D
    const/4 v14, 0x0

    aget-wide v14, p1, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    const/16 v16, 0x0

    aget-wide v16, p1, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v16

    mul-double v6, v14, v16

    .line 500
    .local v6, "tan2Phi":D
    const-wide v8, 0x3fefc928de1a120cL    # 0.9933056199957391

    .line 501
    .local v8, "tmp":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double v16, v8, v6

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 502
    .local v12, "tmpDen":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide v16, 0x3f7b6b90f2f6fa00L    # 0.006694380004260925

    mul-double v16, v16, v4

    mul-double v16, v16, v4

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 504
    .local v10, "tmp2":D
    const/4 v14, 0x3

    new-array v14, v14, [D

    const/4 v15, 0x0

    const-wide v16, 0x415854a640000000L    # 6378137.0

    mul-double v16, v16, v0

    div-double v16, v16, v12

    aput-wide v16, v14, v15

    const/4 v15, 0x1

    const-wide v16, 0x415854a640000000L    # 6378137.0

    mul-double v16, v16, v2

    div-double v16, v16, v12

    aput-wide v16, v14, v15

    const/4 v15, 0x2

    const-wide v16, 0x415854a640000000L    # 6378137.0

    mul-double v16, v16, v8

    mul-double v16, v16, v4

    div-double v16, v16, v10

    aput-wide v16, v14, v15

    return-object v14
.end method

.method private pedoCalObtainTwoPointDistance()D
    .locals 23

    .prologue
    .line 449
    const-wide/16 v7, 0x0

    .line 453
    .local v7, "distance":D
    const-wide/16 v9, 0x0

    .line 455
    .local v9, "headDiff":D
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v5, v0, [D

    .line 456
    .local v5, "arrOrgllh":[D
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v3, v0, [D

    .line 458
    .local v3, "arrCurllh":[D
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-wide v18, v18, v19

    const-wide v20, 0x3f91df467707c94dL    # 0.01745329

    mul-double v18, v18, v20

    aput-wide v18, v5, v17

    .line 459
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-wide v18, v18, v19

    const-wide v20, 0x3f91df467707c94dL    # 0.01745329

    mul-double v18, v18, v20

    aput-wide v18, v5, v17

    .line 460
    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget-wide v18, v18, v19

    aput-wide v18, v5, v17

    .line 462
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-wide v18, v18, v19

    const-wide v20, 0x3f91df467707c94dL    # 0.01745329

    mul-double v18, v18, v20

    aput-wide v18, v3, v17

    .line 463
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget-wide v18, v18, v19

    const-wide v20, 0x3f91df467707c94dL    # 0.01745329

    mul-double v18, v18, v20

    aput-wide v18, v3, v17

    .line 464
    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    move-object/from16 v18, v0

    const/16 v19, 0x2

    aget-wide v18, v18, v19

    aput-wide v18, v3, v17

    .line 466
    const/16 v17, 0x0

    aget-wide v17, v3, v17

    const/16 v19, 0x0

    aget-wide v19, v5, v19

    cmpl-double v17, v17, v19

    if-nez v17, :cond_0

    const/16 v17, 0x1

    aget-wide v17, v3, v17

    const/16 v19, 0x1

    aget-wide v19, v5, v19

    cmpl-double v17, v17, v19

    if-eqz v17, :cond_1

    .line 467
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalLLHToXYZ([D)[D

    move-result-object v6

    .line 468
    .local v6, "arrOrgxyz":[D
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalLLHToXYZ([D)[D

    move-result-object v4

    .line 470
    .local v4, "arrCurxyz":[D
    const/16 v17, 0x0

    aget-wide v17, v6, v17

    const/16 v19, 0x0

    aget-wide v19, v4, v19

    sub-double v11, v17, v19

    .line 471
    .local v11, "x":D
    const/16 v17, 0x1

    aget-wide v17, v6, v17

    const/16 v19, 0x1

    aget-wide v19, v4, v19

    sub-double v13, v17, v19

    .line 472
    .local v13, "y":D
    const/16 v17, 0x2

    aget-wide v17, v6, v17

    const/16 v19, 0x2

    aget-wide v19, v4, v19

    sub-double v15, v17, v19

    .line 474
    .local v15, "z":D
    mul-double v17, v11, v11

    mul-double v19, v13, v13

    add-double v17, v17, v19

    mul-double v19, v15, v15

    add-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldVec1Hz:[D

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-wide v17, v17, v18

    sub-double v17, v11, v17

    const-wide/high16 v19, 0x4000000000000000L    # 2.0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldVec1Hz:[D

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-wide v19, v19, v20

    sub-double v19, v13, v19

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    add-double v17, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldVec1Hz:[D

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget-wide v19, v19, v20

    sub-double v19, v15, v19

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    add-double v9, v17, v19

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsHeadDiffSum:D

    move-wide/from16 v18, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsHeadDiffSum:D

    .line 482
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "HD Sum : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsHeadDiffSum:D

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldVec1Hz:[D

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-wide v11, v17, v18

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldVec1Hz:[D

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aput-wide v13, v17, v18

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldVec1Hz:[D

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aput-wide v15, v17, v18

    .line 489
    .end local v4    # "arrCurxyz":[D
    .end local v6    # "arrOrgxyz":[D
    .end local v11    # "x":D
    .end local v13    # "y":D
    .end local v15    # "z":D
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "PC D = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 491
    return-wide v7
.end method

.method private pedoCalStart()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSystemTime:J

    iput-wide v1, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLastRequestTime:J

    .line 82
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->bNeedData:Z

    .line 84
    return-void
.end method

.method private pedoCalStateRecvGPS()I
    .locals 5

    .prologue
    .line 181
    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    .line 182
    .local v1, "ret":I
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalCheckMeasUpdated()B

    move-result v0

    .line 184
    .local v0, "mask":B
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 185
    const-string v3, "PC E - ETC state included"

    invoke-direct {p0, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 186
    const/4 v1, 0x1

    .line 189
    :cond_0
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v3, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccumCnt:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PC GAccumCnt :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v4, v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccumCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    move v2, v1

    .line 211
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 194
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_1
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 195
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalCheckPedoValid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 196
    const/4 v1, 0x1

    .line 199
    :cond_2
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 200
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalCheckGPSValid()Z

    move-result v3

    if-nez v3, :cond_3

    .line 201
    const/4 v1, 0x1

    .line 204
    :cond_3
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 205
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalCheckGPSNoiseValid()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 206
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalCalculationSF()V

    .line 208
    :cond_4
    const/4 v1, 0x1

    :cond_5
    move v2, v1

    .line 211
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method private pedoCalStateReqGPS()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x3c23d70a    # 0.01f

    .line 134
    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    .line 139
    .local v1, "ret":I
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalCheckMeasUpdated()B

    move-result v0

    .line 140
    .local v0, "mask":B
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 142
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUsedSat:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_0

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccuracy:F

    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    const/high16 v3, 0x3fc00000    # 1.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    const/high16 v3, 0x40900000    # 4.5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSameStepTypeStayCnt:I

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 148
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v3, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    iput v3, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRefWalkingFreq:F

    .line 149
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v3, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    iput-byte v3, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRefWalkOrRun:B

    .line 150
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput v6, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccumCnt:I

    .line 151
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput v5, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumGpsDistance:F

    .line 152
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsHeadDiffSum:D

    .line 153
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput v5, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLength:F

    .line 154
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput v5, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepLengthPer1Sec:F

    .line 155
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput v6, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mAccumStepCnt:I

    .line 156
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v3, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    iput v3, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mFilterWF:F

    .line 157
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalInitializationArrayBuffer()V

    .line 158
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput v6, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSameStepTypeStayCnt:I

    .line 160
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRefWalkOrRun:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 161
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/16 v3, 0x5a

    iput v3, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mMaxMeas:I

    .line 167
    :goto_0
    const/4 v1, 0x4

    .line 175
    :cond_0
    :goto_1
    return v1

    .line 164
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/16 v3, 0x3c

    iput v3, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mMaxMeas:I

    goto :goto_0

    .line 170
    :cond_2
    and-int/lit8 v2, v0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 171
    const-string v2, "PC E - MEAS_INVALID"

    invoke-direct {p0, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 172
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private pedoCalStateWait()Z
    .locals 5

    .prologue
    .line 128
    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSystemTime:J

    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v3, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSleepStartTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x13880

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 129
    .local v0, "result":Z
    :goto_0
    return v0

    .line 128
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pedoCalStockDoubleArrayData(DD)V
    .locals 3
    .param p1, "distance"    # D
    .param p3, "stepLength"    # D

    .prologue
    .line 426
    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    .line 427
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsArrayDistance:[D

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    aput-wide p1, v0, v1

    .line 428
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoArrayStepLength:[D

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    aput-wide p3, v0, v1

    .line 429
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v1, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PC CAI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",D ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",SL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 432
    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mArrayIndex:I

    goto :goto_0
.end method

.method private pedoCalSumDoubleArrayData()[D
    .locals 7

    .prologue
    .line 436
    const-wide/16 v1, 0x0

    .local v1, "sum1":D
    const-wide/16 v3, 0x0

    .line 438
    .local v3, "sum2":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v5, 0x5

    if-ge v0, v5, :cond_0

    .line 439
    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v5, v5, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoArrayStepLength:[D

    aget-wide v5, v5, v0

    add-double/2addr v1, v5

    .line 440
    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v5, v5, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsArrayDistance:[D

    aget-wide v5, v5, v0

    add-double/2addr v3, v5

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [D

    const/4 v6, 0x0

    aput-wide v1, v5, v6

    const/4 v6, 0x1

    aput-wide v3, v5, v6

    return-object v5
.end method


# virtual methods
.method countSameStepType(B)V
    .locals 2
    .param p1, "stepType"    # B

    .prologue
    .line 533
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    if-ne v0, p1, :cond_0

    .line 534
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v1, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSameStepTypeStayCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSameStepTypeStayCnt:I

    .line 537
    :goto_0
    return-void

    .line 536
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSameStepTypeStayCnt:I

    goto :goto_0
.end method

.method onGpsUpdate(IFDDDJ)V
    .locals 4
    .param p1, "nUsedSat"    # I
    .param p2, "fAcc"    # F
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "timestamp"    # J

    .prologue
    .line 510
    iget-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->bNeedData:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLastRequestTime:J

    .line 514
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput-wide p9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUpdateTimeStamp:J

    .line 516
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLastRequestTime:J

    sub-long v0, p9, v0

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->deltaTime:J

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnGUpd delta: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->deltaTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput p1, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUsedSat:I

    .line 520
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput p2, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsAccuracy:F

    .line 521
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsUpdated:Z

    .line 522
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 523
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 524
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsOldLLH:[D

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    const/4 v3, 0x2

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 526
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    const/4 v1, 0x0

    aput-wide p3, v0, v1

    .line 527
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    const/4 v1, 0x1

    aput-wide p5, v0, v1

    .line 528
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mGpsLLH:[D

    const/4 v1, 0x2

    aput-wide p7, v0, v1

    .line 530
    :cond_0
    return-void
.end method

.method onStepInfoUpdate(IIIDDI)V
    .locals 11
    .param p1, "nStepCnt"    # I
    .param p2, "nWalkCnt"    # I
    .param p3, "nRunCnt"    # I
    .param p4, "dStepLength"    # D
    .param p6, "dStepSpeed"    # D
    .param p8, "nUpDownStepCnt"    # I

    .prologue
    .line 541
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    if-eqz v7, :cond_5

    .line 542
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepCount:I

    if-ge v7, p1, :cond_c

    .line 543
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkStepCnt:I

    if-ge v7, p2, :cond_6

    .line 544
    const-string v7, "W"

    invoke-direct {p0, v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 545
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->countSameStepType(B)V

    .line 546
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/4 v8, 0x1

    iput-byte v8, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    .line 562
    :cond_0
    :goto_0
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput p2, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkStepCnt:I

    .line 563
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput p3, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRunStepCnt:I

    .line 564
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move/from16 v0, p8

    iput v0, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mUpDownStepCnt:I

    .line 566
    iget-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mTotalDistance:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_8

    .line 567
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    double-to-float v8, p4

    iput v8, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepLength:F

    .line 573
    :goto_1
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepLength:F

    iget-object v8, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v8, v8, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepCount:I

    sub-int v8, p1, v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-double v1, v7

    .line 575
    .local v1, "avgStepLen":D
    iput-wide p4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mTotalDistance:D

    .line 576
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const-wide v8, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v8, v1

    div-double v8, p6, v8

    double-to-float v8, v8

    iput v8, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    .line 577
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput p1, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepCount:I

    .line 578
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 579
    .local v4, "sf":D
    const/4 v6, 0x0

    .line 581
    .local v6, "sf_bin":I
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    const/high16 v8, 0x3fc00000    # 1.5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    const/high16 v8, 0x40900000    # 4.5f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    .line 584
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v7, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 585
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    const/high16 v8, 0x3fc00000    # 1.5f

    sub-float/2addr v7, v8

    float-to-double v7, v7

    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    mul-double/2addr v7, v9

    double-to-int v6, v7

    .line 590
    :cond_1
    :goto_2
    if-gez v6, :cond_a

    .line 591
    const/4 v6, 0x0

    .line 597
    :cond_2
    :goto_3
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v7, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    aget-wide v4, v7, v6

    .line 599
    :cond_3
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v8, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepLength:F

    float-to-double v8, v8

    div-double/2addr v8, v4

    double-to-float v8, v8

    iput v8, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepLength:F

    .line 601
    iget-boolean v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->bNeedData:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 602
    iget v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_4

    .line 603
    new-instance v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;-><init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$1;)V

    .line 604
    .local v3, "data":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepLength:F

    iput v7, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;->stepLength:F

    .line 606
    iget-wide v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->deltaTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_b

    .line 607
    const-wide/16 v7, 0x0

    iput-wide v7, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;->timestamp:J

    .line 613
    :goto_4
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->arrStepLength:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    .end local v3    # "data":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;
    :cond_4
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mPedoUpdated:Z

    .line 631
    .end local v1    # "avgStepLen":D
    .end local v4    # "sf":D
    .end local v6    # "sf_bin":I
    :cond_5
    :goto_5
    return-void

    .line 547
    :cond_6
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRunStepCnt:I

    if-ge v7, p3, :cond_7

    .line 548
    const-string v7, "R"

    invoke-direct {p0, v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 549
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->countSameStepType(B)V

    .line 550
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/4 v8, 0x2

    iput-byte v8, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    goto/16 :goto_0

    .line 552
    :cond_7
    const-string v7, "IM"

    invoke-direct {p0, v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 553
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mUpDownStepCnt:I

    move/from16 v0, p8

    if-ge v7, v0, :cond_0

    .line 554
    const-string v7, "E"

    invoke-direct {p0, v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 555
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/4 v8, 0x3

    iput-byte v8, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    goto/16 :goto_0

    .line 570
    :cond_8
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v8, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mTotalDistance:D

    sub-double v8, p4, v8

    double-to-float v8, v8

    iput v8, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepLength:F

    goto/16 :goto_1

    .line 586
    .restart local v1    # "avgStepLen":D
    .restart local v4    # "sf":D
    .restart local v6    # "sf_bin":I
    :cond_9
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-byte v7, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 587
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkingFreq:F

    const/high16 v8, 0x3fc00000    # 1.5f

    sub-float/2addr v7, v8

    float-to-double v7, v7

    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/lit8 v6, v7, 0x4

    goto/16 :goto_2

    .line 593
    :cond_a
    const/16 v7, 0x14

    if-lt v6, v7, :cond_2

    .line 594
    const/16 v6, 0x13

    goto/16 :goto_3

    .line 610
    .restart local v3    # "data":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->deltaTime:J

    add-long/2addr v7, v9

    iput-wide v7, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;->timestamp:J

    goto :goto_4

    .line 622
    .end local v1    # "avgStepLen":D
    .end local v3    # "data":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator$PedoStepBuffer;
    .end local v4    # "sf":D
    .end local v6    # "sf_bin":I
    :cond_c
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget v7, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepCount:I

    if-le v7, p1, :cond_5

    .line 623
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    const/4 v8, 0x3

    iput-byte v8, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkOrRun:B

    .line 624
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput p2, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mWalkStepCnt:I

    .line 625
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput p3, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mRunStepCnt:I

    .line 626
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iput p1, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mStepCount:I

    .line 627
    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    move/from16 v0, p8

    iput v0, v7, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mUpDownStepCnt:I

    .line 628
    iput-wide p4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mTotalDistance:D

    goto/16 :goto_5
.end method

.method public pedoCalInitialize()V
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->initialize()V

    .line 48
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-wide v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSystemTime:J

    iput-wide v1, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSleepStartTime:J

    .line 50
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->bNeedData:Z

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->deltaTime:J

    .line 52
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->arrStepLength:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    return-void
.end method

.method public pedoCalStateMachine()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSystemTime:J

    .line 89
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    invoke-interface {v0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;->onPedoCalibStatus(I)V

    .line 92
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    packed-switch v0, :pswitch_data_0

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 95
    :pswitch_0
    const-string v0, "PCStateMachine : STATE_IDLE"

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :pswitch_1
    const-string v0, "PCStateMachine : STATE_INITIALIZING"

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalInitialize()V

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    goto :goto_0

    .line 105
    :pswitch_2
    const-string v0, "PCCalStateMachine : STATE_WAIT_FOR_EN"

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalStateWait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalStart()V

    goto :goto_0

    .line 111
    :pswitch_3
    const-string v0, "PCStateMachine : STATE_WAIT_FOR_G"

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalStateReqGPS()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    goto :goto_0

    .line 116
    :pswitch_4
    const-string v0, "PCStateMachine : STATE_COLLECT_MEAS"

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->debugPedoCalibrator(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->pedoCalStateRecvGPS()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    goto :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public pedoSetDefaultStateMachine()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mStatus:I

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->bNeedData:Z

    .line 58
    return-void
.end method

.method public pedoSetScaleFactorArray([D)V
    .locals 4
    .param p1, "arrSF"    # [D

    .prologue
    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalData:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;

    iget-object v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;->mSFArray:[D

    aget-wide v2, p1, v0

    aput-wide v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method registerListener(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    .prologue
    .line 634
    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    .line 635
    return-void
.end method

.method unRegisterListener()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    if-eqz v0, :cond_0

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrator;->mPedoCalibListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibListener;

    .line 641
    :cond_0
    return-void
.end method
