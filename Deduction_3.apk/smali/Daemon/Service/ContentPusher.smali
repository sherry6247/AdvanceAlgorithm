.class public LDaemon/Service/ContentPusher;
.super Ljava/lang/Object;
.source "ContentPusher.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final tag:Ljava/lang/String; = "ContentPusher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private print(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 18
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const-string v0, "ContentPusher"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "BootReceiver.downer.push()"

    invoke-direct {p0, v0}, LDaemon/Service/ContentPusher;->print(Ljava/lang/String;)V

    .line 13
    sget-object v0, LHamsterSuper/Client/Game/BootReceiver;->downer:LDaemon/DownLoad/FileDownloader;

    invoke-virtual {v0}, LDaemon/DownLoad/FileDownloader;->push()V

    .line 14
    return-void
.end method
