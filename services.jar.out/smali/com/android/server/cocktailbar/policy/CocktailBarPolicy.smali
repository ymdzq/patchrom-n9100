.class public Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;
.super Ljava/lang/Object;
.source "CocktailBarPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CocktailBarPolicy"

.field private static mInstance:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;


# instance fields
.field private mCocktailMode:I

.field private mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mInstance:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;)V
    .locals 1
    .param p1, "settings"    # Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    .line 31
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    .line 32
    return-void
.end method

.method public static getInstance(Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;)Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;
    .locals 1
    .param p0, "settings"    # Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    .prologue
    .line 24
    sget-object v0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mInstance:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;-><init>(Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;)V

    sput-object v0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mInstance:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    .line 27
    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mInstance:Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;

    return-object v0
.end method


# virtual methods
.method public canCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;)Z
    .locals 6
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "cocktailExtraInfo"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 165
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v1

    .line 166
    .local v1, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v1, :cond_3

    .line 167
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 168
    .local v0, "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 180
    :cond_0
    :pswitch_0
    iget v4, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    if-eqz v4, :cond_2

    move v2, v3

    .line 216
    .end local v0    # "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :cond_1
    :goto_0
    return v2

    .line 173
    .restart local v0    # "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :pswitch_1
    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_CONTEXTUAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v4, v5, :cond_1

    move v2, v3

    .line 176
    goto :goto_0

    .line 183
    :cond_2
    iget v4, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    sparse-switch v4, :sswitch_data_0

    .end local v0    # "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :cond_3
    move v2, v3

    .line 216
    goto :goto_0

    .line 186
    .restart local v0    # "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :sswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v4

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 187
    sget-object v4, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NOTHING:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iput-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    .line 188
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 194
    :sswitch_1
    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_QUICKTOOL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-ne v4, v5, :cond_4

    .line 195
    sget-object v3, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NOTHING:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iput-object v3, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    goto :goto_0

    :cond_4
    move v2, v3

    .line 198
    goto :goto_0

    .line 201
    :sswitch_2
    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_TABLE_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-ne v4, v5, :cond_5

    .line 202
    sget-object v3, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NOTHING:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iput-object v3, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    goto :goto_0

    :cond_5
    move v2, v3

    .line 205
    goto :goto_0

    .line 208
    :sswitch_3
    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NIGHT_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-ne v4, v5, :cond_6

    .line 209
    sget-object v3, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NOTHING:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iput-object v3, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    goto :goto_0

    :cond_6
    move v2, v3

    .line 212
    goto :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x20 -> :sswitch_2
        0x80 -> :sswitch_3
    .end sparse-switch
.end method

.method public canSendUpdateIntent(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .locals 2
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;)Z
    .locals 6
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "cocktailExtraInfo"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 120
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v1

    .line 121
    .local v1, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v1, :cond_3

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 123
    .local v0, "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 135
    :cond_0
    :pswitch_0
    iget v4, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    if-eqz v4, :cond_2

    move v2, v3

    .line 161
    .end local v0    # "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :cond_1
    :goto_0
    return v2

    .line 128
    .restart local v0    # "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :pswitch_1
    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_CONTEXTUAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v4, v5, :cond_1

    move v2, v3

    .line 131
    goto :goto_0

    .line 138
    :cond_2
    iget v4, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    sparse-switch v4, :sswitch_data_0

    .line 158
    .end local v0    # "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :cond_3
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 161
    goto :goto_0

    .line 141
    .restart local v0    # "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :sswitch_0
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v4

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    .line 142
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_CONTEXTUAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v4, v5, :cond_1

    move v2, v3

    .line 146
    goto :goto_0

    .line 151
    :sswitch_1
    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_QUICKTOOL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v4, v5, :cond_1

    move v2, v3

    goto :goto_0

    .line 153
    :sswitch_2
    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_TABLE_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v4, v5, :cond_1

    move v2, v3

    goto :goto_0

    .line 155
    :sswitch_3
    iget-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NIGHT_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v4, v5, :cond_1

    move v2, v3

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 138
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x20 -> :sswitch_2
        0x80 -> :sswitch_3
    .end sparse-switch
