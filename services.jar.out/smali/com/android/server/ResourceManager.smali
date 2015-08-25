.class public Lcom/android/server/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static BT_TYPE:I = 0x0

.field private static SDCARD_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BTSdcard"

.field private static WHITELIST_MAC_PERM:Ljava/lang/String;

.field private static WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

.field private static instance:Lcom/android/server/ResourceManager;

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mcontext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-string v0, "/data/security/whitelist"

    sput-object v0, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    .line 82
    const-string v0, "/data/security/whitelist/mac_permissions.xml"

    sput-object v0, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    .line 84
    const/4 v0, 0x1

    sput v0, Lcom/android/server/ResourceManager;->BT_TYPE:I

    .line 85
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/server/ResourceManager;->mcontext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method protected static declared-synchronized addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .locals 37
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "resourceType"    # I

    .prologue
    .line 980
    const-class v35, Lcom/android/server/ResourceManager;

    monitor-enter v35

    :try_start_0
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 981
    .local v25, "seinfo":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 982
    .local v6, "category":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 983
    .local v5, "allowcategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 984
    .local v3, "allowContainerCategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v34, v0

    and-int/lit8 v34, v34, 0x4

    const/16 v36, 0x4

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    const/16 v34, 0x1

    :goto_0
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    .line 985
    .local v16, "issdcardsbaapp":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v34, v0

    and-int/lit8 v34, v34, 0x8

    const/16 v36, 0x8

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_b

    const/16 v34, 0x1

    :goto_1
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    .line 986
    .local v15, "isbluetoothsbaapp":Ljava/lang/String;
    const/4 v14, 0x0

    .line 987
    .local v14, "isAddedMac":Z
    const/16 v17, 0x0

    .line 989
    .local v17, "macPermExists":Z
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 990
    .local v9, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v8, 0x0

    .line 992
    .local v8, "doc":Lorg/w3c/dom/Document;
    :try_start_1
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 993
    .local v7, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v34

    if-eqz v34, :cond_c

    .line 997
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v34

    if-nez v34, :cond_0

    .line 998
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 1000
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    .line 1001
    const/16 v17, 0x1

    .line 1013
    :goto_2
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Element;->normalize()V

    .line 1014
    const-string v34, "policy"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 1015
    .local v21, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    .line 1016
    .local v20, "policyElement":Lorg/w3c/dom/Element;
    const/16 v34, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v20, Lorg/w3c/dom/Element;

    .line 1017
    .restart local v20    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v34, "signer"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v27

    .line 1018
    .local v27, "signer":Lorg/w3c/dom/NodeList;
    const/16 v29, 0x0

    .line 1019
    .local v29, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v28, 0x0

    .line 1020
    .local v28, "signerElement":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 1021
    .local v4, "allowallElement":Lorg/w3c/dom/Element;
    const/16 v18, 0x0

    .line 1022
    .local v18, "newElement":Lorg/w3c/dom/Element;
    const/16 v26, 0x0

    .line 1023
    .local v26, "seinfoElement":Lorg/w3c/dom/Element;
    const/16 v31, 0x0

    .line 1024
    .local v31, "specialTag":Ljava/lang/String;
    const-string/jumbo v31, "service"

    .line 1025
    move-object/from16 v0, v31

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    .line 1026
    const-string v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string/jumbo v34, "seinfo"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    if-eqz v6, :cond_1

    .line 1029
    const-string v34, "category"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :cond_1
    if-eqz v5, :cond_2

    .line 1032
    const-string v34, "allowcategory"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    :cond_2
    if-eqz v3, :cond_3

    .line 1035
    const-string v34, "containerallowcategory"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    :cond_3
    if-eqz v16, :cond_4

    .line 1038
    const-string v34, "issdcardsbaapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_4
    if-eqz v15, :cond_5

    .line 1041
    const-string v34, "isbluetoothsbaapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :cond_5
    sget v34, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_6

    .line 1044
    const-string/jumbo v34, "sdcarduseridBL"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :cond_6
    sget v34, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    .line 1050
    const-string v34, "bluetoothuseridBL"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    :cond_7
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v24

    .line 1060
    .local v24, "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v34, "signer"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v28

    .line 1061
    const-string/jumbo v34, "seinfo"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v26

    .line 1062
    const-string v34, "allow-all"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 1063
    const-string/jumbo v34, "signature"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const-string/jumbo v34, "value"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    if-eqz v6, :cond_8

    .line 1066
    const-string v34, "category"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :cond_8
    if-eqz v5, :cond_9

    .line 1069
    const-string v34, "allowcategory"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    :cond_9
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v34

    move/from16 v0, v34

    if-ge v13, v0, :cond_f

    .line 1073
    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v29, Lorg/w3c/dom/Element;

    .line 1074
    .restart local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v34, "signature"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_17

    .line 1075
    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 1076
    .local v12, "existElem":Lorg/w3c/dom/Element;
    if-eqz v12, :cond_16

    .line 1080
    sget v34, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_13

    .line 1082
    const-string/jumbo v34, "sdcarduseridBL"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v34

    if-eqz v34, :cond_e

    .line 1086
    const/16 v34, 0x0

    .line 1157
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v13    # "i":I
    .end local v18    # "newElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v24    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v27    # "signer":Lorg/w3c/dom/NodeList;
    .end local v28    # "signerElement":Lorg/w3c/dom/Element;
    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v31    # "specialTag":Ljava/lang/String;
    :goto_4
    monitor-exit v35

    return v34

    .line 984
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "isAddedMac":Z
    .end local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v16    # "issdcardsbaapp":Ljava/lang/String;
    .end local v17    # "macPermExists":Z
    :cond_a
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 985
    .restart local v16    # "issdcardsbaapp":Ljava/lang/String;
    :cond_b
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 1006
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "isAddedMac":Z
    .restart local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v17    # "macPermExists":Z
    :cond_c
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z

    .line 1007
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v34

    if-nez v34, :cond_d

    .line 1008
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 1009
    :cond_d
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    .line 1010
    const-string v34, "policy"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    .line 1011
    .local v23, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 1146
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v23    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v11

    .line 1147
    .local v11, "e1":Lorg/xml/sax/SAXException;
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1157
    .end local v11    # "e1":Lorg/xml/sax/SAXException;
    :goto_5
    const/16 v34, -0x1

    goto :goto_4

    .line 1088
    .restart local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v13    # "i":I
    .restart local v18    # "newElement":Lorg/w3c/dom/Element;
    .restart local v20    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v24    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v28    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v31    # "specialTag":Ljava/lang/String;
    :cond_e
    const/16 v19, 0x0

    .line 1089
    .local v19, "newValue":Ljava/lang/String;
    :try_start_4
    const-string/jumbo v34, "sdcarduseridBL"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_12

    const-string/jumbo v34, "sdcarduseridBL"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v36, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_12

    .line 1090
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, ","

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v36, "sdcarduseridBL"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1094
    :goto_6
    const-string/jumbo v34, "sdcarduseridBL"

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    const/4 v14, 0x1

    .line 1125
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_f
    :goto_7
    if-nez v14, :cond_10

    .line 1126
    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1127
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1128
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1129
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1131
    :cond_10
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Element;->normalize()V

    .line 1132
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v33

    .line 1133
    .local v33, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v33 .. v33}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v32

    .line 1134
    .local v32, "transformer":Ljavax/xml/transform/Transformer;
    const/16 v30, 0x0

    .line 1135
    .local v30, "source":Ljavax/xml/transform/dom/DOMSource;
    if-eqz v17, :cond_18

    .line 1136
    new-instance v30, Ljavax/xml/transform/dom/DOMSource;

    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v30

    invoke-direct {v0, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1140
    .restart local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_8
    new-instance v22, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1141
    .local v22, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1142
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v34

    if-eqz v34, :cond_11

    .line 1143
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 1145
    :cond_11
    const/16 v34, 0x0

    goto/16 :goto_4

    .line 1092
    .end local v22    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v19    # "newValue":Ljava/lang/String;
    :cond_12
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_6

    .line 1098
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_13
    sget v34, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_16

    .line 1100
    const-string v34, "bluetoothuseridBL"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_14

    .line 1104
    const/16 v34, 0x0

    goto/16 :goto_4

    .line 1106
    :cond_14
    const/16 v19, 0x0

    .line 1107
    .restart local v19    # "newValue":Ljava/lang/String;
    const-string v34, "bluetoothuseridBL"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_15

    const-string v34, "bluetoothuseridBL"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v36, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_15

    .line 1108
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, ","

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, "bluetoothuseridBL"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1112
    :goto_9
    const-string v34, "bluetoothuseridBL"

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const/4 v14, 0x1

    .line 1114
    goto/16 :goto_7

    .line 1110
    :cond_15
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_9

    .line 1117
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1121
    const/4 v14, 0x1

    .line 1122
    goto/16 :goto_7

    .line 1072
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1138
    .restart local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_18
    new-instance v30, Ljavax/xml/transform/dom/DOMSource;

    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    goto/16 :goto_8

    .line 1148
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v13    # "i":I
    .end local v18    # "newElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v24    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v27    # "signer":Lorg/w3c/dom/NodeList;
    .end local v28    # "signerElement":Lorg/w3c/dom/Element;
    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v31    # "specialTag":Ljava/lang/String;
    .end local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_1
    move-exception v11

    .line 1149
    .local v11, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 980
    .end local v3    # "allowContainerCategory":Ljava/lang/String;
    .end local v5    # "allowcategory":Ljava/lang/String;
    .end local v6    # "category":Ljava/lang/String;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v14    # "isAddedMac":Z
    .end local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v16    # "issdcardsbaapp":Ljava/lang/String;
    .end local v17    # "macPermExists":Z
    .end local v25    # "seinfo":Ljava/lang/String;
    :catchall_0
    move-exception v34

    monitor-exit v35

    throw v34

    .line 1150
    .restart local v3    # "allowContainerCategory":Ljava/lang/String;
    .restart local v5    # "allowcategory":Ljava/lang/String;
    .restart local v6    # "category":Ljava/lang/String;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "isAddedMac":Z
    .restart local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v16    # "issdcardsbaapp":Ljava/lang/String;
    .restart local v17    # "macPermExists":Z
    .restart local v25    # "seinfo":Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 1151
    .local v11, "e1":Ljavax/xml/transform/TransformerException;
    :try_start_6
    invoke-virtual {v11}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_5

    .line 1152
    .end local v11    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_3
    move-exception v11

    .line 1153
    .local v11, "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 1154
    .end local v11    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v10

    .line 1155
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5
.end method

.method protected static declared-synchronized addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .locals 37
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "resourceType"    # I

    .prologue
    .line 337
    const-class v35, Lcom/android/server/ResourceManager;

    monitor-enter v35

    :try_start_0
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 338
    .local v25, "seinfo":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, "category":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 340
    .local v5, "allowcategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 341
    .local v3, "allowContainerCategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v34, v0

    and-int/lit8 v34, v34, 0x4

    const/16 v36, 0x4

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    const/16 v34, 0x1

    :goto_0
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    .line 342
    .local v16, "issdcardsbaapp":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v34, v0

    and-int/lit8 v34, v34, 0x8

    const/16 v36, 0x8

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_b

    const/16 v34, 0x1

    :goto_1
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    .line 343
    .local v15, "isbluetoothsbaapp":Ljava/lang/String;
    const/4 v14, 0x0

    .line 344
    .local v14, "isAddedMac":Z
    const/16 v17, 0x0

    .line 346
    .local v17, "macPermExists":Z
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 347
    .local v9, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v8, 0x0

    .line 349
    .local v8, "doc":Lorg/w3c/dom/Document;
    :try_start_1
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 350
    .local v7, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v34

    if-eqz v34, :cond_c

    .line 354
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v34

    if-nez v34, :cond_0

    .line 355
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 357
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    .line 358
    const/16 v17, 0x1

    .line 370
    :goto_2
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Element;->normalize()V

    .line 371
    const-string v34, "policy"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 372
    .local v21, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    .line 373
    .local v20, "policyElement":Lorg/w3c/dom/Element;
    const/16 v34, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v20, Lorg/w3c/dom/Element;

    .line 374
    .restart local v20    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v34, "signer"

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v27

    .line 375
    .local v27, "signer":Lorg/w3c/dom/NodeList;
    const/16 v29, 0x0

    .line 376
    .local v29, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v28, 0x0

    .line 377
    .local v28, "signerElement":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 378
    .local v4, "allowallElement":Lorg/w3c/dom/Element;
    const/16 v18, 0x0

    .line 379
    .local v18, "newElement":Lorg/w3c/dom/Element;
    const/16 v26, 0x0

    .line 380
    .local v26, "seinfoElement":Lorg/w3c/dom/Element;
    const/16 v31, 0x0

    .line 381
    .local v31, "specialTag":Ljava/lang/String;
    const-string/jumbo v31, "service"

    .line 382
    move-object/from16 v0, v31

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    .line 383
    const-string v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string/jumbo v34, "seinfo"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    if-eqz v6, :cond_1

    .line 386
    const-string v34, "category"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_1
    if-eqz v5, :cond_2

    .line 389
    const-string v34, "allowcategory"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_2
    if-eqz v3, :cond_3

    .line 392
    const-string v34, "containerallowcategory"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_3
    if-eqz v16, :cond_4

    .line 395
    const-string v34, "issdcardsbaapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_4
    if-eqz v15, :cond_5

    .line 398
    const-string v34, "isbluetoothsbaapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_5
    sget v34, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_6

    .line 401
    const-string/jumbo v34, "sdcarduserid"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_6
    sget v34, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    .line 407
    const-string v34, "bluetoothuserid"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_7
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v24

    .line 417
    .local v24, "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v34, "signer"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v28

    .line 418
    const-string/jumbo v34, "seinfo"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v26

    .line 419
    const-string v34, "allow-all"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 420
    const-string/jumbo v34, "signature"

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string/jumbo v34, "value"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    if-eqz v6, :cond_8

    .line 423
    const-string v34, "category"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_8
    if-eqz v5, :cond_9

    .line 426
    const-string v34, "allowcategory"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_9
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v34

    move/from16 v0, v34

    if-ge v13, v0, :cond_f

    .line 430
    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v29, Lorg/w3c/dom/Element;

    .line 431
    .restart local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v34, "signature"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_17

    .line 432
    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 433
    .local v12, "existElem":Lorg/w3c/dom/Element;
    if-eqz v12, :cond_16

    .line 437
    sget v34, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_13

    .line 439
    const-string/jumbo v34, "sdcarduserid"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v34

    if-eqz v34, :cond_e

    .line 443
    const/16 v34, 0x0

    .line 514
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v13    # "i":I
    .end local v18    # "newElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v24    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v27    # "signer":Lorg/w3c/dom/NodeList;
    .end local v28    # "signerElement":Lorg/w3c/dom/Element;
    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v31    # "specialTag":Ljava/lang/String;
    :goto_4
    monitor-exit v35

    return v34

    .line 341
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "isAddedMac":Z
    .end local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v16    # "issdcardsbaapp":Ljava/lang/String;
    .end local v17    # "macPermExists":Z
    :cond_a
    const/16 v34, 0x0

    goto/16 :goto_0

    .line 342
    .restart local v16    # "issdcardsbaapp":Ljava/lang/String;
    :cond_b
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 363
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "isAddedMac":Z
    .restart local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v17    # "macPermExists":Z
    :cond_c
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z

    .line 364
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v34

    if-nez v34, :cond_d

    .line 365
    const/16 v34, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 366
    :cond_d
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    .line 367
    const-string v34, "policy"

    move-object/from16 v0, v34

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    .line 368
    .local v23, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 503
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v23    # "rootElement":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v11

    .line 504
    .local v11, "e1":Lorg/xml/sax/SAXException;
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 514
    .end local v11    # "e1":Lorg/xml/sax/SAXException;
    :goto_5
    const/16 v34, -0x1

    goto :goto_4

    .line 445
    .restart local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v13    # "i":I
    .restart local v18    # "newElement":Lorg/w3c/dom/Element;
    .restart local v20    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v24    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v28    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v31    # "specialTag":Ljava/lang/String;
    :cond_e
    const/16 v19, 0x0

    .line 446
    .local v19, "newValue":Ljava/lang/String;
    :try_start_4
    const-string/jumbo v34, "sdcarduserid"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_12

    const-string/jumbo v34, "sdcarduserid"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v36, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_12

    .line 447
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, ","

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string/jumbo v36, "sdcarduserid"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 451
    :goto_6
    const-string/jumbo v34, "sdcarduserid"

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/4 v14, 0x1

    .line 482
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_f
    :goto_7
    if-nez v14, :cond_10

    .line 483
    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 484
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 485
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 486
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 488
    :cond_10
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/Element;->normalize()V

    .line 489
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v33

    .line 490
    .local v33, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v33 .. v33}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v32

    .line 491
    .local v32, "transformer":Ljavax/xml/transform/Transformer;
    const/16 v30, 0x0

    .line 492
    .local v30, "source":Ljavax/xml/transform/dom/DOMSource;
    if-eqz v17, :cond_18

    .line 493
    new-instance v30, Ljavax/xml/transform/dom/DOMSource;

    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v30

    invoke-direct {v0, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 497
    .restart local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_8
    new-instance v22, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 498
    .local v22, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 499
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v34

    if-eqz v34, :cond_11

    .line 500
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 502
    :cond_11
    const/16 v34, 0x0

    goto/16 :goto_4

    .line 449
    .end local v22    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v19    # "newValue":Ljava/lang/String;
    :cond_12
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_6

    .line 455
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_13
    sget v34, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v34

    if-ne v0, v1, :cond_16

    .line 457
    const-string v34, "bluetoothuserid"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_14

    .line 461
    const/16 v34, 0x0

    goto/16 :goto_4

    .line 463
    :cond_14
    const/16 v19, 0x0

    .line 464
    .restart local v19    # "newValue":Ljava/lang/String;
    const-string v34, "bluetoothuserid"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_15

    const-string v34, "bluetoothuserid"

    move-object/from16 v0, v34

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v36, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    if-eq v0, v1, :cond_15

    .line 465
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, ","

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v36, "bluetoothuserid"

    move-object/from16 v0, v36

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 469
    :goto_9
    const-string v34, "bluetoothuserid"

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v14, 0x1

    .line 471
    goto/16 :goto_7

    .line 467
    :cond_15
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_9

    .line 474
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 478
    const/4 v14, 0x1

    .line 479
    goto/16 :goto_7

    .line 429
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 495
    .restart local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_18
    new-instance v30, Ljavax/xml/transform/dom/DOMSource;

    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    goto/16 :goto_8

    .line 505
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v13    # "i":I
    .end local v18    # "newElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v24    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v26    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v27    # "signer":Lorg/w3c/dom/NodeList;
    .end local v28    # "signerElement":Lorg/w3c/dom/Element;
    .end local v29    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v30    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v31    # "specialTag":Ljava/lang/String;
    .end local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_1
    move-exception v11

    .line 506
    .local v11, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 337
    .end local v3    # "allowContainerCategory":Ljava/lang/String;
    .end local v5    # "allowcategory":Ljava/lang/String;
    .end local v6    # "category":Ljava/lang/String;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v14    # "isAddedMac":Z
    .end local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v16    # "issdcardsbaapp":Ljava/lang/String;
    .end local v17    # "macPermExists":Z
    .end local v25    # "seinfo":Ljava/lang/String;
    :catchall_0
    move-exception v34

    monitor-exit v35

    throw v34

    .line 507
    .restart local v3    # "allowContainerCategory":Ljava/lang/String;
    .restart local v5    # "allowcategory":Ljava/lang/String;
    .restart local v6    # "category":Ljava/lang/String;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "isAddedMac":Z
    .restart local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v16    # "issdcardsbaapp":Ljava/lang/String;
    .restart local v17    # "macPermExists":Z
    .restart local v25    # "seinfo":Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 508
    .local v11, "e1":Ljavax/xml/transform/TransformerException;
    :try_start_6
    invoke-virtual {v11}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_5

    .line 509
    .end local v11    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_3
    move-exception v11

    .line 510
    .local v11, "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    .line 511
    .end local v11    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v10

    .line 512
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_5
.end method

.method private static checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 4
    .param p0, "curElem"    # Lorg/w3c/dom/Element;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 770
    if-nez p0, :cond_1

    .line 774
    const/4 v1, 0x0

    .line 790
    :cond_0
    :goto_0
    return-object v1

    .line 777
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 778
    .local v0, "currTrustedPackageElem":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 780
    .local v1, "returnElem":Lorg/w3c/dom/Element;
    :goto_1
    if-eqz v0, :cond_0

    .line 781
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 785
    move-object v1, v0

    .line 786
    goto :goto_0

    .line 788
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    check-cast v0, Lorg/w3c/dom/Element;

    .restart local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    goto :goto_1
.end method

.method private static checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "existUsers"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 703
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "allowUsers":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v1, v2

    .line 705
    .local v3, "item":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 706
    const/4 v5, 0x1

    .line 709
    .end local v3    # "item":Ljava/lang/String;
    :goto_1
    return v5

    .line 704
    .restart local v3    # "item":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 709
    .end local v3    # "item":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ResourceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const-class v1, Lcom/android/server/ResourceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/server/ResourceManager;

    invoke-direct {v0, p0}, Lcom/android/server/ResourceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    .line 104
    :cond_0
    sget-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 747
    if-nez p0, :cond_1

    move-object v5, v6

    .line 765
    :cond_0
    :goto_0
    return-object v5

    .line 753
    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 754
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    .line 756
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v7, 0x40

    :try_start_0
    invoke-interface {v3, p0, v7, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 757
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 758
    .local v4, "s":[Landroid/content/pm/Signature;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v4

    if-ge v1, v7, :cond_0

    .line 760
    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 763
    .end local v1    # "i":I
    .end local v4    # "s":[Landroid/content/pm/Signature;
    .end local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v5, v6

    .line 765
    goto :goto_0
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 739
    if-nez p0, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-object v1

    .line 739
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 685
    .local p0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 689
    :cond_0
    const/4 v0, 0x0

    .line 696
    :cond_1
    return-object v0

    .line 691
    :cond_2
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 692
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 693
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 694
    .local v4, "s":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput-object v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method private loadContainerSetting(Ljava/lang/String;IZ)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerID"    # I
    .param p3, "appNotInstalled"    # Z

    .prologue
    .line 797
    const/4 v0, -0x1

    .line 798
    .local v0, "ret":I
    if-nez p1, :cond_0

    .line 799
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v4, "loadContainerSetting, packageName is null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 813
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_0
    return v1

    .line 805
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_0
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    iput-object v2, p0, Lcom/android/server/ResourceManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    .line 807
    iget-object v2, p0, Lcom/android/server/ResourceManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->updateAppInfoForPackage(Ljava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 811
    const/4 v0, 0x0

    :cond_1
    move v1, v0

    .line 813
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method protected static declared-synchronized removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .locals 27
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resourceType"    # I

    .prologue
    .line 1166
    const-class v23, Lcom/android/server/ResourceManager;

    monitor-enter v23

    const/4 v9, 0x0

    .line 1167
    .local v9, "isRemoveSuccess":Z
    const/4 v15, 0x0

    .line 1169
    .local v15, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1171
    .local v5, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_1
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 1172
    .local v3, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    .line 1173
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 1177
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-nez v22, :cond_0

    .line 1178
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 1180
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 1187
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    .line 1188
    const-string v22, "policy"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 1189
    .local v12, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .line 1190
    .local v11, "policyElement":Lorg/w3c/dom/Element;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v11, Lorg/w3c/dom/Element;

    .line 1191
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v22, "signer"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 1192
    .local v17, "signer":Lorg/w3c/dom/NodeList;
    const/16 v18, 0x0

    .line 1193
    .local v18, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v13, 0x0

    .line 1200
    .local v13, "removeElem":Lorg/w3c/dom/Element;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_2

    .line 1201
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v18, Lorg/w3c/dom/Element;

    .line 1203
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 1204
    if-eqz v13, :cond_c

    .line 1206
    sget v22, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 1207
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_7

    .line 1211
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1215
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 1216
    const/4 v9, 0x1

    .line 1217
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1

    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 1218
    :cond_1
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1285
    :cond_2
    :goto_1
    if-eqz v9, :cond_d

    .line 1286
    const-string/jumbo v22, "service"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 1287
    .local v16, "servicePackageList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    if-nez v22, :cond_3

    .line 1288
    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1293
    :cond_3
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    .line 1294
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v21

    .line 1295
    .local v21, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v20

    .line 1296
    .local v20, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v19, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1297
    .local v19, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v14, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1298
    .local v14, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1305
    .end local v14    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v16    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v19    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v20    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v21    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1306
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_4
    :goto_3
    move/from16 v22, v9

    .line 1319
    :goto_4
    monitor-exit v23

    return v22

    .line 1185
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    :cond_5
    const/16 v22, 0x0

    goto :goto_4

    .line 1225
    .restart local v8    # "i":I
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_6
    :try_start_2
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1226
    .local v10, "newVal":Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 1227
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    const/4 v9, 0x1

    .line 1229
    goto :goto_1

    .line 1236
    .end local v10    # "newVal":Ljava/lang/String;
    :cond_7
    const/16 v22, 0x0

    goto :goto_4

    .line 1240
    :cond_8
    sget v22, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 1241
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_b

    .line 1245
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 1249
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 1250
    const/4 v9, 0x1

    .line 1251
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_9

    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 1252
    :cond_9
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1308
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v7

    .line 1309
    .local v7, "e1":Lorg/xml/sax/SAXException;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 1166
    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "e1":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v22

    monitor-exit v23

    throw v22

    .line 1259
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8    # "i":I
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_a
    :try_start_4
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1260
    .restart local v10    # "newVal":Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 1261
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const/4 v9, 0x1

    .line 1263
    goto/16 :goto_1

    .line 1270
    .end local v10    # "newVal":Ljava/lang/String;
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 1200
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1303
    :cond_d
    sget-object v22, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v24, "BTSdcard"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " removeBlacklistEntryFromMac, No match for packageName:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ". Please check again"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 1310
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v7

    .line 1311
    .local v7, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 1312
    .end local v7    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v7

    .line 1313
    .local v7, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v7}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_3

    .line 1314
    .end local v7    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_3
    move-exception v7

    .line 1315
    .local v7, "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 1316
    .end local v7    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 1317
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3
.end method

.method private static removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "existUsers"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 713
    const/4 v5, 0x0

    .line 714
    .local v5, "returnCat":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 715
    .local v6, "srcUsers":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 716
    .local v4, "matchFound":Z
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 717
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 718
    const/4 v4, 0x1

    .line 716
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 720
    :cond_0
    if-nez v5, :cond_1

    .line 721
    move-object v5, v2

    goto :goto_1

    .line 723
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 727
    .end local v2    # "item":Ljava/lang/String;
    :cond_2
    if-eqz v4, :cond_3

    .line 733
    .end local v5    # "returnCat":Ljava/lang/String;
    :goto_2
    return-object v5

    .restart local v5    # "returnCat":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method protected static declared-synchronized removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .locals 27
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resourceType"    # I

    .prologue
    .line 523
    const-class v23, Lcom/android/server/ResourceManager;

    monitor-enter v23

    const/4 v9, 0x0

    .line 524
    .local v9, "isRemoveSuccess":Z
    const/4 v15, 0x0

    .line 526
    .local v15, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 528
    .local v5, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_1
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 529
    .local v3, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    .line 530
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 534
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-nez v22, :cond_0

    .line 535
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 537
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 544
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    .line 545
    const-string v22, "policy"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 546
    .local v12, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .line 547
    .local v11, "policyElement":Lorg/w3c/dom/Element;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v11, Lorg/w3c/dom/Element;

    .line 548
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v22, "signer"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 549
    .local v17, "signer":Lorg/w3c/dom/NodeList;
    const/16 v18, 0x0

    .line 550
    .local v18, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v13, 0x0

    .line 557
    .local v13, "removeElem":Lorg/w3c/dom/Element;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_2

    .line 558
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v18, Lorg/w3c/dom/Element;

    .line 560
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 561
    if-eqz v13, :cond_c

    .line 563
    sget v22, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 564
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_7

    .line 568
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 572
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 573
    const/4 v9, 0x1

    .line 574
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1

    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 575
    :cond_1
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 644
    :cond_2
    :goto_1
    if-eqz v9, :cond_d

    .line 645
    const-string/jumbo v22, "service"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 646
    .local v16, "servicePackageList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    if-nez v22, :cond_3

    .line 647
    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 652
    :cond_3
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    .line 653
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v21

    .line 654
    .local v21, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v20

    .line 655
    .local v20, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v19, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 656
    .local v19, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v14, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 657
    .local v14, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 664
    .end local v14    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v16    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v19    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v20    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v21    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 665
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_4
    :goto_3
    move/from16 v22, v9

    .line 678
    :goto_4
    monitor-exit v23

    return v22

    .line 542
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    :cond_5
    const/16 v22, 0x0

    goto :goto_4

    .line 582
    .restart local v8    # "i":I
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_6
    :try_start_2
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 583
    .local v10, "newVal":Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 584
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/4 v9, 0x1

    .line 586
    goto :goto_1

    .line 593
    .end local v10    # "newVal":Ljava/lang/String;
    :cond_7
    const/16 v22, 0x0

    goto :goto_4

    .line 599
    :cond_8
    sget v22, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 600
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_b

    .line 604
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 608
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 609
    const/4 v9, 0x1

    .line 610
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_9

    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 611
    :cond_9
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 667
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v7

    .line 668
    .local v7, "e1":Lorg/xml/sax/SAXException;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    .line 523
    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "e1":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v22

    monitor-exit v23

    throw v22

    .line 618
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8    # "i":I
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_a
    :try_start_4
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 619
    .restart local v10    # "newVal":Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 620
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const/4 v9, 0x1

    .line 622
    goto/16 :goto_1

    .line 629
    .end local v10    # "newVal":Ljava/lang/String;
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 557
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 662
    :cond_d
    sget-object v22, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v24, "BTSdcard"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " removeWhitelistEntryFromMac, No match for packageName:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ". Please check again"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 669
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v7

    .line 670
    .local v7, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 671
    .end local v7    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v7

    .line 672
    .local v7, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v7}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_3

    .line 673
    .end local v7    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_3
    move-exception v7

    .line 674
    .local v7, "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 675
    .end local v7    # "e1":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 676
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3
.end method


# virtual methods
.method public addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I
    .locals 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "certificate"    # [Ljava/lang/String;
    .param p4, "resourceType"    # I

    .prologue
    .line 820
    const/4 v6, 0x0

    .line 825
    .local v6, "appNotInstalled":Z
    :try_start_0
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p4, v2, :cond_0

    sget v2, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p4, v2, :cond_0

    .line 826
    const/4 v2, -0x1

    .line 922
    :goto_0
    return v2

    .line 828
    :cond_0
    new-instance v10, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 829
    .local v10, "whitelistDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 831
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 832
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 833
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :cond_1
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 841
    if-nez p2, :cond_2

    .line 842
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, " addAppToBlacklist failed, no packageName found"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const/4 v2, -0x1

    goto :goto_0

    .line 835
    .end local v10    # "whitelistDir":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 836
    .local v8, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "Issue with whitelistDir directory"

    invoke-virtual {v2, v3, v5, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 837
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 838
    const/4 v2, -0x1

    goto :goto_0

    .line 848
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "whitelistDir":Ljava/io/File;
    :cond_2
    const/4 v7, 0x0

    .line 849
    .local v7, "certMatch":Z
    const/4 v1, 0x0

    .line 850
    .local v1, "signature":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v9, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 852
    if-nez p3, :cond_3

    .line 856
    const/16 v2, -0xe

    goto :goto_0

    .line 857
    :cond_3
    if-nez v9, :cond_5

    .line 859
    const/4 v2, 0x0

    aget-object v1, p3, v2

    .line 860
    const/4 v6, 0x1

    .line 881
    :cond_4
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 882
    .local v0, "macPermFile":Ljava/io/File;
    if-nez v0, :cond_7

    .line 886
    const/4 v2, -0x1

    goto :goto_0

    .line 862
    .end local v0    # "macPermFile":Ljava/io/File;
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "signature":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 865
    .restart local v1    # "signature":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 866
    const/4 v7, 0x1

    .line 871
    :cond_6
    if-nez v7, :cond_4

    .line 875
    const/16 v2, -0xd

    goto :goto_0

    .line 889
    .restart local v0    # "macPermFile":Ljava/io/File;
    :cond_7
    :try_start_1
    invoke-static {p2, p3}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 890
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 891
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "addAppToBlacklist, Got Application Info, Seinfo is not null"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v2, "default"

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 893
    const-string/jumbo v2, "untrusted"

    iput-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :cond_8
    move-object v2, p2

    move v3, p1

    move v5, p4

    .line 895
    invoke-static/range {v0 .. v5}, Lcom/android/server/ResourceManager;->addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v2

    if-eqz v2, :cond_9

    .line 897
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "addBlacklistEntryToMac failed"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 900
    :cond_9
    invoke-direct {p0, p2, p1, v6}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    .line 901
    invoke-static {v0, p2, p1, p4}, Lcom/android/server/ResourceManager;->removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 902
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 911
    :cond_a
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 913
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v8

    .line 917
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 922
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I
    .locals 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "certificate"    # [Ljava/lang/String;
    .param p4, "resourceType"    # I

    .prologue
    .line 177
    const/4 v6, 0x0

    .line 182
    .local v6, "appNotInstalled":Z
    :try_start_0
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p4, v2, :cond_0

    sget v2, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p4, v2, :cond_0

    .line 183
    const/4 v2, -0x1

    .line 279
    :goto_0
    return v2

    .line 185
    :cond_0
    new-instance v10, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v10, "whitelistDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 188
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 189
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 190
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_1
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 198
    if-nez p2, :cond_2

    .line 199
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, " addAppToWhitelist failed, no packageName found"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v2, -0x1

    goto :goto_0

    .line 192
    .end local v10    # "whitelistDir":Ljava/io/File;
    :catch_0
    move-exception v8

    .line 193
    .local v8, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "Issue with whitelistDir directory"

    invoke-virtual {v2, v3, v5, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    const/4 v2, -0x1

    goto :goto_0

    .line 205
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "whitelistDir":Ljava/io/File;
    :cond_2
    const/4 v7, 0x0

    .line 206
    .local v7, "certMatch":Z
    const/4 v1, 0x0

    .line 207
    .local v1, "signature":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v9, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 209
    if-nez p3, :cond_3

    .line 213
    const/16 v2, -0xe

    goto :goto_0

    .line 214
    :cond_3
    if-nez v9, :cond_5

    .line 216
    const/4 v2, 0x0

    aget-object v1, p3, v2

    .line 217
    const/4 v6, 0x1

    .line 238
    :cond_4
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "macPermFile":Ljava/io/File;
    if-nez v0, :cond_7

    .line 243
    const/4 v2, -0x1

    goto :goto_0

    .line 219
    .end local v0    # "macPermFile":Ljava/io/File;
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "signature":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 222
    .restart local v1    # "signature":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 223
    const/4 v7, 0x1

    .line 228
    :cond_6
    if-nez v7, :cond_4

    .line 232
    const/16 v2, -0xd

    goto :goto_0

    .line 246
    .restart local v0    # "macPermFile":Ljava/io/File;
    :cond_7
    :try_start_1
    invoke-static {p2, p3}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 247
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 248
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "addAppToWhitelist, Got Application Info, Seinfo is not null"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v2, "default"

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 250
    const-string/jumbo v2, "untrusted"

    iput-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :cond_8
    move-object v2, p2

    move v3, p1

    move v5, p4

    .line 252
    invoke-static/range {v0 .. v5}, Lcom/android/server/ResourceManager;->addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v2

    if-eqz v2, :cond_9

    .line 254
    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "addWhitelistEntryToMac failed"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 257
    :cond_9
    invoke-direct {p0, p2, p1, v6}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    .line 258
    invoke-static {v0, p2, p1, p4}, Lcom/android/server/ResourceManager;->removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 259
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 268
    :cond_a
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 270
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v8

    .line 274
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    goto/16 :goto_0

    .line 279
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public clearSBABlacklist(II)I
    .locals 9
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    const/4 v6, -0x1

    .line 1323
    sget v7, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v7, :cond_0

    sget v7, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v7, :cond_0

    .line 1341
    :goto_0
    return v6

    .line 1326
    :cond_0
    const/4 v4, -0x1

    .line 1328
    .local v4, "ret":I
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getBlacklist(II)Ljava/util/HashSet;

    move-result-object v2

    .line 1329
    .local v2, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 1330
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1331
    .local v5, "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1332
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/ResourceManager;->removeAppFromSBABlacklist(ILjava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1333
    if-eqz v4, :cond_1

    goto :goto_0

    .line 1338
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1339
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BTSdcard"

    const-string v8, "clearBlacklist exception"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1341
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public clearWhitelist(II)I
    .locals 9
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    const/4 v6, -0x1

    .line 131
    sget v7, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v7, :cond_0

    sget v7, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v7, :cond_0

    .line 150
    :goto_0
    return v6

    .line 134
    :cond_0
    const/4 v4, -0x1

    .line 137
    .local v4, "ret":I
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v2

    .line 138
    .local v2, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_2

    .line 139
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 140
    .local v5, "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 141
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1, v3, p2}, Lcom/android/server/ResourceManager;->removeAppFromWhitelist(ILjava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 142
    if-eqz v4, :cond_1

    goto :goto_0

    .line 147
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BTSdcard"

    const-string v8, "clearWhitelist exception"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getPackagesFromSBABlacklist(II)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 1345
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v1, :cond_0

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v1, :cond_0

    .line 1346
    const/4 v1, 0x0

    .line 1349
    :goto_0
    return-object v1

    .line 1348
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getBlacklist(II)Ljava/util/HashSet;

    move-result-object v0

    .line 1349
    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPackagesFromSBAList(I)[Ljava/lang/String;
    .locals 2
    .param p1, "resourceType"    # I

    .prologue
    .line 154
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p1, v1, :cond_0

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p1, v1, :cond_0

    .line 155
    const/4 v1, 0x0

    .line 158
    :goto_0
    return-object v1

    .line 157
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->getSBAlist(I)Ljava/util/HashSet;

    move-result-object v0

    .line 158
    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPackagesFromWhitelist(II)[Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 108
    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v1, :cond_0

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v1, :cond_0

    .line 109
    const/4 v1, 0x0

    .line 112
    :goto_0
    return-object v1

    .line 111
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v0

    .line 112
    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isSBAApp(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceType"    # I

    .prologue
    const/4 v2, -0x1

    .line 163
    :try_start_0
    sget v3, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v3, :cond_1

    sget v3, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v3, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v2

    .line 166
    :cond_1
    invoke-static {p2}, Lcom/android/server/pm/SELinuxMMAC;->getSBAlist(I)Ljava/util/HashSet;

    move-result-object v1

    .line 167
    .local v1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    const/4 v2, 0x0

    goto :goto_0

    .line 170
    .end local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public isWhitelistApp(ILjava/lang/String;I)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    const/4 v2, -0x1

    .line 117
    :try_start_0
    sget v3, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v3, :cond_1

    sget v3, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v3, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v2

    .line 120
    :cond_1
    invoke-static {p1, p3}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v1

    .line 121
    .local v1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    const/4 v2, 0x0

    goto :goto_0

    .line 124
    .end local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public removeAppFromSBABlacklist(ILjava/lang/String;I)I
    .locals 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    const/4 v6, -0x1

    .line 926
    const/4 v0, 0x0

    .line 930
    .local v0, "appNotInstalled":Z
    sget v7, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v7, :cond_1

    sget v7, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v7, :cond_1

    .line 973
    :cond_0
    :goto_0
    return v6

    .line 933
    :cond_1
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 934
    if-nez p2, :cond_2

    .line 935
    sget-object v7, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    const-string v9, " removeAppFromBlacklist failed, no packageName found"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 938
    :cond_2
    const/4 v1, 0x0

    .line 939
    .local v1, "certMatch":Z
    const/4 v4, 0x0

    .line 940
    .local v4, "signature":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 941
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 942
    if-nez v5, :cond_3

    .line 946
    const/4 v0, 0x1

    .line 948
    :cond_3
    new-instance v3, Ljava/io/File;

    sget-object v7, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 949
    .local v3, "macPermFile":Ljava/io/File;
    if-nez v3, :cond_4

    .line 950
    sget-object v7, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeAppFromBlacklist, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 960
    :cond_4
    :try_start_0
    invoke-static {v3, p2, p1, p3}, Lcom/android/server/ResourceManager;->removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_5

    .line 961
    sget-object v7, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    const-string v9, "removeEntryFromMac failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 967
    :catch_0
    move-exception v2

    .line 968
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 964
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eq v7, v6, :cond_0

    .line 973
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public removeAppFromWhitelist(ILjava/lang/String;I)I
    .locals 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    const/4 v6, -0x1

    .line 283
    const/4 v0, 0x0

    .line 287
    .local v0, "appNotInstalled":Z
    sget v7, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v7, :cond_1

    sget v7, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v7, :cond_1

    .line 330
    :cond_0
    :goto_0
    return v6

    .line 290
    :cond_1
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 291
    if-nez p2, :cond_2

    .line 292
    sget-object v7, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    const-string v9, " removeAppFromWhitelist failed, no packageName found"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_2
    const/4 v1, 0x0

    .line 296
    .local v1, "certMatch":Z
    const/4 v4, 0x0

    .line 297
    .local v4, "signature":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 299
    if-nez v5, :cond_3

    .line 303
    const/4 v0, 0x1

    .line 305
    :cond_3
    new-instance v3, Ljava/io/File;

    sget-object v7, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .local v3, "macPermFile":Ljava/io/File;
    if-nez v3, :cond_4

    .line 307
    sget-object v7, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "removeAppFromWhitelist, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_4
    :try_start_0
    invoke-static {v3, p2, p1, p3}, Lcom/android/server/ResourceManager;->removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_5

    .line 318
    sget-object v7, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    const-string v9, "removeEntryFromMac failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :catch_0
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 321
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eq v7, v6, :cond_0

    .line 330
    const/4 v6, 0x0

    goto :goto_0
.end method
