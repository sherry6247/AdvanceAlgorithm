.class public LDaemon/DownLoad/DownloadThread;
.super Ljava/lang/Thread;
.source "DownloadThread.java"


# static fields
.field private static DEFAULT_BUFFER_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DownloadThread"


# instance fields
.field private finish:Z

.field private interrupt:Z

.field private mDownloadLen:I

.field private mID:I

.field private mStartPosition:I

.field private mTargetFile:Ljava/io/RandomAccessFile;

.field private mTask:LDaemon/DownLoad/DownloadTask;

.field private mUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x400

    sput v0, LDaemon/DownLoad/DownloadThread;->DEFAULT_BUFFER_SIZE:I

    .line 12
    return-void
.end method

.method public constructor <init>(ILjava/net/URL;IILjava/io/RandomAccessFile;LDaemon/DownLoad/DownloadTask;)V
    .locals 1
    .param p1, "threadId"    # I
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "startPosition"    # I
    .param p4, "downloadLen"    # I
    .param p5, "saveFile"    # Ljava/io/RandomAccessFile;
    .param p6, "task"    # LDaemon/DownLoad/DownloadTask;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 16
    iput-boolean v0, p0, LDaemon/DownLoad/DownloadThread;->finish:Z

    .line 17
    iput-boolean v0, p0, LDaemon/DownLoad/DownloadThread;->interrupt:Z

    .line 29
    iput p1, p0, LDaemon/DownLoad/DownloadThread;->mID:I

    .line 30
    iput-object p2, p0, LDaemon/DownLoad/DownloadThread;->mUrl:Ljava/net/URL;

    .line 31
    iput p3, p0, LDaemon/DownLoad/DownloadThread;->mStartPosition:I

    .line 32
    iput p4, p0, LDaemon/DownLoad/DownloadThread;->mDownloadLen:I

    .line 33
    iput-object p5, p0, LDaemon/DownLoad/DownloadThread;->mTargetFile:Ljava/io/RandomAccessFile;

    .line 34
    iput-object p6, p0, LDaemon/DownLoad/DownloadThread;->mTask:LDaemon/DownLoad/DownloadTask;

    .line 35
    return-void
.end method

.method private static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 94
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "DownloadThread"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public GetInterrupt()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, LDaemon/DownLoad/DownloadThread;->interrupt:Z

    return v0
.end method

.method public SetInterrupt()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, LDaemon/DownLoad/DownloadThread;->interrupt:Z

    .line 132
    return-void
.end method

.method public isFinish()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, LDaemon/DownLoad/DownloadThread;->finish:Z

    return v0
.end method

