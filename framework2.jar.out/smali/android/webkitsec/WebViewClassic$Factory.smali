.class Landroid/webkitsec/WebViewClassic$Factory;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/webkitsec/WebViewFactoryProvider$Statics;
.implements Landroid/webkitsec/WebViewFactoryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebView(Landroid/webkitsec/WebView;Landroid/webkitsec/WebView$PrivateAccess;)Landroid/webkitsec/WebViewProvider;
    .locals 1
    .param p1, "webView"    # Landroid/webkitsec/WebView;
    .param p2, "privateAccess"    # Landroid/webkitsec/WebView$PrivateAccess;

    .prologue
    .line 3269
    new-instance v0, Landroid/webkitsec/WebViewClassic;

    invoke-direct {v0, p1, p2}, Landroid/webkitsec/WebViewClassic;-><init>(Landroid/webkitsec/WebView;Landroid/webkitsec/WebView$PrivateAccess;)V

    return-object v0
.end method

.method public findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 3253
    invoke-static {p1}, Landroid/webkitsec/WebViewClassic;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCookieManager()Landroid/webkitsec/CookieManager;
    .locals 1

    .prologue
    .line 3279
    invoke-static {}, Landroid/webkitsec/CookieManagerClassic;->getInstance()Landroid/webkitsec/CookieManagerClassic;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3299
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/webkitsec/WebSettingsClassic;->getDefaultUserAgentForLocale(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeolocationPermissions()Landroid/webkitsec/GeolocationPermissions;
    .locals 1

    .prologue
    .line 3274
    invoke-static {}, Landroid/webkitsec/GeolocationPermissionsClassic;->getInstance()Landroid/webkitsec/GeolocationPermissionsClassic;

    move-result-object v0

    return-object v0
.end method

.method public getStatics()Landroid/webkitsec/WebViewFactoryProvider$Statics;
    .locals 0

    .prologue
    .line 3265
    return-object p0
.end method

.method public getWebIconDatabase()Landroid/webkitsec/WebIconDatabase;
    .locals 1

    .prologue
    .line 3284
    invoke-static {}, Landroid/webkitsec/WebIconDatabaseClassic;->getInstance()Landroid/webkitsec/WebIconDatabaseClassic;

    move-result-object v0

    return-object v0
.end method

.method public getWebStorage()Landroid/webkitsec/WebStorage;
    .locals 1

    .prologue
    .line 3289
    invoke-static {}, Landroid/webkitsec/WebStorageClassic;->getInstance()Landroid/webkitsec/WebStorageClassic;

    move-result-object v0

    return-object v0
.end method

.method public getWebViewDatabase(Landroid/content/Context;)Landroid/webkitsec/WebViewDatabase;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3294
    invoke-static {p1}, Landroid/webkitsec/WebViewDatabaseClassic;->getInstance(Landroid/content/Context;)Landroid/webkitsec/WebViewDatabaseClassic;

    move-result-object v0

    return-object v0
.end method

.method public setPlatformNotificationsEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 3257
    if-eqz p1, :cond_0

    .line 3258
    invoke-static {}, Landroid/webkitsec/WebViewClassic;->enablePlatformNotifications()V

    .line 3262
    :goto_0
    return-void

    .line 3260
    :cond_0
    invoke-static {}, Landroid/webkitsec/WebViewClassic;->disablePlatformNotifications()V

    goto :goto_0
.end method