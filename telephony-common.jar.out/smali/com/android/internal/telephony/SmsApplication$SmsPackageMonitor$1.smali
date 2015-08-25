.class Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;
.super Ljava/lang/Thread;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->onPackageChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->this$0:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    iput-object p2, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->val$packageManager:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->val$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 557
    const-string v0, "SmsApplication"

    const-string v1, "onPackageChanged: run"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->val$packageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->val$componentName:Landroid/content/ComponentName;

    # invokes: Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->access$000(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    .line 559
    return-void
.end method
