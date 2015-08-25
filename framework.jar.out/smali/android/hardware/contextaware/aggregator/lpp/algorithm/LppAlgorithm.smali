.class public Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
.super Ljava/lang/Object;
.source "LppAlgorithm.java"


# instance fields
.field APDRMAXNUMBER:I

.field Cnt_inx:I

.field CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

.field Flag_FineLocAcquired:Z

.field Flag_First_loc:Z

.field Flag_Loc_init:Z

.field Flag_PositionFilterInit:Z

.field LocFromLocationManager:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

.field final MAX_MOVEMENT_SPEED_VEHICLE:D

.field final MAX_MOVEMENT_SPEED_WALK:D

.field final MIN_MOVEMENT_DISTANCE:D

.field final MIN_UPDTAE_TIME:D

.field OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

.field OldLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

.field Origin_LLH:[D

.field PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

.field Prev_StateTime:D

.field ProcessNoisePerSecondVehicle:[D

.field ProcessNoisePerSecondWalk:[D

.field final STATE_STATIONARY:I

.field final STATE_UNKNWON:I

.field final STATE_VEHICLE:I

.field final STATE_WALK_HANDFIX:I

.field final STATE_WALK_JACKET:I

.field final STATE_WALK_PANTS:I

.field final STATE_WALK_SWING:I

.field TAG:Ljava/lang/String;

.field final _DATAFROMAPDR:I

.field final _DATAFROMGPS:I

.field final _DATAFROMNETWORK:I

.field flag_AlgorithmOn:Z

.field lastUpdatedTime:J

.field public mAPDRResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/ApdrData;",
            ">;"
        }
    .end annotation
.end field

.field public mAPDRStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/ApdrData;",
            ">;"
        }
    .end annotation
.end field

.field mFlagIsGPSBatchMode:Z

.field mFlagLocInputReady:Z

.field mFlagStayingArea:Z

.field private final mInputPosBuf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputPosBufSync:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field mLPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;

.field private final mLPPPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final mSendLPPPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "LppAlgorithm"

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;

    .line 26
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    .line 27
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    .line 29
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    .line 30
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    .line 31
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    .line 32
    iput-boolean v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    .line 40
    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMAPDR:I

    .line 41
    iput v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMGPS:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMNETWORK:I

    .line 44
    const-wide v0, 0x3fa1eb851eb851ecL    # 0.035

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_VEHICLE:D

    .line 45
    const-wide v0, 0x3f53a92a30553261L    # 0.0012

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_WALK:D

    .line 46
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MIN_MOVEMENT_DISTANCE:D

    .line 47
    const-wide v0, 0x40b3880000000000L    # 5000.0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MIN_UPDTAE_TIME:D

    .line 49
    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_inx:I

    .line 50
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->APDRMAXNUMBER:I

    .line 51
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_Loc_init:Z

    .line 52
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_First_loc:Z

    .line 53
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    .line 56
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-direct {v0, v3, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;-><init>(II)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    .line 129
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastUpdatedTime:J

    .line 339
    iput v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_UNKNWON:I

    .line 340
    iput v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_STATIONARY:I

    .line 341
    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_VEHICLE:I

    .line 342
    const/16 v0, 0x15

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_WALK_HANDFIX:I

    .line 343
    const/16 v0, 0x16

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_WALK_JACKET:I

    .line 344
    const/16 v0, 0x17

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_WALK_SWING:I

    .line 345
    const/16 v0, 0x18

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_WALK_PANTS:I

    .line 565
    new-array v0, v3, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    .line 566
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    .line 567
    new-array v0, v3, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondVehicle:[D

    .line 568
    new-array v0, v3, [D

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    .line 569
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_PositionFilterInit:Z

    return-void

    .line 565
    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x4059000000000000L    # 100.0
    .end array-data

    .line 567
    :array_1
    .array-data 8
        0x4024000000000000L    # 10.0
        0x4024000000000000L    # 10.0
        0x3fe0000000000000L    # 0.5
    .end array-data

    .line 568
    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
    .end array-data
.end method

.method private LppAlgorithmRun()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    .line 349
    const/4 v0, 0x4

    .line 358
    .local v0, "STATE_Algorithm":I
    const/4 v2, 0x0

    .local v2, "inx":I
    :goto_0
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 368
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget v9, v9, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    if-ne v9, v11, :cond_0

    .line 358
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 435
    :goto_1
    const/4 v5, 0x0

    .local v5, "inxTest":I
    :goto_2
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 408
    .end local v5    # "inxTest":I
    :sswitch_0
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Stationary"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateSinglePoint()V

    goto :goto_1

    .line 412
    :sswitch_1
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Vehicle"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateSinglePoint()V

    goto :goto_1

    .line 416
    :sswitch_2
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Walking, handfix"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateTraj()V

    goto :goto_1

    .line 420
    :sswitch_3
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Walking, in jacket or bag"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateTraj()V

    goto :goto_1

    .line 424
    :sswitch_4
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Walking, hand swing"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateTraj()V

    goto :goto_1

    .line 428
    :sswitch_5
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Moving status - Walking, in pants"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateSinglePoint()V

    goto :goto_1

    .line 440
    .restart local v5    # "inxTest":I
    :cond_2
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Deliver Data check()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v9, v11, :cond_4

    .line 442
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "LppAlgorithmRun() unkwon error - [mLPPPosition.size() < 1]"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_3
    :goto_3
    return-void

    .line 461
    :cond_4
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v10, "Deliver Data Ok()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v6, 0x0

    .line 466
    .local v6, "sendAll":Z
    if-ne v0, v11, :cond_5

    .line 467
    const/4 v6, 0x1

    .line 477
    :goto_4
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "LppAlgorithm - Send All flag : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v1, -0x1

    .line 481
    .local v1, "index":I
    if-eqz v6, :cond_8

    .line 482
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;->onUpdateLPPtraj(Ljava/util/ArrayList;)V

    .line 483
    const/4 v3, 0x0

    .local v3, "inx2":I
    :goto_5
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_7

    .line 485
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LppAlgorithm - PosOut => Time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Pos : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v9

    invoke-virtual {v9}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLongitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 483
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 469
    .end local v1    # "index":I
    .end local v3    # "inx2":I
    :cond_5
    iget-boolean v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    if-eqz v9, :cond_6

    .line 470
    const/4 v6, 0x1

    .line 471
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    goto/16 :goto_4

    .line 474
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 488
    .restart local v1    # "index":I
    .restart local v3    # "inx2":I
    :cond_7
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 491
    .end local v3    # "inx2":I
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v4, "inxOld":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 493
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 495
    const/4 v2, 0x0

    :goto_6
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_a

    .line 496
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v12

    sub-long v7, v10, v12

    .line 498
    .local v7, "timediff":J
    const-wide/32 v9, 0x124f80

    cmp-long v9, v7, v9

    if-lez v9, :cond_9

    .line 499
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inxOld Test size() before - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inxOld Test size() after - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    move v1, v2

    .line 503
    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    new-instance v11, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v11, v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    .line 509
    .end local v7    # "timediff":J
    :cond_a
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mLPPPosition Test size() before - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_7
    if-ltz v2, :cond_b

    .line 511
    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 510
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 514
    :cond_b
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mLPPPosition Test size() after - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 517
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v10, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-interface {v9, v10}, Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;->onUpdateLPPtraj(Ljava/util/ArrayList;)V

    .line 518
    const/4 v3, 0x0

    .restart local v3    # "inx2":I
    :goto_8
    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 520
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "LppAlgorithm - PosOut => Time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Pos : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v9

    invoke-virtual {v9}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLatitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLongitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mSendLPPPos:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 518
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    .line 406
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x18 -> :sswitch_5
    .end sparse-switch
.end method

.method private PositionFiltering(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    .locals 24
    .param p1, "lastLoc"    # Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    .prologue
    .line 579
    new-instance v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>()V

    .line 580
    .local v2, "result":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    .line 582
    const/4 v3, 0x3

    new-array v0, v3, [D

    move-object/from16 v22, v0

    .line 583
    .local v22, "resultENU":[D
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v8, 0x2

    aget-wide v7, v7, v8

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 584
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    aput-wide v4, v22, v3

    .line 585
    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    aput-wide v4, v22, v3

    .line 586
    const/4 v3, 0x2

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v4

    aput-wide v4, v22, v3

    .line 588
    const/4 v3, 0x0

    aget-wide v3, v22, v3

    const/4 v5, 0x0

    aget-wide v5, v22, v5

    mul-double/2addr v3, v5

    const/4 v5, 0x1

    aget-wide v5, v22, v5

    const/4 v7, 0x1

    aget-wide v7, v22, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    const/4 v5, 0x2

    aget-wide v5, v22, v5

    const/4 v7, 0x2

    aget-wide v7, v22, v7

    mul-double/2addr v5, v7

    add-double v9, v3, v5

    .line 589
    .local v9, "Dist":D
    const-wide v3, 0x41d502f900000000L    # 1.410065408E9

    cmpl-double v3, v9, v3

    if-lez v3, :cond_0

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLatitude()D

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x1

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLongitude()D

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x2

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v5

    aput-wide v5, v3, v4

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v8, 0x2

    aget-wide v7, v7, v8

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 600
    invoke-direct/range {p0 .. p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFilteringInit()V

    .line 601
    const/4 v3, 0x3

    new-array v0, v3, [D

    move-object/from16 v21, v0

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    aput-wide v4, v21, v3

    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    aput-wide v4, v21, v3

    const/4 v3, 0x2

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v4

    aput-wide v4, v21, v3

    .line 602
    .local v21, "mStateInit":[D
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialState([D)Z

    .line 604
    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v3

    long-to-double v3, v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    .line 704
    .end local v2    # "result":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    .end local v21    # "mStateInit":[D
    :goto_0
    return-object v2

    .line 613
    .restart local v2    # "result":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    :cond_0
    const/16 v19, 0x0

    .local v19, "inxTest":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_1

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 620
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->getCurrentState()[D

    move-result-object v16

    .line 624
    .local v16, "currentest":[D
    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v3

    long-to-double v3, v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    sub-double/2addr v3, v5

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v17, v3, v5

    .line 625
    .local v17, "delT":D
    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v3

    long-to-double v3, v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    .line 629
    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 630
    const/4 v3, 0x3

    new-array v0, v3, [[D

    move-object/from16 v20, v0

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    mul-double v6, v6, v17

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v4, v20, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    mul-double v6, v6, v17

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v4, v20, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    mul-double v6, v6, v17

    aput-wide v6, v4, v5

    aput-object v4, v20, v3

    .line 631
    .local v20, "mProcessNoise":[[D
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    move-result v3

    if-nez v3, :cond_2

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v4, "PositionFiltering - Process noise error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 640
    .end local v20    # "mProcessNoise":[[D
    :cond_2
    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 642
    const/4 v3, 0x3

    new-array v0, v3, [[D

    move-object/from16 v20, v0

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [D

    fill-array-data v4, :array_0

    aput-object v4, v20, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    new-array v4, v4, [D

    fill-array-data v4, :array_1

    aput-object v4, v20, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    new-array v4, v4, [D

    fill-array-data v4, :array_2

    aput-object v4, v20, v3

    .line 643
    .restart local v20    # "mProcessNoise":[[D
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    move-result v3

    if-nez v3, :cond_3

    .line 644
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v4, "PositionFiltering - Process noise error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 648
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TimePropagation(D)Z

    move-result v3

    if-nez v3, :cond_4

    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v4, "PositionFiltering - TimePropagation error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 654
    .end local v20    # "mProcessNoise":[[D
    :cond_4
    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_5

    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 659
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->getCurrentState()[D

    move-result-object v16

    .line 663
    const/4 v3, 0x3

    new-array v13, v3, [[D

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [D

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    aput-wide v6, v4, v5

    aput-object v4, v13, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [D

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    aput-wide v6, v4, v5

    aput-object v4, v13, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    new-array v4, v4, [D

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v6

    aput-wide v6, v4, v5

    aput-object v4, v13, v3

    .line 665
    .local v13, "Meas":[[D
    new-instance v23, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, v23

    invoke-direct {v0, v13}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    .line 666
    .local v23, "z":Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_7

    .line 667
    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v3

    invoke-virtual {v3}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    const-string v4, "network"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 668
    const/4 v3, 0x3

    new-array v14, v3, [[D

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    const/high16 v7, 0x41a00000    # 20.0f

    div-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x41a00000    # 20.0f

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v4, v14, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    const/high16 v7, 0x41a00000    # 20.0f

    div-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x41a00000    # 20.0f

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v4, v14, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    new-array v4, v4, [D

    fill-array-data v4, :array_3

    aput-object v4, v14, v3

    .line 669
    .local v14, "MeasNoise":[[D
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3, v14}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    .line 681
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementUpdate(Landroid/hardware/contextaware/aggregator/lpp/algorithm/Matrix;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 682
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v4, "PositionFiltering - MeasurementUpdate error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 671
    .end local v14    # "MeasNoise":[[D
    :cond_6
    const/4 v3, 0x3

    new-array v14, v3, [[D

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v4, v14, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v4, v14, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-double v6, v6

    aput-wide v6, v4, v5

    aput-object v4, v14, v3

    .line 672
    .restart local v14    # "MeasNoise":[[D
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3, v14}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    goto/16 :goto_3

    .line 676
    .end local v14    # "MeasNoise":[[D
    :cond_7
    const/4 v3, 0x3

    new-array v14, v3, [[D

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v4, v14, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v4, v14, v3

    const/4 v3, 0x2

    const/4 v4, 0x3

    new-array v4, v4, [D

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    mul-float/2addr v6, v7

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-double v6, v6

    aput-wide v6, v4, v5

    aput-object v4, v14, v3

    .line 677
    .restart local v14    # "MeasNoise":[[D
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3, v14}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    goto/16 :goto_3

    .line 687
    :cond_8
    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_9

    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 691
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->getCurrentState()[D

    move-result-object v11

    .line 694
    .local v11, "ENU_updated":[D
    const/4 v3, 0x3

    new-array v15, v3, [D

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    const-wide v6, 0x400921fafc8b007aL    # 3.141592

    mul-double/2addr v4, v6

    aput-wide v4, v15, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    const-wide v6, 0x400921fafc8b007aL    # 3.141592

    mul-double/2addr v4, v6

    aput-wide v4, v15, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    aput-wide v4, v15, v3

    .line 695
    .local v15, "Origin_LLH_radian":[D
    invoke-static {v11, v15}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2llh([D[D)[D

    move-result-object v12

    .line 697
    .local v12, "LLH_updated":[D
    const/4 v3, 0x0

    aget-wide v3, v12, v3

    const-wide v5, 0x400921fafc8b007aL    # 3.141592

    div-double/2addr v3, v5

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setLatitude(D)V

    .line 698
    const/4 v3, 0x1

    aget-wide v3, v12, v3

    const-wide v5, 0x400921fafc8b007aL    # 3.141592

    div-double/2addr v3, v5

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setLongitude(D)V

    .line 700
    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setAltitude(D)V

    goto/16 :goto_0

    .line 642
    :array_0
    .array-data 8
        0x406c200000000000L    # 225.0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x406c200000000000L    # 225.0
        0x4059000000000000L    # 100.0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x4039000000000000L    # 25.0
    .end array-data

    .line 668
    :array_3
    .array-data 8
        0x0
        0x0
        0x4197d78400000000L    # 1.0E8
    .end array-data
.end method

.method private PositionFilteringInit()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 709
    const-string v5, "PositionFilteringInit()"

    invoke-direct {p0, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 711
    iput-boolean v8, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_PositionFilterInit:Z

    .line 712
    iput-boolean v7, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    .line 714
    new-array v0, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_0

    aput-object v5, v0, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_1

    aput-object v5, v0, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_2

    aput-object v5, v0, v9

    .line 715
    .local v0, "mCovMatrix":[[D
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialCovariance([[D)Z

    .line 717
    new-array v1, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_3

    aput-object v5, v1, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_4

    aput-object v5, v1, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_5

    aput-object v5, v1, v9

    .line 718
    .local v1, "mMeasMatrix":[[D
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementMatrix([[D)Z

    .line 720
    new-array v4, v6, [D

    fill-array-data v4, :array_6

    .line 721
    .local v4, "mStateInit":[D
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v4}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialState([D)Z

    .line 723
    new-array v2, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_7

    aput-object v5, v2, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_8

    aput-object v5, v2, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_9

    aput-object v5, v2, v9

    .line 724
    .local v2, "mMeasNoise":[[D
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    .line 726
    new-array v3, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_a

    aput-object v5, v3, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_b

    aput-object v5, v3, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_c

    aput-object v5, v3, v9

    .line 727
    .local v3, "mProcessNoise":[[D
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    .line 730
    iget-object v5, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setTransitionMatrix([[D)Z

    .line 731
    return-void

    .line 714
    nop

    :array_0
    .array-data 8
        0x4059000000000000L    # 100.0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x4059000000000000L    # 100.0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x4059000000000000L    # 100.0
    .end array-data

    .line 717
    :array_3
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 720
    :array_6
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    .line 723
    :array_7
    .array-data 8
        0x4030000000000000L    # 16.0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 8
        0x0
        0x4030000000000000L    # 16.0
        0x0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x40c3880000000000L    # 10000.0
    .end array-data

    .line 726
    :array_a
    .array-data 8
        0x4069000000000000L    # 200.0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 8
        0x0
        0x4069000000000000L    # 200.0
        0x0
    .end array-data

    :array_c
    .array-data 8
        0x0
        0x0
        0x4000000000000000L    # 2.0
    .end array-data
.end method

.method private SendStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 875
    return-void
.end method

.method private estimateSinglePoint()V
    .locals 6

    .prologue
    .line 537
    new-instance v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v2, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    .line 538
    .local v2, "lastLoc":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setMovingStatus(I)V

    .line 539
    invoke-direct {p0, v2}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFiltering(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-result-object v0

    .line 540
    .local v0, "EstResult":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    const/4 v1, 0x0

    .local v1, "inxTest":I
    :goto_0
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 545
    :cond_0
    if-eqz v0, :cond_2

    .line 546
    new-instance v3, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v3, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    .line 547
    .local v3, "updatedLoc":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    .line 549
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 553
    :cond_1
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 560
    .end local v3    # "updatedLoc":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    :cond_2
    iget-object v4, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v5, "EstimateSinglePoint(), null filter output"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_3
    return-void
.end method

.method private estimateTraj()V
    .locals 37

    .prologue
    .line 736
    const/16 v27, 0x0

    .local v27, "inxTest":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v27

    if-ge v0, v3, :cond_0

    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 740
    :cond_0
    new-instance v28, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    .line 741
    .local v28, "lastLoc":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    const/4 v3, 0x2

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setMovingStatus(I)V

    .line 744
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_PositionFilterInit:Z

    if-nez v3, :cond_1

    .line 745
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFiltering(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    .line 746
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    .line 747
    new-instance v34, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct/range {v34 .. v34}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>()V

    .line 748
    .local v34, "updatedLoc":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    .end local v34    # "updatedLoc":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    :goto_1
    return-void

    .line 753
    :cond_1
    const-wide/16 v11, 0x0

    .line 754
    .local v11, "bias_bearing":D
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    .line 755
    .local v32, "scale_step":D
    const-string v10, ""

    .line 765
    .local v10, "Logstr":Ljava/lang/String;
    new-instance v2, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>()V

    .line 766
    .local v2, "lppLoc":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    new-instance v29, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct/range {v29 .. v29}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>()V

    .line 768
    .local v29, "lppLoc2":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    const-wide/16 v13, 0x0

    .local v13, "crossproduct":D
    const-wide/16 v22, 0x0

    .local v22, "distance_product":D
    const-wide/16 v24, 0x0

    .line 769
    .local v24, "dot_product":D
    const/4 v3, 0x2

    new-array v15, v3, [D

    fill-array-data v15, :array_0

    .line 770
    .local v15, "deltaEN":[D
    const/4 v3, 0x2

    new-array v0, v3, [D

    move-object/from16 v16, v0

    fill-array-data v16, :array_1

    .line 771
    .local v16, "deltaEN2":[D
    const/4 v3, 0x2

    new-array v0, v3, [D

    move-object/from16 v17, v0

    fill-array-data v17, :array_2

    .line 772
    .local v17, "deltaEstEN":[D
    const/4 v3, 0x3

    new-array v0, v3, [D

    move-object/from16 v30, v0

    fill-array-data v30, :array_3

    .line 778
    .local v30, "propagationENU":[D
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v8, 0x2

    aget-wide v7, v7, v8

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 780
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v6, 0x1

    aget-wide v6, v3, v6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    move-object/from16 v3, v29

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 783
    invoke-virtual/range {v28 .. v29}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->distanceTo(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)D

    move-result-wide v3

    const-wide v5, 0x40c3880000000000L    # 10000.0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_4

    .line 784
    const/16 v26, 0x0

    .local v26, "inx":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v26

    if-ge v0, v3, :cond_2

    .line 785
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget-wide v4, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->bearing:D

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget-wide v6, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->PosPropation(DD)V

    .line 784
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 788
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    aput-wide v4, v15, v3

    .line 789
    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    aput-wide v4, v15, v3

    .line 791
    const/4 v3, 0x0

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    aput-wide v4, v16, v3

    .line 792
    const/4 v3, 0x1

    invoke-virtual/range {v29 .. v29}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    aput-wide v4, v16, v3

    .line 794
    const/4 v3, 0x0

    aget-wide v3, v15, v3

    const/4 v5, 0x1

    aget-wide v5, v16, v5

    mul-double/2addr v3, v5

    const/4 v5, 0x0

    aget-wide v5, v16, v5

    const/4 v7, 0x1

    aget-wide v7, v15, v7

    mul-double/2addr v5, v7

    sub-double v13, v3, v5

    .line 795
    const/4 v3, 0x0

    aget-wide v3, v15, v3

    const/4 v5, 0x0

    aget-wide v5, v16, v5

    mul-double/2addr v3, v5

    const/4 v5, 0x1

    aget-wide v5, v15, v5

    const/4 v7, 0x1

    aget-wide v7, v16, v7

    mul-double/2addr v5, v7

    add-double v24, v3, v5

    .line 796
    const/4 v3, 0x0

    aget-wide v3, v15, v3

    const/4 v5, 0x0

    aget-wide v5, v15, v5

    mul-double/2addr v3, v5

    const/4 v5, 0x1

    aget-wide v5, v15, v5

    const/4 v7, 0x1

    aget-wide v7, v15, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    const/4 v5, 0x0

    aget-wide v5, v16, v5

    const/4 v7, 0x0

    aget-wide v7, v16, v7

    mul-double/2addr v5, v7

    const/4 v7, 0x1

    aget-wide v7, v16, v7

    const/4 v9, 0x1

    aget-wide v35, v16, v9

    mul-double v7, v7, v35

    add-double/2addr v5, v7

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    .line 798
    div-double v3, v24, v22

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v11

    .line 799
    const-wide/16 v3, 0x0

    cmpg-double v3, v13, v3

    if-gez v3, :cond_3

    .line 800
    const-wide/16 v3, 0x0

    sub-double v11, v3, v11

    .line 804
    :cond_3
    const/4 v3, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    const/4 v6, 0x0

    aget-wide v6, v15, v6

    mul-double/2addr v4, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const/4 v8, 0x1

    aget-wide v8, v15, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v17, v3

    .line 805
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const/4 v8, 0x0

    aget-wide v8, v15, v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const/4 v8, 0x1

    aget-wide v8, v15, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v17, v3

    .line 807
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    const/4 v6, 0x0

    aget-wide v6, v17, v6

    add-double/2addr v4, v6

    aput-wide v4, v30, v3

    .line 808
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    const/4 v6, 0x1

    aget-wide v6, v17, v6

    add-double/2addr v4, v6

    aput-wide v4, v30, v3

    .line 809
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v4

    aput-wide v4, v30, v3

    .line 818
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2llh([D[D)[D

    move-result-object v31

    .line 819
    .local v31, "propagationLLH":[D
    const/4 v3, 0x0

    aget-wide v3, v31, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setLatitude(D)V

    .line 820
    const/4 v3, 0x1

    aget-wide v3, v31, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setLongitude(D)V

    .line 821
    const/4 v3, 0x2

    aget-wide v3, v31, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setAltitude(D)V

    .line 822
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFiltering(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    .line 824
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v3}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/KalmanFilter;->getCurrentState()[D

    move-result-object v30

    .line 826
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-wide v4, v30, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    aput-wide v4, v16, v3

    .line 827
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-wide v4, v30, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    aput-wide v4, v16, v3

    .line 829
    const/4 v3, 0x0

    aget-wide v3, v15, v3

    const/4 v5, 0x0

    aget-wide v5, v15, v5

    mul-double/2addr v3, v5

    const/4 v5, 0x1

    aget-wide v5, v15, v5

    const/4 v7, 0x1

    aget-wide v7, v15, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    .line 830
    .local v18, "dist1":D
    const/4 v3, 0x0

    aget-wide v3, v16, v3

    const/4 v5, 0x0

    aget-wide v5, v16, v5

    mul-double/2addr v3, v5

    const/4 v5, 0x1

    aget-wide v5, v16, v5

    const/4 v7, 0x1

    aget-wide v7, v16, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    .line 832
    .local v20, "dist2":D
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v18, v3

    if-lez v3, :cond_5

    .line 833
    div-double v32, v20, v18

    .line 839
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    .line 841
    const/16 v26, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v26

    if-ge v0, v3, :cond_6

    .line 842
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget-wide v3, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->bearing:D

    add-double v4, v3, v11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget-wide v6, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    mul-double v6, v6, v32

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->PosPropation(DD)V

    .line 844
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget-wide v3, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->utctime:J

    invoke-virtual {v2, v3, v4}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setSystemTime(J)V

    .line 848
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    new-instance v4, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v4, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget-wide v5, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->bearing:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    iget-wide v5, v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v32

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 841
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_4

    .line 812
    .end local v18    # "dist1":D
    .end local v20    # "dist2":D
    .end local v26    # "inx":I
    .end local v31    # "propagationLLH":[D
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v4, "Invalid distance between Current location and lastest location"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFiltering(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 835
    .restart local v18    # "dist1":D
    .restart local v20    # "dist2":D
    .restart local v26    # "inx":I
    .restart local v31    # "propagationLLH":[D
    :cond_5
    const-wide/16 v32, 0x0

    goto/16 :goto_3

    .line 865
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 866
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v3, v2}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    goto/16 :goto_1

    .line 769
    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data

    .line 770
    :array_1
    .array-data 8
        0x0
        0x0
    .end array-data

    .line 771
    :array_2
    .array-data 8
        0x0
        0x0
    .end array-data

    .line 772
    :array_3
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private resetwithLastLoc(Landroid/location/Location;)V
    .locals 7
    .param p1, "lastloc"    # Landroid/location/Location;

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v1, "resetwithLastLoc() unknown error - lastloc is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    .line 92
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    .line 99
    :goto_1
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 100
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    .line 101
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    .line 103
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 104
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    new-instance v1, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v1, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_inx:I

    .line 111
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastUpdatedTime:J

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    .line 96
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    goto :goto_1
.end method


# virtual methods
.method public deliverAPDRData(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/aggregator/lpp/ApdrData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listAPDR":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contextaware/aggregator/lpp/ApdrData;>;"
    const/4 v5, 0x1

    .line 117
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deliverAPDRData(), array size \t\t: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v0}, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;-><init>()V

    .line 119
    .local v0, "apdrD":Landroid/hardware/contextaware/aggregator/lpp/ApdrData;
    const/4 v1, 0x0

    .local v1, "inx":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 121
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    invoke-virtual {v0, v2}, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->set(Landroid/hardware/contextaware/aggregator/lpp/ApdrData;)V

    .line 122
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v3, v0}, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;-><init>(Landroid/hardware/contextaware/aggregator/lpp/ApdrData;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget v2, v0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    if-ne v2, v5, :cond_0

    .line 124
    invoke-virtual {p0, v5}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setStayingAreaFlag(I)V

    .line 119
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_1
    return-void
.end method

.method public deliverLocationData(Landroid/location/Location;)V
    .locals 24
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "deliverLocationData()"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-nez p1, :cond_1

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "deliverLocationData - loc is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LppAlgorithm - PosIn => Time : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Pos : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " , "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 145
    invoke-direct/range {p0 .. p1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->resetwithLastLoc(Landroid/location/Location;)V

    .line 152
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    .line 153
    .local v13, "lppl":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    invoke-virtual {v13}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v19

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-nez v19, :cond_3

    .line 154
    invoke-virtual {v13}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v20

    cmpg-float v19, v19, v20

    if-gez v19, :cond_0

    .line 155
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    .line 156
    const-string v19, "LppAlgorithm - Duplicated position. Overwritten. "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .end local v13    # "lppl":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    :cond_4
    const-string v19, "Duplication test passed"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    .line 165
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastUpdatedTime:J

    move-wide/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-lez v19, :cond_5

    .line 166
    const-string v19, "Old data passed. Temporarily"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastUpdatedTime:J

    .line 171
    const-string v19, "Old location test passed."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 173
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Position filter Status - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 175
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    .line 176
    const-string v19, "Position filter Status is changed to false "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    .line 178
    .restart local v13    # "lppl":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    .end local v13    # "lppl":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x2710

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    .line 193
    const/4 v11, 0x0

    .line 194
    .local v11, "inxOld":I
    const/4 v10, 0x1

    .local v10, "inxFind":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_9

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v22

    cmp-long v19, v20, v22

    if-gez v19, :cond_7

    .line 196
    move v11, v10

    .line 194
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 183
    .end local v10    # "inxFind":I
    .end local v11    # "inxOld":I
    :cond_8
    const-string v19, "Position filter is not ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    goto/16 :goto_0

    .line 199
    .restart local v10    # "inxFind":I
    .restart local v11    # "inxOld":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 201
    .end local v10    # "inxFind":I
    .end local v11    # "inxOld":I
    :cond_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Size of mInputPosBuf : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v20, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;-><init>(Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;)V

    invoke-static/range {v19 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    goto :goto_3

    .line 220
    :cond_b
    const-string v19, "Sorting is done."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 222
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    move/from16 v19, v0

    if-nez v19, :cond_1a

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_19

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    .line 228
    .local v14, "lpploca":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    const/4 v3, 0x1

    .line 229
    .local v3, "Flag_LocOK":Z
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Fine Location Acq Flag : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 231
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    move/from16 v19, v0

    if-eqz v19, :cond_14

    .line 232
    new-instance v12, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    .line 233
    .local v12, "loc_comp":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    invoke-virtual {v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->distanceTo(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)D

    move-result-wide v6

    .line 236
    .local v6, "distanceOfInput":D
    invoke-virtual {v12}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v21

    sub-long v19, v19, v21

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v17, v0

    .line 238
    .local v17, "timediffOfInput":D
    invoke-virtual {v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v19

    const-string v20, "network"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 242
    const-wide/16 v4, 0x0

    .line 243
    .local v4, "MAX_MOVEMENT_SPEED":D
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_13

    .line 244
    const-wide v4, 0x3f53a92a30553261L    # 0.0012

    .line 251
    :cond_d
    :goto_5
    mul-double v19, v4, v17

    cmpl-double v19, v6, v19

    if-lez v19, :cond_e

    .line 252
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LppAlgorithm - abnormal location from NETWORK_PROVIDER : accuracy - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v19

    const v20, 0x461c4000    # 10000.0f

    invoke-virtual/range {v19 .. v20}, Landroid/location/Location;->setAccuracy(F)V

    .line 258
    .end local v4    # "MAX_MOVEMENT_SPEED":D
    :cond_e
    const-wide/high16 v19, 0x4034000000000000L    # 20.0

    cmpg-double v19, v6, v19

    if-gez v19, :cond_f

    .line 259
    invoke-virtual {v12}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v20

    cmpl-float v19, v19, v20

    if-lez v19, :cond_f

    .line 260
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LppAlgorithm - too close distance - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 261
    const/4 v3, 0x0

    .line 265
    :cond_f
    const-wide v19, 0x40b3880000000000L    # 5000.0

    cmpg-double v19, v17, v19

    if-gez v19, :cond_10

    .line 266
    invoke-virtual {v12}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v20

    cmpl-float v19, v19, v20

    if-lez v19, :cond_10

    .line 267
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LppAlgorithm - too close time - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 268
    const/4 v3, 0x0

    .line 271
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    .line 272
    const-string v19, "Staying detected. Flag_Loc OK "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 273
    const/4 v3, 0x1

    .line 290
    .end local v6    # "distanceOfInput":D
    .end local v12    # "loc_comp":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    .end local v17    # "timediffOfInput":D
    :cond_11
    :goto_6
    if-eqz v3, :cond_c

    .line 291
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Flag_LocOK - loc time is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->set(Landroid/hardware/contextaware/aggregator/lpp/LppLocation;)V

    .line 299
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v15, "mAPDRDeleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contextaware/aggregator/lpp/ApdrData;>;"
    const/4 v9, 0x0

    .local v9, "inx":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_16

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    .line 304
    .local v16, "sample":Landroid/hardware/contextaware/aggregator/lpp/ApdrData;
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-gez v19, :cond_12

    .line 305
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 246
    .end local v9    # "inx":I
    .end local v15    # "mAPDRDeleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contextaware/aggregator/lpp/ApdrData;>;"
    .end local v16    # "sample":Landroid/hardware/contextaware/aggregator/lpp/ApdrData;
    .restart local v4    # "MAX_MOVEMENT_SPEED":D
    .restart local v6    # "distanceOfInput":D
    .restart local v12    # "loc_comp":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    .restart local v17    # "timediffOfInput":D
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v19

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 247
    const-wide v4, 0x3fa1eb851eb851ecL    # 0.035

    goto/16 :goto_5

    .line 277
    .end local v4    # "MAX_MOVEMENT_SPEED":D
    .end local v6    # "distanceOfInput":D
    .end local v12    # "loc_comp":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    .end local v17    # "timediffOfInput":D
    :cond_14
    invoke-virtual {v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v19

    const/high16 v20, 0x42480000    # 50.0f

    cmpl-float v19, v19, v20

    if-lez v19, :cond_15

    .line 278
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LppAlgorithm - check Initial Fine location : false - accuracy is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 283
    :cond_15
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LppAlgorithm - check Initial Fine location : OK - accuracy is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    .line 284
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    .line 286
    const/4 v3, 0x1

    goto/16 :goto_6

    .line 309
    .restart local v9    # "inx":I
    .restart local v15    # "mAPDRDeleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contextaware/aggregator/lpp/ApdrData;>;"
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 313
    const/4 v9, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_18

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;

    .line 315
    .restart local v16    # "sample":Landroid/hardware/contextaware/aggregator/lpp/ApdrData;
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/hardware/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocFromLocationManager:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v21

    cmp-long v19, v19, v21

    if-gez v19, :cond_17

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_17
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 319
    .end local v16    # "sample":Landroid/hardware/contextaware/aggregator/lpp/ApdrData;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 321
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    .line 322
    invoke-direct/range {p0 .. p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LppAlgorithmRun()V

    goto/16 :goto_4

    .line 326
    .end local v3    # "Flag_LocOK":Z
    .end local v9    # "inx":I
    .end local v14    # "lpploca":Landroid/hardware/contextaware/aggregator/lpp/LppLocation;
    .end local v15    # "mAPDRDeleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/contextaware/aggregator/lpp/ApdrData;>;"
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 332
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "deliverLocationData() end"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    .line 334
    const-string v19, "Position filter Status is changed to true "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :cond_1a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Position Filtering hold - GPS batching mode , accumulated index : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public init(Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;)V
    .locals 3
    .param p1, "LPPLnr"    # Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;

    .prologue
    const/4 v2, 0x0

    .line 59
    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;

    .line 60
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    .line 62
    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    .line 64
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFilteringInit()V

    .line 66
    return-void
.end method

.method public setGPSBatchingStatus(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 878
    iput-boolean p1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    .line 879
    return-void
.end method

.method public setStayingAreaFlag(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    .line 882
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    .line 883
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    .line 70
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop - mLPPPosition size() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Landroid/hardware/contextaware/aggregator/lpp/LppAlgoListener;->onUpdateLPPtraj(Ljava/util/ArrayList;)V

    .line 78
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldGPSLoc:Landroid/hardware/contextaware/aggregator/lpp/LppLocation;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    .line 82
    return-void
.end method
