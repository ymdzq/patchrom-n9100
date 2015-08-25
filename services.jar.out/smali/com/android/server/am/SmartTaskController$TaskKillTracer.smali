.class Lcom/android/server/am/SmartTaskController$TaskKillTracer;
.super Ljava/lang/Object;
.source "SmartTaskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SmartTaskController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskKillTracer"
.end annotation


# instance fields
.field private DEBUG:Z

.field private TAG:Ljava/lang/String;

.field private endFreeMemory:J

.field private endTime:J

.field private logList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startFreeMemory:J

.field private startTime:J

.field final synthetic this$0:Lcom/android/server/am/SmartTaskController;


# direct methods
.method private constructor <init>(Lcom/android/server/am/SmartTaskController;)V
    .locals 3

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->this$0:Lcom/android/server/am/SmartTaskController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    const-string v0, "TaskKillTracer"

    iput-object v0, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->TAG:Ljava/lang/String;

    .line 437
    const-string/jumbo v0, "true"

    const-string v1, "persist.task_tracer"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->DEBUG:Z

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->logList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/SmartTaskController;Lcom/android/server/am/SmartTaskController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/SmartTaskController;
    .param p2, "x1"    # Lcom/android/server/am/SmartTaskController$1;

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/android/server/am/SmartTaskController$TaskKillTracer;-><init>(Lcom/android/server/am/SmartTaskController;)V

    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 487
    iput-wide v0, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->startTime:J

    .line 488
    iput-wide v0, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->endTime:J

    .line 490
    iput-wide v0, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->startFreeMemory:J

    .line 491
    iput-wide v0, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->endFreeMemory:J

    .line 493
    iget-object v0, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->logList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 494
    return-void
.end method

.method private printLogList()V
    .locals 5

    .prologue
    .line 480
    iget-object v2, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->logList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 481
    .local v1, "n":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 482
    iget-object v3, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Killed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->logList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 484
    :cond_0
    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 457
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->endTime:J

    .line 458
    iget-object v0, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->this$0:Lcom/android/server/am/SmartTaskController;

    # invokes: Lcom/android/server/am/SmartTaskController;->getAvailableMemory()J
    invoke-static {v0}, Lcom/android/server/am/SmartTaskController;->access$100(Lcom/android/server/am/SmartTaskController;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->endFreeMemory:J

    .line 459
    return-void
.end method

.method public print()V
    .locals 10

    .prologue
    .line 466
    iget-object v4, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->logList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    iget-wide v4, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->endTime:J

    iget-wide v6, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->startTime:J

    sub-long v2, v4, v6

    .line 470
    .local v2, "timeDiff":J
    iget-wide v4, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->endFreeMemory:J

    iget-wide v6, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->startFreeMemory:J

    sub-long v0, v4, v6

    .line 472
    .local v0, "memoryDiff":J
    iget-boolean v4, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 473
    iget-object v4, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "total time : %d us, memory diff : %d bytes"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    div-long v8, v2, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-direct {p0}, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->printLogList()V

    goto :goto_0
.end method

.method public pushLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->logList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->clear()V

    .line 452
    iget-object v0, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->this$0:Lcom/android/server/am/SmartTaskController;

    # invokes: Lcom/android/server/am/SmartTaskController;->getAvailableMemory()J
    invoke-static {v0}, Lcom/android/server/am/SmartTaskController;->access$100(Lcom/android/server/am/SmartTaskController;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->startFreeMemory:J

    .line 453
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/SmartTaskController$TaskKillTracer;->startTime:J

    .line 454
    return-void
.end method
