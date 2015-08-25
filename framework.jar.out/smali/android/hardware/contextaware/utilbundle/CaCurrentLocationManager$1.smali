.class Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager$1;
.super Ljava/lang/Object;
.source "CaCurrentLocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 12
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/4 v11, 0x0

    cmpg-float v0, v0, v11

    if-gtz v0, :cond_0

    .line 129
    const-string v0, "Accuracy is low"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 134
    .local v1, "sysTime":J
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    .line 136
    .local v3, "timeStamp":J
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    .line 137
    .local v5, "latitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    .line 138
    .local v7, "longitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v9

    .line 142
    .local v9, "altitude":D
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager$1;->this$0:Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/contextaware/utilbundle/CaCurrentLocationManager;->notifyCurrentLocationObserver(JJDDD)V

    goto :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string v0, "Location service is disabled"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 123
    const-string v0, "Location service is enabled"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 154
    packed-switch p2, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 156
    :pswitch_0
    const-string v0, "out of service"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_1
    const-string v0, "temporarily unavailable"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :pswitch_2
    const-string v0, "available"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
