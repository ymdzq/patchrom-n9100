.class public Lcom/android/internal/app/ResolverActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;,
        Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;,
        Lcom/android/internal/app/ResolverActivity$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;,
        Lcom/android/internal/app/ResolverActivity$ViewHolder;,
        Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    }
.end annotation


# static fields
.field public static final ACTION_IS_AUTH:Ljava/lang/String; = "com.sec.orca.easysignup.ACTION_IS_AUTH"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "type"

.field private static final DEBUG:Z = false

.field private static final GUIDE_ACTIVITY:Ljava/lang/String; = "ResolverGuideActivity"

.field private static final INTERNAL_PACKAGE:Ljava/lang/String; = "com.android.internal.app"

.field private static final INVALID_POSITION:I = -0x1

.field private static final REQUEST_CODE_REQUEST_RECENT_CONTACTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"

.field private static final TAG_RECIPIENT_DATAIDS:Ljava/lang/String; = "recipientdataids"

.field public static final THEME_CHOOSER:Ljava/lang/String; = "theme"

.field public static final THEME_DEVICE_DEFAULT:I = 0x1

.field public static final THEME_DEVICE_DEFAULT_LIGHT:I = 0x2

.field public static final THEME_NONE:I = 0x0

.field public static final TYPE_GRID:I = 0x1

.field public static final TYPE_LIST:I = 0x2

.field public static final TYPE_NONE:I

.field private static mIsEasySingUpIsCertificated:Z

.field private static mIsRemoteShareServiceDownloaded:Z


# instance fields
.field private final ACTION_AUTH_RESULT:Ljava/lang/String;

.field private final ACTION_REQ_AUTH:Ljava/lang/String;

.field private final EXTRA_AUTH_RESULT:Ljava/lang/String;

.field private final EXTRA_CB_HANDLER:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_CONTACTID:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_COUNT:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_DATAIDS:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_NAMES:Ljava/lang/String;

.field public final EXTRA_KEY_RECENT_GROUP_THUMBNAILS:Ljava/lang/String;

.field private final KEY_AUTH_TYPE:Ljava/lang/String;

.field private final KEY_IS_AUTH:Ljava/lang/String;

.field private final RECENT_CONTACTS_LIST_MAX_COUNT:I

.field private final REMOTE_SHARE_SERVICE_ID:I

.field public final REQUEST_RECENT_GROUP_CONTACTS:Ljava/lang/String;

.field public final RESPONSE_RECENT_GROUP_CONTACTS:Ljava/lang/String;

.field private final RESULT_FAILED:I

.field private final RESULT_SUCCESS:I

.field private final TOKEN_IS_AUTH:I

.field private mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private mApplyRemoteShareResolver:Z

.field private mApplyRemoteShareUIFeature:Z

.field private mApplyRemoteShareUIFeatureChecked:Z

.field private mContext:Landroid/content/Context;

.field private mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

.field mEasySignUpReciverfilter:Landroid/content/IntentFilter;

.field private mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

.field private mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

.field private mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

.field private mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

.field private mIconDpi:I

.field private mIconSize:I

.field private mIntent:Landroid/content/Intent;

.field private mIsDeviceDefault:Z

.field private mIsEasySingUpIsCertificatedChecked:Z

.field private mIsGridType:Z

.field private mIsLightTheme:Z

.field private mIsRecentContactsReceiverRegistered:Z

.field private mIsRemoteShareServiceDownloadedChecked:Z

.field private mItemLongClicked:Z

.field private mLastSelected:I

.field private mLaunchedFromPackage:Ljava/lang/String;

.field private mLaunchedFromUid:I

.field private mListView:Landroid/widget/AbsListView;

.field private mMaxColumns:I

.field private mNoApplication:Ljava/lang/CharSequence;

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPrivateModeSettingsValBeforeOnFocusChanged:I

.field private mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

