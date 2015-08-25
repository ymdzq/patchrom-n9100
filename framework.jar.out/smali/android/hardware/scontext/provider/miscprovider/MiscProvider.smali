.class public Landroid/hardware/scontext/provider/miscprovider/MiscProvider;
.super Landroid/hardware/scontext/provider/Provider;
.source "MiscProvider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/hardware/scontext/provider/Provider;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public add()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public handleDiedBinder()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onBinderDied()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public requestToUpdate()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public setProperty(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "service"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 66
    return-void
.end method

.method public setReferenceData(I[B)Z
    .locals 1
    .param p1, "data_type"    # I
    .param p2, "data"    # [B

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method
