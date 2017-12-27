.class public LDaemon/Service/Mms/Mms21;
.super LDaemon/Service/Mms/Mms;
.source "Mms21.java"


# instance fields
.field public mCtx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, LDaemon/Service/Mms/Mms;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object p1, p0, LDaemon/Service/Mms/Mms21;->mCtx:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p1, "sub"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "Annex_name"    # Ljava/lang/String;
    .param p4, "Annex_url"    # Ljava/lang/String;
    .param p5, "number"    # Ljava/lang/String;

    .prologue
    .line 24
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 25
    .local v10, "values":Landroid/content/ContentValues;
    const/4 v7, 0x0

    .line 27
    .local v7, "sdkVersion":I
    :try_start_1
    sget-object v11, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v7

    .line 33
    :goto_0
    const/16 v11, 0x8

    if-ge v7, v11, :cond_0

    .line 34
    :try_start_2
    const-string v11, "r_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    :cond_0
    const-string v11, "ct_t"

    const-string v12, "application/vnd.wap.multipart.related"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    move-object v0, p0

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, LDaemon/Service/Mms/Mms21;->insertMmsInbox(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 43
    :goto_1
    :try_start_3
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 44
    const-string v11, "addr 2.1 smil"

    invoke-virtual {p0, v11}, LDaemon/Service/Mms/Mms21;->print(Ljava/lang/String;)V

    .line 46
    const-string v6, "1800000"

    .line 47
    .local v6, "play_time":Ljava/lang/String;
    move-object v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, LDaemon/Service/Mms/Mms21;->getSmilType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 48
    .local v9, "smiltype":Ljava/lang/String;
    iget-object v11, p0, LDaemon/Service/Mms/Mms21;->mCtx:Landroid/content/Context;

    if-eqz v11, :cond_2

    .line 49
    const-string v11, "audio src="

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 50
    const-string v11, "video src="

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 52
    :cond_1
    :try_start_4
    iget-object v11, p0, LDaemon/Service/Mms/Mms21;->mCtx:Landroid/content/Context;

    .line 53
    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 52
    invoke-static {v11, v12}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v5

    .line 54
    .local v5, "mp":Landroid/media/MediaPlayer;
    if-eqz v5, :cond_2

    .line 55
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 56
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "play time:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, LDaemon/Service/Mms/Mms21;->print(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 62
    .end local v5    # "mp":Landroid/media/MediaPlayer;
    :cond_2
    :goto_2
    :try_start_5
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "<smil><head><layout><root-layout width=\"320px\" height=\"480px\"/><region id=\"Text\" left=\"0\" top=\"320\" width=\"320px\" height=\"160px\" fit=\"meet\"/></layout></head><body><par dur=\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms\">"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 69
    const-string v12, "<text src=\"text_0.txt\" region=\"Text\"/>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 70
    const-string v12, "</par>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</body>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "</smil>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 62
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 71
    .local v8, "smiltext":Ljava/lang/String;
    const-string v11, "seq"

    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v11, "ct"

    const-string v12, "application/smil"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v11, "cid"

    const-string v12, "<smil>"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v11, "cl"

    const-string v12, "smil.xml"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v11, "text"

    invoke-virtual {v10, v11, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v11, p0, LDaemon/Service/Mms/Mms21;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 77
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "content://mms/"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v13, p0, LDaemon/Service/Mms/Mms21;->pid:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/part"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 76
    invoke-virtual {v11, v12, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 78
    const-string v11, "addr 2.1 smil is 0k"

    invoke-virtual {p0, v11}, LDaemon/Service/Mms/Mms21;->print(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 82
    const-string v11, "text"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    move-object v0, p0

    move-object v1, v10

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, LDaemon/Service/Mms/Mms21;->insertAnnex(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const/4 v11, 0x1

    .end local v6    # "play_time":Ljava/lang/String;
    .end local v7    # "sdkVersion":I
    .end local v8    # "smiltext":Ljava/lang/String;
    .end local v9    # "smiltype":Ljava/lang/String;
    .end local v10    # "values":Landroid/content/ContentValues;
    :goto_3
    return v11

    .line 28
    .restart local v7    # "sdkVersion":I
    .restart local v10    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 29
    .local v4, "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 37
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v11

    move-object v4, v11

    .line 38
    .local v4, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "no r_date:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, LDaemon/Service/Mms/Mms21;->print(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 40
    const-string v11, "ct_t"

    const-string v12, "application/vnd.wap.multipart.related"

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    move-object v0, p0

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, LDaemon/Service/Mms/Mms21;->insertMmsInbox(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 85
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "sdkVersion":I
    .end local v10    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v11

    move-object v4, v11

    .line 86
    .restart local v4    # "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_3

    .line 58
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "play_time":Ljava/lang/String;
    .restart local v7    # "sdkVersion":I
    .restart local v9    # "smiltype":Ljava/lang/String;
    .restart local v10    # "values":Landroid/content/ContentValues;
    :catch_3
    move-exception v11

    move-object v4, v11

    .line 59
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "get play time e:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, LDaemon/Service/Mms/Mms21;->print(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2
.end method
