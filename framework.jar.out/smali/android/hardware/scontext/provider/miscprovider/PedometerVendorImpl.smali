.class abstract Landroid/hardware/scontext/provider/miscprovider/PedometerVendorImpl;
.super Ljava/lang/Object;
.source "PedometerVendorImpl.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method register()Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method requestToUpdate()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method setLoggingMode(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 31
    return-void
.end method

.method setProperty(IDD)V
    .locals 0
    .param p1, "gender"    # I
    .param p2, "height"    # D
    .param p4, "weight"    # D

    .prologue
    .line 23
    return-void
.end method

.method unregister()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method
