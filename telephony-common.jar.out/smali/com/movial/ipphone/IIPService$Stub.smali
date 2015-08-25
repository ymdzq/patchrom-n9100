.class public abstract Lcom/movial/ipphone/IIPService$Stub;
.super Landroid/os/Binder;
.source "IIPService.java"

# interfaces
.implements Lcom/movial/ipphone/IIPService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/movial/ipphone/IIPService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.movial.ipphone.IIPService"

.field static final TRANSACTION_accept:I = 0xb

.field static final TRANSACTION_acknowledgeLastIncomingIpSms:I = 0x1a

.field static final TRANSACTION_clearDisconnected:I = 0x1f

.field static final TRANSACTION_conference:I = 0xe

.field static final TRANSACTION_connect:I = 0x2

.field static final TRANSACTION_dial:I = 0x7

.field static final TRANSACTION_dialEmergencyCall:I = 0x8

.field static final TRANSACTION_disconnect:I = 0x4

.field static final TRANSACTION_doSubscribe:I = 0x3

.field static final TRANSACTION_getContactUri:I = 0x20

.field static final TRANSACTION_hangup:I = 0x9

.field static final TRANSACTION_hangupForegroundResumeBackground:I = 0xa

.field static final TRANSACTION_hold:I = 0xd

.field static final TRANSACTION_isCssEnable:I = 0x21

.field static final TRANSACTION_queryLastRegisterFailureCode:I = 0x6

.field static final TRANSACTION_queryLastRegisterFailureReasonData:I = 0x5

.field static final TRANSACTION_registerForCallStates:I = 0x16

.field static final TRANSACTION_registerForConnectionState:I = 0x14

.field static final TRANSACTION_registerForEmergencyCallPref:I = 0x17

.field static final TRANSACTION_registerForIncomingSMS:I = 0x18

.field static final TRANSACTION_registerForIncomingUSSD:I = 0x12

.field static final TRANSACTION_registerForSubscription:I = 0x15

.field static final TRANSACTION_reject:I = 0xc

.field static final TRANSACTION_sendDtmf:I = 0x1b

.field static final TRANSACTION_sendSMS:I = 0x19

.field static final TRANSACTION_sendUssd:I = 0x13

.field static final TRANSACTION_setCW:I = 0x11

.field static final TRANSACTION_setCallForward:I = 0x10

.field static final TRANSACTION_setCellLocation:I = 0x1e

.field static final TRANSACTION_setMute:I = 0xf

.field static final TRANSACTION_startDtmf:I = 0x1c

.field static final TRANSACTION_stopDtmf:I = 0x1d

