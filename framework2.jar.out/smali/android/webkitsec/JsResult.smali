.class public Landroid/webkitsec/JsResult;
.super Ljava/lang/Object;
.source "JsResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/JsResult$ResultReceiver;
    }
.end annotation


# instance fields
.field private final mReceiver:Landroid/webkitsec/JsResult$ResultReceiver;

.field private mResult:Z


# direct methods
.method public constructor <init>(Landroid/webkitsec/JsResult$ResultReceiver;)V
    .locals 0
    .param p1, "receiver"    # Landroid/webkitsec/JsResult$ResultReceiver;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Landroid/webkitsec/JsResult;->mReceiver:Landroid/webkitsec/JsResult$ResultReceiver;

    .line 60
    return-void
.end method

.method private final wakeUp()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/webkitsec/JsResult;->mReceiver:Landroid/webkitsec/JsResult$ResultReceiver;

    invoke-interface {v0, p0}, Landroid/webkitsec/JsResult$ResultReceiver;->onJsResultComplete(Landroid/webkitsec/JsResult;)V

    .line 72
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/JsResult;->mResult:Z

    .line 44
    invoke-direct {p0}, Landroid/webkitsec/JsResult;->wakeUp()V

    .line 45
    return-void
.end method

.method public final confirm()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/JsResult;->mResult:Z

    .line 52
    invoke-direct {p0}, Landroid/webkitsec/JsResult;->wakeUp()V

    .line 53
    return-void
.end method

.method public final getResult()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Landroid/webkitsec/JsResult;->mResult:Z

    return v0
.end method
