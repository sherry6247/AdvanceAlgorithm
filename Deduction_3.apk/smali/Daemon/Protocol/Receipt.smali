.class public LDaemon/Protocol/Receipt;
.super Ljava/lang/Object;
.source "Receipt.java"

# interfaces
.implements LDaemon/Base/HttpBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "Receipt"

.field private static final url:Ljava/lang/String; = "http://domaindev.51widgets.com/ss/service/action.php?action=IsSuccess"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method private static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "Receipt"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public getHttpUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 25
    const-string v0, ""

    .line 26
    .local v0, "URL":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&imei="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->reghttp:LDaemon/Protocol/RegHttp;

    invoke-virtual {v2}, LDaemon/Protocol/RegHttp;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&spnamber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->mostsphttp:LDaemon/Protocol/MostSpHttp;

    invoke-virtual {v2}, LDaemon/Protocol/MostSpHttp;->getSpnumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&businessnamber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 28
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->mostsphttp:LDaemon/Protocol/MostSpHttp;

    invoke-virtual {v2}, LDaemon/Protocol/MostSpHttp;->getBusinessnumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 29
    sget-object v2, LHamsterSuper/Client/Game/BootReceiver;->mostsphttp:LDaemon/Protocol/MostSpHttp;

    invoke-virtual {v2}, LDaemon/Protocol/MostSpHttp;->getNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://domaindev.51widgets.com/ss/service/action.php?action=IsSuccess"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public parsePackage(Ljava/lang/String;)LDaemon/Service/ServerConnecter$httpState;
    .locals 1
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v0, "httpparsePackage state:start"

    invoke-static {v0}, LDaemon/Protocol/Receipt;->print(Ljava/lang/String;)V

    .line 37
    const-string v0, "httpparsePackage state:end"

    invoke-static {v0}, LDaemon/Protocol/Receipt;->print(Ljava/lang/String;)V

    .line 39
    sget-object v0, LDaemon/Service/ServerConnecter$httpState;->success:LDaemon/Service/ServerConnecter$httpState;

    return-object v0
.end method

.method public setFinishState(LDaemon/Service/ServerConnecter$httpState;)V
    .locals 0
    .param p1, "httpEnd"    # LDaemon/Service/ServerConnecter$httpState;

    .prologue
    .line 45
    return-void
.end method