.field static final TRANSACTION_test:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.movial.ipphone.IIPService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/movial/ipphone/IIPService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.movial.ipphone.IIPService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/movial/ipphone/IIPService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/movial/ipphone/IIPService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/movial/ipphone/IIPService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/movial/ipphone/IIPService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 422
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->test()V

    .line 49
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    const/4 v1, 0x1

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 59
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/movial/ipphone/IIPService$Stub;->connect(Ljava/lang/String;I)Z

    move-result v14

    .line 60
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v14, :cond_0

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 66
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v14    # "_result":Z
    :sswitch_3
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->doSubscribe()Z

    move-result v14

    .line 68
    .restart local v14    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    if-eqz v14, :cond_1

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    const/4 v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 74
    .end local v14    # "_result":Z
    :sswitch_4
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IIPService$Stub;->disconnect(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    const/4 v1, 0x1

    goto :goto_0

    .line 83
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_5
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->queryLastRegisterFailureReasonData()Ljava/lang/String;

    move-result-object v14

    .line 85
    .local v14, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x1

    goto :goto_0

    .line 91
    .end local v14    # "_result":Ljava/lang/String;
    :sswitch_6
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->queryLastRegisterFailureCode()I

    move-result v14

    .line 93
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 99
    .end local v14    # "_result":I
    :sswitch_7
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 104
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/movial/ipphone/IIPService$Stub;->dial(Ljava/lang/String;I)I

    move-result v14

    .line 105
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 111
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v14    # "_result":I
    :sswitch_8
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 114
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IIPService$Stub;->dialEmergencyCall(Ljava/lang/String;)I

    move-result v14

    .line 115
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 121
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v14    # "_result":I
    :sswitch_9
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 124
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IIPService$Stub;->hangup(I)V

    .line 125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 130
    .end local v2    # "_arg0":I
    :sswitch_a
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->hangupForegroundResumeBackground()V

    .line 132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 137
    :sswitch_b
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->accept()V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 144
    :sswitch_c
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 147
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IIPService$Stub;->reject(I)V

    .line 148
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 153
    .end local v2    # "_arg0":I
    :sswitch_d
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 156
    .local v2, "_arg0":Z
    :goto_3
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IIPService$Stub;->hold(Z)I

    move-result v14

    .line 157
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 155
    .end local v2    # "_arg0":Z
    .end local v14    # "_result":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 163
    :sswitch_e
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->conference()V

    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 170
    :sswitch_f
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    .line 173
    .restart local v2    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IIPService$Stub;->setMute(Z)V

    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 172
    .end local v2    # "_arg0":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 179
    :sswitch_10
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 185
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 189
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Messenger;

    .local v6, "_arg4":Landroid/os/Messenger;
    :goto_5
    move-object v1, p0

    .line 195
    invoke-virtual/range {v1 .. v6}, Lcom/movial/ipphone/IIPService$Stub;->setCallForward(IILjava/lang/String;ILandroid/os/Messenger;)I

    move-result v14

    .line 196
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 193
    .end local v6    # "_arg4":Landroid/os/Messenger;
    .end local v14    # "_result":I
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "_arg4":Landroid/os/Messenger;
    goto :goto_5

    .line 202
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Landroid/os/Messenger;
    :sswitch_11
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    .line 206
    .local v2, "_arg0":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 207
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .line 212
    .local v3, "_arg1":Landroid/os/Messenger;
    :goto_7
    invoke-virtual {p0, v2, v3}, Lcom/movial/ipphone/IIPService$Stub;->setCW(ZLandroid/os/Messenger;)I

    move-result v14

    .line 213
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 204
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/os/Messenger;
    .end local v14    # "_result":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    .line 210
    .restart local v2    # "_arg0":Z
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/os/Messenger;
    goto :goto_7

    .line 219
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Landroid/os/Messenger;
    :sswitch_12
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 222
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 227
    .local v2, "_arg0":Landroid/os/Messenger;
    :goto_8
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IIPService$Stub;->registerForIncomingUSSD(Landroid/os/Messenger;)V

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 225
    .end local v2    # "_arg0":Landroid/os/Messenger;
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Messenger;
    goto :goto_8

    .line 233
    .end local v2    # "_arg0":Landroid/os/Messenger;
    :sswitch_13
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_8

    .line 238
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    .line 243
    .restart local v3    # "_arg1":Landroid/os/Messenger;
    :goto_9
    invoke-virtual {p0, v2, v3}, Lcom/movial/ipphone/IIPService$Stub;->sendUssd(Ljava/lang/String;Landroid/os/Messenger;)I

    move-result v14

    .line 244
    .restart local v14    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 241
    .end local v3    # "_arg1":Landroid/os/Messenger;
    .end local v14    # "_result":I
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/os/Messenger;
    goto :goto_9

    .line 250
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Messenger;
    :sswitch_14
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 253
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 258
    .local v2, "_arg0":Landroid/os/Messenger;
    :goto_a
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IIPService$Stub;->registerForConnectionState(Landroid/os/Messenger;)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 256
    .end local v2    # "_arg0":Landroid/os/Messenger;
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Messenger;
    goto :goto_a

    .line 264
    .end local v2    # "_arg0":Landroid/os/Messenger;
    :sswitch_15
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 267
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 272
    .restart local v2    # "_arg0":Landroid/os/Messenger;
    :goto_b
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IIPService$Stub;->registerForSubscription(Landroid/os/Messenger;)V

    .line 273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 270
    .end local v2    # "_arg0":Landroid/os/Messenger;
    :cond_a
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Messenger;
    goto :goto_b

    .line 278
    .end local v2    # "_arg0":Landroid/os/Messenger;
    :sswitch_16
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 281
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 286
    .restart local v2    # "_arg0":Landroid/os/Messenger;
    :goto_c
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IIPService$Stub;->registerForCallStates(Landroid/os/Messenger;)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 284
    .end local v2    # "_arg0":Landroid/os/Messenger;
    :cond_b
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Messenger;
    goto :goto_c

    .line 292
    .end local v2    # "_arg0":Landroid/os/Messenger;
    :sswitch_17
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 295
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 300
    .restart local v2    # "_arg0":Landroid/os/Messenger;
    :goto_d
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IIPService$Stub;->registerForEmergencyCallPref(Landroid/os/Messenger;)Z

    move-result v14

    .line 301
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    if-eqz v14, :cond_d

    const/4 v1, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 298
    .end local v2    # "_arg0":Landroid/os/Messenger;
    .end local v14    # "_result":Z
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Messenger;
    goto :goto_d

    .line 302
    .restart local v14    # "_result":Z
    :cond_d
    const/4 v1, 0x0

    goto :goto_e

    .line 307
    .end local v2    # "_arg0":Landroid/os/Messenger;
    .end local v14    # "_result":Z
    :sswitch_18
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e

    .line 310
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    .line 315
    .restart local v2    # "_arg0":Landroid/os/Messenger;
    :goto_f
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IIPService$Stub;->registerForIncomingSMS(Landroid/os/Messenger;)V

    .line 316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 313
    .end local v2    # "_arg0":Landroid/os/Messenger;
    :cond_e
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/Messenger;
    goto :goto_f

    .line 321
    .end local v2    # "_arg0":Landroid/os/Messenger;
    :sswitch_19
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 328
    sget-object v1, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Messenger;

    .line 334
    .local v4, "_arg2":Landroid/os/Messenger;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 335
    .restart local v5    # "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/movial/ipphone/IIPService$Stub;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;I)V

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 331
    .end local v4    # "_arg2":Landroid/os/Messenger;
    .end local v5    # "_arg3":I
    :cond_f
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/os/Messenger;
    goto :goto_10

    .line 341
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Landroid/os/Messenger;
    :sswitch_1a
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    const/4 v2, 0x1

    .line 345
    .local v2, "_arg0":Z
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 346
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/movial/ipphone/IIPService$Stub;->acknowledgeLastIncomingIpSms(ZI)V

    .line 347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 343
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :cond_10
    const/4 v2, 0x0

    goto :goto_11

    .line 352
    :sswitch_1b
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 356
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v3, v1

    .line 357
    .local v3, "_arg1":C
    invoke-virtual {p0, v2, v3}, Lcom/movial/ipphone/IIPService$Stub;->sendDtmf(IC)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 363
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":C
    :sswitch_1c
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 367
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-char v3, v1

    .line 368
    .restart local v3    # "_arg1":C
    invoke-virtual {p0, v2, v3}, Lcom/movial/ipphone/IIPService$Stub;->startDtmf(IC)V

    .line 369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 374
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":C
    :sswitch_1d
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 377
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IIPService$Stub;->stopDtmf(I)V

    .line 378
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 383
    .end local v2    # "_arg0":I
    :sswitch_1e
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 387
    .local v8, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 389
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 391
    .local v4, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 393
    .restart local v5    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg4":Ljava/lang/String;
    move-object v7, p0

    move v10, v3

    move v11, v4

    move v12, v5

    move-object v13, v6

    .line 394
    invoke-virtual/range {v7 .. v13}, Lcom/movial/ipphone/IIPService$Stub;->setCellLocation(JIIILjava/lang/String;)V

    .line 395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 400
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":Ljava/lang/String;
    .end local v8    # "_arg0":J
    :sswitch_1f
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->clearDisconnected()V

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 407
    :sswitch_20
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->getContactUri()[Ljava/lang/String;

    move-result-object v14

    .line 409
    .local v14, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 411
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 415
    .end local v14    # "_result":[Ljava/lang/String;
    :sswitch_21
    const-string v1, "com.movial.ipphone.IIPService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lcom/movial/ipphone/IIPService$Stub;->isCssEnable()Z

    move-result v14

    .line 417
    .local v14, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    if-eqz v14, :cond_11

    const/4 v1, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 418
    :cond_11
    const/4 v1, 0x0

    goto :goto_12

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
