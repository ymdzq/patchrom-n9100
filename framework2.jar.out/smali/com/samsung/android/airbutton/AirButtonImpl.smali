.class public final Lcom/samsung/android/airbutton/AirButtonImpl;
.super Ljava/lang/Object;
.source "AirButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;,
        Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;,
        Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;
    }
.end annotation


# static fields
.field private static final ACTION_MULTI_WINDOW:Ljava/lang/String; = "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

.field private static final AIR_VIEW_MODE:Ljava/lang/String; = "air_view_mode"

.field private static final BROADCAST_ALARM:Ljava/lang/String; = "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

.field private static final BROADCAST_SCOVER:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field public static final DATA_TYPE_COMBINATION:I = 0x3

.field public static final DATA_TYPE_DRAWABLE:I = 0x2

.field public static final DATA_TYPE_STRING:I = 0x1

.field public static final DEFAULT_CLIPED_TEXT_ADAPTER:I = 0x1

.field public static final DEFAULT_FREEQUENT_CONTACT_ADAPTER:I = 0x2

.field public static final DEFAULT_RECENT_MEDIA_ADAPTER:I = 0x3

.field public static final DEFAULT_RECENT_SNOTE:I = 0x4

.field public static final DIRECTION_AUTO:I = -0x1

.field public static final DIRECTION_LEFT:I = 0x3

.field public static final DIRECTION_LOWER:I = 0x2

.field public static final DIRECTION_RIGHT:I = 0x4

.field public static final DIRECTION_UPPER:I = 0x1

.field public static final GLOBAL_APP_EASY_CLIP:I = 0x5

.field public static final GLOBAL_APP_FLASH_ANNO:I = 0x2

.field public static final GLOBAL_APP_PEN_WINDOW:I = 0x4

.field public static final GLOBAL_APP_QUICK_MEMO:I = 0x0

.field public static final GLOBAL_APP_RAKEINSELECT:I = 0x7

.field public static final GLOBAL_APP_SCRAPBOOKER:I = 0x1

.field public static final GLOBAL_APP_S_FINDER:I = 0x3

.field public static final GLOBAL_APP_S_NOTE:I = 0x6

.field public static final GRAVITY_AUTO:I = -0x1

.field public static final GRAVITY_BOTTOM:I = 0x2

.field public static final GRAVITY_HOVER_POINT:I = 0x5

.field public static final GRAVITY_LEFT:I = 0x3

.field public static final GRAVITY_RIGHT:I = 0x4

.field public static final GRAVITY_TOP:I = 0x1

.field private static final IS_KEYPAD_VISIBLE:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field public static final MENU_ITEM_HEIGHT:I = 0x48

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field public static final STATE_DISMISS:I = 0x3

.field public static final STATE_HIDE:I = 0x2

.field public static final STATE_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AirButtonImpl"

.field public static final UI_TYPE_GLOBAL:I = 0x3

.field public static final UI_TYPE_LIST:I = 0x2

.field public static final UI_TYPE_MENU:I = 0x1

.field private static final URI_AIR_BUTTON_ONOFF:Ljava/lang/String; = "air_button_onoff"

.field private static final URI_AIR_VIEW_ONOFF:Ljava/lang/String; = "air_view_master_onoff"

.field private static mAirButtonAnimationViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;",
            ">;"
        }
    .end annotation
.end field

.field private static mLoggingEnabled:Z

.field private static mUspLevel:I


# instance fields
.field private mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

.field private mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

.field private mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

.field private mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

.field private mAirButtonViewCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

.field private mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mAttrs:Lcom/samsung/android/airbutton/Attributes;

.field private mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

.field private mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDataType:I

.field protected mDensity:F

.field private mHandler:Landroid/os/Handler;

.field private mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

.field private mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mHoverEnterTime:J

.field protected mHoverPressedPointX:F

.field protected mHoverPressedPointY:F

.field private mIsAirButtonAttached:Z

.field private mIsEditTextParentView:Z

.field private mIsEnabled:Z

.field private mIsHoverAnimationViewAttached:Z

.field private mIsHoverEnter:Z

.field private mIsHoverPointerEnabled:Z

.field private mIsSpenDetached:Z

.field private mIsToastShown:Z

.field private mIsWidgetDismissed:Z

.field private mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

.field private mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

.field private mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

.field private mKeypadHideRunnable:Ljava/lang/Runnable;

.field private mMultiWindowIntentFilter:Landroid/content/IntentFilter;

.field private mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

.field private mParentView:Landroid/view/View;

.field protected mParentViewHeight:I

.field private mParentViewHoverListener:Landroid/view/View$OnHoverListener;

.field protected mParentViewWidth:I

.field protected mParentViewX:I

.field protected mParentViewY:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRootViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field protected mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

.field private mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

.field protected mStatusbarHeight:I

.field private mUIType:I

.field private mWM:Landroid/view/WindowManager;

.field protected mWindowHeight:I

