.class Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationNetworkStatsTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;
    }
.end annotation


# instance fields
.field private final MOBILE:I

.field private final NONMOBILE:I

.field private connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

.field private currentNetwork:Ljava/lang/String;

.field datausageHandler:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

.field networkDataUsageMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field networkDataUsageMapTemp:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private previousNetwork:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1020
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    .line 1010
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    .line 1011
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Lcom/android/server/enterprise/application/ApplicationPolicy$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->datausageHandler:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    .line 1012
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    .line 1013
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    .line 1015
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->MOBILE:I

    .line 1016
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->NONMOBILE:I

    .line 1018
    iput-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1021
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->registerNetworkChangeReceiver()V

    .line 1022
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Landroid/net/NetworkInfo$State;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo$State;

    .prologue
    .line 1007
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getNetworkStateString(Landroid/net/NetworkInfo$State;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1007
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    .param p1, "x1"    # I

    .prologue
    .line 1007
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(I)V

    return-void
.end method

.method private calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1301
    .local p1, "updatedMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local p2, "previousMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    const/4 v6, 0x0

    .line 1303
    .local v6, "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1332
    .end local p1    # "updatedMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :goto_0
    return-object p1

    .line 1305
    .restart local p1    # "updatedMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1306
    const/4 p1, 0x0

    goto :goto_0

    .line 1307
    :cond_1
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1308
    .end local v6    # "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local v7, "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_1
    invoke-virtual {p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1309
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1310
    .local v2, "key":Ljava/lang/Integer;
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1311
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/NetworkStats;

    .line 1312
    .local v8, "updatedNetworkStats":Landroid/app/enterprise/NetworkStats;
    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/NetworkStats;

    .line 1313
    .local v5, "previousNetworkStats":Landroid/app/enterprise/NetworkStats;
    new-instance v4, Landroid/app/enterprise/NetworkStats;

    invoke-direct {v4}, Landroid/app/enterprise/NetworkStats;-><init>()V

    .line 1314
    .local v4, "networkStats":Landroid/app/enterprise/NetworkStats;
    iget-wide v9, v8, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    iget-wide v11, v5, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    sub-long/2addr v9, v11

    iput-wide v9, v4, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 1316
    iget-wide v9, v8, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    iget-wide v11, v5, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    sub-long/2addr v9, v11

    iput-wide v9, v4, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 1318
    iget-wide v9, v8, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    iget-wide v11, v5, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    sub-long/2addr v9, v11

    iput-wide v9, v4, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 1320
    iget-wide v9, v8, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    iget-wide v11, v5, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    sub-long/2addr v9, v11

    iput-wide v9, v4, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 1322
    invoke-virtual {v7, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1329
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v3    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v4    # "networkStats":Landroid/app/enterprise/NetworkStats;
    .end local v5    # "previousNetworkStats":Landroid/app/enterprise/NetworkStats;
    .end local v8    # "updatedNetworkStats":Landroid/app/enterprise/NetworkStats;
    :catch_0
    move-exception v0

    move-object v6, v7

    .line 1330
    .end local v7    # "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v6    # "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    move-object p1, v6

    .line 1332
    goto :goto_0

    .line 1324
    .end local v6    # "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "key":Ljava/lang/Integer;
    .restart local v3    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v7    # "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_2
    :try_start_2
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/NetworkStats;

    .line 1325
    .restart local v8    # "updatedNetworkStats":Landroid/app/enterprise/NetworkStats;
    invoke-virtual {v7, v2, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .end local v2    # "key":Ljava/lang/Integer;
    .end local v8    # "updatedNetworkStats":Landroid/app/enterprise/NetworkStats;
    :cond_3
    move-object v6, v7

    .line 1331
    .end local v7    # "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .restart local v6    # "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    goto :goto_3

    .line 1329
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private calculateTotalUsage(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1236
    .local p1, "mapFromDb":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    .local p2, "updatedMinusPrevious":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 1238
    .local v9, "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1239
    .local v4, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1240
    .local v3, "key":Ljava/lang/Integer;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1241
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/NetworkStats;

    .line 1242
    .local v7, "networkStatsFromDb":Landroid/app/enterprise/NetworkStats;
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/enterprise/NetworkStats;

    .line 1243
    .local v10, "updatedNetworkStats":Landroid/app/enterprise/NetworkStats;
    new-instance v6, Landroid/app/enterprise/NetworkStats;

    invoke-direct {v6}, Landroid/app/enterprise/NetworkStats;-><init>()V

    .line 1244
    .local v6, "networkStats":Landroid/app/enterprise/NetworkStats;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v6, Landroid/app/enterprise/NetworkStats;->uid:I

    .line 1245
    iget-wide v12, v7, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    iget-wide v14, v10, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    add-long/2addr v12, v14

    iput-wide v12, v6, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 1247
    iget-wide v12, v7, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    iget-wide v14, v10, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    add-long/2addr v12, v14

    iput-wide v12, v6, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 1249
    iget-wide v12, v7, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    iget-wide v14, v10, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    add-long/2addr v12, v14

    iput-wide v12, v6, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 1251
    iget-wide v12, v7, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    iget-wide v14, v10, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    add-long/2addr v12, v14

    iput-wide v12, v6, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 1253
    invoke-virtual {v9, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1269
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/Integer;
    .end local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v6    # "networkStats":Landroid/app/enterprise/NetworkStats;
    .end local v7    # "networkStatsFromDb":Landroid/app/enterprise/NetworkStats;
    .end local v10    # "updatedNetworkStats":Landroid/app/enterprise/NetworkStats;
    :catch_0
    move-exception v1

    .line 1270
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1272
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v9

    .line 1256
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "key":Ljava/lang/Integer;
    .restart local v4    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/NetworkStats;

    .line 1257
    .local v8, "previousValue":Landroid/app/enterprise/NetworkStats;
    invoke-virtual {v9, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1261
    .end local v3    # "key":Ljava/lang/Integer;
    .end local v8    # "previousValue":Landroid/app/enterprise/NetworkStats;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1263
    .local v5, "keySet1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1264
    .restart local v3    # "key":Ljava/lang/Integer;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1265
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/enterprise/NetworkStats;

    .line 1266
    .local v11, "updatedValue":Landroid/app/enterprise/NetworkStats;
    invoke-virtual {v9, v3, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private getDataUsagesUids()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1152
    const/4 v2, 0x0

    .line 1154
    .local v2, "uid":[Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/proc/uid_stat/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1155
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1156
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1161
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v2

    .line 1157
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getNetworkStateString(Landroid/net/NetworkInfo$State;)Ljava/lang/String;
    .locals 3
    .param p1, "state"    # Landroid/net/NetworkInfo$State;

    .prologue
    .line 1025
    const-string v0, "Unknown"

    .line 1027
    .local v0, "stateString":Ljava/lang/String;
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1035
    const-string v0, "Unknown"

    .line 1039
    :goto_0
    return-object v0

    .line 1029
    :pswitch_0
    const-string v0, "Connected"

    .line 1030
    goto :goto_0

    .line 1032
    :pswitch_1
    const-string v0, "Disconnected"

    .line 1033
    goto :goto_0

    .line 1027
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isAnyNetworkConnected()Z
    .locals 6

    .prologue
    .line 1166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1167
    .local v2, "token1":J
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1169
    .local v1, "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1170
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1171
    if-eqz v0, :cond_0

    .line 1172
    const/4 v4, 0x1

    .line 1173
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private final isMobileNetwork(Ljava/lang/String;)Z
    .locals 2
    .param p1, "network"    # Ljava/lang/String;

    .prologue
    .line 1043
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private registerNetworkChangeReceiver()V
    .locals 4

    .prologue
    .line 1047
    const-string v2, "ApplicationPolicy"

    const-string v3, "registerNetworkChangeReceiver"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 1050
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;)V

    iput-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1081
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1082
    const-string v2, "ApplicationPolicy"

    const-string v3, "registerNetworkChangeReceiver() : Done"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 1084
    :catch_0
    move-exception v0

    .line 1085
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateDataUsageMap(I)V
    .locals 12
    .param p1, "dataUsageForNetwork"    # I

    .prologue
    const/4 v11, 0x1

    .line 1103
    const-string v9, "ApplicationPolicy"

    const-string/jumbo v10, "updateDataUsageMap"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getDataUsagesUids()[Ljava/lang/String;

    move-result-object v8

    .line 1106
    .local v8, "uidList":[Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 1107
    array-length v9, v8

    if-lez v9, :cond_1

    .line 1108
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, v8

    if-ge v1, v9, :cond_1

    .line 1109
    aget-object v9, v8, v1

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1110
    .local v7, "uid":I
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v5

    .line 1111
    .local v5, "totalUsageTxPkg":J
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    .line 1113
    .local v3, "totalUsageRxPkg":J
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1114
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/NetworkStats;

    .line 1116
    .local v2, "networkStats":Landroid/app/enterprise/NetworkStats;
    if-ne p1, v11, :cond_0

    .line 1117
    iget-wide v9, v2, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    sub-long v9, v5, v9

    iput-wide v9, v2, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 1119
    iget-wide v9, v2, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    sub-long v9, v3, v9

    iput-wide v9, v2, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 1108
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1122
    :cond_0
    iget-wide v9, v2, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    sub-long v9, v5, v9

    iput-wide v9, v2, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 1124
    iget-wide v9, v2, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    sub-long v9, v3, v9

    iput-wide v9, v2, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1146
    .end local v1    # "i":I
    .end local v2    # "networkStats":Landroid/app/enterprise/NetworkStats;
    .end local v3    # "totalUsageRxPkg":J
    .end local v5    # "totalUsageTxPkg":J
    .end local v7    # "uid":I
    .end local v8    # "uidList":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1149
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 1128
    .restart local v1    # "i":I
    .restart local v3    # "totalUsageRxPkg":J
    .restart local v5    # "totalUsageTxPkg":J
    .restart local v7    # "uid":I
    .restart local v8    # "uidList":[Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v2, Landroid/app/enterprise/NetworkStats;

    invoke-direct {v2}, Landroid/app/enterprise/NetworkStats;-><init>()V

    .line 1129
    .restart local v2    # "networkStats":Landroid/app/enterprise/NetworkStats;
    iput v7, v2, Landroid/app/enterprise/NetworkStats;->uid:I

    .line 1130
    if-ne p1, v11, :cond_3

    .line 1131
    iput-wide v5, v2, Landroid/app/enterprise/NetworkStats;->mobileTxBytes:J

    .line 1132
    iput-wide v3, v2, Landroid/app/enterprise/NetworkStats;->mobileRxBytes:J

    .line 1133
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1135
    :cond_3
    iput-wide v5, v2, Landroid/app/enterprise/NetworkStats;->wifiTxBytes:J

    .line 1136
    iput-wide v3, v2, Landroid/app/enterprise/NetworkStats;->wifiRxBytes:J

    .line 1137
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1145
    .end local v1    # "i":I
    .end local v2    # "networkStats":Landroid/app/enterprise/NetworkStats;
    .end local v3    # "totalUsageRxPkg":J
    .end local v5    # "totalUsageTxPkg":J
    .end local v7    # "uid":I
    :cond_4
    const-string v9, "ApplicationPolicy"

    const-string/jumbo v10, "updateDataUsageMap  idList is null "

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public getAppLevelDataUsage(I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1185
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    .local v4, "retlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/NetworkStats;>;"
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getDataUsagePerUid()Ljava/util/Hashtable;

    move-result-object v0

    .line 1187
    .local v0, "hashTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    if-eqz v0, :cond_1

    .line 1188
    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1189
    .local v3, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1191
    .local v2, "key":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 1194
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1197
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v3    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    return-object v4
.end method

.method public getDataUsagePerUid()Ljava/util/Hashtable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1202
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isAnyNetworkConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1203
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1204
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(I)V

    .line 1209
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/server/enterprise/application/NetworkDataUsageDb;

    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v4, v4, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;-><init>(Landroid/content/Context;)V

    .line 1210
    .local v0, "appDb":Lcom/android/server/enterprise/application/NetworkDataUsageDb;
    const/4 v3, 0x0

    .line 1212
    .local v3, "mapFromDb":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->getMobileDataUsage()Ljava/util/Hashtable;

    move-result-object v3

    .line 1213
    if-eqz v3, :cond_4

    .line 1214
    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1215
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    :goto_1
    return-object v4

    .line 1206
    .end local v0    # "appDb":Lcom/android/server/enterprise/application/NetworkDataUsageDb;
    .end local v3    # "mapFromDb":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(I)V

    goto :goto_0

    .line 1217
    .restart local v0    # "appDb":Lcom/android/server/enterprise/application/NetworkDataUsageDb;
    .restart local v3    # "mapFromDb":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v2

    .line 1219
    .local v2, "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    if-eqz v2, :cond_3

    .line 1220
    invoke-direct {p0, v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateTotalUsage(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v3

    .line 1222
    goto :goto_1

    .line 1224
    .end local v2    # "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_4
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1226
    :catch_0
    move-exception v1

    .line 1227
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1230
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public updateNetworkUsageDb()V
    .locals 4

    .prologue
    .line 1281
    new-instance v1, Lcom/android/server/enterprise/application/NetworkDataUsageDb;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;-><init>(Landroid/content/Context;)V

    .line 1282
    .local v1, "networkDb":Lcom/android/server/enterprise/application/NetworkDataUsageDb;
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isAnyNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1283
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1284
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(I)V

    .line 1289
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1290
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    .line 1292
    .local v0, "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    if-eqz v0, :cond_1

    .line 1293
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->updateDataUsage(Ljava/util/Hashtable;)Z

    .line 1295
    .end local v0    # "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Landroid/app/enterprise/NetworkStats;>;"
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 1296
    return-void

    .line 1286
    :cond_2
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(I)V

    goto :goto_0
.end method