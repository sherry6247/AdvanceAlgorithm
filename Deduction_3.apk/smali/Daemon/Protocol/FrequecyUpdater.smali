.class public LDaemon/Protocol/FrequecyUpdater;
.super Ljava/lang/Object;
.source "FrequecyUpdater.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FrequecyUpdater"

.field private static instance:LDaemon/Protocol/FrequecyUpdater;


# instance fields
.field private oldHeartTime:J

.field private oldServerTime:Ljava/lang/String;

.field private pool:LDaemon/Service/TaskPool;

.field private scheduleHeartbeat:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private schedulePush:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private sleepTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, LDaemon/Protocol/FrequecyUpdater;

    invoke-direct {v0}, LDaemon/Protocol/FrequecyUpdater;-><init>()V

    sput-object v0, LDaemon/Protocol/FrequecyUpdater;->instance:LDaemon/Protocol/FrequecyUpdater;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LDaemon/Protocol/FrequecyUpdater;->oldHeartTime:J

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, LDaemon/Protocol/FrequecyUpdater;->oldServerTime:Ljava/lang/String;

    .line 19
    const-wide/32 v0, 0x2dc6c0

    iput-wide v0, p0, LDaemon/Protocol/FrequecyUpdater;->sleepTime:J

    .line 20
    invoke-static {}, LDaemon/Service/TaskPool;->getInstance()LDaemon/Service/TaskPool;

    move-result-object v0

    iput-object v0, p0, LDaemon/Protocol/FrequecyUpdater;->pool:LDaemon/Service/TaskPool;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LDaemon/Protocol/FrequecyUpdater;->scheduleHeartbeat:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LDaemon/Protocol/FrequecyUpdater;->schedulePush:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method private AddHeartBeatTask()V
    .locals 14

    .prologue
    .line 79
    const-string v0, "Enter AddHeartBeatTask"

    invoke-direct {p0, v0}, LDaemon/Protocol/FrequecyUpdater;->print(Ljava/lang/String;)V

    .line 80
    sget-object v0, LHamsterSuper/Client/Game/BootReceiver;->hearthttp:LDaemon/Protocol/HeartHttp;

    invoke-virtual {v0}, LDaemon/Protocol/HeartHttp;->getTimeType()Ljava/lang/String;

    move-result-object v11

    .line 84
    .local v11, "serverTime":Ljava/lang/String;
    if-nez v11, :cond_1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "heartbeat period is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, LDaemon/Protocol/FrequecyUpdater;->sleepTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDaemon/Protocol/FrequecyUpdater;->print(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, LDaemon/Protocol/FrequecyUpdater;->pool:LDaemon/Service/TaskPool;

    sget-object v1, LHamsterSuper/Client/Game/BootReceiver;->hearthttp:LDaemon/Protocol/HeartHttp;

    iget-wide v2, p0, LDaemon/Protocol/FrequecyUpdater;->sleepTime:J

    iget-wide v4, p0, LDaemon/Protocol/FrequecyUpdater;->sleepTime:J

    invoke-virtual/range {v0 .. v5}, LDaemon/Service/TaskPool;->addConnectTask(LDaemon/Base/HttpBase;JJ)Ljava/lang/Runnable;

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const/4 v0, -0x1

    const/16 v1, 0x3a

    invoke-virtual {v11, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "heartbeat period is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, LDaemon/Protocol/FrequecyUpdater;->sleepTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDaemon/Protocol/FrequecyUpdater;->print(Ljava/lang/String;)V

    .line 90
    iget-object v6, p0, LDaemon/Protocol/FrequecyUpdater;->scheduleHeartbeat:Ljava/util/ArrayList;

    iget-object v0, p0, LDaemon/Protocol/FrequecyUpdater;->pool:LDaemon/Service/TaskPool;

    sget-object v1, LHamsterSuper/Client/Game/BootReceiver;->hearthttp:LDaemon/Protocol/HeartHttp;

    .line 91
    iget-wide v2, p0, LDaemon/Protocol/FrequecyUpdater;->sleepTime:J

    iget-wide v4, p0, LDaemon/Protocol/FrequecyUpdater;->sleepTime:J

    .line 90
    invoke-virtual/range {v0 .. v5}, LDaemon/Service/TaskPool;->addConnectTask(LDaemon/Base/HttpBase;JJ)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_2
    const-string v0, "([0-9]+):"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 94
    .local v10, "pt":Ljava/util/regex/Pattern;
    invoke-virtual {v10, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 95
    .local v8, "matcher":Ljava/util/regex/Matcher;
    const/4 v6, 0x0

    .line 96
    .local v6, "found":Z
    :goto_1
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 97
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 98
    .local v13, "timePoint":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 99
    .local v7, "hourPoint":I
    const/16 v0, 0x18

    if-gt v7, v0, :cond_0

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    .line 103
    .local v12, "startTime":Ljava/util/Calendar;
    const/16 v0, 0xb

    invoke-virtual {v12, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 104
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 105
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 106
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 109
    .local v9, "now":Ljava/util/Calendar;
    invoke-virtual {v12, v9}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-virtual {v12, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 111
    :cond_3
    invoke-virtual {v12}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDaemon/Protocol/FrequecyUpdater;->print(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v9}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDaemon/Protocol/FrequecyUpdater;->print(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 114
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 113
    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 115
    .local v2, "peroid":J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "peroid is"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDaemon/Protocol/FrequecyUpdater;->print(Ljava/lang/String;)V

    .line 116
    iget-object v7, p0, LDaemon/Protocol/FrequecyUpdater;->scheduleHeartbeat:Ljava/util/ArrayList;

    .end local v7    # "hourPoint":I
    iget-object v0, p0, LDaemon/Protocol/FrequecyUpdater;->pool:LDaemon/Service/TaskPool;

    .line 117
    sget-object v1, LHamsterSuper/Client/Game/BootReceiver;->hearthttp:LDaemon/Protocol/HeartHttp;

    const-wide/32 v4, 0x5265c00

    .line 116
    invoke-virtual/range {v0 .. v5}, LDaemon/Service/TaskPool;->addConnectTask(LDaemon/Base/HttpBase;JJ)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private AddPushTask()V
    .locals 4

    .prologue
    .line 72
    const-string v0, "Enter AddPushTask"

    invoke-direct {p0, v0}, LDaemon/Protocol/FrequecyUpdater;->print(Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PushTask time period is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, LDaemon/Protocol/FrequecyUpdater;->sleepTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDaemon/Protocol/FrequecyUpdater;->print(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, LDaemon/Protocol/FrequecyUpdater;->schedulePush:Ljava/util/ArrayList;

    iget-object v1, p0, LDaemon/Protocol/FrequecyUpdater;->pool:LDaemon/Service/TaskPool;

    iget-wide v2, p0, LDaemon/Protocol/FrequecyUpdater;->sleepTime:J

    invoke-virtual {v1, v2, v3}, LDaemon/Service/TaskPool;->addPushTask(J)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public static getInstance()LDaemon/Protocol/FrequecyUpdater;
    .locals 1

    .prologue
    .line 28
    sget-object v0, LDaemon/Protocol/FrequecyUpdater;->instance:LDaemon/Protocol/FrequecyUpdater;

    return-object v0
.end method

.method private needUpdateHeartbeatFrequecy()Z
    .locals 4

    .prologue
    .line 32
    iget-wide v0, p0, LDaemon/Protocol/FrequecyUpdater;->oldHeartTime:J

    iget-wide v2, p0, LDaemon/Protocol/FrequecyUpdater;->sleepTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needUpdatePushFrequecy()Z
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, LDaemon/Protocol/FrequecyUpdater;->oldServerTime:Ljava/lang/String;

    sget-object v1, LHamsterSuper/Client/Game/BootReceiver;->hearthttp:LDaemon/Protocol/HeartHttp;

    invoke-virtual {v1}, LDaemon/Protocol/HeartHttp;->getTimeType()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 40
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private print(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 123
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "FrequecyUpdater"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    return-void
.end method

.method private removeOldHeartbeat()V
    .locals 3

    .prologue
    .line 60
    iget-object v1, p0, LDaemon/Protocol/FrequecyUpdater;->scheduleHeartbeat:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    return-void

    .line 60
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 61
    .local v0, "task":Ljava/lang/Runnable;
    iget-object v2, p0, LDaemon/Protocol/FrequecyUpdater;->pool:LDaemon/Service/TaskPool;

    invoke-virtual {v2, v0}, LDaemon/Service/TaskPool;->cancelTask(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeOldPush()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, LDaemon/Protocol/FrequecyUpdater;->schedulePush:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    return-void

    .line 66
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 67
    .local v0, "task":Ljava/lang/Runnable;
    iget-object v2, p0, LDaemon/Protocol/FrequecyUpdater;->pool:LDaemon/Service/TaskPool;

    invoke-virtual {v2, v0}, LDaemon/Service/TaskPool;->cancelTask(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private saveSettings()V
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, LDaemon/Protocol/FrequecyUpdater;->sleepTime:J

    iput-wide v0, p0, LDaemon/Protocol/FrequecyUpdater;->oldHeartTime:J

    .line 45
    sget-object v0, LHamsterSuper/Client/Game/BootReceiver;->hearthttp:LDaemon/Protocol/HeartHttp;

    invoke-virtual {v0}, LDaemon/Protocol/HeartHttp;->getTimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDaemon/Protocol/FrequecyUpdater;->oldServerTime:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private updateSleepTime()V
    .locals 4

    .prologue
    .line 49
    sget-wide v0, LHamsterSuper/Client/Game/BootReceiver;->hearttime:J

    iget-wide v2, p0, LDaemon/Protocol/FrequecyUpdater;->sleepTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 50
    sget-wide v0, LHamsterSuper/Client/Game/BootReceiver;->hearttime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    iget-wide v0, p0, LDaemon/Protocol/FrequecyUpdater;->sleepTime:J

    .line 49
    :goto_0
    iput-wide v0, p0, LDaemon/Protocol/FrequecyUpdater;->sleepTime:J

    .line 52
    return-void

    .line 51
    :cond_1
    sget-wide v0, LHamsterSuper/Client/Game/BootReceiver;->hearttime:J

    goto :goto_0
.end method


# virtual methods
.method public update()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method
