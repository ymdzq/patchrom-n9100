.class public Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
.super Ljava/lang/Object;
.source "HeaderWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;,
        Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;,
        Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;,
        Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;,
        Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFY_STOP_DRAG_MODE:Ljava/lang/String; = "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

.field private static final DISMISS_MENU_TIMER_MESSAGE:I = 0x64

.field private static final DISMISS_MENU_TIMER_TIME:I = 0x3e8

.field public static final DRAGNDROP_MODE:I = 0x2

.field public static final FOCUS_MODE:I = 0x1

.field public static final NORMAL_MODE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HeaderWindow"


# instance fields
.field private mAttached:Z

.field private mBoundsRect:Landroid/graphics/Rect;

.field private mConsumeTouchEvent:Z

.field private mContext:Landroid/content/Context;

.field private mDecor:Landroid/widget/FrameLayout;

.field private mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;

.field private mDockingMargin:I

.field private mDockingX:I

.field private mDockingY:I

.field private mFirstX:I

.field private mFirstY:I

.field private mFocused:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

.field private mHeaderButtonSoundId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIsDockingCanceled:Z

.field private mItemClickListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;

.field private mIvt:[B

.field private mLastX:I

.field private mLastY:I

.field private mLayoutParam:Landroid/view/WindowManager$LayoutParams;

.field private mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

.field private mMoveListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;

.field private mMoving:Z

.field private mShowing:Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStatusBarHeight:I

.field mTimerHandler:Landroid/os/Handler;

.field private mToken:Landroid/os/IBinder;

.field private mTouchDownListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowFacade;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentToken"    # Landroid/os/IBinder;
    .param p3, "facade"    # Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mConsumeTouchEvent:Z

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mHeaderButtonSoundId:I

    .line 102
    iput v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mStatusBarHeight:I

    .line 104
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIsDockingCanceled:Z

    .line 106
    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIvt:[B

    .line 113
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$1;-><init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTimerHandler:Landroid/os/Handler;

    .line 125
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mToken:Landroid/os/IBinder;

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 130
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$HeaderGestureDetectorListener;-><init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 132
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/Docking;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {v0, p1, p3}, Lcom/android/internal/policy/impl/multiwindow/Docking;-><init>(Landroid/app/Activity;Lcom/samsung/android/multiwindow/MultiWindowFacade;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mVibrator:Landroid/os/SystemVibrator;

    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$2;-><init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/Docking;->setOnDockingListener(Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050161

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingMargin:I

    .line 161
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v5, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mSoundPool:Landroid/media/SoundPool;

    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    const v2, 0x1100004

    invoke-virtual {v0, v1, v2, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mHeaderButtonSoundId:I

    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mStatusBarHeight:I

    .line 164
    return-void

    .line 106
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x12t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x5et
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIvt:[B

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIsDockingCanceled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIsDockingCanceled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingX:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingX:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingY:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingY:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->isInputMethodShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mConsumeTouchEvent:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mConsumeTouchEvent:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/Docking;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDocking:Lcom/android/internal/policy/impl/multiwindow/Docking;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTouchDownListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/os/SystemVibrator;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMoving:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMoving:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDockingMargin:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->dismissGuide()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMoveListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mItemClickListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;)Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1, "x1"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->validateGuideView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Lcom/samsung/android/multiwindow/ui/GuideView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastX:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastX:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFirstX:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFirstX:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastY:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLastY:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFirstY:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFirstY:I

    return p1
.end method

.method private dismissGuide()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const v1, 0x108068a

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideResource(I)V

    .line 376
    :cond_0
    return-void
.end method

.method private forceHideInputMethod()Z
    .locals 2

    .prologue
    .line 379
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 380
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v1

    .line 383
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 395
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 397
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "MultiWindow Controller"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 398
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 399
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 400
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 401
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 402
    const/16 v1, 0x3ee

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 403
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 404
    const/16 v1, 0x208

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 406
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 408
    return-object v0
.end method

.method private isInputMethodShowing()Z
    .locals 2

    .prologue
    .line 387
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 388
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    .line 391
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshBackground()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    const v1, 0x108065a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 195
    return-void
.end method

.method private startDismissMenuTimer()V
    .locals 4

    .prologue
    const/16 v2, 0x64

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 525
    return-void
.end method

.method private validateGuideView()V
    .locals 6

    .prologue
    .line 441
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 443
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 444
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    move-result v2

    .line 445
    .local v2, "windowDestroyed":Z
    if-eqz v2, :cond_1

    .line 446
    const-string v3, "HeaderWindow"

    const-string v4, "showGuide: attached PhoneWindow is already destroyed."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "window":Landroid/view/Window;
    .end local v2    # "windowDestroyed":Z
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-nez v3, :cond_0

    .line 451
    new-instance v3, Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mToken:Landroid/os/IBinder;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    .line 453
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/high16 v4, 0x600000

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->setPrivateFlags(I)V

    .line 454
    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const v4, 0x108068a

    invoke-virtual {v3, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancelDismissMenuTimer()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 419
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mAttached:Z

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 421
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mShowing:Z

    .line 422
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mAttached:Z

    .line 424
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->dismissMenu(Z)V

    .line 425
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->dismissGuide()V

    .line 426
    return-void
.end method

.method public dismissMenu(Z)V
    .locals 13
    .param p1, "needAnim"    # Z

    .prologue
    const-wide/16 v11, 0x190

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 490
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    if-eqz v2, :cond_0

    .line 491
    if-eqz p1, :cond_1

    .line 492
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 493
    .local v10, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 494
    .local v9, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3dcccccd    # 0.1f

    move v3, v1

    move v4, v1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 496
    .local v0, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 497
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 498
    invoke-virtual {v9, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 500
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 501
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 503
    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$5;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$5;-><init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V

    invoke-virtual {v10, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 513
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->mContents:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->access$2700(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 519
    .end local v0    # "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    .end local v9    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v10    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->dismiss()V

    .line 516
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    goto :goto_0
.end method

.method public getHeaderDrawableHeight()I
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108065a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 176
    .local v0, "drw":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 179
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mShowing:Z

    if-eqz v0, :cond_0

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mShowing:Z

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 416
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->dismiss()V

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mSoundPool:Landroid/media/SoundPool;

    .line 203
    :cond_0
    return-void
.end method

.method public setFocused(Z)V
    .locals 1
    .param p1, "focused"    # Z

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFocused:Z

    if-ne v0, p1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mFocused:Z

    .line 171
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->refreshBackground()V

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mItemClickListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnItemClickListener;

    .line 433
    return-void
.end method

.method public setOnMoveListener(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMoveListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnMoveListener;

    .line 437
    return-void
.end method

.method public setOnTouchDownListener(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mTouchDownListener:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$OnTouchDownListener;

    .line 430
    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "parentRect"    # Landroid/graphics/Rect;

    .prologue
    const/16 v7, 0x31

    const/4 v4, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 206
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 207
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mAttached:Z

    if-nez v2, :cond_2

    .line 208
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mAttached:Z

    .line 209
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    .line 211
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    .line 212
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    .line 213
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIconView:Landroid/widget/ImageView;

    .line 214
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIconView:Landroid/widget/ImageView;

    const v3, 0x108067d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 216
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    .line 217
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->resetResolvedLayoutDirection()V

    .line 218
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutDirection(I)V

    .line 219
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 220
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 221
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->refreshBackground()V

    .line 224
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$3;-><init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 351
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 352
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 353
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 354
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 355
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mShowing:Z

    if-nez v2, :cond_1

    .line 365
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mShowing:Z

    .line 366
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 368
    :cond_1
    return-void

    .line 357
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 358
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 359
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iput v7, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 360
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 361
    iget-object v2, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public showMenu(Z)V
    .locals 8
    .param p1, "showOnce"    # Z

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 459
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mToken:Landroid/os/IBinder;

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    .line 461
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    new-instance v1, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$4;-><init>(Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->setTopMargin(I)V

    .line 472
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->setLeftMargin(I)V

    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->setParentRectWidth(I)V

    .line 475
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x105015e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 479
    .local v7, "x":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mMenuView:Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mLayoutParam:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow$FloatingMenuView;->show(II)V

    .line 481
    if-eqz p1, :cond_1

    .line 482
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->startDismissMenuTimer()V

    .line 484
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mHeaderButtonSoundId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mHeaderButtonSoundId:I

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 487
    :cond_2
    return-void
.end method

.method public startDragMode(Z)V
    .locals 2
    .param p1, "start"    # Z

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->dismissMenu(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mDecor:Landroid/widget/FrameLayout;

    const v1, 0x108065a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/multiwindow/HeaderWindow;->refreshBackground()V

    goto :goto_0
.end method
