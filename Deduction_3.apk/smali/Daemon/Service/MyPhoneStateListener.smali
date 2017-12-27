.class public LDaemon/Service/MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MyPhoneStateListener.java"


# static fields
.field private static final tag:Ljava/lang/String; = "MyPhoneStateListener"


# instance fields
.field private LastState:I

.field private mCtx:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "Ctx"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 17
    iput-object p1, p0, LDaemon/Service/MyPhoneStateListener;->mCtx:Landroid/content/Context;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, LDaemon/Service/MyPhoneStateListener;->LastState:I

    .line 19
    iget-object v0, p0, LDaemon/Service/MyPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, LDaemon/Service/MyPhoneStateListener;->mCtx:Landroid/content/Context;

    .line 21
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 20
    iput-object v0, p0, LDaemon/Service/MyPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 23
    :cond_0
    iget-object v0, p0, LDaemon/Service/MyPhoneStateListener;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 24
    const/16 v1, 0xe1

    .line 23
    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 28
    return-void
.end method

.method private print(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "MyPhoneStateListener"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public isCallState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 43
    iget v0, p0, LDaemon/Service/MyPhoneStateListener;->LastState:I

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "callNumber"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootReceiver\uff1aonCallStateChanged():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDaemon/Service/MyPhoneStateListener;->print(Ljava/lang/String;)V

    .line 50
    iput p1, p0, LDaemon/Service/MyPhoneStateListener;->LastState:I

    .line 51
    return-void
.end method

.method public onDataActivity(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootReceiver\uff1aonDataActivity():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDaemon/Service/MyPhoneStateListener;->print(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootReceiver\uff1aonDataConnectionStateChanged():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDaemon/Service/MyPhoneStateListener;->print(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BootReceiver\uff1aonServiceStateChanged():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDaemon/Service/MyPhoneStateListener;->print(Ljava/lang/String;)V

    .line 34
    return-void
.end method
