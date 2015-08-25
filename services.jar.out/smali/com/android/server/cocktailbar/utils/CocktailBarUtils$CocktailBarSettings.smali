.class public Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;
.super Ljava/lang/Object;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarSettings"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;
    }
.end annotation


# static fields
.field private static final COCKTAIL_BAR_SEPARATER:C = ';'


# instance fields
.field private mCocktailMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mEnabledCocktailListCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mEnabledCocktailsStrCache:Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            "Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p2, "cocktailArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p0, p3}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->setCurrentUserId(I)V

    .line 93
    iput-object p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mResolver:Landroid/content/ContentResolver;

    .line 95
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 96
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->initCocktailMapLocked(Landroid/util/SparseArray;)V

    .line 97
    invoke-direct {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->initCocktailListLocked()V

    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initCocktailListLocked()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->updateEnabledCocktailListLocked()Z

    .line 115
    return-void
.end method

.method private initCocktailMapLocked(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            "Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "cocktailArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;>;>;"
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 104
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 105
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 106
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 107
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    new-instance v3, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;

    invoke-direct {v3}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;-><init>()V

    .line 108
    .local v3, "info":Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    iput v4, v3, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;->cocktailId:I

    .line 109
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "info":Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;
    :cond_0
    return-void
.end method

.method private putEnabledCocktailsStr(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "cocktail_bar_enabled_cocktails"

    iget v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCurrentUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 143
    iput-object p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 144
    const-string v0, "CocktailBarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putEnabledCocktailsStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method private updateEnabledCocktailListLocked()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 169
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v4

    .line 173
    :cond_1
    const/4 v0, 0x0

    .line 174
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "enabledCocktailsStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 176
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 179
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 180
    :goto_1
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 181
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "cocktailName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;

    .line 183
    .local v3, "info":Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;
    if-eqz v3, :cond_2

    .line 184
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 189
    .end local v1    # "cocktailName":Ljava/lang/String;
    .end local v3    # "info":Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;
    :cond_3
    if-eqz v0, :cond_4

    .line 190
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->setEnabledCocktails(Ljava/util/ArrayList;)V

    .line 192
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getChangedCocktailIdsListLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "addedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "removedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 217
    .local v0, "backupEnabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 219
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 220
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    iget-object v6, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 221
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "cocktailName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;

    .line 224
    .local v3, "info":Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;
    if-eqz v3, :cond_0

    .line 225
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 227
    iget v5, v3, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;->cocktailId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    .end local v1    # "cocktailName":Ljava/lang/String;
    .end local v3    # "info":Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 233
    .local v4, "oldCocktailName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;

    .line 234
    .restart local v3    # "info":Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;
    if-eqz v3, :cond_2

    .line 235
    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 236
    iget v5, v3, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;->cocktailId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    .end local v3    # "info":Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;
    .end local v4    # "oldCocktailName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public getEnableCocktailIds()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 158
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;

    .line 159
    .local v2, "info":Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;
    if-eqz v2, :cond_0

    .line 160
    iget v4, v2, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;->cocktailId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    .end local v2    # "info":Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getEnabledCocktailsStr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "cocktail_bar_enabled_cocktails"

    iget v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 150
    const-string v0, "CocktailBarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnabledCocktailsStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabledCocktail(I)Z
    .locals 4
    .param p1, "cocktailId"    # I

    .prologue
    .line 205
    iget-object v3, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 206
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;

    .line 207
    .local v1, "info":Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;
    iget v3, v1, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;->cocktailId:I

    if-ne v3, p1, :cond_0

    .line 208
    const/4 v3, 0x1

    .line 211
    .end local v1    # "info":Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings$CocktailInfos;
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isEnabledCocktail(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cocktailName"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    const/4 v2, 0x1

    .line 201
    .end local v1    # "str":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setCurrentUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCurrentUserId:I

    .line 127
    return-void
.end method

.method public setEnabledCocktails(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "cocktails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 131
    .local v0, "N":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 133
    if-lez v2, :cond_0

    .line 134
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->putEnabledCocktailsStr(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public updateInstalledCocktails(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            "Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "cocktailArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;>;>;"
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 120
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->initCocktailMapLocked(Landroid/util/SparseArray;)V

    .line 121
    invoke-direct {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->updateEnabledCocktailListLocked()Z

    .line 122
    monitor-exit v1

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
