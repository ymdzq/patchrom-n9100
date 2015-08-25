.class Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;
.super Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;
.source "BypassStressTest.java"


# instance fields
.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delayTime"    # I

    .prologue
    .line 44
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;-><init>(I)V

    .line 50
    new-instance v0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest$1;-><init>(Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 45
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 47
    return-void
.end method

.method private getSensorRate()I
    .locals 2

    .prologue
    .line 164
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    return v0
.end method


# virtual methods
.method protected final clear()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method protected final getType()I
    .locals 4

    .prologue
    .line 132
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 133
    .local v0, "random":I
    const/4 v1, 0x0

    .line 135
    .local v1, "type":I
    packed-switch v0, :pswitch_data_0

    .line 155
    :goto_0
    return v1

    .line 137
    :pswitch_0
    const/4 v1, 0x1

    .line 138
    goto :goto_0

    .line 140
    :pswitch_1
    const/4 v1, 0x3

    .line 141
    goto :goto_0

    .line 143
    :pswitch_2
    const/4 v1, 0x2

    .line 144
    goto :goto_0

    .line 146
    :pswitch_3
    const/4 v1, 0x4

    .line 147
    goto :goto_0

    .line 149
    :pswitch_4
    const/16 v1, 0x8

    .line 150
    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected final registerListener()V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->getSensorRate()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method protected final unregisterListener()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method
