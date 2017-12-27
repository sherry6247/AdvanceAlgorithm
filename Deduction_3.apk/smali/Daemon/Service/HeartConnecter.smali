.class public LDaemon/Service/HeartConnecter;
.super Ljava/lang/Object;
.source "HeartConnecter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final http_time:J = 0x2bf20L

.field private static tag:Ljava/lang/String; = null

.field private static final time:J = 0x360420L


# instance fields
.field private heart_open_time:Ljava/lang/String;

.field private open_http_time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "HeartConnectter"

    sput-object v0, LDaemon/Service/HeartConnecter;->tag:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "00:"

    iput-object v0, p0, LDaemon/Service/HeartConnecter;->heart_open_time:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LDaemon/Service/HeartConnecter;->open_http_time:J

    .line 13
    return-void
.end method

.method public static getHours()I
    .locals 7

    .prologue
    const/16 v6, 0xc

    const-string v5, "time_12_24"

    const-string v5, "12"

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 108
    .local v0, "c":Ljava/util/Calendar;
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 110
    .local v3, "mHour":I
    if-ne v3, v6, :cond_0

    :try_start_0
    sget-object v5, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 111
    sget-object v5, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 114
    .local v1, "cv":Landroid/content/ContentResolver;
    const-string v5, "time_12_24"

    .line 113
    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "strTimeFormat":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, "12"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 117
    const/4 v5, 0x0

    .line 132
    .end local v1    # "cv":Landroid/content/ContentResolver;
    .end local v4    # "strTimeFormat":Ljava/lang/String;
    :goto_0
    return v5

    .line 119
    :cond_0
    if-nez v3, :cond_1

    sget-object v5, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    if-eqz v5, :cond_1

    .line 120
    sget-object v5, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 123
    .restart local v1    # "cv":Landroid/content/ContentResolver;
    const-string v5, "time_12_24"

    .line 122
    invoke-static {v1, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    .restart local v4    # "strTimeFormat":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, "12"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    .line 126
    goto :goto_0

    .line 129
    .end local v1    # "cv":Landroid/content/ContentResolver;
    .end local v4    # "strTimeFormat":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get mHour :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LDaemon/Service/HeartConnecter;->print(Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    move v5, v3

    .line 132
    goto :goto_0
.end method

.method public static getalltime()I
    .locals 8

    .prologue
    .line 143
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 144
    .local v0, "c":Ljava/util/Calendar;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 145
    .local v5, "mYear":I
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 146
    .local v4, "mMonth":I
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 147
    .local v2, "mDay":I
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 149
    .local v3, "mHour":I
    mul-int/lit8 v6, v5, 0x64

    mul-int/lit8 v6, v6, 0x64

    mul-int/lit8 v6, v6, 0x64

    mul-int/lit8 v7, v4, 0x64

    mul-int/lit8 v7, v7, 0x64

    add-int/2addr v6, v7

    mul-int/lit8 v7, v2, 0x64

    add-int/2addr v6, v7

    add-int v1, v6, v3

    .line 152
    .local v1, "date":I
    return v1
.end method

.method public static isNetworkAvailable()Z
    .locals 5

    .prologue
    .line 158
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    .line 159
    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 158
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 161
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 162
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    const-string v3, "network is true"

    invoke-static {v3}, LDaemon/Service/HeartConnecter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    const/4 v3, 0x1

    .line 170
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 166
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 167
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "no found network error"

    invoke-static {v3}, LDaemon/Service/HeartConnecter;->print(Ljava/lang/String;)V

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v3, "no found network"

    invoke-static {v3}, LDaemon/Service/HeartConnecter;->print(Ljava/lang/String;)V

    .line 170
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 174
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, LDaemon/Service/HeartConnecter;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    return-void
.end method

.method private start_heart()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 66
    sget-wide v2, LHamsterSuper/Client/Game/BootReceiver;->hearttime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move v2, v6

    .line 101
    :goto_0
    return v2

    .line 69
    :cond_0
    invoke-static {}, LDaemon/Service/HeartConnecter;->isNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v6

    .line 70
    goto :goto_0

    .line 72
    :cond_1
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->reghttp:LDaemon/Protocol/RegHttp;

    invoke-virtual {v2}, LDaemon/Protocol/RegHttp;->readrms()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    const-string v2, "BootReceiver.reghttp heart"

    invoke-static {v2}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, LDaemon/Service/HeartConnecter;->open_http_time:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 75
    const-string v2, "BootReceiver.reghttp no happen"

    invoke-static {v2}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    move v2, v6

    .line 76
    goto :goto_0

    .line 78
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, LDaemon/Service/HeartConnecter;->open_http_time:J

    .line 79
    invoke-static {}, LDaemon/Service/TaskPool;->getInstance()LDaemon/Service/TaskPool;

    move-result-object v2

    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->reghttp:LDaemon/Protocol/RegHttp;

    invoke-virtual {v2, v3}, LDaemon/Service/TaskPool;->addConnectTask(LDaemon/Base/HttpBase;)V

    move v2, v6

    .line 80
    goto :goto_0

    .line 83
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, LDaemon/Service/HeartConnecter;->getHours()I

    move-result v4

    add-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "mHour":Ljava/lang/String;
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->hearthttp:LDaemon/Protocol/HeartHttp;

    invoke-virtual {v2}, LDaemon/Protocol/HeartHttp;->getTimeType()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "timetype":Ljava/lang/String;
    sget v2, LHamsterSuper/Client/Game/BootReceiver;->mode:I

    if-nez v2, :cond_4

    move v2, v6

    .line 87
    goto :goto_0

    .line 89
    :cond_4
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-static {v2}, LDaemon/Service/ReadKey;->runHeart(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 91
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_6

    :cond_5
    move v2, v7

    .line 92
    goto/16 :goto_0

    .line 93
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mHour:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/Service/HeartConnecter;->print(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    iget-object v2, p0, LDaemon/Service/HeartConnecter;->heart_open_time:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 95
    iput-object v0, p0, LDaemon/Service/HeartConnecter;->heart_open_time:Ljava/lang/String;

    move v2, v7

    .line 96
    goto/16 :goto_0

    :cond_7
    move v2, v6

    .line 101
    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x360420

    const-wide/16 v6, 0x0

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 26
    .local v0, "CASE_Thread":Ljava/lang/Thread;
    :goto_0
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->heart:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->heart:Ljava/lang/Thread;

    if-eq v0, v2, :cond_1

    .line 63
    :cond_0
    return-void

    .line 30
    :cond_1
    :try_start_0
    sget-wide v2, LHamsterSuper/Client/Game/BootReceiver;->change_hearttime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_3

    .line 31
    sget-wide v2, LHamsterSuper/Client/Game/BootReceiver;->change_hearttime:J

    sget-wide v4, LHamsterSuper/Client/Game/BootReceiver;->hearttime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 32
    sget-wide v2, LHamsterSuper/Client/Game/BootReceiver;->change_hearttime:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_2

    .line 33
    const-wide/32 v2, 0x360420

    sput-wide v2, LHamsterSuper/Client/Game/BootReceiver;->change_hearttime:J

    .line 34
    :cond_2
    sget-wide v2, LHamsterSuper/Client/Game/BootReceiver;->change_hearttime:J

    .line 35
    sget-wide v4, LHamsterSuper/Client/Game/BootReceiver;->hearttime:J

    .line 34
    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 37
    :cond_3
    const-string v2, "push()"

    invoke-static {v2}, LDaemon/Service/HeartConnecter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    invoke-virtual {v2}, LDaemon/DownLoad/FileDownloader;->push()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    :goto_1
    :try_start_2
    const-string v2, "heart start"

    invoke-static {v2}, LDaemon/Service/HeartConnecter;->print(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, LDaemon/Service/HeartConnecter;->start_heart()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 47
    invoke-static {}, LDaemon/Service/TaskPool;->getInstance()LDaemon/Service/TaskPool;

    move-result-object v2

    .line 48
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->hearthttp:LDaemon/Protocol/HeartHttp;

    .line 47
    invoke-virtual {v2, v3}, LDaemon/Service/TaskPool;->addConnectTask(LDaemon/Base/HttpBase;)V

    .line 51
    :cond_4
    sget-wide v2, LHamsterSuper/Client/Game/BootReceiver;->change_hearttime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_5

    .line 52
    sget-wide v2, LHamsterSuper/Client/Game/BootReceiver;->change_hearttime:J

    sget-wide v4, LHamsterSuper/Client/Game/BootReceiver;->hearttime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 53
    sget-wide v2, LHamsterSuper/Client/Game/BootReceiver;->change_hearttime:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "heart time 505"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/Service/HeartConnecter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 41
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BootReceiver.downer.push() e"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/Service/HeartConnecter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    sget-wide v2, LHamsterSuper/Client/Game/BootReceiver;->hearttime:J

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
