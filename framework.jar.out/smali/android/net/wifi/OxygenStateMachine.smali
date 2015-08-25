.class public Landroid/net/wifi/OxygenStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "OxygenStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;,
        Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;,
        Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;,
        Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;,
        Landroid/net/wifi/OxygenStateMachine$OlsrdStartingState;,
        Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;,
        Landroid/net/wifi/OxygenStateMachine$OlsrdStoppingState;,
        Landroid/net/wifi/OxygenStateMachine$DefaultState;
    }
.end annotation


# static fields
.field static final BASE:I = 0x2015e

.field static final CMD_DISCONNECT_OLSRD_SUCCESS:I = 0x20165

.field static final CMD_OLSRD_CHANGE_ALARM_INTERVAL:I = 0x20175

.field static final CMD_OLSRD_HUNG:I = 0x20174

.field static final CMD_OLSRD_INITIALIZED:I = 0x20172

.field static final CMD_OLSRD_SOCKET_FAIL:I = 0x20164

.field static final CMD_OLSRD_TERMINATED:I = 0x20173

.field static final CMD_PING:I = 0x20166

.field static final CMD_RESTART_OLSRD:I = 0x20163

.field static final CMD_SET_CHANNEL:I = 0x20167

.field static final CMD_START_OLSRD:I = 0x2015e

.field static final CMD_STOP_OLSRD:I = 0x2015f

.field private static final DBG:Z

.field public static final NOTIFY_OLSRD_FAIL:I = 0x20160

.field public static final NOTIFY_OLSRD_STARTED:I = 0x20161

.field public static final NOTIFY_OLSRD_STOPPED:I = 0x20162

.field static final OLSRD_CMD_PORT:I = 0xed1b

.field static final OLSRD_RECV_PORT:I = 0xed19

.field private static final OLSRD_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "OxygenStateMachine"


# instance fields
.field private final ALARM_ONE_SHOT:Ljava/lang/String;

.field private final ALARM_PERIODIC:Ljava/lang/String;

.field private final WAKE_LOCK:Ljava/lang/String;

.field private mAM:Landroid/app/AlarmManager;

.field private mCommander:Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;

.field private mContext:Landroid/content/Context;

.field private mController:Landroid/net/wifi/WifiStateMachine;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mInterfaceName:Ljava/lang/String;

.field private mOldAlarmInterval:I

.field private mOlsrdMonitor:Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;

.field private mOlsrdStartedState:Lcom/android/internal/util/State;

.field private mOlsrdStartingState:Lcom/android/internal/util/State;

.field private mOlsrdStoppedState:Lcom/android/internal/util/State;

.field private mOlsrdStoppingState:Lcom/android/internal/util/State;

.field private mPendingIntentOneShot:Landroid/app/PendingIntent;