.field private mRecentContactsId:[J

.field private mRecentContactsItemContactsCountInGroup:[I

.field private mRecentContactsListCount:I

.field private mRecentContactsListName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentContactsListThumb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mRemoteShareIndex:I

.field private mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

.field private mRemoteShareQuickConnectIndex:I

.field private mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

.field private mRemoteShareRecentHistoryDefaultIndex:I

.field private mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

.field private mRemoteShareRecentHistoryIndex:I

.field private mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

.field private mRemoteShareSettingsValBeforeOnPause:I

.field private mShowExtended:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private request_dataids:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 195
    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    .line 197
    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x9

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mNoApplication:Ljava/lang/CharSequence;

    .line 143
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mItemLongClicked:Z

    .line 169
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    .line 170
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareUIFeature:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareUIFeatureChecked:Z

    .line 173
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    .line 175
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareSettingsValBeforeOnPause:I

    .line 176
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChanged:I

    .line 177
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

    .line 181
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    .line 185
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    .line 190
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    .line 193
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    .line 196
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificatedChecked:Z

    .line 198
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloadedChecked:Z

    .line 199
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->REMOTE_SHARE_SERVICE_ID:I

    .line 206
    const-string v0, "com.sec.rshareshell.requestrecentgroupcontacts"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->REQUEST_RECENT_GROUP_CONTACTS:Ljava/lang/String;

    .line 207
    const-string v0, "com.sec.rshareshell.responserecentgroupcontacts"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->RESPONSE_RECENT_GROUP_CONTACTS:Ljava/lang/String;

    .line 210
    const-string/jumbo v0, "recentgroupnames"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_NAMES:Ljava/lang/String;

    .line 211
    const-string/jumbo v0, "recentgroupthumbnail"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_THUMBNAILS:Ljava/lang/String;

    .line 212
    const-string/jumbo v0, "recentgroupdataids"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_DATAIDS:Ljava/lang/String;

    .line 213
    const-string/jumbo v0, "recentgroupcontactids"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_CONTACTID:Ljava/lang/String;

    .line 214
    const-string/jumbo v0, "recentgroupcount"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_KEY_RECENT_GROUP_COUNT:Ljava/lang/String;

    .line 219
    const-string v0, "extra_cb_handler"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_CB_HANDLER:Ljava/lang/String;

    .line 220
    const-string v0, "is_auth"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->KEY_IS_AUTH:Ljava/lang/String;

    .line 221
    const-string v0, "auth_type"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->KEY_AUTH_TYPE:Ljava/lang/String;

    .line 222
    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->TOKEN_IS_AUTH:I

    .line 224
    const-string v0, "com.sec.orca.easysignup.ACTION_REQ_AUTH"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->ACTION_REQ_AUTH:Ljava/lang/String;

    .line 225
    const-string v0, "com.sec.orca.easysignup.ACTION_AUTH_RESULT"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->ACTION_AUTH_RESULT:Ljava/lang/String;

    .line 226
    const-string v0, "extra_auth_result"

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->EXTRA_AUTH_RESULT:Ljava/lang/String;

    .line 227
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->RESULT_SUCCESS:I

    .line 228
    iput v3, p0, Lcom/android/internal/app/ResolverActivity;->RESULT_FAILED:I

    .line 231
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    .line 233
    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    .line 234
    iput v2, p0, Lcom/android/internal/app/ResolverActivity;->RECENT_CONTACTS_LIST_MAX_COUNT:I

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    .line 239
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->request_dataids:[Ljava/lang/String;

    .line 240
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsId:[J

    .line 241
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    .line 243
    new-instance v0, Lcom/android/internal/app/ResolverActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$1;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    new-instance v0, Lcom/android/internal/app/ResolverActivity$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$2;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

    .line 321
    new-instance v0, Lcom/android/internal/app/ResolverActivity$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$3;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 327
    new-instance v0, Lcom/android/internal/app/ResolverActivity$4;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivity$4;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 2361
    return-void
.end method

.method private RemoteShareGridItemClick(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1927
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    if-nez v3, :cond_0

    .line 1928
    const-string v3, "ResolverActivity"

    const-string/jumbo v4, "mGridRemoteShare.onItemClick : mRemoteShareListAdapter is null, finish "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1962
    :goto_0
    return-void

    .line 1932
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1933
    .local v2, "targetIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1935
    .local v1, "pickerIntent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1937
    :pswitch_0
    const-string v3, "additional"

    const-string/jumbo v4, "phone-multi"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1938
    const-string v3, "first_tab"

    const-string v4, "favourites-tab-first"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1939
    const-string v3, "has_result"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1940
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1941
    invoke-virtual {p0, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1944
    :pswitch_1
    const-string v3, "additional"

    const-string/jumbo v4, "phone-multi"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1945
    const-string v3, "first_tab"

    const-string v4, "contacts-tab-first"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1946
    const-string v3, "has_result"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1947
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1948
    invoke-virtual {p0, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1951
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.rshareshell.action.REQUESTSEND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1952
    .local v0, "picker2Intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1953
    const-string v3, "com.sec.rshareshell"

    const-string v4, "com.sec.rshareshell.RelayActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1954
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1935
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private RemoteShareQuickConnectGridItemClick(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 2100
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    if-nez v2, :cond_0

    .line 2101
    const-string v2, "ResolverActivity"

    const-string/jumbo v3, "mGridRemoteShareQuickConnect.onItemClick : mRemoteShareQuickConnectListAdapter is null, finish "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2136
    :goto_0
    return-void

    .line 2105
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2106
    .local v1, "targetIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.sconnect.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2108
    .local v0, "quickConnectIntent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2110
    :pswitch_0
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2111
    const-string v2, "CATEGORY"

    const-string v3, "SEND_CONTENT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2113
    const-string v2, "ResolverActivity"

    const-string v3, "RemoteShareQuickConnectGridItemClick : Send content"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2115
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2118
    :pswitch_1
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2119
    const-string v2, "CATEGORY"

    const-string v3, "MIRROR_SCREEN"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2120
    const-string v2, "ResolverActivity"

    const-string v3, "RemoteShareQuickConnectGridItemClick : MIRROR_SCREEN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2122
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2125
    :pswitch_2
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2126
    const-string v2, "CATEGORY"

    const-string v3, "PRINT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2127
    const-string v2, "ResolverActivity"

    const-string v3, "RemoteShareQuickConnectGridItemClick : CATEGORY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2129
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private RemoteShareRecentHistoryDefaultGridItemClick(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x0

    .line 2281
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    if-nez v1, :cond_0

    .line 2282
    const-string v1, "ResolverActivity"

    const-string/jumbo v2, "mGridRemoteShareRecentHistoryDefault.onItemClick : mRemoteShareRecentHistoryDefaultListAdapter is null, finish "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2309
    :goto_0
    return-void

    .line 2287
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2290
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.orca.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2292
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "fromOOBE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2293
    const-string v1, "agreeMarketing"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2294
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2295
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2297
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReciverfilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_1

    .line 2298
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReciverfilter:Landroid/content/IntentFilter;

    .line 2300
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReciverfilter:Landroid/content/IntentFilter;

    const-string v2, "com.sec.orca.easysignup.ACTION_AUTH_RESULT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2301
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReciverfilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2302
    const-string v1, "ResolverActivity"

    const-string v2, "RemoteShareRecentHistoryDefaultGridItemClick : Trying to Easy Sign-up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private RemoteShareRecentHistoryGridItemClick(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 2448
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    if-nez v2, :cond_1

    .line 2449
    const-string v2, "ResolverActivity"

    const-string/jumbo v3, "mGridRemoteShareRecentHistory.onItemClick : mRemoteShareRecentHistoryListAdapter is null, finish "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2474
    :cond_0
    :goto_0
    return-void

    .line 2453
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2454
    .local v1, "targetIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.rshareshell.action.REQUESTSEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2455
    .local v0, "recentHistoryIntent":Landroid/content/Intent;
    const-string v2, "com.sec.rshareshell"

    const-string v3, "com.sec.rshareshell.RelayActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2456
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2458
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    .line 2459
    if-nez p1, :cond_2

    .line 2460
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2461
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2463
    :cond_2
    const-string/jumbo v2, "recipientdataids"

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->request_dataids:[Ljava/lang/String;

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2464
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2465
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2468
    :cond_3
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    if-nez v2, :cond_0

    .line 2469
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2470
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/app/ResolverActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/android/internal/app/ResolverActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ResolverActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistory(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareRecentHistoryList()V

    return-void
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 122
    sput-boolean p0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mEasySignUpReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->sendRequesRecentContactsHistoryList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/AbsListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/app/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mShowExtended:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/app/ResolverActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/internal/app/ResolverActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    return v0
.end method

.method static synthetic access$2402(Lcom/android/internal/app/ResolverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity;->mItemLongClicked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->request_dataids:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivity;)[J
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsId:[J

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/ResolverActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/ResolverActivity;)Landroid/widget/HorizontalListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryGridView(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/app/ResolverActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefault(I)V

    return-void
.end method

.method private addApplicationGridView(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1436
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x102043f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1440
    .local v0, "text":Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackgroundNoSpace(Landroid/widget/TextView;)V

    .line 1441
    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    .line 1443
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x1020440

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableHeightGridView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    .line 1444
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ExpandableHeightGridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableHeightGridView;->setExpanded(Z)V

    .line 1445
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1446
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1447
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    new-instance v2, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1449
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity;->resizeGrid()V

    .line 1450
    return-void
.end method

.method private addRemoteShareGridView(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1020437

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1495
    .local v7, "titleText":Landroid/widget/TextView;
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V

    .line 1496
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040bdf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1497
    .local v6, "cText":Ljava/lang/CharSequence;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1499
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    .line 1501
    new-instance v0, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    .line 1503
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1020438

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableHeightGridView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    .line 1504
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setExpanded(Z)V

    .line 1505
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1507
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1508
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1510
    return-void
.end method

.method private addRemoteShareQuickConnectGridView(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1516
    .local v7, "titleText":Landroid/widget/TextView;
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V

    .line 1517
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040be3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1518
    .local v6, "cText":Ljava/lang/CharSequence;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1519
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    .line 1521
    new-instance v0, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    .line 1523
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableHeightGridView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

    .line 1524
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setExpanded(Z)V

    .line 1525
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1527
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1528
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1530
    return-void
.end method

.method private addRemoteShareRecentHistoryDefaultGridView(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1020439

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1535
    .local v7, "titleText":Landroid/widget/TextView;
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V

    .line 1536
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040bdf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1537
    .local v6, "cText":Ljava/lang/CharSequence;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1538
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    .line 1540
    new-instance v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    .line 1542
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableHeightGridView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    .line 1543
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableHeightGridView;->setExpanded(Z)V

    .line 1544
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1546
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1547
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1549
    return-void
.end method

.method private addRemoteShareRecentHistoryGridView(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1554
    .local v7, "titleText":Landroid/widget/TextView;
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleBackground(Landroid/widget/TextView;)V

    .line 1555
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040bdf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1556
    .local v6, "cText":Ljava/lang/CharSequence;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1557
    invoke-direct {p0, v7}, Lcom/android/internal/app/ResolverActivity;->setSubtitleColor(Landroid/widget/TextView;)V

    .line 1559
    new-instance v0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    .line 1561
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalListView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    .line 1562
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1564
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1565
    return-void
.end method

.method private applyRemoteShareResolver(Landroid/content/Intent;Z)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callSetupAlert"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 1690
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    .line 1691
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    .line 1692
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->checkThemeType(Landroid/content/Intent;)V

    .line 1694
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1695
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090123

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 1697
    .local v0, "layout":Landroid/widget/ScrollView;
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 1701
    .end local v0    # "layout":Landroid/widget/ScrollView;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    if-nez v1, :cond_1

    .line 1702
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addApplicationGridView(Landroid/content/Intent;)V

    .line 1704
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    if-nez v1, :cond_2

    .line 1705
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareGridView(Landroid/content/Intent;)V

    .line 1707
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

    if-nez v1, :cond_3

    .line 1708
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareQuickConnectGridView(Landroid/content/Intent;)V

    .line 1711
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isEasySingUpIsCertificated()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1712
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    if-nez v1, :cond_4

    .line 1713
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryDefaultGridView(Landroid/content/Intent;)V

    .line 1715
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareRecentHistoryDefaultList()V

    .line 1716
    invoke-direct {p0, v5}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefault(I)V

    .line 1717
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistory(I)V

    .line 1728
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareList()V

    .line 1729
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareQuickConnectList()V

    .line 1732
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShare(I)V

    .line 1733
    invoke-direct {p0, v5}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridTitleApplication(I)V

    .line 1734
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridQuickConnect(I)V

    .line 1735
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefaultTitle(I)V

    .line 1736
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryTitle(I)V

    .line 1738
    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    .line 1739
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 1741
    :cond_5
    return-void

    .line 1719
    :cond_6
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    if-nez v1, :cond_7

    .line 1720
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryGridView(Landroid/content/Intent;)V

    .line 1722
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareRecentHistoryList()V

    .line 1723
    invoke-direct {p0, v4}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefault(I)V

    .line 1724
    invoke-direct {p0, v5}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistory(I)V

    goto :goto_0
.end method

.method private checkThemeType(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1663
    const/4 v1, 0x0

    .line 1665
    .local v1, "theme":I
    :try_start_0
    const-string/jumbo v2, "theme"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1672
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1687
    :goto_1
    return-void

    .line 1666
    :catch_0
    move-exception v0

    .line 1667
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ResolverActivity"

    const-string v3, "checkedItemPosition is invalid position"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1668
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1669
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "ResolverActivity"

    const-string v3, " intent.getIntExtra(THEME_CHOOSER, TYPE_NONE), OutOfMemoryError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1677
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :pswitch_0
    iput-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    goto :goto_1

    .line 1681
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    goto :goto_1

    .line 1684
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    goto :goto_1

    .line 1672
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private clearRemoteShareList(Z)V
    .locals 1
    .param p1, "bClearAll"    # Z

    .prologue
    .line 1999
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mRemoteShareList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->access$2500(Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2000
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mRemoteShareList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->access$2500(Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2002
    :cond_0
    return-void
.end method

.method private clearRemoteShareQuickConnectList(Z)V
    .locals 1
    .param p1, "bClearAll"    # Z

    .prologue
    .line 2174
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->mRemoteShareQuickConnectList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->access$2600(Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2175
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->mRemoteShareQuickConnectList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->access$2600(Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2177
    :cond_0
    return-void
.end method

.method private clearRemoteShareRecentHistoryDefaultList(Z)V
    .locals 1
    .param p1, "bClearAll"    # Z

    .prologue
    .line 2333
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->access$2700(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2334
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->access$2700(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2336
    :cond_0
    return-void
.end method

.method private clearRemoteShareRecentHistoryList(Z)V
    .locals 1
    .param p1, "bClearAll"    # Z

    .prologue
    .line 2649
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$2800(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2650
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$2800(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2652
    :cond_0
    return-void
.end method

.method private getRecentSharedContact()V
    .locals 18

    .prologue
    .line 1787
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "recent_share"

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "limit"

    const-string v5, "2"

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1789
    .local v2, "uri":Landroid/net/Uri;
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "display_name"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "photo_uri"

    aput-object v4, v3, v1

    .line 1795
    .local v3, "PROJECTION":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1796
    .local v11, "c":Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 1830
    :goto_0
    return-void

    .line 1824
    .local v7, "_id":J
    .local v15, "name":Ljava/lang/String;
    .local v16, "photoUri":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 1825
    .local v14, "ioe":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1799
    .end local v7    # "_id":J
    .end local v14    # "ioe":Ljava/io/IOException;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "photoUri":Ljava/lang/String;
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1800
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1801
    .restart local v7    # "_id":J
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1802
    .restart local v15    # "name":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1805
    .restart local v16    # "photoUri":Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 1807
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "r"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v12

    .line 1809
    .local v12, "fd":Landroid/content/res/AssetFileDescriptor;
    const/16 v1, 0x4000

    new-array v10, v1, [B

    .line 1810
    .local v10, "buffer":[B
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v13

    .line 1811
    .local v13, "fis":Ljava/io/FileInputStream;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1814
    .local v9, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v13, v10}, Ljava/io/InputStream;->read([B)I

    move-result v17

    .local v17, "size":I
    const/4 v1, -0x1

    move/from16 v0, v17

    if-eq v0, v1, :cond_1

    .line 1815
    const/4 v1, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v10, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1819
    .end local v17    # "size":I
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 1820
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1819
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1817
    .restart local v17    # "size":I
    :cond_1
    :try_start_3
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1819
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 1820
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 1822
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1829
    .end local v7    # "_id":J
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "buffer":[B
    .end local v12    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v13    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "photoUri":Ljava/lang/String;
    .end local v17    # "size":I
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private initRemoteShareList()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1965
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    if-nez v9, :cond_0

    .line 1966
    const-string v9, "ResolverActivity"

    const-string v10, "initRemoteShareList : mRemoteShareListAdapter is null "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :goto_0
    return-void

    .line 1969
    :cond_0
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mRemoteShareList:Ljava/util/List;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->access$2500(Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1970
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/app/ResolverActivity;->clearRemoteShareList(Z)V

    .line 1972
    :cond_1
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    .line 1973
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 1975
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040be0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1976
    .local v4, "favouritesDisplayLabel":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x108058a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1977
    .local v3, "favouritesDisplayIcon":Landroid/graphics/drawable/Drawable;
    new-instance v5, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;

    invoke-direct {v5, p0, v4, v3, v11}, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 1978
    .local v5, "favouritesItem":Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mRemoteShareList:Ljava/util/List;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->access$2500(Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;)Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    invoke-interface {v9, v10, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1979
    iget v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    .line 1981
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040be1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1982
    .local v1, "contactsDisplayLabel":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1080586

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1983
    .local v0, "contactsDisplayIcon":Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;

    invoke-direct {v2, p0, v1, v0, v11}, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 1984
    .local v2, "contactsItem":Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mRemoteShareList:Ljava/util/List;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->access$2500(Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;)Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    invoke-interface {v9, v10, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1985
    iget v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    .line 1987
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040be2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1988
    .local v7, "groupDisplayLabel":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x108058b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1989
    .local v6, "groupDisplayIcon":Landroid/graphics/drawable/Drawable;
    new-instance v8, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;

    invoke-direct {v8, p0, v7, v6, v11}, Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 1990
    .local v8, "groupItem":Lcom/android/internal/app/ResolverActivity$RemoteShareListInfo;
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->mRemoteShareList:Ljava/util/List;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;->access$2500(Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;)Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    invoke-interface {v9, v10, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1991
    iget v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareIndex:I

    .line 1993
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareListAdapter;

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method private initRemoteShareQuickConnectList()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 2140
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    if-nez v9, :cond_0

    .line 2141
    const-string v9, "ResolverActivity"

    const-string v10, "initRemoteShareQuickConnectList : mRemoteShareQuickConnectListAdapter is null "

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    :goto_0
    return-void

    .line 2144
    :cond_0
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->mRemoteShareQuickConnectList:Ljava/util/List;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->access$2600(Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 2145
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/internal/app/ResolverActivity;->clearRemoteShareQuickConnectList(Z)V

    .line 2147
    :cond_1
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    .line 2148
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-virtual {v9, v10}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 2151
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040be4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2152
    .local v7, "sendContentDisplayLabel":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x108058e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2153
    .local v6, "sendContentDisplayIcon":Landroid/graphics/drawable/Drawable;
    new-instance v8, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;

    invoke-direct {v8, p0, v7, v6, v11}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 2154
    .local v8, "sendContentItem":Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->mRemoteShareQuickConnectList:Ljava/util/List;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->access$2600(Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;)Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    invoke-interface {v9, v10, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2155
    iget v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    .line 2157
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040be5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2158
    .local v1, "mirrorScreenDisplayLabel":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x108058c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2159
    .local v0, "mirrorScreenDisplayIcon":Landroid/graphics/drawable/Drawable;
    new-instance v2, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;

    invoke-direct {v2, p0, v1, v0, v11}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 2160
    .local v2, "mirrorScreenItem":Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->mRemoteShareQuickConnectList:Ljava/util/List;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->access$2600(Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;)Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    invoke-interface {v9, v10, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2161
    iget v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    .line 2163
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040be6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2164
    .local v4, "printDisplayLabel":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x108058d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2165
    .local v3, "printDisplayIcon":Landroid/graphics/drawable/Drawable;
    new-instance v5, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;

    invoke-direct {v5, p0, v4, v3, v11}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 2166
    .local v5, "printItem":Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListInfo;
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->mRemoteShareQuickConnectList:Ljava/util/List;
    invoke-static {v9}, Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;->access$2600(Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;)Ljava/util/List;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    invoke-interface {v9, v10, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2167
    iget v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectIndex:I

    .line 2169
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareQuickConnectListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareQuickConnectListAdapter;

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method private initRemoteShareRecentHistoryDefaultList()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2312
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    if-nez v4, :cond_0

    .line 2313
    const-string v4, "ResolverActivity"

    const-string v5, "initRemoteShareRecentHistoryDefaultList : mRemoteShareRecentHistoryDefaultListAdapter is null "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    :goto_0
    return-void

    .line 2316
    :cond_0
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->access$2700(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2317
    invoke-direct {p0, v5}, Lcom/android/internal/app/ResolverActivity;->clearRemoteShareRecentHistoryDefaultList(Z)V

    .line 2319
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    .line 2320
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 2322
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040be7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2323
    .local v1, "recentHistoryDefaultDisplayLabel":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080585

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2324
    .local v0, "recentHistoryDefaultDisplayIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040be8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2325
    .local v2, "recentHistoryDefaultIconDisplayLabel":Ljava/lang/CharSequence;
    new-instance v3, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 2326
    .local v3, "recentHistoryDefaultItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListInfo;
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->mRemoteShareRecentHistoryDefaultList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;->access$2700(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2327
    iget v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultIndex:I

    .line 2329
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryDefaultListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryDefaultListAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private initRemoteShareRecentHistoryList()V
    .locals 14

    .prologue
    .line 2585
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    if-nez v10, :cond_0

    .line 2586
    const-string v10, "ResolverActivity"

    const-string v11, "initRemoteShareRecentHistoryList : mRemoteShareRecentHistoryListAdapter is null "

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    :goto_0
    return-void

    .line 2589
    :cond_0
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v10}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$2800(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 2590
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/internal/app/ResolverActivity;->clearRemoteShareRecentHistoryList(Z)V

    .line 2592
    :cond_1
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    .line 2594
    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    const/4 v11, 0x1

    if-lt v10, v11, :cond_6

    .line 2595
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040be8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2596
    .local v7, "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1080585

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2597
    .local v6, "remoteShareDisplayIcon":Landroid/graphics/drawable/Drawable;
    new-instance v8, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    const/4 v10, 0x0

    invoke-direct {v8, p0, v7, v6, v10}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 2598
    .local v8, "remoteShareItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v10}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$2800(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    invoke-interface {v10, v11, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2599
    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    .line 2601
    const/4 v9, 0x0

    .local v9, "tempContactsIndex":I
    :goto_1
    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    if-ge v9, v10, :cond_7

    const/16 v10, 0x9

    if-ge v9, v10, :cond_7

    .line 2602
    const/4 v3, 0x0

    .line 2603
    .local v3, "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 2606
    .local v4, "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    aget v10, v10, v9

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    .line 2607
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    check-cast v3, Ljava/lang/CharSequence;

    .line 2608
    .restart local v3    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    const v10, 0x1040be9

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2609
    .local v1, "groupNameOrg":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    aget v12, v12, v9

    add-int/lit8 v12, v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2610
    .local v0, "groupName":Ljava/lang/String;
    move-object v4, v0

    .line 2617
    .end local v0    # "groupName":Ljava/lang/String;
    .end local v1    # "groupNameOrg":Ljava/lang/String;
    :goto_2
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_4

    .line 2618
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    aget v10, v10, v9

    const/4 v11, 0x1

    if-le v10, v11, :cond_3

    .line 2619
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsId:[J

    aget-wide v11, v11, v9

    const/4 v13, 0x1

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/android/internal/app/ResolverActivity;->makeContactsThumbnailImage([BJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2628
    .local v2, "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsItemContactsCountInGroup:[I

    aget v10, v10, v9

    const/4 v11, 0x1

    if-le v10, v11, :cond_5

    .line 2629
    new-instance v5, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    invoke-direct {v5, p0, v3, v2, v4}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 2633
    .local v5, "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    :goto_4
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v10}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$2800(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    invoke-interface {v10, v11, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2634
    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    .line 2601
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2613
    .end local v2    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    :cond_2
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListName:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    check-cast v3, Ljava/lang/CharSequence;

    .restart local v3    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    goto :goto_2

    .line 2621
    :cond_3
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    iget-object v11, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsId:[J

    aget-wide v11, v11, v9

    const/4 v13, 0x0

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/android/internal/app/ResolverActivity;->makeContactsThumbnailImage([BJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 2624
    .end local v2    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListThumb:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    invoke-direct {p0, v10, v11, v12, v13}, Lcom/android/internal/app/ResolverActivity;->makeContactsThumbnailImage([BJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 2631
    :cond_5
    new-instance v5, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    const/4 v10, 0x0

    invoke-direct {v5, p0, v3, v2, v10}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .restart local v5    # "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    goto :goto_4

    .line 2637
    .end local v2    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .end local v4    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .end local v5    # "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    .end local v6    # "remoteShareDisplayIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    .end local v8    # "remoteShareItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    .end local v9    # "tempContactsIndex":I
    :cond_6
    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsListCount:I

    if-nez v10, :cond_7

    .line 2638
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040be8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2639
    .restart local v3    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1080585

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2640
    .restart local v2    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    new-instance v5, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    const/4 v10, 0x0

    invoke-direct {v5, p0, v3, v2, v10}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 2641
    .restart local v5    # "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    # getter for: Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;
    invoke-static {v10}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->access$2800(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    invoke-interface {v10, v11, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2642
    iget v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryIndex:I

    .line 2644
    .end local v2    # "recentHistoryDisplayIcon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .end local v5    # "recentHistoryItem":Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
    :cond_7
    iget-object v10, p0, Lcom/android/internal/app/ResolverActivity;->mRemoteShareRecentHistoryListAdapter:Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    invoke-virtual {v10}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method private isEasySingUpIsCertificated()Z
    .locals 1

    .prologue
    .line 1744
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    .line 1745
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificatedChecked:Z

    if-nez v0, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/orca/easysignup/sdk/EasySignUpManager;->isAuth(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    .line 1747
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificatedChecked:Z

    .line 1749
    :cond_0
    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    return v0
.end method

.method private isEmergencyOrUPSModeEnabled()Z
    .locals 9

    .prologue
    const/16 v7, 0x200

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1412
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    .line 1413
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    if-nez v6, :cond_1

    .line 1414
    const-string v4, "ResolverActivity"

    const-string v6, "isEmergencyOrUPSModeEnabled : mContext is null"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :cond_0
    :goto_0
    return v5

    .line 1417
    :cond_1
    iget-object v6, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 1418
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    const/4 v1, 0x0

    .line 1419
    .local v1, "isEmergencyMode":Z
    const/4 v3, 0x0

    .line 1420
    .local v3, "isUltraPowerSavingMode":Z
    const/4 v2, 0x0

    .line 1421
    .local v2, "isEmergencyOrUPSM":Z
    if-eqz v0, :cond_2

    .line 1422
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-nez v6, :cond_4

    move v1, v4

    .line 1423
    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0, v7}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v4

    .line 1425
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    .line 1426
    const-string v6, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmergencyMode :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isUltraPowerSavingMode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isEmergencyOrUPSM:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_2
    const/4 v0, 0x0

    .line 1430
    if-nez v1, :cond_3

    if-eqz v3, :cond_0

    :cond_3
    move v5, v4

    goto :goto_0

    :cond_4
    move v1, v5

    .line 1422
    goto :goto_1

    :cond_5
    move v3, v5

    .line 1423
    goto :goto_2
.end method

.method private isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1610
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1611
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->isIntentUriDataIValidCheck(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1613
    const/4 v1, 0x1

    .line 1615
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isIntentUriDataIValidCheck(Landroid/content/Intent;)Z
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 1621
    const-string v6, "ResolverActivity"

    const-string v7, "isIntentUriDataNotNullCheck"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1623
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1624
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1625
    .local v4, "uri":Landroid/net/Uri;
    if-nez v4, :cond_1

    .line 1626
    const-string v6, "ResolverActivity"

    const-string v7, "isIntentUriDataNotNullCheck: uri == null "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    const/4 v2, 0x0

    .line 1658
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return v2

    .line 1628
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v6, "com.android.contacts"

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1629
    const-string v6, "ResolverActivity"

    const-string v7, "isIntentUriDataNotNullCheck: com.android.contacts.equals(uri.getEncodedAuthority()) == TRUE "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1633
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v6, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1634
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1635
    .local v5, "uriArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1636
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1637
    .local v3, "numOfUri":I
    const/4 v2, 0x0

    .line 1638
    .local v2, "isNotNullAtLeastOne":Z
    const-string v6, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isIntentUriDataNotNullCheck, uriArray.size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 1640
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1641
    const-string v7, "com.android.contacts"

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1642
    const-string v6, "ResolverActivity"

    const-string v7, "isIntentUriDataNotNullCheck: com.android.contacts.equals(uriArray.get(i).getEncodedAuthority()) == TRUE "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    const/4 v2, 0x1

    .line 1644
    goto :goto_0

    .line 1646
    :cond_3
    const-string v6, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uriArray.get(n) != null , n is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    const/4 v2, 0x1

    .line 1648
    goto/16 :goto_0

    .line 1651
    :cond_4
    const-string v6, "ResolverActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uriArray.get(n) == null , n is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isKnoxModeEnabled()Z
    .locals 3

    .prologue
    .line 1406
    iget v1, p0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1407
    .local v0, "isKnoxMode":Z
    :goto_0
    return v0

    .line 1406
    .end local v0    # "isKnoxMode":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRemoteShareServiceDownloaded()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1386
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    .line 1387
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloadedChecked:Z

    if-nez v1, :cond_0

    .line 1388
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/sec/orca/easysignup/sdk/EasySignUpManager;->getSupportedFeatures(Landroid/content/Context;I)I

    move-result v0

    .line 1389
    .local v0, "retVal":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1390
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloaded:Z

    .line 1394
    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloadedChecked:Z

    .line 1396
    .end local v0    # "retVal":I
    :cond_0
    sget-boolean v1, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloaded:Z

    return v1

    .line 1392
    .restart local v0    # "retVal":I
    :cond_1
    sput-boolean v3, Lcom/android/internal/app/ResolverActivity;->mIsRemoteShareServiceDownloaded:Z

    goto :goto_0
.end method

.method private isSupportRemoteShare(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1598
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isRemoteShareServiceDownloaded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ResolverActivity;->isIntentTypeSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isKnoxModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isEmergencyOrUPSModeEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1601
    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    .line 1605
    :goto_0
    return v0

    .line 1604
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    move v0, v1

    .line 1605
    goto :goto_0
.end method

.method private isSupportRemoteShareFeature()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1375
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    .line 1376
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareUIFeatureChecked:Z

    if-ne v0, v2, :cond_0

    .line 1377
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareUIFeature:Z

    .line 1381
    :goto_0
    return v0

    .line 1379
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.remoteshare_ui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareUIFeature:Z

    .line 1380
    iput-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareUIFeatureChecked:Z

    .line 1381
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareUIFeature:Z

    goto :goto_0
.end method

.method private isSupportRemoteShareSettings()I
    .locals 4

    .prologue
    .line 1400
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    .line 1401
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "remote_share_show_options"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1402
    .local v0, "remoteShareSettingsChecked":I
    return v0
.end method

.method private makeContactsThumbnailImage([BJZ)Landroid/graphics/drawable/Drawable;
    .locals 18
    .param p1, "contactsThumbnailByteArray"    # [B
    .param p2, "contactId"    # J
    .param p4, "isGroup"    # Z

    .prologue
    .line 2479
    if-eqz p1, :cond_0

    .line 2480
    const/4 v9, 0x0

    .line 2481
    .local v9, "mask":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 2482
    .local v2, "bm":Landroid/graphics/Bitmap;
    const/4 v13, 0x0

    .line 2483
    .local v13, "photo":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 2484
    .local v11, "orgThumb":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 2486
    .local v7, "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080581

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2489
    const/4 v14, 0x0

    move-object/from16 v0, p1

    array-length v15, v0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 2491
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v11, v14, v15, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2493
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2495
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2496
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2498
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 2499
    .local v12, "paint":Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2500
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v9, v14, v15, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2501
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2503
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v7, v14, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v7    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object v8, v7

    .line 2577
    .end local v7    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "orgThumb":Landroid/graphics/Bitmap;
    .local v8, "drawableIcon":Ljava/lang/Object;
    :goto_0
    return-object v8

    .line 2505
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "drawableIcon":Ljava/lang/Object;
    .end local v9    # "mask":Landroid/graphics/Bitmap;
    .end local v12    # "paint":Landroid/graphics/Paint;
    .end local v13    # "photo":Landroid/graphics/Bitmap;
    :cond_0
    if-nez p4, :cond_1

    .line 2506
    const-string v14, "ResolverActivity"

    const-string/jumbo v15, "makeContactsThumbnailImage:  contactsThumbnailByteArray == null and isGroup==false, show default image"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    const/4 v9, 0x0

    .line 2508
    .restart local v9    # "mask":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 2509
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080588

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 2510
    .local v6, "defaultPhotoDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2511
    .local v5, "defaultPhoto":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 2512
    .restart local v7    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    .line 2513
    .restart local v13    # "photo":Landroid/graphics/Bitmap;
    const/4 v10, 0x5

    .line 2514
    .local v10, "numOfContactsThumbnailBgColor":I
    int-to-long v14, v10

    rem-long v14, p2, v14

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    long-to-int v4, v14

    .line 2515
    .local v4, "contactsThumbnailIndex":I
    const/4 v1, 0x0

    .line 2517
    .local v1, "bgColorOfContactsThumbnail":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080581

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2520
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v5, v14, v15, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2522
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2524
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2525
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    packed-switch v4, :pswitch_data_0

    .line 2542
    :goto_1
    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2543
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2545
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 2546
    .restart local v12    # "paint":Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2547
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v9, v14, v15, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2548
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2550
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v7, v14, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v7    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object v8, v7

    .line 2551
    .restart local v8    # "drawableIcon":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2527
    .end local v8    # "drawableIcon":Ljava/lang/Object;
    .end local v12    # "paint":Landroid/graphics/Paint;
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1060087

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2528
    goto :goto_1

    .line 2530
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1060088

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2531
    goto :goto_1

    .line 2533
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1060089

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2534
    goto :goto_1

    .line 2536
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x106008a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2537
    goto :goto_1

    .line 2539
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x106008b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1

    .line 2554
    .end local v1    # "bgColorOfContactsThumbnail":I
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v4    # "contactsThumbnailIndex":I
    .end local v5    # "defaultPhoto":Landroid/graphics/Bitmap;
    .end local v6    # "defaultPhotoDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v7    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    .end local v9    # "mask":Landroid/graphics/Bitmap;
    .end local v10    # "numOfContactsThumbnailBgColor":I
    .end local v13    # "photo":Landroid/graphics/Bitmap;
    :cond_1
    const-string v14, "ResolverActivity"

    const-string/jumbo v15, "makeContactsThumbnailImage:  contactsThumbnailByteArray == null and isGroup==true, show group image"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    const/4 v9, 0x0

    .line 2556
    .restart local v9    # "mask":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 2557
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080587

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 2558
    .restart local v6    # "defaultPhotoDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2559
    .restart local v5    # "defaultPhoto":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 2560
    .restart local v7    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    const/4 v13, 0x0

    .line 2563
    .restart local v13    # "photo":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1080581

    invoke-static {v14, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 2565
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v5, v14, v15, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 2566
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2568
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2569
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2571
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 2572
    .restart local v12    # "paint":Landroid/graphics/Paint;
    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2573
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v9, v14, v15, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2574
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2576
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v7, v14, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v7    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    move-object v8, v7

    .line 2577
    .restart local v8    # "drawableIcon":Ljava/lang/Object;
    goto/16 :goto_0

    .line 2525
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 343
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 350
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 351
    return-object v0
.end method

.method private registerRecentContactsReceiver()V
    .locals 2

    .prologue
    .line 1760
    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 1761
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1762
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.rshareshell.responserecentgroupcontacts"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1763
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1764
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    .line 1767
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private sendRequesRecentContactsHistoryList()Z
    .locals 2

    .prologue
    .line 1753
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.rshareshell.requestrecentgroupcontacts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1754
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1755
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->registerRecentContactsReceiver()V

    .line 1756
    const/4 v1, 0x1

    return v1
.end method

.method private setSubtitleBackground(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    .line 1463
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1464
    .local v1, "pL":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 1465
    .local v3, "pT":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 1466
    .local v2, "pR":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 1468
    .local v0, "pB":I
    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    if-eqz v4, :cond_0

    .line 1469
    const v4, 0x1080c62

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1474
    :goto_0
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1475
    return-void

    .line 1471
    :cond_0
    const v4, 0x1080c61

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setSubtitleBackgroundNoSpace(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    .line 1478
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1479
    .local v1, "pL":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 1480
    .local v3, "pT":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 1481
    .local v2, "pR":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 1483
    .local v0, "pB":I
    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    if-eqz v4, :cond_0

    .line 1484
    const v4, 0x1080c64

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1489
    :goto_0
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1490
    return-void

    .line 1486
    :cond_0
    const v4, 0x1080c63

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setSubtitleColor(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    .line 1454
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsLightTheme:Z

    if-eqz v0, :cond_0

    .line 1455
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1459
    :goto_0
    return-void

    .line 1457
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setVisibilityGridQuickConnect(I)V
    .locals 2
    .param p1, "iVisible"    # I

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1590
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1591
    return-void
.end method

.method private setVisibilityGridRemoteShare(I)V
    .locals 2
    .param p1, "iVisible"    # I

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1020437

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1585
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1020438

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1586
    return-void
.end method

.method private setVisibilityGridRemoteShareRecentHistory(I)V
    .locals 2
    .param p1, "iVisible"    # I

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1577
    return-void
.end method

.method private setVisibilityGridRemoteShareRecentHistoryDefault(I)V
    .locals 2
    .param p1, "iVisible"    # I

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1569
    return-void
.end method

.method private setVisibilityGridRemoteShareRecentHistoryDefaultTitle(I)V
    .locals 2
    .param p1, "iVisible"    # I

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x1020439

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1573
    return-void
.end method

.method private setVisibilityGridRemoteShareRecentHistoryTitle(I)V
    .locals 2
    .param p1, "iVisible"    # I

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1581
    return-void
.end method

.method private setVisibilityGridTitleApplication(I)V
    .locals 2
    .param p1, "iVisible"    # I

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v1, 0x102043f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1595
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 778
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 779
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 780
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040b6f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 782
    .local v0, "text":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mNoApplication:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 784
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mNoApplication:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 786
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 566
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 571
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 567
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 568
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 576
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 578
    :try_start_0
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 579
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget v4, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :goto_1
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 580
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 600
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_2
    return-object v1

    .line 578
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0

    .line 579
    .restart local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_2
    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 584
    .restart local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v4, :cond_4

    .line 585
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 586
    if-nez v1, :cond_0

    .line 590
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v3

    .line 591
    .local v3, "iconRes":I
    if-eqz v3, :cond_5

    .line 592
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/app/ResolverActivity;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 593
    if-nez v1, :cond_0

    .line 600
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "iconRes":I
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 597
    :catch_0
    move-exception v2

    .line 598
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ResolverActivity"

    const-string v5, "Couldn\'t find resources for package"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1771
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1773
    packed-switch p1, :pswitch_data_0

    .line 1783
    :goto_0
    return-void

    .line 1775
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1776
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "onActivityResult for sendRequesRecentContactsHistoryList : resultCode == Activity.RESULT_OK"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 1778
    :cond_0
    const-string v0, "ResolverActivity"

    const-string v1, "FAIL!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1773
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 795
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 796
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v2

    const v1, 0x10203b5

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZ)V

    .line 797
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    .line 798
    return-void

    .line 796
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 356
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040689

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 359
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 18
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v2, 0x1030349

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 365
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 367
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    .line 375
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLaunchedFromPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    :goto_1
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    .line 384
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 385
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    .line 386
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    .line 388
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 389
    .local v15, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101046a

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v15, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v15, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_2

    .line 392
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    .line 397
    :goto_2
    const/16 v17, 0x0

    .line 400
    .local v17, "type":I
    :try_start_2
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    move-result v17

    .line 407
    :goto_3
    packed-switch v17, :pswitch_data_0

    .line 417
    :goto_4
    const/16 v16, 0x0

    .line 420
    .local v16, "theme":I
    :try_start_3
    const-string/jumbo v2, "theme"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_5

    move-result v16

    .line 427
    :goto_5
    packed-switch v16, :pswitch_data_1

    .line 442
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 444
    .local v11, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    move-object/from16 v0, p3

    iput-object v0, v11, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 445
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 448
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 450
    const-string v2, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 451
    .local v10, "am":Landroid/app/ActivityManager;
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mIconDpi:I

    .line 452
    invoke-virtual {v10}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mIconSize:I

    .line 454
    new-instance v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v13

    .line 457
    .local v13, "count":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    if-ltz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 459
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 552
    :cond_1
    :goto_7
    return-void

    .line 369
    .end local v10    # "am":Landroid/app/ActivityManager;
    .end local v11    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .end local v13    # "count":I
    .end local v15    # "outValue":Landroid/util/TypedValue;
    .end local v16    # "theme":I
    .end local v17    # "type":I
    :catch_0
    move-exception v14

    .line 370
    .local v14, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromUid:I

    goto/16 :goto_0

    .line 376
    .end local v14    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v14

    .line 377
    .restart local v14    # "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mLaunchedFromPackage:Ljava/lang/String;

    .line 378
    const-string v2, "ResolverActivity"

    const-string/jumbo v3, "mLaunchedFromPackage=null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 394
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v15    # "outValue":Landroid/util/TypedValue;
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    goto/16 :goto_2

    .line 401
    .restart local v17    # "type":I
    :catch_2
    move-exception v14

    .line 402
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "ResolverActivity"

    const-string v3, " intent.getIntExtra(CONTENT_TYPE, TYPE_NONE), type Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 403
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v14

    .line 404
    .local v14, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "ResolverActivity"

    const-string v3, " intent.getIntExtra(CONTENT_TYPE, TYPE_NONE), OutOfMemoryError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 410
    .end local v14    # "e":Ljava/lang/OutOfMemoryError;
    :pswitch_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    goto/16 :goto_4

    .line 413
    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    goto/16 :goto_4

    .line 421
    .restart local v16    # "theme":I
    :catch_4
    move-exception v14

    .line 422
    .local v14, "e":Ljava/lang/Exception;
    const-string v2, "ResolverActivity"

    const-string v3, "checkedItemPosition is invalid position"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 423
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v14

    .line 424
    .local v14, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "ResolverActivity"

    const-string v3, " intent.getIntExtra(THEME_CHOOSER, TYPE_NONE), OutOfMemoryError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 432
    .end local v14    # "e":Ljava/lang/OutOfMemoryError;
    :pswitch_2
    const v2, 0x1030349

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    goto/16 :goto_6

    .line 436
    :pswitch_3
    const v2, 0x1030348

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    goto/16 :goto_6

    .line 439
    :pswitch_4
    const v2, 0x1030349

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    goto/16 :goto_6

    .line 461
    .restart local v10    # "am":Landroid/app/ActivityManager;
    .restart local v11    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .restart local v13    # "count":I
    :cond_3
    const/4 v2, 0x1

    if-le v13, v2, :cond_c

    .line 463
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/app/ResolverActivity;->isSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 464
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->isEasySingUpIsCertificated()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 465
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->sendRequesRecentContactsHistoryList()Z

    .line 467
    :cond_4
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->applyRemoteShareResolver(Landroid/content/Intent;Z)V

    goto/16 :goto_7

    .line 481
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    if-eqz v2, :cond_a

    .line 482
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_9

    .line 483
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109011f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 487
    :goto_8
    iget-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x10203b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    .line 500
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    new-instance v3, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ResolverActivity$ItemLongClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 504
    if-eqz p6, :cond_6

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 506
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_6

    .line 507
    const v2, 0x1040972

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 509
    const v2, 0x1040973

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 513
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsGridType:Z

    if-eqz v2, :cond_7

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivity;->resizeGrid()V

    .line 529
    :cond_7
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 531
    if-eqz p6, :cond_1

    .line 532
    const v2, 0x10202fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 533
    .local v12, "buttonLayout":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-nez v2, :cond_8

    if-nez v12, :cond_e

    .line 534
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    .line 535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 546
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getInitialHighlight()I

    move-result v5

    .line 547
    .local v5, "initialHighlight":I
    if-ltz v5, :cond_1

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 549
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/ResolverActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto/16 :goto_7

    .line 485
    .end local v5    # "initialHighlight":I
    .end local v12    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900ac

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto/16 :goto_8

    .line 489
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mIsDeviceDefault:Z

    if-eqz v2, :cond_b

    .line 490
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1090120

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 494
    :goto_c
    iget-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x10203b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    goto/16 :goto_9

    .line 492
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900ad

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    goto :goto_c

    .line 516
    :cond_c
    const/4 v2, 0x1

    if-ne v13, v2, :cond_d

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v2}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 519
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 520
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_7

    .line 523
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040692

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 524
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040693

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 525
    iget-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mTitle:Ljava/lang/CharSequence;

    .line 526
    iget-object v2, v11, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mNoApplication:Ljava/lang/CharSequence;

    goto/16 :goto_a

    .line 538
    .restart local v12    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_e
    if-eqz v12, :cond_f

    .line 539
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 540
    const v2, 0x10203b5

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    .line 541
    const v2, 0x10203b6

    invoke-virtual {v12, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    goto/16 :goto_b

    .line 543
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    goto/16 :goto_b

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 427
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 30
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alwaysCheck"    # Z

    .prologue
    .line 811
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v2, :cond_d

    .line 813
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 815
    .local v6, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    .line 819
    .local v13, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v13, :cond_1

    .line 820
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 821
    .local v12, "cat":Ljava/lang/String;
    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 824
    .end local v12    # "cat":Ljava/lang/String;
    .end local v18    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 826
    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v3, 0xfff0000

    and-int v12, v2, v3

    .line 827
    .local v12, "cat":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v15

    .line 828
    .local v15, "data":Landroid/net/Uri;
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_2

    .line 829
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 830
    .local v19, "mimeType":Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 832
    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    .end local v19    # "mimeType":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 843
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_3

    const-string v2, "file"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "content"

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 846
    :cond_3
    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 850
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v23

    .line 851
    .local v23, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v23, :cond_5

    .line 852
    invoke-virtual {v15}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v29

    .line 853
    .local v29, "ssp":Ljava/lang/String;
    :cond_4
    if-eqz v29, :cond_5

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 854
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/PatternMatcher;

    .line 855
    .local v22, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 856
    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 861
    .end local v22    # "p":Landroid/os/PatternMatcher;
    .end local v29    # "ssp":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 862
    .local v11, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v11, :cond_7

    .line 863
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 864
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter$AuthorityEntry;

    .line 865
    .local v10, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v10, v15}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v2

    if-ltz v2, :cond_6

    .line 866
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v25

    .line 867
    .local v25, "port":I
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    if-ltz v25, :cond_b

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v6, v3, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v25    # "port":I
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v23

    .line 874
    if-eqz v23, :cond_9

    .line 875
    invoke-virtual {v15}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v24

    .line 876
    .local v24, "path":Ljava/lang/String;
    :cond_8
    if-eqz v24, :cond_9

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 877
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/os/PatternMatcher;

    .line 878
    .restart local v22    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 879
    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 887
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v22    # "p":Landroid/os/PatternMatcher;
    .end local v23    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v24    # "path":Ljava/lang/String;
    :cond_9
    if-eqz v6, :cond_d

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 889
    .local v9, "N":I
    new-array v0, v9, [Landroid/content/ComponentName;

    move-object/from16 v28, v0

    .line 890
    .local v28, "set":[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 891
    .local v7, "bestMatch":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v9, :cond_c

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v0, v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v26, v0

    .line 893
    .local v26, "r":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v26

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v28, v17

    .line 895
    move-object/from16 v0, v26

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v2, v7, :cond_a

    move-object/from16 v0, v26

    iget v7, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 891
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 833
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v17    # "i":I
    .end local v26    # "r":Landroid/content/pm/ResolveInfo;
    .end local v28    # "set":[Landroid/content/ComponentName;
    .restart local v19    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 834
    .local v16, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "ResolverActivity"

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 835
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 867
    .end local v16    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v19    # "mimeType":Ljava/lang/String;
    .restart local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v23    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v25    # "port":I
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 897
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v23    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v25    # "port":I
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v17    # "i":I
    .restart local v28    # "set":[Landroid/content/ComponentName;
    :cond_c
    if-eqz p3, :cond_10

    .line 898
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v2, v6, v7, v0, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 913
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "data":Landroid/net/Uri;
    .end local v17    # "i":I
    .end local v28    # "set":[Landroid/content/ComponentName;
    :cond_d
    :goto_4
    if-eqz p2, :cond_f

    .line 914
    if-eqz p3, :cond_11

    .line 916
    :try_start_1
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 919
    .local v21, "newIntent":Landroid/content/Intent;
    new-instance v14, Landroid/content/ComponentName;

    const-string v2, "android"

    const-string v3, "com.android.internal.app.ResolverGuideActivity"

    invoke-direct {v14, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .local v14, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 922
    const-string v2, "android.intent.extra.INTENT"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 923
    const/high16 v2, 0x800000

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 925
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v20

    .line 926
    .local v20, "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-nez v20, :cond_e

    .line 927
    new-instance v20, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v20    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-direct/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 929
    .restart local v20    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_e
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 930
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->skipMultiWindowLaunch(Landroid/content/Intent;)V

    .line 934
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 950
    .end local v14    # "cn":Landroid/content/ComponentName;
    .end local v20    # "mws":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v21    # "newIntent":Landroid/content/Intent;
    :cond_f
    :goto_5
    return-void

    .line 902
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v12    # "cat":I
    .restart local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v15    # "data":Landroid/net/Uri;
    .restart local v17    # "i":I
    .restart local v28    # "set":[Landroid/content/ComponentName;
    :cond_10
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 906
    :catch_1
    move-exception v27

    .line 907
    .local v27, "re":Landroid/os/RemoteException;
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 935
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v15    # "data":Landroid/net/Uri;
    .end local v17    # "i":I
    .end local v27    # "re":Landroid/os/RemoteException;
    .end local v28    # "set":[Landroid/content/ComponentName;
    :catch_2
    move-exception v16

    .line 936
    .local v16, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ResolverActivity"

    const-string v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 937
    .end local v16    # "e":Landroid/content/ActivityNotFoundException;
    :catch_3
    move-exception v16

    .line 938
    .local v16, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 939
    const-string v2, "ResolverActivity"

    const-string v3, "Class Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 944
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_11
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_5

    .line 945
    :catch_4
    move-exception v16

    .line 946
    .local v16, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ResolverActivity"

    const-string v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 744
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShare:Landroid/widget/ExpandableHeightGridView;

    if-ne p1, v3, :cond_0

    .line 745
    invoke-direct {p0, p3}, Lcom/android/internal/app/ResolverActivity;->RemoteShareGridItemClick(I)V

    .line 771
    :goto_0
    return-void

    .line 747
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    if-ne p1, v3, :cond_1

    .line 748
    invoke-direct {p0, p3}, Lcom/android/internal/app/ResolverActivity;->RemoteShareRecentHistoryDefaultGridItemClick(I)V

    goto :goto_0

    .line 750
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    if-ne p1, v3, :cond_2

    .line 751
    invoke-direct {p0, p3}, Lcom/android/internal/app/ResolverActivity;->RemoteShareRecentHistoryGridItemClick(I)V

    goto :goto_0

    .line 753
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareQuickConnect:Landroid/widget/ExpandableHeightGridView;

    if-ne p1, v3, :cond_3

    .line 754
    invoke-direct {p0, p3}, Lcom/android/internal/app/ResolverActivity;->RemoteShareQuickConnectGridItemClick(I)V

    goto :goto_0

    .line 759
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    .line 760
    .local v0, "checkedPos":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_6

    const/4 v1, 0x1

    .line 761
    .local v1, "hasValidSelection":Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v3, :cond_7

    if-eqz v1, :cond_4

    iget v3, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    if-eq v3, v0, :cond_7

    .line 762
    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 763
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 764
    if-eqz v1, :cond_5

    .line 765
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    .line 767
    :cond_5
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    goto :goto_0

    .end local v1    # "hasValidSelection":Z
    :cond_6
    move v1, v2

    .line 760
    goto :goto_1

    .line 769
    .restart local v1    # "hasValidSelection":Z
    :cond_7
    invoke-virtual {p0, p3, v2}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZ)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 618
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 619
    const-string v0, "ResolverActivity"

    const-string/jumbo v1, "onPause registered unreceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isRemoteShareServiceDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    .line 630
    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 653
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 674
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->isSupportRemoteShare(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareList()V

    .line 676
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareQuickConnectList()V

    .line 677
    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    if-ne v0, v3, :cond_3

    .line 678
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->sendRequesRecentContactsHistoryList()Z

    .line 679
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistory:Landroid/widget/HorizontalListView;

    if-nez v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryGridView(Landroid/content/Intent;)V

    .line 682
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->initRemoteShareRecentHistoryList()V

    .line 683
    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefault(I)V

    .line 684
    invoke-direct {p0, v2}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistory(I)V

    .line 693
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShare(I)V

    .line 696
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-nez v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 698
    iput-boolean v3, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 700
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    .line 701
    return-void

    .line 687
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mGridRemoteShareRecentHistoryDefault:Landroid/widget/ExpandableHeightGridView;

    if-nez v0, :cond_4

    .line 688
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/internal/app/ResolverActivity;->addRemoteShareRecentHistoryDefaultGridView(Landroid/content/Intent;)V

    .line 690
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistoryDefault(I)V

    .line 691
    invoke-direct {p0, v1}, Lcom/android/internal/app/ResolverActivity;->setVisibilityGridRemoteShareRecentHistory(I)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 727
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 728
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysUseOption:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    if-eqz v2, :cond_0

    .line 729
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    .line 730
    .local v0, "checkedPos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    .line 732
    .local v1, "enabled":Z
    :goto_0
    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mLastSelected:I

    .line 733
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 734
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 735
    if-eqz v1, :cond_0

    .line 736
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 739
    .end local v0    # "checkedPos":I
    .end local v1    # "enabled":Z
    :cond_0
    return-void

    .line 730
    .restart local v0    # "checkedPos":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 606
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 607
    const-string v0, "ResolverActivity"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mItemLongClicked:Z

    .line 609
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mApplyRemoteShareResolver:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->isRemoteShareServiceDownloaded()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mIsRecentContactsReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 610
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;->registerRecentContactsReceiver()V

    .line 613
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 705
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 707
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mRegistered:Z

    .line 711
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mItemLongClicked:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 719
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 720
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 723
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x3

    .line 635
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 636
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    .line 637
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    if-nez p1, :cond_2

    .line 641
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "personal_mode_enabled"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChanged:I

    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

    goto :goto_0

    .line 644
    :cond_2
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChangedisChecked:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/ResolverActivity;->mPrivateModeSettingsValBeforeOnFocusChanged:I

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_enabled"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    goto :goto_0
.end method

.method resizeGrid()V
    .locals 3

    .prologue
    .line 555
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    .line 556
    .local v0, "itemCount":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/GridView;

    iget v2, p0, Lcom/android/internal/app/ResolverActivity;->mMaxColumns:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 953
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 956
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 957
    return-void
.end method

.method startSelected(IZ)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "always"    # Z

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 808
    :goto_0
    return-void

    .line 804
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 805
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 806
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/internal/app/ResolverActivity;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 807
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
