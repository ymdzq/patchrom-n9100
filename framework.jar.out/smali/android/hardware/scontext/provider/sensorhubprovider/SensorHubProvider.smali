.class public Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;
.super Landroid/hardware/scontext/provider/Provider;
.source "SensorHubProvider.java"


# instance fields
.field private final mListener:Landroid/hardware/scontext/provider/EventListener;

.field private final mRate:I

.field private final mSensorHub:Landroid/hardware/sensorhub/SensorHub;

.field private final mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

.field private mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;
    .param p3, "type"    # I
    .param p4, "rate"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/Provider;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 152
    new-instance v0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider$1;

    invoke-direct {v0, p0}, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider$1;-><init>(Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;)V

    iput-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    .line 49
    iput p4, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mRate:I

    .line 50
    const-string v0, "sensorhub"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/sensorhub/SensorHubManager;

    iput-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 51
    iput-object p2, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;

    .line 52
    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    invoke-virtual {v0, p3}, Landroid/hardware/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHub:Landroid/hardware/sensorhub/SensorHub;

    .line 53
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;)Landroid/hardware/scontext/provider/EventListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;

    .prologue
    .line 31
    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mListener:Landroid/hardware/scontext/provider/EventListener;

    return-object v0
.end method


# virtual methods
.method public add()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHub:Landroid/hardware/sensorhub/SensorHub;

    iget v3, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/sensorhub/SensorHubManager;->registerListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;I)Z

    .line 64
    return-void
.end method

.method getListener()Landroid/hardware/sensorhub/SensorHubEventListener;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    return-object v0
.end method

.method getManager()Landroid/hardware/sensorhub/SensorHubManager;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    return-object v0
.end method

.method public handleDiedBinder()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public onBinderDied()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 97
    return-object p1
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;

    iget-object v2, p0, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;->mSensorHub:Landroid/hardware/sensorhub/SensorHub;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/sensorhub/SensorHubManager;->unregisterListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;)V

    .line 75
    return-void
.end method

.method public requestToUpdate()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public setProperty(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "service"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 87
    return-void
.end method

.method public setReferenceData(I[B)Z
    .locals 1
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method
