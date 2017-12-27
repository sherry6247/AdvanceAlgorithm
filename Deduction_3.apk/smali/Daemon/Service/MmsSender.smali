.class public LDaemon/Service/MmsSender;
.super Ljava/lang/Object;
.source "MmsSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDaemon/Service/MmsSender$MmsSend;
    }
.end annotation


# instance fields
.field private Annex_name:Ljava/lang/String;

.field private Annex_url:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mms:LDaemon/Service/Mms/Mms;

.field private number:Ljava/lang/String;

.field private sub:Ljava/lang/String;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, p0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    .line 13
    iput-object v1, p0, LDaemon/Service/MmsSender;->sub:Ljava/lang/String;

    .line 14
    iput-object v1, p0, LDaemon/Service/MmsSender;->text:Ljava/lang/String;

    .line 15
    iput-object v1, p0, LDaemon/Service/MmsSender;->Annex_name:Ljava/lang/String;

    .line 16
    iput-object v1, p0, LDaemon/Service/MmsSender;->Annex_url:Ljava/lang/String;

    .line 17
    const-string v0, "10086"

    iput-object v0, p0, LDaemon/Service/MmsSender;->number:Ljava/lang/String;

    .line 19
    iput-object v1, p0, LDaemon/Service/MmsSender;->mms:LDaemon/Service/Mms/Mms;

    .line 22
    iput-object p1, p0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    .line 23
    iget-object v0, p0, LDaemon/Service/MmsSender;->mms:LDaemon/Service/Mms/Mms;

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p0}, LDaemon/Service/MmsSender;->registerVersion()LDaemon/Service/Mms/Mms;

    move-result-object v0

    iput-object v0, p0, LDaemon/Service/MmsSender;->mms:LDaemon/Service/Mms/Mms;

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public SetAnnex_url(Ljava/lang/String;)V
    .locals 2
    .param p1, "Annex_url"    # Ljava/lang/String;

    .prologue
    .line 46
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 47
    .local v0, "Annex":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LDaemon/Service/MmsSender;->Annex_name:Ljava/lang/String;

    .line 48
    iput-object p1, p0, LDaemon/Service/MmsSender;->Annex_url:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public SetNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, LDaemon/Service/MmsSender;->number:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public SetSub(Ljava/lang/String;)V
    .locals 0
    .param p1, "sub"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, LDaemon/Service/MmsSender;->sub:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public SetText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, LDaemon/Service/MmsSender;->text:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string v0, "Mms"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public registerVersion()LDaemon/Service/Mms/Mms;
    .locals 5

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, "mms":LDaemon/Service/Mms/Mms;
    const/4 v2, 0x0

    .line 82
    .local v2, "sdkVersion":I
    :try_start_0
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 89
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sdkVersion:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, LDaemon/Service/MmsSender;->print(Ljava/lang/String;)V

    .line 91
    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 92
    new-instance v1, LDaemon/Service/Mms/Mms16;

    .end local v1    # "mms":LDaemon/Service/Mms/Mms;
    iget-object v3, p0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, LDaemon/Service/Mms/Mms16;-><init>(Landroid/content/Context;)V

    .line 99
    .restart local v1    # "mms":LDaemon/Service/Mms/Mms;
    :goto_1
    return-object v1

    .line 84
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 86
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0

    .line 93
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 94
    new-instance v1, LDaemon/Service/Mms/Mms21;

    .end local v1    # "mms":LDaemon/Service/Mms/Mms;
    iget-object v3, p0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, LDaemon/Service/Mms/Mms21;-><init>(Landroid/content/Context;)V

    .restart local v1    # "mms":LDaemon/Service/Mms/Mms;
    goto :goto_1

    .line 96
    :cond_1
    new-instance v1, LDaemon/Service/Mms/MmsAll;

    .end local v1    # "mms":LDaemon/Service/Mms/Mms;
    iget-object v3, p0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, LDaemon/Service/Mms/MmsAll;-><init>(Landroid/content/Context;)V

    .restart local v1    # "mms":LDaemon/Service/Mms/Mms;
    goto :goto_1
.end method

.method public send()V
    .locals 7

    .prologue
    .line 63
    iget-object v0, p0, LDaemon/Service/MmsSender;->mms:LDaemon/Service/Mms/Mms;

    iget-object v1, p0, LDaemon/Service/MmsSender;->sub:Ljava/lang/String;

    iget-object v2, p0, LDaemon/Service/MmsSender;->text:Ljava/lang/String;

    iget-object v3, p0, LDaemon/Service/MmsSender;->Annex_name:Ljava/lang/String;

    iget-object v4, p0, LDaemon/Service/MmsSender;->Annex_url:Ljava/lang/String;

    iget-object v5, p0, LDaemon/Service/MmsSender;->number:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, LDaemon/Service/Mms/Mms;->send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v6, LDaemon/Service/Notice;

    iget-object v0, p0, LDaemon/Service/MmsSender;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, LDaemon/Service/Notice;-><init>(Landroid/content/Context;)V

    .line 65
    .local v6, "notice":LDaemon/Service/Notice;
    iget-object v0, p0, LDaemon/Service/MmsSender;->mms:LDaemon/Service/Mms/Mms;

    iget v0, v0, LDaemon/Service/Mms/Mms;->threadid:I

    invoke-virtual {v6, v0}, LDaemon/Service/Notice;->setThreadID(I)V

    .line 66
    iget-object v0, p0, LDaemon/Service/MmsSender;->sub:Ljava/lang/String;

    iget-object v1, p0, LDaemon/Service/MmsSender;->text:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v6, v0, v1, v2}, LDaemon/Service/Notice;->showNotice(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    .end local v6    # "notice":LDaemon/Service/Notice;
    :cond_0
    return-void
.end method
