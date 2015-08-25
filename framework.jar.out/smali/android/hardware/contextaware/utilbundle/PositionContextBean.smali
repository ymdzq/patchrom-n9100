.class Landroid/hardware/contextaware/utilbundle/PositionContextBean;
.super Ljava/lang/Object;
.source "PositionContextBean.java"


# static fields
.field static final GPS_TYPE:I = 0x1

.field static final NONE_TYPE:I = 0x0

.field static final WPS_TYPE:I = 0x2


# instance fields
.field private accuracy:F

.field private altitude:D

.field private distance:D

.field private latitude:D

.field private longitude:D

.field private satelliteCount:I

.field private speed:F

.field private type:I

.field private utcTime:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->clearPosition()V

    .line 65
    return-void
.end method

.method constructor <init>(F)V
    .locals 0
    .param p1, "accuracy"    # F

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->clearPosition()V

    .line 75
    iput p1, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->accuracy:F

    .line 76
    return-void
.end method

.method static final calculationDistance(DDDD)D
    .locals 8
    .param p0, "preLatitude"    # D
    .param p2, "preLongitude"    # D
    .param p4, "curLatitude"    # D
    .param p6, "curLongitude"    # D

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/16 v3, 0x0

    .line 317
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 318
    .local v0, "distance":D
    cmpl-double v2, p0, v3

    if-ltz v2, :cond_0

    cmpl-double v2, p2, v3

    if-ltz v2, :cond_0

    .line 319
    sub-double v2, p4, p0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double v4, p6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 322
    :cond_0
    return-wide v0
.end method


# virtual methods
.method final clearPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 82
    iput v3, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->type:I

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->utcTime:[I

    .line 84
    iput-wide v1, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->latitude:D

    .line 85
    iput-wide v1, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->longitude:D

    .line 86
    iput-wide v1, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->altitude:D

    .line 87
    iput-wide v1, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->distance:D

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->speed:F

    .line 89
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->accuracy:F

    .line 90
    iput v3, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->satelliteCount:I

    .line 91
    return-void
.end method

.method final getAccuracy()F
    .locals 1

    .prologue
    .line 269
    iget v0, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->accuracy:F

    return v0
.end method

.method final getAltitude()D
    .locals 2

    .prologue
    .line 212
    iget-wide v0, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->altitude:D

    return-wide v0
.end method

.method final getDistance()D
    .locals 2

    .prologue
    .line 231
    iget-wide v0, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->distance:D

    return-wide v0
.end method

.method final getLatitude()D
    .locals 2

    .prologue
    .line 174
    iget-wide v0, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->latitude:D

    return-wide v0
.end method

.method final getLongitude()D
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->longitude:D

    return-wide v0
.end method

.method final getSatelliteCount()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->satelliteCount:I

    return v0
.end method

.method final getSpeed()F
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->speed:F

    return v0
.end method

.method final getType()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->type:I

    return v0
.end method

.method final getUtcTime()[I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->utcTime:[I

    return-object v0
.end method

.method final setAccuracy(F)V
    .locals 0
    .param p1, "accuracy"    # F

    .prologue
    .line 279
    iput p1, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->accuracy:F

    .line 280
    return-void
.end method

.method final setAltitude(D)V
    .locals 0
    .param p1, "altitude"    # D

    .prologue
    .line 222
    iput-wide p1, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->altitude:D

    .line 223
    return-void
.end method

.method final setDistance(D)V
    .locals 0
    .param p1, "distance"    # D

    .prologue
    .line 241
    iput-wide p1, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->distance:D

    .line 242
    return-void
.end method

.method final setLatitude(D)V
    .locals 0
    .param p1, "latitude"    # D

    .prologue
    .line 184
    iput-wide p1, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->latitude:D

    .line 185
    return-void
.end method

.method final setLongitude(D)V
    .locals 0
    .param p1, "longitude"    # D

    .prologue
    .line 203
    iput-wide p1, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->longitude:D

    .line 204
    return-void
.end method

.method final setPosition(I[IDDDDFFI)V
    .locals 0
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
    .line 119
    iput p1, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->type:I

    .line 120
    iput-object p2, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->utcTime:[I

    .line 121
    iput-wide p3, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->latitude:D

    .line 122
    iput-wide p5, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->longitude:D

    .line 123
    iput-wide p7, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->altitude:D

    .line 124
    iput-wide p9, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->distance:D

    .line 125
    iput p11, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->speed:F

    .line 126
    iput p12, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->accuracy:F

    .line 127
    iput p13, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->satelliteCount:I

    .line 128
    return-void
.end method

.method final setSatelliteCount(I)V
    .locals 0
    .param p1, "satelliteCount"    # I

    .prologue
    .line 298
    iput p1, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->satelliteCount:I

    .line 299
    return-void
.end method

.method final setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 260
    iput p1, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->speed:F

    .line 261
    return-void
.end method

.method final setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 146
    iput p1, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->type:I

    .line 147
    return-void
.end method

.method final setUtcTime([I)V
    .locals 0
    .param p1, "utcTime"    # [I

    .prologue
    .line 165
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/PositionContextBean;->utcTime:[I

    .line 166
    return-void
.end method
