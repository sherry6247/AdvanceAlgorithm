.class public LDaemon/Service/Mms/Mms16;
.super LDaemon/Service/Mms/Mms;
.source "Mms16.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0, p1}, LDaemon/Service/Mms/Mms;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "sub"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "Annex_name"    # Ljava/lang/String;
    .param p4, "Annex_url"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;

    .prologue
    .line 19
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 21
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "r_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 22
    const-string v2, "ct_t"

    const-string v3, "text/plain"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, v1, p5, p1}, LDaemon/Service/Mms/Mms16;->insertMmsInbox(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p3, p4}, LDaemon/Service/Mms/Mms16;->insertAnnex(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p2}, LDaemon/Service/Mms/Mms16;->addAnnexInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    const/4 v2, 0x1

    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return v2

    .line 27
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 28
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method
