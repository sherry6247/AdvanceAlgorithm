.class public LHamsterSuper/Client/Game/NoticeVideo;
.super Landroid/content/BroadcastReceiver;
.source "NoticeVideo.java"


# static fields
.field public static final AUDIO:Ljava/lang/String; = "audio"

.field public static final AUDIO_PACKAGE:Ljava/lang/String; = "com.android.music"

.field public static final VIDEO:Ljava/lang/String; = "video"

.field public static final VIDEO_PACKAGE:Ljava/lang/String; = "com.android.camera"

.field public static notice:LDaemon/Service/Notice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static restartPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p1}, LDaemon/Service/Notice;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "type":Ljava/lang/String;
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 34
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 35
    const-string v2, "com.android.music"

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 37
    const-string v2, "com.android.camera"

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    sget-object v2, LHamsterSuper/Client/Game/NoticeVideo;->notice:LDaemon/Service/Notice;

    invoke-virtual {v2}, LDaemon/Service/Notice;->getfilename()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "filename":Ljava/lang/String;
    invoke-static {p1, v0}, LHamsterSuper/Client/Game/NoticeVideo;->restartPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    sget-object v2, LHamsterSuper/Client/Game/NoticeVideo;->notice:LDaemon/Service/Notice;

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, LDaemon/Service/Notice;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 25
    .local v1, "video":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    return-void
.end method
