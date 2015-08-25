.class Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
.super Ljava/lang/Object;
.source "SmartBondingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/smartbonding/SmartBondingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartBondingUrlStatus"
.end annotation


# instance fields
.field public mLinkedUsageStatus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mPid:I

.field public mStartUrl:Ljava/lang/String;

.field public mStatus:I

.field public mUid:I

.field public mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/smartbonding/SmartBondingService;


# direct methods
.method public constructor <init>(Lcom/samsung/smartbonding/SmartBondingService;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "startUrl"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 2942
    iput-object p1, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2935
    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mPid:I

    .line 2936
    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUid:I

    .line 2937
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStatus:I

    .line 2938
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStartUrl:Ljava/lang/String;

    .line 2939
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    .line 2940
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mLinkedUsageStatus:Ljava/util/ArrayList;

    .line 2943
    iput p2, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mPid:I

    .line 2944
    iput p3, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUid:I

    .line 2945
    iput-object p4, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    .line 2946
    iput-object p5, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mStartUrl:Ljava/lang/String;

    .line 2947
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 2951
    instance-of v2, p1, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    if-nez v2, :cond_1

    .line 2954
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 2952
    check-cast v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;

    .line 2953
    .local v0, "urlStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;
    iget v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mPid:I

    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mPid:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUid:I

    iget v3, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUid:I

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllLinkedStatistics()[J
    .locals 11

    .prologue
    const/4 v10, 0x4

    .line 2958
    iget-object v5, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->this$0:Lcom/samsung/smartbonding/SmartBondingService;

    monitor-enter v5

    .line 2959
    const/4 v4, 0x4

    :try_start_0
    new-array v0, v4, [J

    fill-array-data v0, :array_0

    .line 2960
    .local v0, "allStatistics":[J
    iget-object v4, p0, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUrlStatus;->mLinkedUsageStatus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;

    .line 2961
    .local v3, "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_0

    .line 2962
    aget-wide v6, v0, v1

    iget-object v4, v3, Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;->mStatistics:[J

    aget-wide v8, v4, v1

    add-long/2addr v6, v8

    aput-wide v6, v0, v1

    .line 2961
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2965
    .end local v1    # "i":I
    .end local v3    # "usageStatus":Lcom/samsung/smartbonding/SmartBondingService$SmartBondingUsageStatus;
    :cond_1
    monitor-exit v5

    return-object v0

    .line 2966
    .end local v0    # "allStatistics":[J
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2959
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
