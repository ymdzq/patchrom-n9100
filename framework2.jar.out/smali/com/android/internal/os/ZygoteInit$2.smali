.class final Lcom/android/internal/os/ZygoteInit$2;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/ZygoteInit;->preload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 301
    const/4 v2, 0x0

    .line 302
    .local v2, "waitCnt":I
    const v4, 0xea60

    .line 303
    .local v4, "waitTimeMs":I
    const/16 v1, 0x28

    .line 304
    .local v1, "sleepSlot":I
    const/16 v0, 0x5dc

    .line 305
    .local v0, "MaxWaitSlot":I
    :goto_0
    sget-boolean v5, Lcom/android/internal/os/ZygoteInit;->isPreloadComplete:Z

    if-nez v5, :cond_0

    .line 307
    const-wide/16 v5, 0x28

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "waitCnt":I
    .local v3, "waitCnt":I
    const/16 v5, 0x5dc

    if-le v2, v5, :cond_1

    .line 311
    const-string v5, "Zygote"

    const-string v6, "!@TOPrldRstrtZgt"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    .line 314
    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    move v2, v3

    .line 318
    .end local v3    # "waitCnt":I
    .restart local v2    # "waitCnt":I
    :cond_0
    const-string v5, "Zygote"

    const-string v6, "Monitor End"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void

    .line 308
    :catch_0
    move-exception v5

    goto :goto_1

    .end local v2    # "waitCnt":I
    .restart local v3    # "waitCnt":I
    :cond_1
    move v2, v3

    .end local v3    # "waitCnt":I
    .restart local v2    # "waitCnt":I
    goto :goto_0
.end method