.field private mPendingIntentPeriodic:Landroid/app/PendingIntent;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiNative:Landroid/net/wifi/WifiNative;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/net/wifi/OxygenStateMachine;->DBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Landroid/net/wifi/WifiStateMachine;
    .param p3, "wlanInterface"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    const-string v1, "OxygenStateMachine"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v1, Landroid/net/wifi/OxygenStateMachine$DefaultState;

    invoke-direct {v1, p0}, Landroid/net/wifi/OxygenStateMachine$DefaultState;-><init>(Landroid/net/wifi/OxygenStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 72
    new-instance v1, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppingState;

    invoke-direct {v1, p0}, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppingState;-><init>(Landroid/net/wifi/OxygenStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mOlsrdStoppingState:Lcom/android/internal/util/State;

    .line 73
    new-instance v1, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;

    invoke-direct {v1, p0}, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;-><init>(Landroid/net/wifi/OxygenStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mOlsrdStoppedState:Lcom/android/internal/util/State;

    .line 74
    new-instance v1, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;

    invoke-direct {v1, p0}, Landroid/net/wifi/OxygenStateMachine$OlsrdStartedState;-><init>(Landroid/net/wifi/OxygenStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mOlsrdStartedState:Lcom/android/internal/util/State;

    .line 75
    new-instance v1, Landroid/net/wifi/OxygenStateMachine$OlsrdStartingState;

    invoke-direct {v1, p0}, Landroid/net/wifi/OxygenStateMachine$OlsrdStartingState;-><init>(Landroid/net/wifi/OxygenStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mOlsrdStartingState:Lcom/android/internal/util/State;

    .line 101
    const-string v1, "com.samsung.oxygen.alarm.oneshot"

    iput-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->ALARM_ONE_SHOT:Ljava/lang/String;

    .line 102
    const-string v1, "com.samsung.oxygen.alarm.periodic"

    iput-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->ALARM_PERIODIC:Ljava/lang/String;

    .line 103
    const-string v1, "com.samsung.oxygen.wake_lock"

    iput-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->WAKE_LOCK:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Landroid/net/wifi/OxygenStateMachine;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Landroid/net/wifi/OxygenStateMachine;->mController:Landroid/net/wifi/WifiStateMachine;

    .line 109
    iput-object p3, p0, Landroid/net/wifi/OxygenStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 110
    new-instance v1, Landroid/net/wifi/WifiNative;

    iget-object v2, p0, Landroid/net/wifi/OxygenStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 111
    new-instance v1, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;

    invoke-direct {v1, p0, p0}, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;-><init>(Landroid/net/wifi/OxygenStateMachine;Lcom/android/internal/util/StateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mOlsrdMonitor:Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;

    .line 112
    new-instance v1, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;

    invoke-direct {v1, p0}, Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;-><init>(Landroid/net/wifi/OxygenStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mCommander:Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;

    .line 114
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mAM:Landroid/app/AlarmManager;

    .line 115
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.oxygen.alarm.oneshot"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mPendingIntentOneShot:Landroid/app/PendingIntent;

    .line 116
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.oxygen.alarm.periodic"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mPendingIntentPeriodic:Landroid/app/PendingIntent;

    .line 118
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 119
    .local v0, "powerManager":Landroid/os/PowerManager;
    const-string v1, "com.samsung.oxygen.wake_lock"

    invoke-virtual {v0, v5, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 121
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/OxygenStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 122
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mOlsrdStoppingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/OxygenStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/OxygenStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 123
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mOlsrdStoppedState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/OxygenStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/OxygenStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 124
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mOlsrdStartingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/OxygenStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/OxygenStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 125
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mOlsrdStartedState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/OxygenStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/OxygenStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 127
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine;->mOlsrdStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/OxygenStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 128
    const/16 v1, 0x32

    invoke-virtual {p0, v1}, Landroid/net/wifi/OxygenStateMachine;->setLogRecSize(I)V

    .line 129
    invoke-virtual {p0, v4}, Landroid/net/wifi/OxygenStateMachine;->setLogOnlyTransitions(Z)V

    .line 131
    sget-boolean v1, Landroid/net/wifi/OxygenStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, v5}, Landroid/net/wifi/OxygenStateMachine;->setDbg(Z)V

    .line 132
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Landroid/net/wifi/OxygenStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/net/wifi/OxygenStateMachine;)Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine;->mOlsrdMonitor:Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/OxygenStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine;->mOlsrdStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/wifi/OxygenStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/wifi/OxygenStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/wifi/OxygenStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/net/wifi/OxygenStateMachine;->sendErrorBroadcast(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/wifi/OxygenStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/wifi/OxygenStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/wifi/OxygenStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine;->mOlsrdStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/net/wifi/OxygenStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/wifi/OxygenStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine;->mPendingIntentOneShot:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine;->mAM:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/net/wifi/OxygenStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine;->mPendingIntentPeriodic:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/net/wifi/OxygenStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/OxygenStateMachine;)Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine;->mCommander:Landroid/net/wifi/OxygenStateMachine$OlsrdCommander;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/wifi/OxygenStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/wifi/OxygenStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/wifi/OxygenStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/wifi/OxygenStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/wifi/OxygenStateMachine;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;

    .prologue
    .line 52
    iget v0, p0, Landroid/net/wifi/OxygenStateMachine;->mOldAlarmInterval:I

    return v0
.end method

.method static synthetic access$2202(Landroid/net/wifi/OxygenStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Landroid/net/wifi/OxygenStateMachine;->mOldAlarmInterval:I

    return p1
.end method

.method static synthetic access$2300(Landroid/net/wifi/OxygenStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/wifi/OxygenStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/wifi/OxygenStateMachine;)Landroid/net/wifi/WifiNative;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/OxygenStateMachine;)Landroid/net/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine;->mController:Landroid/net/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/wifi/OxygenStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine;->mOlsrdStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/wifi/OxygenStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/wifi/OxygenStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/wifi/OxygenStateMachine;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/wifi/OxygenStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/wifi/OxygenStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine;->mOlsrdStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/wifi/OxygenStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/wifi/OxygenStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method public static getChannelFromFrequency(I)I
    .locals 1
    .param p0, "freq"    # I

    .prologue
    .line 393
    const/16 v0, 0x1388

    if-le p0, v0, :cond_0

    .line 394
    add-int/lit16 v0, p0, -0x143c

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x24

    .line 396
    :goto_0
    return v0

    :cond_0
    add-int/lit16 v0, p0, -0x96c

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static makeOxygenStateMachine(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Landroid/net/wifi/OxygenStateMachine;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "controller"    # Landroid/net/wifi/WifiStateMachine;
    .param p2, "wlanInterface"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Landroid/net/wifi/OxygenStateMachine;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/wifi/OxygenStateMachine;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 138
    .local v0, "osm":Landroid/net/wifi/OxygenStateMachine;
    invoke-virtual {v0}, Landroid/net/wifi/OxygenStateMachine;->start()V

    .line 139
    return-object v0
.end method

.method private sendErrorBroadcast(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    .line 152
    iget-object v2, p0, Landroid/net/wifi/OxygenStateMachine;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 165
    :goto_0
    return-void

    .line 155
    :cond_0
    const-string v2, "OxygenStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendErrorBroadcast code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.ERROR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 158
    const-string v2, "errorCode"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/OxygenStateMachine;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "OxygenStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send broadcast before boot - action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public doQuit()V
    .locals 0

    .prologue
    .line 389
    invoke-virtual {p0}, Landroid/net/wifi/OxygenStateMachine;->quit()V

    .line 390
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 402
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOlsrdMonitor is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine;->mOlsrdMonitor:Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "running"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 405
    return-void

    .line 403
    :cond_0
    const-string v0, "stopped"

    goto :goto_0
.end method

.method public startOlsrd(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    const v0, 0x2015e

    invoke-virtual {p0, v0}, Landroid/net/wifi/OxygenStateMachine;->sendMessage(I)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    const v0, 0x2015f

    invoke-virtual {p0, v0}, Landroid/net/wifi/OxygenStateMachine;->sendMessage(I)V

    goto :goto_0
.end method