.field protected mWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 173
    sput v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    .line 184
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    .line 264
    sput-boolean v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mLoggingEnabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p4, "UIType"    # I
    .param p5, "enabled"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    .line 167
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mRootViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 168
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    .line 169
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    .line 171
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    .line 172
    iput v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    .line 174
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 175
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    .line 176
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 177
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 178
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .line 179
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .line 180
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    .line 181
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 182
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    .line 183
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 191
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    .line 193
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    .line 197
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    .line 199
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    .line 201
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    .line 203
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    .line 205
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    .line 212
    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointX:F

    .line 214
    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointY:F

    .line 216
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    .line 217
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverEnterTime:J

    .line 223
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEditTextParentView:Z

    .line 224
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    .line 225
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    .line 226
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    .line 227
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    .line 228
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverEnter:Z

    .line 229
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsToastShown:Z

    .line 230
    iput-boolean v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    .line 231
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    .line 239
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHandler:Landroid/os/Handler;

    .line 240
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    .line 241
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    .line 249
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 250
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    .line 251
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    .line 258
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    .line 259
    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    .line 653
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$2;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    .line 690
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$3;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHoverListener:Landroid/view/View$OnHoverListener;

    .line 1484
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$5;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeypadHideRunnable:Ljava/lang/Runnable;

    .line 1622
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$7;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1632
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$8;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 285
    if-nez p2, :cond_0

    .line 286
    const-string v0, "AirButtonImpl"

    const-string v1, "Parent view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    if-nez p3, :cond_1

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapter is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    .line 293
    sget-object v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    .line 296
    :cond_2
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-direct {v0, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    .line 297
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    new-instance v1, Lcom/samsung/android/airbutton/AirButtonImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$1;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->setOnSideButtonClickedListener(Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;)V

    .line 304
    invoke-virtual {p0, p2}, Lcom/samsung/android/airbutton/AirButtonImpl;->setParentView(Landroid/view/View;)V

    .line 305
    invoke-virtual {p0, p3}, Lcom/samsung/android/airbutton/AirButtonImpl;->setAdapter(Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;)V

    .line 306
    iput p4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    .line 307
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 308
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initSideButtonState()V

    .line 309
    :cond_3
    iput-boolean p5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    .line 311
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 312
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 313
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    .line 316
    :cond_4
    invoke-direct {p0, p5}, Lcom/samsung/android/airbutton/AirButtonImpl;->init(Z)V

    .line 319
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mLoggingEnabled:Z

    .line 320
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 273
    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-direct {v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>()V

    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V

    .line 274
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p3, "UIType"    # I

    .prologue
    .line 277
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V

    .line 278
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V
    .locals 6
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p3, "UIType"    # I
    .param p4, "enabled"    # Z

    .prologue
    .line 281
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V

    .line 282
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/airbutton/AirButtonImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 74
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/airbutton/AirButtonImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/airbutton/AirButtonImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeypadHideRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/view/AbsAirButtonView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    return-object v0
.end method

.method private broadcastAirButtonShowState(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    .line 814
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 815
    .local v0, "airButtonIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.AIR_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    const-string v1, "isShow"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 818
    const-string v1, "AirButtonImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastAirButtonShowState() isShow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 821
    return-void
.end method

.method private callStateListener(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1096
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    if-nez v1, :cond_1

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    if-ne p1, v2, :cond_3

    .line 1100
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    invoke-interface {v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;->onShow()V

    .line 1106
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    instance-of v1, v1, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;

    if-eqz v1, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    check-cast v0, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;

    .line 1110
    .local v0, "stateChangedListenerImpl":Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;
    if-ne p1, v2, :cond_5

    .line 1111
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;->onShow(Landroid/view/View;)V

    goto :goto_0

    .line 1101
    .end local v0    # "stateChangedListenerImpl":Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;
    :cond_3
    if-ne p1, v3, :cond_4

    .line 1102
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    invoke-interface {v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;->onHide()V

    goto :goto_1

    .line 1103
    :cond_4
    if-ne p1, v4, :cond_2

    .line 1104
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    invoke-interface {v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;->onDismiss()V

    goto :goto_1

    .line 1112
    .restart local v0    # "stateChangedListenerImpl":Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;
    :cond_5
    if-ne p1, v3, :cond_6

    .line 1113
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;->onHide(Landroid/view/View;)V

    goto :goto_0

    .line 1114
    :cond_6
    if-ne p1, v4, :cond_0

    .line 1115
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;->onDismiss(Landroid/view/View;)V

    goto :goto_0
.end method

.method private createAndAttachHoverAnimationView()V
    .locals 4

    .prologue
    .line 483
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 486
    :cond_0
    monitor-enter p0

    .line 487
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->removeAllHoverAnimationViews()V

    .line 489
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-eqz v1, :cond_2

    .line 490
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 508
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 492
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    if-nez v1, :cond_3

    .line 493
    new-instance v1, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;-><init>(Landroid/view/View;F)V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    .line 495
    :cond_3
    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initHoverAnimationViewLayoutParams()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    .line 507
    const-string v1, "AirButtonImpl"

    const-string v2, "Hover animation view attached"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    monitor-exit p0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v1, "AirButtonImpl"

    const-string v2, "Your parent view token is wrong or removed. Please check it"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 503
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private createAndInitAirButtonView(Landroid/view/View;)Z
    .locals 6
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 512
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->initWidgetLocationBasedOnView(Landroid/view/View;)V

    .line 514
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 515
    const/4 v0, 0x0

    .line 516
    .local v0, "multindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_4

    .line 517
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 522
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-ge v1, v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v4, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 525
    :cond_2
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-eqz v1, :cond_3

    .line 526
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v3, 0x3

    iput v3, v1, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    .line 541
    .end local v0    # "multindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_3
    new-instance v1, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v1, v3, v4, v5}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;Lcom/samsung/android/airbutton/Attributes;)V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    .line 542
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->getAirButtonView()Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    .line 544
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    if-nez v1, :cond_5

    .line 545
    const-string v1, "AirButtonImpl"

    const-string v2, "Cannot create AirButton view"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const/4 v1, 0x0

    .line 554
    :goto_1
    return v1

    .line 518
    .restart local v0    # "multindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    goto :goto_0

    .line 549
    .end local v0    # "multindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createAndRegisterReceivers()V

    .line 551
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setAirButton(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    .line 552
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    invoke-virtual {v1, v3}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setAirButtonViewCallback(Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;)V

    move v1, v2

    .line 554
    goto :goto_1
.end method

.method private createAndRegisterReceivers()V
    .locals 2

    .prologue
    .line 1201
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createConfigurationChangedReceiver()V

    .line 1202
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->registerConfigurationChangeReceiver()V

    .line 1204
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1205
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createKeypadHideReceiver()V

    .line 1206
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->registerKeypadHideReceiver()V

    .line 1210
    :cond_0
    return-void
.end method

.method private createConfigurationChangedReceiver()V
    .locals 3

    .prologue
    .line 1532
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1533
    new-instance v1, Lcom/samsung/android/airbutton/AirButtonImpl$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$6;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1560
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_1

    .line 1561
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    .line 1562
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1563
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1564
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1565
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.cover.OPEN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1567
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    .line 1568
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1569
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    const/16 v2, 0x3e7

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1572
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1574
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1575
    .local v0, "tmgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_2

    .line 1576
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1580
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_3

    .line 1581
    const-string v1, "AirButtonImpl"

    const-string/jumbo v2, "registerListener mCoverStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 1585
    .end local v0    # "tmgr":Landroid/telephony/TelephonyManager;
    :cond_3
    return-void
.end method

.method private createKeypadHideReceiver()V
    .locals 2

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1459
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$4;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    .line 1477
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 1478
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    .line 1479
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.ACTION_HIDE_SIP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1482
    :cond_1
    return-void
.end method

.method private createMultiWindowReceiver()V
    .locals 2

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1650
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$9;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    .line 1661
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 1662
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    .line 1663
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1665
    :cond_1
    return-void
.end method

.method private getAirButtonView()Lcom/samsung/android/airbutton/view/AbsAirButtonView;
    .locals 5

    .prologue
    .line 558
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v0, :cond_0

    .line 559
    const/4 v0, 0x0

    .line 566
    :goto_0
    return-object v0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 562
    new-instance v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;Z)V

    goto :goto_0

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    if-eqz v0, :cond_2

    .line 564
    new-instance v0, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0

    .line 566
    :cond_2
    new-instance v0, Lcom/samsung/android/airbutton/view/AirButtonListView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/airbutton/view/AirButtonListView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0
.end method

.method private init(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 338
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initScreenSize()V

    .line 343
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->initWithAdapter(Z)V

    .line 344
    return-void
.end method

.method private initAirButtonViewLayoutParams()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 451
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 454
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 455
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v3, :cond_5

    .line 456
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x831

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 457
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 461
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 462
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 463
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 466
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initScreenSize()V

    .line 467
    sget v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "do_not_show_guidepopup_gac"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setStatusBarHeight()V

    .line 470
    :cond_2
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v3, :cond_6

    .line 471
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 474
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 475
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 477
    sget v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "do_not_show_guidepopup_gac"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    .line 478
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x500

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 480
    :cond_4
    return-void

    .line 459
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 472
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 473
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method private initDataType()V
    .locals 3

    .prologue
    .line 386
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-nez v1, :cond_0

    .line 404
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v0

    .line 392
    .local v0, "firstItem":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 393
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    .line 402
    .end local v0    # "firstItem":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initParentViewData()V

    .line 403
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {p0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setAttributes(Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0

    .line 394
    .restart local v0    # "firstItem":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 395
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    goto :goto_1

    .line 396
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 397
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    goto :goto_1

    .line 399
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AirButtonItem is empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initHoverAnimationViewLayoutParams()V
    .locals 6

    .prologue
    .line 421
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 446
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0061

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 425
    .local v0, "hoverAnimationViewSize":I
    int-to-float v3, v0

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 426
    .local v1, "pixelHoverAnimationViewSize":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 427
    .local v2, "viewLocation":[I
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 431
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setStatusBarHeight()V

    .line 433
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 434
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 435
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x3eb

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 436
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 437
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 438
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 439
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 440
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 441
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 442
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 444
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    aget v4, v2, v4

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 445
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x1

    aget v4, v2, v4

    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    .line 426
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private initParentViewData()V
    .locals 2

    .prologue
    .line 407
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 418
    :goto_0
    return-void

    .line 410
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 411
    .local v0, "viewLocation":[I
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 412
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    .line 413
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    .line 414
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    .line 415
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    goto :goto_0

    .line 410
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private initScreenSize()V
    .locals 2

    .prologue
    .line 359
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 360
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 362
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    .line 363
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    .line 364
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    .line 365
    return-void
.end method

.method private initWithAdapter(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setAttributes(Lcom/samsung/android/airbutton/Attributes;)V

    .line 349
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->enable()V

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v0, :cond_0

    .line 352
    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->enable()V

    goto :goto_0
.end method

.method private isVzwSetupRunning()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 825
    const-string v1, "VZW"

    const-string v2, "OPEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 826
    const-string/jumbo v1, "persist.sys.vzw_setup_running"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 827
    .local v0, "isVzwSetupRunning":Z
    const-string v1, "AirButtonImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Verizon Setup Wizard is Running ?? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    .end local v0    # "isVzwSetupRunning":Z
    :cond_0
    return v0
.end method

.method private registerConfigurationChangeReceiver()V
    .locals 3

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1601
    :goto_0
    return-void

    .line 1592
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1597
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1598
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1599
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1593
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private registerKeypadHideReceiver()V
    .locals 3

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1514
    :goto_0
    return-void

    .line 1506
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1511
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1512
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1507
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private registerMultiWindowReceiver()V
    .locals 3

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1680
    :goto_0
    return-void

    .line 1672
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1677
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1678
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1673
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private removeAllHoverAnimationViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1162
    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1175
    :cond_0
    return-void

    .line 1165
    :cond_1
    const-string v1, "AirButtonImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remained animation view size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1168
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1173
    :goto_1
    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1169
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private sendLogAirButtonLanch()V
    .locals 4

    .prologue
    .line 1693
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1694
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.samsung.android.airbutton"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    const-string v2, "feature"

    const-string v3, "AC01"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1699
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1700
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1702
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1704
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1705
    return-void
.end method

.method private setStatusBarHeight()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 368
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    .line 370
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 372
    .local v0, "wm":Landroid/view/IWindowManager;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isScaleWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    .line 381
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    .line 382
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    iput v2, v1, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    .line 383
    return-void

    .line 375
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setWidgetDirection()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 1305
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1308
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    .line 1309
    .local v1, "upperSpace":I
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 1311
    .local v0, "lowerSpace":I
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v2, v5, :cond_0

    .line 1312
    if-le v1, v0, :cond_2

    .line 1313
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v3, 0x1

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    goto :goto_0

    .line 1315
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v5, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    goto :goto_0
.end method

.method private setWidgetPosition()V
    .locals 5

    .prologue
    .line 1292
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    .line 1296
    .local v1, "upperSpace":I
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 1298
    .local v0, "lowerSpace":I
    if-ge v1, v0, :cond_2

    .line 1299
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v3, 0x2

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto :goto_0

    .line 1301
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v3, 0x1

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto :goto_0
.end method

.method private showEmptyText()V
    .locals 3

    .prologue
    .line 323
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-nez v1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getEmptyText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 328
    .local v0, "emptyText":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsToastShown:Z

    if-nez v1, :cond_1

    .line 329
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsToastShown:Z

    .line 330
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v1, :cond_2

    .line 333
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHide(Landroid/view/View;)V

    .line 334
    :cond_2
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->callStateListener(I)V

    goto :goto_0
.end method

.method private unregisterConfigurationChangeReceiver()V
    .locals 3

    .prologue
    .line 1604
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1620
    :cond_0
    :goto_0
    return-void

    .line 1608
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1612
    :goto_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1614
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1615
    .local v0, "tmgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 1616
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 1609
    .end local v0    # "tmgr":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private unregisterKeypadHideReceiver()V
    .locals 2

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1524
    :goto_0
    return-void

    .line 1521
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1522
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unregisterMultiWindowReceiver()V
    .locals 2

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1690
    :goto_0
    return-void

    .line 1687
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1688
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 1213
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1214
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->unregisterConfigurationChangeReceiver()V

    .line 1219
    :goto_0
    return-void

    .line 1216
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->unregisterKeypadHideReceiver()V

    goto :goto_0
.end method


# virtual methods
.method protected adjustMenuItemXPosition()V
    .locals 7

    .prologue
    .line 629
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-nez v3, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v4

    mul-int v2, v3, v4

    .line 633
    .local v2, "totalWidgetWidth":I
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->x:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 635
    .local v0, "outOfXBoundary":I
    if-ltz v0, :cond_0

    .line 638
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    div-int v1, v0, v3

    .line 639
    .local v1, "outOfXBoundaryItemCnt":I
    add-int/lit8 v1, v1, 0x1

    .line 641
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 642
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 644
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v1, v3, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    .line 645
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    iget-object v6, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    goto :goto_0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1050
    :goto_0
    return-void

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnAirButtonHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1009
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    .line 1011
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    .line 1012
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hideHoverPointer()V

    .line 1013
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->disable()V

    .line 1016
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v1, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onDismiss(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->unlinkWithParentView()V

    .line 1023
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    .line 1024
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    .line 1025
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    .line 1026
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 1027
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 1028
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .line 1029
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .line 1031
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->callStateListener(I)V

    .line 1033
    const-string v1, "AirButtonImpl"

    const-string v2, "dismissed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    return-void

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 1038
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 1041
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnAirButtonHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method public getAdapter()Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 1

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    return-object v0
.end method

.method public getAttributes()Lcom/samsung/android/airbutton/Attributes;
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v0, :cond_0

    .line 1322
    new-instance v0, Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0}, Lcom/samsung/android/airbutton/Attributes;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/Attributes;->clone()Lcom/samsung/android/airbutton/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 973
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    if-nez v0, :cond_0

    .line 1006
    :goto_0
    return-void

    .line 976
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->unregisterReceivers()V

    .line 978
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 980
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    .line 981
    const-string v0, "AirButtonImpl"

    const-string/jumbo v1, "unregisterListener mCoverStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 987
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    if-eqz v0, :cond_2

    .line 988
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    if-eqz v0, :cond_3

    .line 993
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setAirButtonViewCallback(Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;)V

    .line 994
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    .line 997
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    .line 999
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v0, :cond_4

    .line 1000
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHide(Landroid/view/View;)V

    .line 1001
    :cond_4
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->callStateListener(I)V

    .line 1003
    invoke-direct {p0, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->broadcastAirButtonShowState(Z)V

    .line 1005
    const-string v0, "AirButtonImpl"

    const-string v1, "hided"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 989
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public hideHoverPointer()V
    .locals 2

    .prologue
    .line 1079
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    if-nez v0, :cond_1

    .line 1093
    :cond_0
    :goto_0
    return-void

    .line 1082
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->hideAnimationView()V

    .line 1085
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    .line 1091
    const-string v0, "AirButtonImpl"

    const-string v1, "Hover animation view detached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1086
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public initSideButtonState()V
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->resetVariables(Z)V

    .line 1225
    :cond_0
    return-void
.end method

.method protected initWidgetLocationBasedOnView(Landroid/view/View;)V
    .locals 8
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    .line 571
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {v2}, Lcom/samsung/android/airbutton/Attributes;->clone()Lcom/samsung/android/airbutton/Attributes;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 573
    if-nez p1, :cond_1

    .line 574
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v2, v3, :cond_0

    .line 575
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointX:F

    float-to-int v4, v4

    iput v4, v3, Lcom/samsung/android/airbutton/Attributes;->x:I

    iput v4, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 576
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointY:F

    float-to-int v4, v4

    iput v4, v3, Lcom/samsung/android/airbutton/Attributes;->y:I

    iput v4, v2, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setWidgetPosition()V

    .line 583
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setWidgetDirection()V

    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, "widgetLocationX":I
    const/4 v1, 0x0

    .line 588
    .local v1, "widgetLocationY":I
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v5, :cond_2

    .line 589
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointX:F

    float-to-int v3, v3

    add-int v0, v2, v3

    .line 597
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v2, Lcom/samsung/android/airbutton/Attributes;->x:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->x:I

    .line 599
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v5, :cond_5

    .line 600
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointY:F

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 608
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    .line 609
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    .line 613
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->x:I

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 614
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->y:I

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    .line 616
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v5, :cond_0

    .line 617
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    int-to-float v2, v2

    const/high16 v3, 0x42900000    # 72.0f

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    .line 618
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v6, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto :goto_0

    .line 590
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v3, :cond_3

    .line 591
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    goto :goto_1

    .line 592
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 593
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    add-int v0, v2, v3

    goto :goto_1

    .line 595
    :cond_4
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    goto :goto_1

    .line 601
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v6, :cond_6

    .line 602
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    goto :goto_2

    .line 603
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v7, :cond_7

    .line 604
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    add-int v1, v2, v3

    goto :goto_2

    .line 606
    :cond_7
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    goto :goto_2

    .line 620
    :cond_8
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v7, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto/16 :goto_0
.end method

.method public isAirButtonSettingEnabled()Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, -0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1121
    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_button_onoff"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1124
    .local v0, "airButtonOnOff":I
    sget v5, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    if-ne v5, v8, :cond_5

    .line 1125
    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v5, v8, :cond_2

    .line 1126
    if-nez v0, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 1126
    goto :goto_0

    .line 1127
    :cond_2
    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1128
    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "pen_hovering"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_3

    move v1, v4

    .line 1129
    .local v1, "isSPenHoveringOn":Z
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "pen_hovering_air_menu"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1130
    .local v2, "listMneuOnOff":I
    if-eqz v1, :cond_4

    if-ne v2, v4, :cond_4

    :goto_2
    move v3, v4

    goto :goto_0

    .end local v1    # "isSPenHoveringOn":Z
    .end local v2    # "listMneuOnOff":I
    :cond_3
    move v1, v3

    .line 1128
    goto :goto_1

    .restart local v1    # "isSPenHoveringOn":Z
    .restart local v2    # "listMneuOnOff":I
    :cond_4
    move v4, v3

    .line 1130
    goto :goto_2

    .line 1134
    .end local v1    # "isSPenHoveringOn":Z
    .end local v2    # "listMneuOnOff":I
    :cond_5
    if-eqz v0, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public isBounceEffectEnabled()Z
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    return v0
.end method

.method public isCoverViewOpened()Z
    .locals 5

    .prologue
    .line 1149
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 1150
    .local v2, "windowManager":Landroid/view/IWindowManager;
    const/4 v1, 0x1

    .line 1151
    .local v1, "isCoverOpen":Z
    if-eqz v2, :cond_0

    .line 1153
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->isCoverOpen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1158
    :cond_0
    :goto_0
    return v1

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AirButtonImpl"

    const-string/jumbo v4, "windowManager.isCoverOpen() failed :"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1242
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    return v0
.end method

.method public isHoverPointerEnabled()Z
    .locals 1

    .prologue
    .line 1396
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    return v0
.end method

.method public isHoverPointerShowing()Z
    .locals 1

    .prologue
    .line 1388
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    return v0
.end method

.method public isMultiSelectionEnabled()Z
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->multipleSelection:Z

    return v0
.end method

.method public isPenWindowMode()Z
    .locals 1

    .prologue
    .line 1197
    const/4 v0, 0x0

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1384
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    return v0
.end method

.method public isSpenDetachSettingEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1140
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 1144
    :cond_0
    :goto_0
    return v1

    .line 1143
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_detachment_option"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1144
    .local v0, "penDetachOption":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public linkWithParentView()V
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setAirButton(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    .line 1445
    :cond_0
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 699
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v0, v3, :cond_0

    .line 700
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getEmptyText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 725
    :goto_0
    return v2

    .line 705
    :cond_0
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v3, :cond_2

    .line 706
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onHoverForGA(Landroid/view/MotionEvent;)Z

    .line 712
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 717
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 708
    :cond_2
    sget v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    sget v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 709
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onHover(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 714
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverEnter(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 720
    :pswitch_3
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsToastShown:Z

    .line 721
    invoke-virtual {p0, p2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverExit(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 712
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onHoverButtonSecondary(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 806
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    if-eqz v0, :cond_0

    .line 807
    const-string v0, "AirButtonImpl"

    const-string/jumbo v1, "onHoverButtonSecondary mIsAirButtonAttached is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :goto_0
    return-void

    .line 810
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->show(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onHoverEnter(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 739
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHoverEnter(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 740
    iput-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverEnter:Z

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverEnter:Z

    .line 746
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverEnterTime:J

    .line 751
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 752
    sget v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    if-ne v1, v4, :cond_2

    .line 753
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->showHoverPointer()V

    goto :goto_0

    .line 754
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isAirButtonSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    const/16 v1, 0xa

    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AirButtonImpl"

    const-string v2, "Failed to change pen point to HOVERING_SPENICON_MORE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onHoverExit(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x2

    .line 784
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHoverExit(Landroid/view/View;)V

    .line 787
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 803
    :goto_0
    return-void

    .line 790
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 791
    sget v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    if-ne v1, v3, :cond_3

    .line 792
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hideHoverPointer()V

    .line 802
    :cond_2
    :goto_1
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverEnterTime:J

    goto :goto_0

    .line 793
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isAirButtonSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 795
    const/4 v1, 0x1

    const/4 v2, -0x1

    :try_start_0
    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AirButtonImpl"

    const-string v2, "Failed to change pen Pointer to HOVERING_SPENICON_DEFAULT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onHoverMove(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 765
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-nez v2, :cond_2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 769
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->showHoverPointer()V

    .line 771
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 773
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->setAnimationViewPosition(FF)V

    .line 775
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 776
    .local v0, "currentTime":J
    sget v2, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-ne v2, v5, :cond_0

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v2, v5, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverEnterTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverEnterTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 777
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverButtonSecondary(Landroid/view/MotionEvent;)V

    .line 779
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverEnterTime:J

    goto :goto_0
.end method

.method public onTouchDownForGA(I)V
    .locals 1
    .param p1, "buttonState"    # I

    .prologue
    .line 730
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onTouchDownForGA(I)V

    .line 731
    return-void
.end method

.method public onTouchUpForGA(I)V
    .locals 1
    .param p1, "buttonState"    # I

    .prologue
    .line 735
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onTouchUpForGA(I)V

    .line 736
    return-void
.end method

.method public setAdapter(Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 1423
    if-nez p1, :cond_1

    .line 1424
    const-string v0, "AirButtonImpl"

    const-string/jumbo v1, "set adapter to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :cond_0
    :goto_0
    return-void

    .line 1428
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1429
    const-string v0, "AirButtonImpl"

    const-string v1, "adapter count is 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAttributes(Lcom/samsung/android/airbutton/Attributes;)V
    .locals 6
    .param p1, "attribute"    # Lcom/samsung/android/airbutton/Attributes;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x3

    .line 1247
    if-nez p1, :cond_0

    .line 1248
    new-instance p1, Lcom/samsung/android/airbutton/Attributes;

    .end local p1    # "attribute":Lcom/samsung/android/airbutton/Attributes;
    invoke-direct {p1}, Lcom/samsung/android/airbutton/Attributes;-><init>()V

    .line 1250
    .restart local p1    # "attribute":Lcom/samsung/android/airbutton/Attributes;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v0, :cond_2

    .line 1251
    invoke-virtual {p1}, Lcom/samsung/android/airbutton/Attributes;->clone()Lcom/samsung/android/airbutton/Attributes;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 1255
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    .line 1256
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    .line 1257
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    .line 1258
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    .line 1259
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewY:I

    .line 1260
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewWidth:I

    .line 1261
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewHeight:I

    .line 1262
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->density:F

    .line 1263
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    .line 1264
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    .line 1266
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v5, :cond_5

    .line 1267
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    if-ne v0, v5, :cond_3

    .line 1268
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 1269
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    .line 1288
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/Attributes;->calculatePixelValue()V

    .line 1289
    return-void

    .line 1253
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/Attributes;->copyFrom(Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0

    .line 1270
    :cond_3
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    if-ne v0, v4, :cond_4

    .line 1271
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 1272
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v3, v0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    goto :goto_1

    .line 1273
    :cond_4
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    if-ne v0, v2, :cond_1

    .line 1274
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 1275
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v3, v0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    goto :goto_1

    .line 1277
    :cond_5
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v4, :cond_6

    .line 1278
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    .line 1280
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    if-ne v0, v2, :cond_1

    .line 1281
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 1282
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    goto :goto_1

    .line 1284
    :cond_6
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v2, :cond_1

    .line 1285
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v1, 0x5

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto :goto_1
.end method

.method public setBounceEffectEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-boolean p1, v0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    .line 1377
    return-void
.end method

.method public setDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p1, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    .line 1347
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1233
    iput-boolean p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    .line 1235
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->enable()V

    .line 1239
    :goto_0
    return-void

    .line 1238
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->disable()V

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p1, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    .line 1338
    return-void
.end method

.method public setHoverPointerEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1392
    iput-boolean p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    .line 1393
    return-void
.end method

.method public setMultiSelectionEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-boolean p1, v0, Lcom/samsung/android/airbutton/Attributes;->multipleSelection:Z

    .line 1361
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .prologue
    .line 1332
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .line 1333
    return-void
.end method

.method public setOnStateChangedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .line 1329
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1400
    if-nez p1, :cond_0

    .line 1418
    :goto_0
    return-void

    .line 1403
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    if-eqz v0, :cond_1

    .line 1404
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    .line 1406
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-eqz v0, :cond_2

    .line 1407
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hideHoverPointer()V

    .line 1409
    :cond_2
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 1410
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEditTextParentView:Z

    .line 1412
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEditTextParentView:Z

    if-eqz v0, :cond_4

    .line 1413
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setHoverPointerEnabled(Z)V

    .line 1415
    :cond_4
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    .line 1416
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    .line 1417
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->linkWithParentView()V

    goto :goto_0
.end method

.method public setPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p1, v0, Lcom/samsung/android/airbutton/Attributes;->x:I

    .line 1356
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p2, v0, Lcom/samsung/android/airbutton/Attributes;->y:I

    .line 1357
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-boolean p1, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    .line 1369
    return-void
.end method

.method public show()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 839
    const/4 v1, -0x1

    .line 841
    .local v1, "isKidsMode":I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kids_home_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 846
    :goto_0
    if-ne v1, v6, :cond_0

    .line 847
    const-string v3, "AirButtonImpl"

    const-string v4, "Kids mode is running"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :goto_1
    return-void

    .line 842
    :catch_0
    move-exception v0

    .line 843
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0

    .line 851
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v3, "sys.hmt.connected"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 852
    const-string v3, "AirButtonImpl"

    const-string v4, "HMT is connected"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 856
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "car_mode_on"

    const/4 v5, -0x3

    invoke-static {v3, v4, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 857
    const-string v3, "AirButtonImpl"

    const-string v4, "car mode is running"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 862
    :cond_2
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v2

    .line 863
    .local v2, "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 864
    const-string v3, "AirButtonImpl"

    const-string v4, "Knox Customization: Sealed Mode is active"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 869
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isVzwSetupRunning()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 870
    const-string v3, "AirButtonImpl"

    const-string v4, "Verizon Setup Wizard is Running Don\'t show the SPen events"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 874
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/airbutton/AirButtonProperities;->isUspFeatureEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 875
    const-string v3, "AirButtonImpl"

    const-string v4, "Version is low"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 891
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isAirButtonSettingEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isSpenDetachSettingEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    .line 892
    :cond_6
    const-string v3, "AirButtonImpl"

    const-string v4, "AirButtonSettingEnabled is false"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 896
    :cond_7
    iget-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isCoverViewOpened()Z

    move-result v3

    if-nez v3, :cond_8

    .line 897
    const-string v3, "AirButtonImpl"

    const-string v4, "CoverView is closed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 901
    :cond_8
    iget-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    if-eqz v3, :cond_9

    .line 902
    const-string v3, "AirButtonImpl"

    const-string v4, "Widget already dismissed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 906
    :cond_9
    iget-boolean v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    if-eqz v3, :cond_a

    .line 907
    const-string v3, "AirButtonImpl"

    const-string v4, "Widget already attached"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 911
    :cond_a
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v3, :cond_b

    .line 912
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onShow(Landroid/view/View;)V

    .line 914
    :cond_b
    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v3, v8, :cond_c

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v3

    if-gtz v3, :cond_c

    .line 915
    const-string v3, "AirButtonImpl"

    const-string/jumbo v4, "skip showing AirButton 1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->showEmptyText()V

    goto/16 :goto_1

    .line 920
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initAirButtonViewLayoutParams()V

    .line 922
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initDataType()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 929
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    if-nez v3, :cond_e

    .line 930
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/samsung/android/airbutton/AirButtonImpl;->createAndInitAirButtonView(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 931
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v3, :cond_d

    .line 932
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHide(Landroid/view/View;)V

    .line 934
    :cond_d
    const-string v3, "AirButtonImpl"

    const-string/jumbo v4, "skip showing AirButton 2"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 923
    :catch_1
    move-exception v0

    .line 924
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "AirButtonImpl"

    const-string v4, "AirButtonItem is data type coming empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 939
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e
    invoke-direct {p0, v6}, Lcom/samsung/android/airbutton/AirButtonImpl;->callStateListener(I)V

    .line 942
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_2

    .line 949
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hideHoverPointer()V

    .line 950
    iput-boolean v6, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    .line 951
    iput-boolean v7, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    .line 952
    invoke-direct {p0, v6}, Lcom/samsung/android/airbutton/AirButtonImpl;->broadcastAirButtonShowState(Z)V

    .line 953
    sget-boolean v3, Lcom/samsung/android/airbutton/AirButtonImpl;->mLoggingEnabled:Z

    if-eqz v3, :cond_f

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v3, v8, :cond_f

    .line 954
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->sendLogAirButtonLanch()V

    .line 955
    :cond_f
    const-string v3, "AirButtonImpl"

    const-string v4, "added"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 943
    :catch_2
    move-exception v0

    .line 944
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v3, "AirButtonImpl"

    const-string v4, "Your parent view token is wrong or removed. Please check it"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public show(FF)V
    .locals 2
    .param p1, "hoverX"    # F
    .param p2, "hoverY"    # F

    .prologue
    const v1, 0x461c4000    # 10000.0f

    .line 963
    iput p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointX:F

    .line 964
    iput p2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointY:F

    .line 966
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-nez v0, :cond_0

    .line 967
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    .line 969
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->show()V

    .line 970
    return-void
.end method

.method public show(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 959
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->show(FF)V

    .line 960
    return-void
.end method

.method public showHoverPointer()V
    .locals 3

    .prologue
    .line 1054
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    .line 1055
    .local v0, "knoxCustomManager":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;->getSealedState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1056
    const-string v1, "AirButtonImpl"

    const-string v2, "Knox Customization: Sealed Mode is active"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonProperities;->isUspFeatureEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1062
    const-string v1, "AirButtonImpl"

    const-string v2, "Version is low"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1066
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isAirButtonSettingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1069
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isPenWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1072
    sget v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mUspLevel:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1075
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createAndAttachHoverAnimationView()V

    goto :goto_0
.end method

.method public unlinkWithParentView()V
    .locals 2

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAirButton(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    .line 1450
    :cond_0
    return-void
.end method
