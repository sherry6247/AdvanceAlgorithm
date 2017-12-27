.class public LDaemon/Service/ServerConnecter;
.super Ljava/lang/Object;
.source "ServerConnecter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDaemon/Service/ServerConnecter$httpState;
    }
.end annotation


# static fields
.field private static Tag:Ljava/lang/String; = null

.field private static final http_again_time:J = 0x7530L

.field private static final maxTryTimes:I = 0x3

.field private static final timeoutValue:I = 0x4e20


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHttpBase:LDaemon/Base/HttpBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "ServerConnecter"

    sput-object v0, LDaemon/Service/ServerConnecter;->Tag:Ljava/lang/String;

    .line 18
    return-void
.end method

.method constructor <init>(Landroid/content/Context;LDaemon/Base/HttpBase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "base"    # LDaemon/Base/HttpBase;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, LDaemon/Service/ServerConnecter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, LDaemon/Service/ServerConnecter;->mHttpBase:LDaemon/Base/HttpBase;

    .line 28
    return-void
.end method

.method private Httpconnect(Ljava/lang/String;Landroid/content/Context;)LDaemon/Service/ServerConnecter$httpState;
    .locals 24
    .param p1, "connURL"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v6, 0x0

    .line 79
    .local v6, "conn":Ljava/net/URLConnection;
    sget-object v19, LDaemon/Service/ServerConnecter$httpState;->error:LDaemon/Service/ServerConnecter$httpState;

    .line 80
    .local v19, "status":LDaemon/Service/ServerConnecter$httpState;
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "connURL is "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, LDaemon/Service/ServerConnecter;->print(Ljava/lang/String;)V

    .line 81
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "hostURL is "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v23, LDaemon/Action/Action;->host:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, LDaemon/Service/ServerConnecter;->print(Ljava/lang/String;)V

    .line 82
    sget-object v22, LDaemon/Action/Action;->host:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 83
    const/16 v18, 0x0

    .line 84
    .local v18, "oldIndex":I
    const-string v22, "http://"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_0

    const-string v22, "https://"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 85
    :cond_0
    const/16 v22, 0x2f

    const/16 v23, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v18

    .line 86
    :cond_1
    sget-object v22, LDaemon/Action/Action;->host:Ljava/lang/String;

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    add-int/lit8 v22, v18, 0x1

    move/from16 v13, v22

    .line 87
    .local v13, "index":I
    :goto_0
    new-instance v22, Ljava/lang/StringBuilder;

    sget-object v23, LDaemon/Action/Action;->host:Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    .end local v13    # "index":I
    .end local v18    # "oldIndex":I
    :cond_2
    const/16 v21, 0x0

    .line 91
    .local v21, "trytimes":I
    :cond_3
    :goto_1
    sget-object v22, LDaemon/Service/ServerConnecter$httpState;->success:LDaemon/Service/ServerConnecter$httpState;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_4

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_6

    .line 158
    :cond_4
    return-object v19

    .end local v21    # "trytimes":I
    .restart local v18    # "oldIndex":I
    :cond_5
    move/from16 v13, v18

    .line 86
    goto :goto_0

    .line 93
    .end local v18    # "oldIndex":I
    .restart local v21    # "trytimes":I
    :cond_6
    const/4 v7, 0x0

    .line 94
    .local v7, "dos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 95
    .local v3, "bis":Ljava/io/BufferedInputStream;
    const/4 v14, 0x0

    .line 96
    .local v14, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    check-cast v9, [B

    .line 99
    .local v9, "downim":[B
    :try_start_0
    new-instance v15, Ljava/net/URL;

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 100
    .local v15, "myurl":Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 101
    const/16 v22, 0x4e20

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 102
    const/16 v22, 0x4e20

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 104
    const-string v22, "finish openConnection"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, LDaemon/Service/ServerConnecter;->print(Ljava/lang/String;)V

    .line 106
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "URL:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, LDaemon/Service/ServerConnecter;->print(Ljava/lang/String;)V

    .line 110
    const-string v22, "connectivity"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 109
    check-cast v5, Landroid/net/ConnectivityManager;

    .line 111
    .local v5, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v17

    .line 112
    .local v17, "networkInfo":Landroid/net/NetworkInfo;
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->getType()I

    move-result v16

    .line 114
    .local v16, "netType":I
    if-nez v16, :cond_7

    .line 115
    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, LDaemon/Service/ServerConnecter;->setMobileConnection(Ljava/net/URLConnection;Ljava/lang/String;)V

    .line 117
    :cond_7
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 119
    const-string v22, "finish getInputStream"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, LDaemon/Service/ServerConnecter;->print(Ljava/lang/String;)V

    .line 121
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 122
    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .local v4, "bis":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 124
    .end local v7    # "dos":Ljava/io/ByteArrayOutputStream;
    .local v8, "dos":Ljava/io/ByteArrayOutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v12

    .local v12, "hh":I
    const/16 v22, -0x1

    move v0, v12

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 128
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 130
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 131
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 133
    const-string v22, "finish read from internet"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, LDaemon/Service/ServerConnecter;->print(Ljava/lang/String;)V

    .line 135
    const-string v22, "UTF-8"

    move-object v0, v9

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 136
    .local v20, "temp":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, LDaemon/Service/ServerConnecter;->print(Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/Service/ServerConnecter;->mHttpBase:LDaemon/Base/HttpBase;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, LDaemon/Base/HttpBase;->parsePackage(Ljava/lang/String;)LDaemon/Service/ServerConnecter$httpState;

    move-result-object v19

    .line 139
    sget-object v22, LDaemon/Service/ServerConnecter$httpState;->error:LDaemon/Service/ServerConnecter$httpState;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 140
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 125
    .end local v20    # "temp":Ljava/lang/String;
    :cond_8
    invoke-virtual {v8, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 142
    .end local v12    # "hh":I
    :catch_0
    move-exception v22

    move-object/from16 v11, v22

    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 143
    .end local v5    # "cm":Landroid/net/ConnectivityManager;
    .end local v8    # "dos":Ljava/io/ByteArrayOutputStream;
    .end local v15    # "myurl":Ljava/net/URL;
    .end local v16    # "netType":I
    .end local v17    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v7    # "dos":Ljava/io/ByteArrayOutputStream;
    .local v11, "ex":Ljava/lang/Exception;
    :goto_3
    add-int/lit8 v21, v21, 0x1

    .line 146
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "read from internet encouter an exception ex:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 146
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, LDaemon/Service/ServerConnecter;->print(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    const-wide/16 v22, 0x7530

    :try_start_3
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 152
    :catch_1
    move-exception v10

    .line 153
    .local v10, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 142
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v11    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v22

    move-object/from16 v11, v22

    goto :goto_3

    .end local v3    # "bis":Ljava/io/BufferedInputStream;
    .restart local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v5    # "cm":Landroid/net/ConnectivityManager;
    .restart local v15    # "myurl":Ljava/net/URL;
    .restart local v16    # "netType":I
    .restart local v17    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_3
    move-exception v22

    move-object/from16 v11, v22

    move-object v3, v4

    .end local v4    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "bis":Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method private print(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, LDaemon/Service/ServerConnecter;->Tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    return-void
.end method

.method private sendQueue(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 57
    :try_start_0
    sget-object v1, LDaemon/Service/ServerConnecter$httpState;->success:LDaemon/Service/ServerConnecter$httpState;

    .line 58
    .local v1, "end":LDaemon/Service/ServerConnecter$httpState;
    iget-object v2, p0, LDaemon/Service/ServerConnecter;->mHttpBase:LDaemon/Base/HttpBase;

    invoke-interface {v2}, LDaemon/Base/HttpBase;->getHttpUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1}, LDaemon/Service/ServerConnecter;->Httpconnect(Ljava/lang/String;Landroid/content/Context;)LDaemon/Service/ServerConnecter$httpState;

    move-result-object v1

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, LDaemon/Service/ServerConnecter;->print(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, LDaemon/Service/ServerConnecter;->mHttpBase:LDaemon/Base/HttpBase;

    invoke-interface {v2, v1}, LDaemon/Base/HttpBase;->setFinishState(LDaemon/Service/ServerConnecter$httpState;)V

    .line 62
    const-string v2, "thread is stop"

    invoke-direct {p0, v2}, LDaemon/Service/ServerConnecter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const-string v2, "sendQueue return true"

    invoke-direct {p0, v2}, LDaemon/Service/ServerConnecter;->print(Ljava/lang/String;)V

    .line 70
    const/4 v2, 0x1

    .end local v1    # "end":LDaemon/Service/ServerConnecter$httpState;
    :goto_0
    return v2

    .line 64
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendQueue encounter an exception e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, LDaemon/Service/ServerConnecter;->print(Ljava/lang/String;)V

    .line 66
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setMobileConnection(Ljava/net/URLConnection;Ljava/lang/String;)V
    .locals 6
    .param p1, "conn"    # Ljava/net/URLConnection;
    .param p2, "connURL"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x7

    const-string v5, "http://"

    const-string v4, "X-Online-Host"

    const-string v3, "/"

    .line 38
    const-string v0, "http://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 39
    const-string v0, "X-Online-Host"

    .line 40
    const-string v0, "http://"

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    const-string v1, "/"

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 39
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_0
    const-string v0, "Accept"

    const-string v1, "*/*"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "Content-Type"

    .line 46
    const-string v1, "application/x-www-form-urlencoded"

    .line 45
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "User-Agent"

    .line 48
    const-string v1, "microedition.platform"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void

    .line 42
    :cond_0
    const-string v0, "X-Online-Host"

    const/4 v0, 0x0

    .line 43
    const-string v1, "/"

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 42
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, LDaemon/Service/ServerConnecter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, LDaemon/Service/ServerConnecter;->sendQueue(Landroid/content/Context;)Z

    .line 34
    const-string v0, "Finished connectivity thread"

    invoke-direct {p0, v0}, LDaemon/Service/ServerConnecter;->print(Ljava/lang/String;)V

    .line 35
    return-void
.end method
