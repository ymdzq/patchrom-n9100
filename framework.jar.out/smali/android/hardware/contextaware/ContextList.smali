.class public Landroid/hardware/contextaware/ContextList;
.super Ljava/lang/Object;
.source "ContextList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/ContextList$ContextType;
    }
.end annotation


# static fields
.field private static volatile instance:Landroid/hardware/contextaware/ContextList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/ContextList;
    .locals 2

    .prologue
    .line 298
    sget-object v0, Landroid/hardware/contextaware/ContextList;->instance:Landroid/hardware/contextaware/ContextList;

    if-nez v0, :cond_1

    .line 299
    const-class v1, Landroid/hardware/contextaware/ContextList;

    monitor-enter v1

    .line 300
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/ContextList;->instance:Landroid/hardware/contextaware/ContextList;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Landroid/hardware/contextaware/ContextList;

    invoke-direct {v0}, Landroid/hardware/contextaware/ContextList;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/ContextList;->instance:Landroid/hardware/contextaware/ContextList;

    .line 303
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/ContextList;->instance:Landroid/hardware/contextaware/ContextList;

    return-object v0

    .line 303
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getServiceCode(I)Ljava/lang/String;
    .locals 6
    .param p1, "serviceOrdinal"    # I

    .prologue
    .line 336
    const-string v1, ""

    .line 338
    .local v1, "code":Ljava/lang/String;
    invoke-static {}, Landroid/hardware/contextaware/ContextList$ContextType;->values()[Landroid/hardware/contextaware/ContextList$ContextType;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/ContextList$ContextType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 339
    .local v2, "i":Landroid/hardware/contextaware/ContextList$ContextType;
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 340
    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 345
    .end local v2    # "i":Landroid/hardware/contextaware/ContextList$ContextType;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 346
    sget-object v5, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_CODE_NULL_EXCEPTION:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v5}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v5

    invoke-static {v5}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 351
    :cond_1
    return-object v1

    .line 338
    .restart local v2    # "i":Landroid/hardware/contextaware/ContextList$ContextType;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public final getServiceOrdinal(Ljava/lang/String;)I
    .locals 6
    .param p1, "serviceCode"    # Ljava/lang/String;

    .prologue
    .line 316
    const/4 v4, 0x0

    .line 318
    .local v4, "ordinal":I
    invoke-static {}, Landroid/hardware/contextaware/ContextList$ContextType;->values()[Landroid/hardware/contextaware/ContextList$ContextType;

    move-result-object v0

    .local v0, "arr$":[Landroid/hardware/contextaware/ContextList$ContextType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 319
    .local v1, "i":Landroid/hardware/contextaware/ContextList$ContextType;
    invoke-virtual {v1}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    .line 325
    .end local v1    # "i":Landroid/hardware/contextaware/ContextList$ContextType;
    :cond_0
    return v4

    .line 318
    .restart local v1    # "i":Landroid/hardware/contextaware/ContextList$ContextType;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
