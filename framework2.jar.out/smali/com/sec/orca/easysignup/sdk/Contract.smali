.class public Lcom/sec/orca/easysignup/sdk/Contract;
.super Ljava/lang/Object;
.source "Contract.java"


# static fields
.field public static final AUTH_CONTENT_URI:Landroid/net/Uri;

.field public static final BASE_CONTENT_URI:Landroid/net/Uri;

.field public static final BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

.field public static final CONTENT_AUTHORITY:Ljava/lang/String; = "com.sec.orca.easysignup"

.field public static final CONTENT_AUTHORITY_PUBLIC:Ljava/lang/String; = "com.sec.orca.easysignup.public"

.field public static final GLD_CONTENT_URI:Landroid/net/Uri;

.field public static final SERVICE_CONTENT_URI:Landroid/net/Uri;

.field public static final SERVICE_ID_CONTACT:I = 0x0

.field public static final SERVICE_ID_ESU:I = 0x4

.field public static final SERVICE_ID_FREE_MESSAGE:I = 0x1

.field public static final SERVICE_ID_RSHARE:I = 0x2

.field public static final SERVICE_ID_SHOP:I = 0x3

.field public static final SERVICE_OFF:I = 0x0

.field public static final SERVICE_ON:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    const-string v0, "content://com.sec.orca.easysignup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/orca/easysignup/sdk/Contract;->BASE_CONTENT_URI:Landroid/net/Uri;

    .line 11
    const-string v0, "content://com.sec.orca.easysignup.public"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/orca/easysignup/sdk/Contract;->BASE_CONTENT_URI_PUBLIC:Landroid/net/Uri;

    .line 13
    sget-object v0, Lcom/sec/orca/easysignup/sdk/Contract;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "auth"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/orca/easysignup/sdk/Contract;->AUTH_CONTENT_URI:Landroid/net/Uri;

    .line 14
    sget-object v0, Lcom/sec/orca/easysignup/sdk/Contract;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gld"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/orca/easysignup/sdk/Contract;->GLD_CONTENT_URI:Landroid/net/Uri;

    .line 15
    sget-object v0, Lcom/sec/orca/easysignup/sdk/Contract;->BASE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "service"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/orca/easysignup/sdk/Contract;->SERVICE_CONTENT_URI:Landroid/net/Uri;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method