.end method

.method public canUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;)Z
    .locals 8
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "cocktailExtraInfo"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;

    .prologue
    const/high16 v7, 0x10000

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v1

    .line 51
    .local v1, "info":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v1, :cond_6

    .line 52
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v0

    .line 53
    .local v0, "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 62
    :cond_0
    :pswitch_0
    iget v5, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    if-eqz v5, :cond_3

    .line 63
    iget-object v5, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v6, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->COCKTAIL_PRIVATE_MODE_STATE:[Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iget v7, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    aget-object v6, v6, v7

    if-ne v5, v6, :cond_2

    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->COCKTAIL_PRIVATE_MODE:[Ljava/lang/String;

    iget v6, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    aget-object v5, v5, v6

    iget-object v6, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    .end local v0    # "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :cond_1
    :goto_0
    return v3

    .line 58
    .restart local v0    # "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :pswitch_1
    sget-object v4, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_CONTEXTUAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iput-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    goto :goto_0

    :cond_2
    move v3, v4

    .line 67
    goto :goto_0

    .line 70
    :cond_3
    iget-object v5, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 71
    iget-object v5, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->privateMode:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->getCocktailUpdateStateByPrivateMode(Ljava/lang/String;)Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    move-result-object v2

    .line 72
    .local v2, "updateState":Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;
    sget-object v5, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NOTHING:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-ne v2, v5, :cond_4

    move v3, v4

    .line 73
    goto :goto_0

    .line 75
    :cond_4
    iget-object v5, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v5, v2, :cond_1

    move v3, v4

    .line 78
    goto :goto_0

    .line 80
    .end local v2    # "updateState":Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;
    :cond_5
    iget v5, v1, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    sparse-switch v5, :sswitch_data_0

    .line 112
    .end local v0    # "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :cond_6
    iget-object v5, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 113
    sget-object v4, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NORMAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iput-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    goto :goto_0

    .line 83
    .restart local v0    # "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :sswitch_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mSettings:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSettings;->isEnabledCocktail(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 84
    sget-object v4, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NORMAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iput-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    goto :goto_0

    .line 86
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v5

    and-int/2addr v5, v7

    if-eqz v5, :cond_8

    .line 87
    sget-object v4, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_CONTEXTUAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    iput-object v4, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    goto :goto_0

    .line 90
    :cond_8
    iget-object v5, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v6, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_CONTEXTUAL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v5, v6, :cond_1

    move v3, v4

    .line 93
    goto :goto_0

    .line 96
    :sswitch_1
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v5

    and-int/2addr v5, v7

    if-nez v5, :cond_1

    .line 99
    iget-object v5, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v6, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_QUICKTOOL:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v5, v6, :cond_1

    move v3, v4

    goto :goto_0

    .line 101
    :sswitch_2
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v5

    and-int/2addr v5, v7

    if-nez v5, :cond_1

    .line 104
    iget-object v5, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v6, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_TABLE_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v5, v6, :cond_1

    move v3, v4

    goto/16 :goto_0

    .line 106
    :sswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailInfo()Lcom/samsung/android/cocktailbar/CocktailInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/cocktailbar/CocktailInfo;->getCategory()I

    move-result v5

    and-int/2addr v5, v7

    if-nez v5, :cond_1

    .line 109
    iget-object v5, p2, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$CocktailExtraInfo;->isCoctailUpdated:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    sget-object v6, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;->COCKTAIL_UPDATED_NIGHT_MODE:Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailUpdatedState;

    if-eq v5, v6, :cond_1

    move v3, v4

    goto/16 :goto_0

    .end local v0    # "cInfo":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :cond_9
    move v3, v4

    .line 116
    goto/16 :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 80
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x20 -> :sswitch_2
        0x80 -> :sswitch_3
    .end sparse-switch
.end method

.method public getCocktailMode()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    return v0
.end method

.method public isAllowTransientBarCocktailBar()Z
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    sparse-switch v0, :sswitch_data_0

    .line 225
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 223
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 220
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public setCocktailMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/server/cocktailbar/policy/CocktailBarPolicy;->mCocktailMode:I

    .line 36
    return-void
.end method
