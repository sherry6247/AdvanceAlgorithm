.class public LDaemon/Service/Notice;
.super Ljava/lang/Object;
.source "Notice.java"


# static fields
.field public static final apk_mode:I = 0x0

.field public static final ie_mode:I = 0x3

.field public static final show_type:[Ljava/lang/String;

.field public static final sms_mode:I = 0x1

.field private static final tag:Ljava/lang/String; = "Notice"

.field public static final video_mode:I = 0x2


# instance fields
.field private contentIntent:Landroid/app/PendingIntent;

.field private filename:Ljava/lang/String;

.field private mCtx:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private notif:Landroid/app/Notification;

.field private threadId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "m4a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "xmf"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 33
    const-string v2, "wav"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "3gp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mp4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "gif"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "png"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "jpeg"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "bmp"

    aput-object v2, v0, v1

    .line 32
    sput-object v0, LDaemon/Service/Notice;->show_type:[Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, LDaemon/Service/Notice;->threadId:I

    .line 36
    iput-object p1, p0, LDaemon/Service/Notice;->mCtx:Landroid/content/Context;

    .line 38
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 37
    iput-object v0, p0, LDaemon/Service/Notice;->mNotificationManager:Landroid/app/NotificationManager;

    .line 39
    return-void
.end method

.method public static getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "Annex_name"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string v2, ""

    .line 174
    .local v2, "type":Ljava/lang/String;
    move-object v1, p0

    .line 177
    .local v1, "fName":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "end":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 182
    const-string v3, "m4a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "mp3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "mid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    const-string v3, "xmf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ogg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "wav"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 184
    :cond_0
    const-string v2, "audio"

    .line 191
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    return-object v2

    .line 185
    :cond_2
    const-string v3, "3gp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "mp4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    :cond_3
    const-string v2, "video"

    goto :goto_0

    .line 187
    :cond_4
    const-string v3, "jpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "gif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 188
    const-string v3, "jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "bmp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    :cond_5
    const-string v2, "image"

    goto :goto_0
.end method

.method private static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 196
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "Notice"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    return-void
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    const-string v7, "android.intent.action.VIEW"

    .line 115
    const/4 v4, 0x0

    .line 117
    .local v4, "notificationIntent":Landroid/content/Intent;
    packed-switch p2, :pswitch_data_0

    .line 169
    :goto_0
    return-object v4

    .line 120
    :pswitch_0
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "apk_mode:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LDaemon/Service/Notice;->print(Ljava/lang/String;)V

    .line 121
    iget-object v7, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 122
    .local v6, "uri":Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v5, v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v4    # "notificationIntent":Landroid/content/Intent;
    .local v5, "notificationIntent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 125
    const v7, 0x10000001

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    const-string v7, "com.android.packageinstaller"

    .line 129
    const-string v8, "com.android.packageinstaller.PackageInstallerActivity"

    .line 128
    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 130
    .end local v5    # "notificationIntent":Landroid/content/Intent;
    .restart local v4    # "notificationIntent":Landroid/content/Intent;
    goto :goto_0

    .line 132
    .end local v6    # "uri":Landroid/net/Uri;
    :pswitch_1
    :try_start_2
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 133
    .end local v4    # "notificationIntent":Landroid/content/Intent;
    .restart local v5    # "notificationIntent":Landroid/content/Intent;
    const/high16 v7, 0x34000000

    :try_start_3
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    const-string v7, "content://mms-sms/"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 138
    .local v1, "MmsSms":Landroid/net/Uri;
    const-string v7, "conversations"

    invoke-static {v1, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 140
    .local v0, "CONTENT_URI":Landroid/net/Uri;
    iget v7, p0, LDaemon/Service/Notice;->threadId:I

    if-lez v7, :cond_0

    .line 142
    iget v7, p0, LDaemon/Service/Notice;->threadId:I

    int-to-long v7, v7

    .line 141
    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object v4, v5

    .end local v5    # "notificationIntent":Landroid/content/Intent;
    .restart local v4    # "notificationIntent":Landroid/content/Intent;
    goto :goto_0

    .line 144
    .end local v4    # "notificationIntent":Landroid/content/Intent;
    .restart local v5    # "notificationIntent":Landroid/content/Intent;
    :cond_0
    const-string v7, "vnd.android-dir/mms-sms"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v5

    .line 146
    .end local v5    # "notificationIntent":Landroid/content/Intent;
    .restart local v4    # "notificationIntent":Landroid/content/Intent;
    goto :goto_0

    .line 148
    .end local v0    # "CONTENT_URI":Landroid/net/Uri;
    .end local v1    # "MmsSms":Landroid/net/Uri;
    :pswitch_2
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "video_mode:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LDaemon/Service/Notice;->print(Ljava/lang/String;)V

    .line 149
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 150
    .end local v4    # "notificationIntent":Landroid/content/Intent;
    .restart local v5    # "notificationIntent":Landroid/content/Intent;
    const/high16 v7, 0x10000000

    :try_start_5
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 151
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v3, "f":Ljava/io/File;
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 153
    iget-object v8, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    invoke-static {v8}, LDaemon/Service/Notice;->getType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 152
    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v4, v5

    .line 155
    .end local v5    # "notificationIntent":Landroid/content/Intent;
    .restart local v4    # "notificationIntent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 157
    .end local v3    # "f":Ljava/io/File;
    :pswitch_3
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ie_mode:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LDaemon/Service/Notice;->print(Ljava/lang/String;)V

    .line 158
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    .line 159
    iget-object v8, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 158
    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 160
    .end local v4    # "notificationIntent":Landroid/content/Intent;
    .restart local v5    # "notificationIntent":Landroid/content/Intent;
    const/high16 v7, 0x34000000

    :try_start_7
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object v4, v5

    .end local v5    # "notificationIntent":Landroid/content/Intent;
    .restart local v4    # "notificationIntent":Landroid/content/Intent;
    goto/16 :goto_0

    .line 165
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 166
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "startActivity:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LDaemon/Service/Notice;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "notificationIntent":Landroid/content/Intent;
    .restart local v5    # "notificationIntent":Landroid/content/Intent;
    :catch_1
    move-exception v7

    move-object v2, v7

    move-object v4, v5

    .end local v5    # "notificationIntent":Landroid/content/Intent;
    .restart local v4    # "notificationIntent":Landroid/content/Intent;
    goto :goto_1

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getfilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public setThreadID(I)V
    .locals 0
    .param p1, "threadId"    # I

    .prologue
    .line 89
    iput p1, p0, LDaemon/Service/Notice;->threadId:I

    .line 90
    return-void
.end method

.method public setfilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, LDaemon/Service/Notice;->filename:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public showNotice(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "noticeinfo"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 49
    const-string v1, "new notice"

    invoke-static {v1}, LDaemon/Service/Notice;->print(Ljava/lang/String;)V

    .line 50
    const v0, 0x108008f

    .line 51
    .local v0, "icon":I
    packed-switch p3, :pswitch_data_0

    .line 74
    :goto_0
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v0, p1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, LDaemon/Service/Notice;->notif:Landroid/app/Notification;

    .line 75
    iget-object v1, p0, LDaemon/Service/Notice;->notif:Landroid/app/Notification;

    iget-object v2, p0, LDaemon/Service/Notice;->mCtx:Landroid/content/Context;

    iget-object v3, p0, LDaemon/Service/Notice;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, p1, p2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 76
    iget-object v1, p0, LDaemon/Service/Notice;->notif:Landroid/app/Notification;

    const/16 v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 77
    iget-object v1, p0, LDaemon/Service/Notice;->notif:Landroid/app/Notification;

    const/4 v2, -0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 78
    iget-object v1, p0, LDaemon/Service/Notice;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, LDaemon/Service/Notice;->notif:Landroid/app/Notification;

    invoke-virtual {v1, p3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 79
    return-void

    .line 53
    :pswitch_0
    const v0, 0x108007c

    .line 54
    iget-object v1, p0, LDaemon/Service/Notice;->mCtx:Landroid/content/Context;

    iget-object v2, p0, LDaemon/Service/Notice;->mCtx:Landroid/content/Context;

    invoke-virtual {p0, v2, v5}, LDaemon/Service/Notice;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, LDaemon/Service/Notice;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 58
    :pswitch_1
    const v0, 0x7f02001e

    .line 59
    iget-object v1, p0, LDaemon/Service/Notice;->mCtx:Landroid/content/Context;

    iget-object v2, p0, LDaemon/Service/Notice;->mCtx:Landroid/content/Context;

    .line 60
    const/4 v3, 0x1

    .line 59
    invoke-virtual {p0, v2, v3}, LDaemon/Service/Notice;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, LDaemon/Service/Notice;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 63
    :pswitch_2
    const v0, 0x1080024

    .line 64
    iget-object v1, p0, LDaemon/Service/Notice;->mCtx:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    .line 65
    iget-object v3, p0, LDaemon/Service/Notice;->mCtx:Landroid/content/Context;

    const-class v4, LHamsterSuper/Client/Game/NoticeVideo;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, LDaemon/Service/Notice;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 68
    :pswitch_3
    const v0, 0x1080074

    .line 69
    iget-object v1, p0, LDaemon/Service/Notice;->mCtx:Landroid/content/Context;

    iget-object v2, p0, LDaemon/Service/Notice;->mCtx:Landroid/content/Context;

    .line 70
    const/4 v3, 0x3

    .line 69
    invoke-virtual {p0, v2, v3}, LDaemon/Service/Notice;->getIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, LDaemon/Service/Notice;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
