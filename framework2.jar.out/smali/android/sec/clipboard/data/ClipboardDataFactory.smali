.class public Landroid/sec/clipboard/data/ClipboardDataFactory;
.super Ljava/lang/Object;
.source "ClipboardDataFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .param p0, "format"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 66
    .local v0, "Result":Landroid/sec/clipboard/data/ClipboardData;
    packed-switch p0, :pswitch_data_0

    .line 118
    :goto_0
    return-object v0

    .line 69
    :pswitch_0
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 70
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 73
    :pswitch_1
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;-><init>()V

    .line 74
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 77
    :pswitch_2
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;-><init>()V

    .line 78
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 82
    :pswitch_3
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataUri;-><init>()V

    .line 83
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 86
    :pswitch_4
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;-><init>()V

    .line 87
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 91
    :pswitch_5
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;-><init>()V

    .line 92
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 97
    :pswitch_6
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataMultipleUri;-><init>()V

    .line 99
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 103
    :pswitch_7
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataSmartClip;-><init>()V

    .line 105
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 109
    :pswitch_8
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataScrapBitmap;

    .end local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataScrapBitmap;-><init>()V

    .line 111
    .restart local v0    # "Result":Landroid/sec/clipboard/data/ClipboardData;
    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