.method public run()V
    .locals 16

    .prologue
    const/4 v14, 0x1

    const-string v15, "download OK"

    .line 42
    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DownloadThread;->mDownloadLen:I

    move v3, v0

    .line 43
    .local v3, "bytesLeft":I
    const/4 v7, 0x0

    .line 44
    .local v7, "errorFlag":Z
    const/4 v9, 0x1

    .line 45
    .local v9, "isEncodecByChunked":Z
    const/4 v4, 0x0

    .line 46
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    .line 49
    .local v8, "is":Ljava/io/InputStream;
    :try_start_0
    sget v2, LDaemon/DownLoad/DownloadThread;->DEFAULT_BUFFER_SIZE:I

    .line 50
    .local v2, "bufferSize":I
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "download start:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/DownLoad/DownloadThread;->mUrl:Ljava/net/URL;

    move-object v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mDownloadLen:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DownloadThread;->mDownloadLen:I

    move v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, LDaemon/DownLoad/DownloadThread;->print(Ljava/lang/String;)V

    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/DownLoad/DownloadThread;->mUrl:Ljava/net/URL;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 53
    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DownloadThread;->mDownloadLen:I

    move v11, v0

    if-lez v11, :cond_0

    .line 54
    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DownloadThread;->mStartPosition:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DownloadThread;->mDownloadLen:I

    move v12, v0

    add-int/2addr v11, v12

    sub-int v6, v11, v14

    .line 55
    .local v6, "endPosition":I
    const-string v11, "Range"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "bytes="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DownloadThread;->mStartPosition:I

    move v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 55
    invoke-virtual {v4, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v9, 0x0

    .line 59
    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DownloadThread;->mDownloadLen:I

    move v11, v0

    sget v12, LDaemon/DownLoad/DownloadThread;->DEFAULT_BUFFER_SIZE:I

    if-ge v11, v12, :cond_0

    .line 60
    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DownloadThread;->mDownloadLen:I

    move v2, v0

    .line 62
    .end local v6    # "endPosition":I
    :cond_0
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 64
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 66
    new-array v1, v2, [B

    .line 68
    .local v1, "buffer":[B
    invoke-virtual {v8, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .line 69
    .local v10, "rb":I
    :goto_0
    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 75
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 77
    if-nez v9, :cond_3

    if-eqz v3, :cond_3

    .line 78
    const/4 v7, 0x1

    .line 79
    const-string v11, "Error happens when Downloading file : dowload more bytes than need "

    invoke-static {v11}, LDaemon/DownLoad/DownloadThread;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_1
    const-string v11, "download OK"

    invoke-static {v15}, LDaemon/DownLoad/DownloadThread;->print(Ljava/lang/String;)V

    .line 88
    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DownloadThread;->mStartPosition:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DownloadThread;->mDownloadLen:I

    move v12, v0

    add-int/2addr v11, v12

    sub-int/2addr v11, v3

    sub-int v6, v11, v14

    .line 89
    .restart local v6    # "endPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/DownLoad/DownloadThread;->mTask:LDaemon/DownLoad/DownloadTask;

    move-object v11, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DownloadThread;->mID:I

    move v12, v0

    invoke-virtual {v11, v12, v6, v7}, LDaemon/DownLoad/DownloadTask;->updateDownloadInfo(IIZ)V

    .line 91
    .end local v1    # "buffer":[B
    .end local v2    # "bufferSize":I
    .end local v10    # "rb":I
    :goto_2
    return-void

    .line 70
    .end local v6    # "endPosition":I
    .restart local v1    # "buffer":[B
    .restart local v2    # "bufferSize":I
    .restart local v10    # "rb":I
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/DownLoad/DownloadThread;->mTargetFile:Ljava/io/RandomAccessFile;

    move-object v11, v0

    const/4 v12, 0x0

    invoke-virtual {v11, v1, v12, v10}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 71
    if-nez v9, :cond_2

    .line 72
    sub-int/2addr v3, v10

    .line 73
    :cond_2
    invoke-virtual {v8, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    goto :goto_0

    .line 81
    :cond_3
    invoke-virtual/range {p0 .. p0}, LDaemon/DownLoad/DownloadThread;->setFinish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 83
    .end local v1    # "buffer":[B
    .end local v2    # "bufferSize":I
    .end local v10    # "rb":I
    :catch_0
    move-exception v11

    move-object v5, v11

    .line 84
    .local v5, "e":Ljava/lang/Exception;
    const/4 v7, 0x1

    .line 85
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "download error:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, LDaemon/DownLoad/DownloadThread;->print(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    const-string v11, "download OK"

    invoke-static {v15}, LDaemon/DownLoad/DownloadThread;->print(Ljava/lang/String;)V

    .line 88
    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DownloadThread;->mStartPosition:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DownloadThread;->mDownloadLen:I

    move v12, v0

    add-int/2addr v11, v12

    sub-int/2addr v11, v3

    sub-int v6, v11, v14

    .line 89
    .restart local v6    # "endPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/DownLoad/DownloadThread;->mTask:LDaemon/DownLoad/DownloadTask;

    move-object v11, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DownloadThread;->mID:I

    move v12, v0

    invoke-virtual {v11, v12, v6, v7}, LDaemon/DownLoad/DownloadTask;->updateDownloadInfo(IIZ)V

    goto :goto_2

    .line 86
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "endPosition":I
    :catchall_0
    move-exception v11

    .line 87
    const-string v12, "download OK"

    invoke-static {v15}, LDaemon/DownLoad/DownloadThread;->print(Ljava/lang/String;)V

    .line 88
    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DownloadThread;->mStartPosition:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DownloadThread;->mDownloadLen:I

    move v13, v0

    add-int/2addr v12, v13

    sub-int/2addr v12, v3

    sub-int v6, v12, v14

    .line 89
    .restart local v6    # "endPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/DownLoad/DownloadThread;->mTask:LDaemon/DownLoad/DownloadTask;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DownloadThread;->mID:I

    move v13, v0

    invoke-virtual {v12, v13, v6, v7}, LDaemon/DownLoad/DownloadTask;->updateDownloadInfo(IIZ)V

    .line 90
    throw v11
.end method

.method public setFinish()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, LDaemon/DownLoad/DownloadThread;->finish:Z

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, LDaemon/DownLoad/DownloadThread;->interrupt:Z

    .line 109
    return-void
.end method
