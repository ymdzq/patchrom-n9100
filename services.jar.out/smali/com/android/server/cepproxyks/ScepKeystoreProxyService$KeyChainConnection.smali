.class public final Lcom/android/server/cepproxyks/ScepKeystoreProxyService$KeyChainConnection;
.super Ljava/lang/Object;
.source "ScepKeystoreProxyService.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cepproxyks/ScepKeystoreProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyChainConnection"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final service:Landroid/security/IKeyChainService;

.field private final serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceConnection"    # Landroid/content/ServiceConnection;
    .param p3, "service"    # Landroid/security/IKeyChainService;

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p1, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$KeyChainConnection;->context:Landroid/content/Context;

    .line 455
    iput-object p2, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$KeyChainConnection;->serviceConnection:Landroid/content/ServiceConnection;

    .line 456
    iput-object p3, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$KeyChainConnection;->service:Landroid/security/IKeyChainService;

    .line 457
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Lcom/android/server/cepproxyks/ScepKeystoreProxyService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/content/ServiceConnection;
    .param p3, "x2"    # Landroid/security/IKeyChainService;
    .param p4, "x3"    # Lcom/android/server/cepproxyks/ScepKeystoreProxyService$1;

    .prologue
    .line 448
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$KeyChainConnection;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$KeyChainConnection;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 461
    return-void
.end method

.method public getService()Landroid/security/IKeyChainService;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$KeyChainConnection;->service:Landroid/security/IKeyChainService;

    return-object v0
.end method
