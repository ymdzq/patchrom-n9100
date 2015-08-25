.class public Landroid/os/dar/column/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KnoxDBKeyStore.Parser"

.field public static final XML_TAG_COLUMN:Ljava/lang/String; = "column"

.field public static final XML_TAG_NAME:Ljava/lang/String; = "name"

.field public static final XML_TAG_TYPE:Ljava/lang/String; = "type"

.field public static final XML_TAG_URI:Ljava/lang/String; = "uri"

.field public static final XML_VALUE_TYPE_SENSITIVE:Ljava/lang/String; = "sensitive"


# instance fields
.field factory:Lorg/xmlpull/v1/XmlPullParserFactory;

.field is:Ljava/io/InputStream;

.field xpp:Lorg/xmlpull/v1/XmlPullParser;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "argIs"    # Ljava/io/InputStream;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Landroid/os/dar/column/Parser;->is:Ljava/io/InputStream;

    .line 21
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    iput-object v1, p0, Landroid/os/dar/column/Parser;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 22
    iget-object v1, p0, Landroid/os/dar/column/Parser;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 23
    iget-object v1, p0, Landroid/os/dar/column/Parser;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Landroid/os/dar/column/Parser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    .line 24
    iget-object v1, p0, Landroid/os/dar/column/Parser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Landroid/os/dar/column/Parser;->is:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 27
    const-string v1, "KnoxDBKeyStore.Parser"

    const-string v2, "can\'t create XmlPullParser"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public scan()Landroid/os/dar/column/Column;
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v14, 0x1

    .line 37
    const/4 v10, 0x0

    .line 38
    .local v10, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 39
    .local v6, "name":Ljava/lang/String;
    const/4 v0, 0x0

    .line 40
    .local v0, "attr":I
    const/4 v2, 0x0

    .line 41
    .local v2, "columnStarted":Z
    const/4 v3, 0x0

    .local v3, "currTag":Ljava/lang/String;
    move-object v7, v6

    .line 43
    .end local v6    # "name":Ljava/lang/String;
    .local v7, "name":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    iget-object v12, p0, Landroid/os/dar/column/Parser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "event":I
    if-eq v5, v14, :cond_2

    .line 44
    if-nez v5, :cond_1

    .line 45
    const-string v12, "KnoxDBKeyStore.Parser"

    const-string v13, "Start Document"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v5    # "event":I
    :catch_0
    move-exception v4

    move-object v6, v7

    .line 83
    .end local v7    # "name":Ljava/lang/String;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v6    # "name":Ljava/lang/String;
    :goto_1
    const-string v12, "KnoxDBKeyStore.Parser"

    const-string v13, "Failed to parse URI"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v11

    .line 87
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v1

    .line 46
    .end local v6    # "name":Ljava/lang/String;
    .restart local v5    # "event":I
    .restart local v7    # "name":Ljava/lang/String;
    :cond_1
    if-ne v5, v14, :cond_3

    .line 47
    :try_start_1
    const-string v12, "KnoxDBKeyStore.Parser"

    const-string v13, "End Document"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v6, v7

    .end local v7    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    move-object v1, v11

    .line 87
    goto :goto_2

    .line 49
    .end local v6    # "name":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x2

    if-ne v5, v12, :cond_4

    .line 50
    iget-object v12, p0, Landroid/os/dar/column/Parser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 51
    const-string v12, "column"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 52
    const/4 v2, 0x1

    goto :goto_0

    .line 53
    :cond_4
    const/4 v12, 0x3

    if-ne v5, v12, :cond_6

    .line 54
    iget-object v12, p0, Landroid/os/dar/column/Parser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, "tag":Ljava/lang/String;
    if-eqz v8, :cond_5

    const-string v12, "column"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 57
    new-instance v1, Landroid/os/dar/column/Column;

    invoke-direct {v1, v10, v7, v0}, Landroid/os/dar/column/Column;-><init>(Landroid/net/Uri;Ljava/lang/String;I)V

    .line 58
    .local v1, "c":Landroid/os/dar/column/Column;
    const-string v12, "KnoxDBKeyStore.Parser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Column scanned > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Landroid/os/dar/column/Column;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v7

    .line 59
    .end local v7    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    goto :goto_2

    .line 61
    .end local v1    # "c":Landroid/os/dar/column/Column;
    .end local v6    # "name":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    .line 62
    goto :goto_0

    .end local v8    # "tag":Ljava/lang/String;
    :cond_6
    const/4 v12, 0x4

    if-ne v5, v12, :cond_0

    .line 63
    iget-object v12, p0, Landroid/os/dar/column/Parser;->xpp:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, "text":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 65
    if-nez v2, :cond_7

    .line 66
    const-string v12, "KnoxDBKeyStore.Parser"

    const-string v13, "Column tag not started"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 70
    :cond_7
    const-string/jumbo v12, "uri"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 71
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 73
    :cond_8
    const-string/jumbo v12, "name"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 74
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    .end local v7    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    :goto_3
    :try_start_2
    const-string/jumbo v12, "type"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 77
    const-string/jumbo v12, "sensitive"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 78
    sget v12, Landroid/os/dar/column/Column;->ATTR_SENSITIVE:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    or-int/2addr v0, v12

    :cond_9
    move-object v7, v6

    .line 80
    .end local v6    # "name":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    goto/16 :goto_0

    .line 82
    .end local v7    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto/16 :goto_1

    .end local v6    # "name":Ljava/lang/String;
    .restart local v7    # "name":Ljava/lang/String;
    :cond_a
    move-object v6, v7

    .end local v7    # "name":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    goto :goto_3
.end method
