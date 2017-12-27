.class public LDaemon/Service/IEMark;
.super Ljava/lang/Object;
.source "IEMark.java"


# static fields
.field public static final HISTORY_PROJECTION:[Ljava/lang/String;

.field public static final filename:Ljava/lang/String; = "IEMark.xml"

.field private static final tag:Ljava/lang/String; = "IEMark"

.field public static final uri:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 22
    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "visits"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    .line 21
    sput-object v0, LDaemon/Service/IEMark;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 23
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sput-object v0, LDaemon/Service/IEMark;->uri:Landroid/net/Uri;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, LDaemon/Service/IEMark;->mContext:Landroid/content/Context;

    .line 26
    iput-object p1, p0, LDaemon/Service/IEMark;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public static openIE(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "ct"    # Landroid/content/Context;
    .param p1, "openurl"    # Ljava/lang/String;

    .prologue
    .line 168
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 169
    .local v1, "it":Landroid/content/Intent;
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v1    # "it":Landroid/content/Intent;
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openIE error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/Service/IEMark;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 179
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "IEMark"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method public AddMark(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    const-string v3, "url = ? and title = ? and bookmark = 1"

    .line 70
    .local v3, "whereClause":Ljava/lang/String;
    const-string v5, "date DESC"

    .line 71
    .local v5, "orderBy":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    aput-object p1, v4, v0

    .line 72
    .local v4, "where":[Ljava/lang/String;
    iget-object v0, p0, LDaemon/Service/IEMark;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, LDaemon/Service/IEMark;->uri:Landroid/net/Uri;

    .line 73
    sget-object v2, LDaemon/Service/IEMark;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 72
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 75
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .local v8, "values":Landroid/content/ContentValues;
    const-string v0, "url"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    const-string v0, "title"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "bookmark"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    iget-object v0, p0, LDaemon/Service/IEMark;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, LDaemon/Service/IEMark;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "where":[Ljava/lang/String;
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 88
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AddMark error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/Service/IEMark;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public AddShowMark(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, LDaemon/Service/IEMark;->uri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 56
    .local v0, "ii":Landroid/content/Intent;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, LDaemon/Service/IEMark;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method

.method public DelMark(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 36
    :try_start_0
    const-string v2, "url = ?"

    .line 37
    .local v2, "whereClause":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 39
    .local v1, "where":[Ljava/lang/String;
    if-nez p1, :cond_0

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 p1, 0x0

    .line 43
    :cond_0
    iget-object v3, p0, LDaemon/Service/IEMark;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, LDaemon/Service/IEMark;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "where":[Ljava/lang/String;
    .end local v2    # "whereClause":Ljava/lang/String;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DelMark error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LDaemon/Service/IEMark;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public GetHistory()Ljava/util/Vector;
    .locals 14

    .prologue
    .line 127
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 129
    .local v11, "history":Ljava/util/Vector;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 131
    .local v7, "cc":Ljava/util/Calendar;
    new-instance v8, Ljava/util/Date;

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 132
    const/4 v2, 0x5

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 131
    invoke-direct {v8, v0, v1, v2}, Ljava/util/Date;-><init>(III)V

    .line 133
    .local v8, "dd":Ljava/util/Date;
    new-instance v9, Ljava/util/Date;

    const/16 v0, 0x7b2

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Ljava/util/Date;-><init>(III)V

    .line 135
    .local v9, "ddd":Ljava/util/Date;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "visits > 0 and date>="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long/2addr v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "whereClause":Ljava/lang/String;
    const-string v5, "date DESC"

    .line 140
    .local v5, "orderBy":Ljava/lang/String;
    iget-object v0, p0, LDaemon/Service/IEMark;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, LDaemon/Service/IEMark;->uri:Landroid/net/Uri;

    .line 141
    sget-object v2, LDaemon/Service/IEMark;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    .line 140
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 143
    .local v6, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "cc":Ljava/util/Calendar;
    .end local v8    # "dd":Ljava/util/Date;
    .end local v9    # "ddd":Ljava/util/Date;
    :goto_1
    return-object v11

    .line 150
    .restart local v3    # "whereClause":Ljava/lang/String;
    .restart local v5    # "orderBy":Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v7    # "cc":Ljava/util/Calendar;
    .restart local v8    # "dd":Ljava/util/Date;
    .restart local v9    # "ddd":Ljava/util/Date;
    :cond_0
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 151
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "cc":Ljava/util/Calendar;
    .end local v8    # "dd":Ljava/util/Date;
    .end local v9    # "ddd":Ljava/util/Date;
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 156
    .local v10, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetHistory error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/Service/IEMark;->print(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public GetMark()Ljava/util/Vector;
    .locals 12

    .prologue
    .line 97
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 99
    .local v8, "history":Ljava/util/Vector;
    :try_start_0
    const-string v5, "date DESC"

    .line 101
    .local v5, "orderBy":Ljava/lang/String;
    iget-object v0, p0, LDaemon/Service/IEMark;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, LDaemon/Service/IEMark;->uri:Landroid/net/Uri;

    .line 102
    sget-object v2, LDaemon/Service/IEMark;->HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 101
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 104
    .local v6, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :goto_1
    return-object v8

    .line 105
    .restart local v5    # "orderBy":Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_0
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lt v9, v0, :cond_1

    .line 113
    const-string v0, "------------------------"

    invoke-static {v0}, LDaemon/Service/IEMark;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v9    # "j":I
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 117
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetMark error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/Service/IEMark;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 107
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "orderBy":Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v9    # "j":I
    :cond_1
    :try_start_1
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, "strColumnName":Ljava/lang/String;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 109
    .local v11, "strColumnValue":Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/Service/IEMark;->print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    add-int/lit8 v9, v9, 0x1

    goto :goto_2
.end method
