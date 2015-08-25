.class Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;
.super Ljava/lang/Object;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestConfigDocument"
.end annotation


# instance fields
.field XMLDoc:Lorg/w3c/dom/Document;

.field private enrolledVendor:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v0, 0x0

    .line 3924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3911
    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 3916
    iput-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->enrolledVendor:Lorg/w3c/dom/Node;

    .line 3925
    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 3926
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->update()V

    .line 3927
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    .prologue
    .line 3910
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    .prologue
    .line 3910
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->getEnrolledSSOVendor()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    .prologue
    .line 3910
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->update()V

    return-void
.end method

.method private getEnrolledSSOPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3967
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->enrolledVendor:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    .line 3968
    const/4 v0, 0x0

    .line 3969
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->enrolledVendor:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string/jumbo v1, "servicepackagename"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getEnrolledSSOVendor()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 3963
    iget-object v0, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->enrolledVendor:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method private update()V
    .locals 3

    .prologue
    .line 3934
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->updateEnrolledSSOVendor()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3942
    :cond_0
    :goto_0
    return-void

    .line 3935
    :catch_0
    move-exception v0

    .line 3936
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3937
    const-string v1, "GenericSSOService"

    const-string v2, "In update: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3938
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3939
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Landroid/app/enterprise/sso/GenericSSOConstants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 3940
    const-string v1, "GenericSSOService"

    const-string v2, "In update: Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateEnrolledSSOVendor()V
    .locals 6

    .prologue
    .line 3945
    iget-object v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 3946
    .local v1, "root":Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->enrolledVendor:Lorg/w3c/dom/Node;

    .line 3947
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 3948
    .local v3, "solutionNodes":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-nez v4, :cond_1

    .line 3960
    :cond_0
    :goto_0
    return-void

    .line 3952
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 3953
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 3954
    .local v2, "solution":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ssoprovider"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3956
    iput-object v2, p0, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->enrolledVendor:Lorg/w3c/dom/Node;

    goto :goto_0

    .line 3952
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
