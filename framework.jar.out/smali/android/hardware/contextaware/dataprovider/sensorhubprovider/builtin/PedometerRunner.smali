.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "PedometerRunner.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;


# instance fields
.field private accumulativeCalorie:D

.field private accumulativeDistance:D

.field private accumulativeRunDownStepCount:J

.field private accumulativeRunStepCount:J

.field private accumulativeRunUpStepCount:J

.field private accumulativeTotalStepCount:J

.field private accumulativeUpDownStepCount:J

.field private accumulativeWalkDownStepCount:J

.field private accumulativeWalkStepCount:J

.field private accumulativeWalkUpStepCount:J

.field private final pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 98
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-direct {v0, p2, p3, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/IPedoCalibManagerListener;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    .line 99
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->requestScaleFactorUpdate()[I

    .line 100
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    .line 592
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 593
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 595
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 596
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    .line 597
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    .line 598
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 599
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    .line 600
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    .line 601
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 602
    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 604
    iput-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    .line 605
    iput-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 606
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 775
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 776
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 777
    return-void
.end method

.method protected display()V
    .locals 8

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/contextaware/manager/ContextBean;->getContextBundleForDisplay()Landroid/os/Bundle;

    move-result-object v0

    .line 168
    .local v0, "context":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "================= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ================="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 175
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 177
    .local v5, "str":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 178
    .local v1, "i":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 190
    .end local v1    # "i":Ljava/lang/String;
    :cond_2
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_3

    .line 191
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 194
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    .restart local v1    # "i":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 182
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 183
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-ge v6, v7, :cond_5

    .line 184
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 182
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 187
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getDisplayContents(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 762
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 763
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 764
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WalkStepCountDiff"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "WalkStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "RunStepCountDiff"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "RunStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "UpDownStepCountDiff"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "UpDownStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TotalStepCountDiff"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TotalStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DistanceDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Distance"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Speed"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "StepStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "CalorieDiff"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Calorie"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "WalkingFrequency"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WalkUpStepCountDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "WalkUpStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "WalkDownStepCountDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "WalkDownStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "RunUpStepCountDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "RunUpStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "RunDownStepCountDiff"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "RunDownStepCount"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "LoggingCount"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "TimeStampArray"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "DistanceDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CalorieDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "SpeedArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "WalkStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "RunStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "WalkUpStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "WalkDownStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "RunUpStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "RunDownStepCountDiffArray"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "TotalStepCountDiffArray"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 4

    .prologue
    .line 132
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 133
    .local v0, "packet":[B
    const/4 v1, 0x0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 134
    const/4 v1, 0x1

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 135
    const/4 v1, 0x2

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 137
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 802
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 803
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInitContextBundle()Landroid/os/Bundle;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    .line 617
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, "names":[Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 620
    .local v0, "contextBundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 621
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 622
    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 623
    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 624
    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 625
    const/4 v2, 0x5

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 626
    const/4 v2, 0x6

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 627
    const/4 v2, 0x7

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 628
    const/16 v2, 0x8

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 629
    const/16 v2, 0x9

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 630
    const/16 v2, 0xa

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 631
    const/16 v2, 0xb

    aget-object v2, v1, v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 633
    const/16 v2, 0xc

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 634
    const/16 v2, 0xd

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 635
    const/16 v2, 0xe

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 636
    const/16 v2, 0xf

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 637
    const/16 v2, 0x10

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 638
    const/16 v2, 0x11

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 639
    const/16 v2, 0x12

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 640
    const/16 v2, 0x13

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 641
    const/16 v2, 0x14

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 642
    const/16 v2, 0x15

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 643
    const/16 v2, 0x16

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 645
    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x3

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 738
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 750
    return-object p0
.end method

.method protected final notifyInitContext()V
    .locals 2

    .prologue
    .line 787
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 789
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyInitContext()V

    .line 791
    :cond_0
    return-void
.end method

.method public onUpdateScaleFactor([I)V
    .locals 6
    .param p1, "sfArray"    # [I

    .prologue
    .line 809
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 810
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 812
    .local v1, "intBuffer":Ljava/nio/IntBuffer;
    invoke-virtual {v1, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 814
    const/16 v2, 0x17

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 819
    return-void
.end method

.method public parse([BI)I
    .locals 65
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 206
    move/from16 v49, p2

    .line 208
    .local v49, "tmpNext":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parse start:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v49

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p1

    array-length v2, v0

    sub-int v2, v2, v49

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    .line 211
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 212
    const/4 v2, -0x1

    .line 581
    :goto_0
    return v2

    .line 215
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v35

    .line 216
    .local v35, "names":[Ljava/lang/String;
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .local v50, "tmpNext":I
    aget-byte v26, p1, v49

    .line 219
    .local v26, "data":I
    move/from16 v0, v26

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_2

    .line 220
    move-object/from16 v0, p1

    array-length v2, v0

    sub-int v2, v2, v50

    add-int/lit8 v2, v2, -0xe

    if-gez v2, :cond_1

    .line 221
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 222
    const/16 v49, -0x1

    move/from16 v2, v49

    move/from16 v49, v50

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    goto :goto_0

    .line 225
    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    :cond_1
    and-int/lit8 v26, v26, 0x7f

    .line 226
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x0

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 228
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 229
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x1

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 232
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v26, p1, v50

    .line 233
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x2

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 235
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 236
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x3

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 239
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v26, p1, v49

    .line 240
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x4

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 242
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 243
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x5

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 246
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    .line 248
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x6

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 250
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 251
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x7

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 254
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    .line 256
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x8

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-double v10, v0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 259
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move/from16 v0, v26

    int-to-double v11, v0

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    .line 260
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x9

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 262
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v2, p1, v50

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v2

    int-to-double v9, v2

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    div-double v18, v9, v11

    .line 264
    .local v18, "speed":D
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xa

    aget-object v9, v35, v9

    move-wide/from16 v0, v18

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 266
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v26, p1, v49

    .line 267
    move/from16 v47, v26

    .line 268
    .local v47, "stepStatus":I
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xb

    aget-object v9, v35, v9

    move/from16 v0, v47

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 270
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xc

    aget-object v9, v35, v9

    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v10, p1, v50

    invoke-static {v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v10

    int-to-double v10, v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 276
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move/from16 v0, v26

    int-to-double v11, v0

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 277
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xd

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 279
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v26, p1, v49

    .line 280
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xe

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-double v10, v0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    div-double/2addr v10, v12

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 283
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v26, p1, v50

    .line 284
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xf

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 286
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    .line 287
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x10

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 290
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v26, p1, v49

    .line 291
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x11

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 293
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    .line 294
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x12

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 297
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v26, p1, v50

    .line 298
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x13

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 300
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    .line 301
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x14

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 304
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v26, p1, v49

    .line 305
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x15

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 307
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    .line 308
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x16

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move/from16 v49, v50

    .line 573
    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v9 .. v21}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->onStepInfoUpdate(JJJDDJ)V

    .line 577
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parse end:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v49

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    move/from16 v2, v49

    .line 581
    goto/16 :goto_0

    .line 311
    .end local v18    # "speed":D
    .end local v47    # "stepStatus":I
    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    :cond_2
    move/from16 v0, v26

    and-int/lit16 v2, v0, 0xc0

    shr-int/lit8 v2, v2, 0x6

    const/4 v9, 0x3

    if-ne v2, v9, :cond_7

    .line 312
    move-object/from16 v0, p1

    array-length v2, v0

    sub-int v2, v2, v50

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_3

    .line 313
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 314
    const/16 v49, -0x1

    move/from16 v2, v49

    move/from16 v49, v50

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    goto/16 :goto_0

    .line 317
    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    :cond_3
    new-instance v2, Ljava/util/SimpleTimeZone;

    const/4 v9, 0x0

    const-string v10, "GMT"

    invoke-direct {v2, v9, v10}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v22

    .line 319
    .local v22, "calender":Ljava/util/Calendar;
    const/16 v2, 0xb

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v30

    .line 320
    .local v30, "hour":I
    const/16 v2, 0xc

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v34

    .line 321
    .local v34, "minute":I
    const/16 v2, 0xd

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v45

    .line 322
    .local v45, "second":I
    const/16 v2, 0xe

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v33

    .line 324
    .local v33, "milliSec":I
    move/from16 v0, v30

    mul-int/lit16 v2, v0, 0xe10

    mul-int/lit8 v9, v34, 0x3c

    add-int/2addr v2, v9

    add-int v2, v2, v45

    mul-int/lit16 v2, v2, 0x3e8

    add-int v2, v2, v33

    int-to-long v3, v2

    .line 325
    .local v3, "curUtcTime":J
    invoke-virtual/range {v22 .. v22}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 327
    .local v5, "curTimeMillis":J
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v32, p1, v50

    .line 328
    .local v32, "loggingCount":I
    if-gtz v32, :cond_4

    .line 329
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_LOGGING_PACKAGE_SIZE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 331
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 334
    :cond_4
    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v48, v0

    .line 335
    .local v48, "timeStampArray":[J
    move/from16 v0, v32

    new-array v0, v0, [D

    move-object/from16 v29, v0

    .line 336
    .local v29, "distanceDiffArray":[D
    move/from16 v0, v32

    new-array v0, v0, [D

    move-object/from16 v25, v0

    .line 337
    .local v25, "calorieDiffArray":[D
    move/from16 v0, v32

    new-array v0, v0, [D

    move-object/from16 v46, v0

    .line 338
    .local v46, "speedArray":[D
    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v61, v0

    .line 339
    .local v61, "walkStepCountDiffArray":[J
    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v41, v0

    .line 340
    .local v41, "runStepCountDiffArray":[J
    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v64, v0

    .line 341
    .local v64, "walkUpStepCountDiffArray":[J
    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v58, v0

    .line 342
    .local v58, "walkDownStepCountDiffArray":[J
    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v44, v0

    .line 343
    .local v44, "runUpStepCountDiffArray":[J
    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v38, v0

    .line 344
    .local v38, "runDownStepCountDiffArray":[J
    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v53, v0

    .line 346
    .local v53, "totalStepCountDiffArray":[J
    const-wide/16 v27, 0x0

    .line 347
    .local v27, "distanceDiff":D
    const-wide/16 v23, 0x0

    .line 348
    .local v23, "calorieDiff":D
    const-wide/16 v18, 0x0

    .line 349
    .restart local v18    # "speed":D
    const-wide/16 v51, 0x0

    .line 350
    .local v51, "totalStepCountDiff":J
    const-wide/16 v59, 0x0

    .line 351
    .local v59, "walkStepCountDiff":J
    const-wide/16 v39, 0x0

    .line 352
    .local v39, "runStepCountDiff":J
    const-wide/16 v62, 0x0

    .line 353
    .local v62, "walkUpStepCountDiff":J
    const-wide/16 v56, 0x0

    .line 354
    .local v56, "walkDownStepCountDiff":J
    const-wide/16 v42, 0x0

    .line 355
    .local v42, "runUpStepCountDiff":J
    const-wide/16 v36, 0x0

    .line 357
    .local v36, "runDownStepCountDiff":J
    const/16 v47, -0x1

    .line 359
    .restart local v47    # "stepStatus":I
    const/16 v31, 0x0

    .local v31, "i":I
    move/from16 v50, v49

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    :goto_2
    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_6

    .line 360
    move-object/from16 v0, p1

    array-length v2, v0

    sub-int v2, v2, v50

    add-int/lit8 v2, v2, -0x14

    if-gez v2, :cond_5

    .line 361
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 363
    const/16 v49, -0x1

    move/from16 v2, v49

    move/from16 v49, v50

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    goto/16 :goto_0

    .line 366
    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    :cond_5
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    add-int/2addr v2, v9

    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v2, v9

    int-to-long v7, v2

    .line 370
    .local v7, "tmpTimeStamp":J
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    move-result-object v2

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC24(JJJ)J

    move-result-wide v9

    aput-wide v9, v48, v31

    .line 374
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    .line 376
    move/from16 v0, v26

    int-to-double v9, v0

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v11

    aput-wide v9, v29, v31

    .line 378
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    .line 380
    move/from16 v0, v26

    int-to-double v9, v0

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v11

    aput-wide v9, v25, v31

    .line 382
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v2, p1, v50

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v2

    int-to-long v9, v2

    aput-wide v9, v61, v31

    .line 384
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v2, p1, v49

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v2, v9

    int-to-long v9, v2

    aput-wide v9, v41, v31

    .line 385
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v2, p1, v49

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v2

    int-to-long v9, v2

    aput-wide v9, v64, v31

    .line 387
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v2, p1, v50

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v2

    int-to-long v9, v2

    aput-wide v9, v58, v31

    .line 389
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v2, p1, v49

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v2, v9

    int-to-long v9, v2

    aput-wide v9, v44, v31

    .line 390
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v2, p1, v49

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v2, v9

    int-to-long v9, v2

    aput-wide v9, v38, v31

    .line 392
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v2, p1, v49

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v2

    int-to-double v9, v2

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    div-double/2addr v9, v11

    aput-wide v9, v46, v31

    .line 395
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v2, v9

    int-to-long v9, v2

    aput-wide v9, v53, v31

    .line 397
    aget-wide v9, v29, v31

    add-double v27, v27, v9

    .line 398
    aget-wide v9, v25, v31

    add-double v23, v23, v9

    .line 399
    aget-wide v9, v46, v31

    add-double v18, v18, v9

    .line 401
    aget-wide v9, v53, v31

    add-long v51, v51, v9

    .line 402
    aget-wide v9, v61, v31

    add-long v59, v59, v9

    .line 403
    aget-wide v9, v41, v31

    add-long v39, v39, v9

    .line 404
    aget-wide v9, v64, v31

    add-long v62, v62, v9

    .line 405
    aget-wide v9, v58, v31

    add-long v56, v56, v9

    .line 406
    aget-wide v9, v44, v31

    add-long v42, v42, v9

    .line 407
    aget-wide v9, v38, v31

    add-long v36, v36, v9

    .line 359
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_2

    .line 410
    .end local v7    # "tmpTimeStamp":J
    :cond_6
    add-long v9, v62, v56

    add-long v9, v9, v42

    add-long v54, v9, v36

    .line 414
    .local v54, "upDownStepCountDiff":J
    move/from16 v0, v32

    int-to-double v9, v0

    div-double v18, v18, v9

    .line 416
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x0

    aget-object v9, v35, v9

    move-wide/from16 v0, v59

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 417
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    add-long v9, v9, v59

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 418
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x1

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x2

    aget-object v9, v35, v9

    move-wide/from16 v0, v39

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 420
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    add-long v9, v9, v39

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 421
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x3

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 422
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x4

    aget-object v9, v35, v9

    move-wide/from16 v0, v54

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 423
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    add-long v9, v9, v54

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 424
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x5

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 425
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x6

    aget-object v9, v35, v9

    move-wide/from16 v0, v51

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 426
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    add-long v9, v9, v51

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 427
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x7

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 428
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x8

    aget-object v9, v35, v9

    move-wide/from16 v0, v27

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 429
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    add-double v9, v9, v27

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    .line 430
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x9

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 431
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xa

    aget-object v9, v35, v9

    move-wide/from16 v0, v18

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 432
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xb

    aget-object v9, v35, v9

    const/4 v10, -0x1

    invoke-virtual {v2, v9, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xc

    aget-object v9, v35, v9

    move-wide/from16 v0, v23

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 434
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    add-double v9, v9, v23

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xd

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xe

    aget-object v9, v35, v9

    const-wide/16 v10, 0x0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 437
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xf

    aget-object v9, v35, v9

    move-wide/from16 v0, v62

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 438
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    add-long v9, v9, v62

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    .line 439
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x10

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 440
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x11

    aget-object v9, v35, v9

    move-wide/from16 v0, v56

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 441
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    add-long v9, v9, v56

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    .line 442
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x12

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 444
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x13

    aget-object v9, v35, v9

    move-wide/from16 v0, v42

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 445
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    add-long v9, v9, v42

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x14

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x15

    aget-object v9, v35, v9

    move-wide/from16 v0, v36

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 448
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    add-long v9, v9, v36

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    .line 449
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x16

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 452
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x17

    aget-object v9, v35, v9

    move/from16 v0, v32

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x18

    aget-object v9, v35, v9

    move-object/from16 v0, v48

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x19

    aget-object v9, v35, v9

    move-object/from16 v0, v29

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 455
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x1a

    aget-object v9, v35, v9

    move-object/from16 v0, v25

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 456
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x1b

    aget-object v9, v35, v9

    move-object/from16 v0, v46

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x1c

    aget-object v9, v35, v9

    move-object/from16 v0, v61

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x1d

    aget-object v9, v35, v9

    move-object/from16 v0, v41

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x1e

    aget-object v9, v35, v9

    move-object/from16 v0, v64

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x1f

    aget-object v9, v35, v9

    move-object/from16 v0, v58

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x20

    aget-object v9, v35, v9

    move-object/from16 v0, v44

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 462
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x21

    aget-object v9, v35, v9

    move-object/from16 v0, v38

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 463
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x22

    aget-object v9, v35, v9

    move-object/from16 v0, v53

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    move/from16 v49, v50

    .line 465
    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    goto/16 :goto_1

    .line 466
    .end local v3    # "curUtcTime":J
    .end local v5    # "curTimeMillis":J
    .end local v18    # "speed":D
    .end local v22    # "calender":Ljava/util/Calendar;
    .end local v23    # "calorieDiff":D
    .end local v25    # "calorieDiffArray":[D
    .end local v27    # "distanceDiff":D
    .end local v29    # "distanceDiffArray":[D
    .end local v30    # "hour":I
    .end local v31    # "i":I
    .end local v32    # "loggingCount":I
    .end local v33    # "milliSec":I
    .end local v34    # "minute":I
    .end local v36    # "runDownStepCountDiff":J
    .end local v38    # "runDownStepCountDiffArray":[J
    .end local v39    # "runStepCountDiff":J
    .end local v41    # "runStepCountDiffArray":[J
    .end local v42    # "runUpStepCountDiff":J
    .end local v44    # "runUpStepCountDiffArray":[J
    .end local v45    # "second":I
    .end local v46    # "speedArray":[D
    .end local v47    # "stepStatus":I
    .end local v48    # "timeStampArray":[J
    .end local v49    # "tmpNext":I
    .end local v51    # "totalStepCountDiff":J
    .end local v53    # "totalStepCountDiffArray":[J
    .end local v54    # "upDownStepCountDiff":J
    .end local v56    # "walkDownStepCountDiff":J
    .end local v58    # "walkDownStepCountDiffArray":[J
    .end local v59    # "walkStepCountDiff":J
    .end local v61    # "walkStepCountDiffArray":[J
    .end local v62    # "walkUpStepCountDiff":J
    .end local v64    # "walkUpStepCountDiffArray":[J
    .restart local v50    # "tmpNext":I
    :cond_7
    move-object/from16 v0, p1

    array-length v2, v0

    sub-int v2, v2, v50

    add-int/lit8 v2, v2, -0x20

    if-gez v2, :cond_8

    .line 467
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 468
    const/16 v49, -0x1

    move/from16 v2, v49

    move/from16 v49, v50

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    goto/16 :goto_0

    .line 471
    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    :cond_8
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    .line 474
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x0

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 476
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    .line 477
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x1

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 480
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v2, p1, v49

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    .line 483
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x2

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 485
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    .line 486
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x3

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 489
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    .line 492
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x4

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 494
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    .line 495
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x5

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 498
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v2, p1, v49

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    .line 501
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x6

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 503
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    .line 504
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v9, 0x7

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 507
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    .line 510
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x8

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-double v10, v0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    div-double/2addr v10, v12

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 513
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move/from16 v0, v26

    int-to-double v11, v0

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    .line 514
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x9

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 516
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v2, p1, v49

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->getCompleteOfTwo(I)I

    move-result v2

    int-to-double v9, v2

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    div-double v18, v9, v11

    .line 518
    .restart local v18    # "speed":D
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xa

    aget-object v9, v35, v9

    move-wide/from16 v0, v18

    invoke-virtual {v2, v9, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 520
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v26, p1, v50

    .line 521
    move/from16 v47, v26

    .line 522
    .restart local v47    # "stepStatus":I
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xb

    aget-object v9, v35, v9

    move/from16 v0, v47

    invoke-virtual {v2, v9, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 524
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v2, p1, v49

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    .line 526
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xc

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-double v10, v0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    div-double/2addr v10, v12

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 529
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move/from16 v0, v26

    int-to-double v11, v0

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    div-double/2addr v11, v13

    add-double/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    .line 530
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xd

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 532
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v26, p1, v49

    .line 533
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xe

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-double v10, v0

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    div-double/2addr v10, v12

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 536
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    .line 539
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0xf

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 541
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    .line 542
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x10

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkUpStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 545
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v2, p1, v49

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    .line 548
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x11

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 550
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    .line 551
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x12

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 554
    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v2, p1, v50

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    .line 557
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x13

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 559
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    .line 560
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x14

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunUpStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 563
    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v2, p1, v49

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v49, v50, 0x1

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    aget-byte v9, p1, v50

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v2, v9

    add-int/lit8 v50, v49, 0x1

    .end local v49    # "tmpNext":I
    .restart local v50    # "tmpNext":I
    aget-byte v9, p1, v49

    and-int/lit16 v9, v9, 0xff

    add-int v26, v2, v9

    .line 566
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x15

    aget-object v9, v35, v9

    move/from16 v0, v26

    int-to-long v10, v0

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 568
    move-object/from16 v0, p0

    iget-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    move/from16 v0, v26

    int-to-long v11, v0

    add-long/2addr v9, v11

    move-object/from16 v0, p0

    iput-wide v9, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    .line 569
    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v2

    const/16 v9, 0x16

    aget-object v9, v35, v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunDownStepCount:J

    invoke-virtual {v2, v9, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    move/from16 v49, v50

    .end local v50    # "tmpNext":I
    .restart local v49    # "tmpNext":I
    goto/16 :goto_1
.end method

.method public requestToUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 824
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 826
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 827
    .local v0, "packet":[B
    aput-byte v3, v0, v2

    .line 828
    aput-byte v2, v0, v3

    .line 830
    const/16 v1, -0x48

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCmdToSensorHub(BB[B)V

    .line 833
    return-void
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 9
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
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 657
    const/4 v3, 0x1

    .line 658
    .local v3, "result":Z
    new-array v1, v6, [B

    .line 660
    .local v1, "dataPacket":[B
    const/4 v4, 0x5

    if-ne p1, v4, :cond_0

    .line 661
    const-string v4, "Height"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 663
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v5

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserHeight(D)V

    .line 666
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->setUserProfileHeight(D)V

    .line 668
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v4

    double-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    .line 669
    const/16 v4, 0x12

    invoke-virtual {p0, v4, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v3

    .line 727
    :goto_0
    return v3

    .line 671
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v4, 0x4

    if-ne p1, v4, :cond_1

    .line 672
    const-string v4, "Weight"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 674
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v5

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserWeight(D)V

    .line 677
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->setUserProfileWeight(D)V

    .line 679
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v4

    double-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    .line 680
    const/16 v4, 0x13

    invoke-virtual {p0, v4, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v3

    goto :goto_0

    .line 682
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v4, 0x6

    if-ne p1, v4, :cond_2

    .line 683
    const-string v4, "Gender"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 685
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v5

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserGender(I)V

    .line 688
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->setUserProfileGender(D)V

    .line 690
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    .line 691
    const/16 v4, 0x14

    invoke-virtual {p0, v4, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v3

    goto :goto_0

    .line 693
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    const/16 v4, 0x11

    if-ne p1, v4, :cond_3

    .line 694
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 696
    .local v0, "count":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delivery Count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 697
    const/16 v4, 0x15

    invoke-static {v0, v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendCommonValueToSensorHub(B[B)Z

    move-result v3

    .line 700
    goto/16 :goto_0

    .end local v0    # "count":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_3
    const/16 v4, 0x3f

    if-ne p1, v4, :cond_7

    .line 701
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 703
    .local v2, "mode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exercise mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 705
    if-eqz v2, :cond_4

    if-ne v2, v6, :cond_6

    .line 707
    :cond_4
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-virtual {v4, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->enable(I)V

    .line 712
    :cond_5
    :goto_1
    const-string v4, "Exercise mode = pedoCalibManager end"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 714
    const/16 v4, 0x17

    const/4 v5, 0x3

    invoke-static {v2, v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    invoke-virtual {p0, v4, v5, v7, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 720
    const-string v4, "sendPropertyValueToSensorHub end"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 708
    :cond_6
    if-ne v2, v7, :cond_5

    .line 709
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->pedoCalibManager:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;

    invoke-virtual {v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationManager;->disable()V

    goto :goto_1

    .line 724
    .end local v2    # "mode":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0
.end method
