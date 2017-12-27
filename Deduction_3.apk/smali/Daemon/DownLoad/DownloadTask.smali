.class public LDaemon/DownLoad/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# static fields
.field private static MAX_THREAD_NUMBER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DownloadTask"


# instance fields
.field private mConnection:Ljava/net/HttpURLConnection;

.field private mDownlenLen:I

.field private mDownloadFile:Ljava/io/File;

.field private mDownloadThreads:[LDaemon/DownLoad/DownloadThread;

.field private mFilePath:Ljava/lang/String;

.field private mFileService:LDaemon/DownLoad/FileService;

.field private mFileSize:I

.field private mIsFinish:Z

.field private mStartPosition:I

.field private mTargetFile:Ljava/io/RandomAccessFile;

.field private mTempDownloadFile:Ljava/io/File;

.field private mThreadDownloadInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadNum:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    sput v0, LDaemon/DownLoad/DownloadTask;->MAX_THREAD_NUMBER:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, LDaemon/DownLoad/DownloadTask;->mIsFinish:Z

    .line 24
    new-instance v0, LDaemon/DownLoad/FileService;

    invoke-direct {v0, p1}, LDaemon/DownLoad/FileService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LDaemon/DownLoad/DownloadTask;->mFileService:LDaemon/DownLoad/FileService;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    const-string v1, "/download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    iput-object v0, p0, LDaemon/DownLoad/DownloadTask;->mFilePath:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private checkUrl(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 8
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    const-string v7, "checkUrl:"

    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "connection":Ljava/net/HttpURLConnection;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkUrl:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LDaemon/DownLoad/DownloadTask;->print(Ljava/lang/String;)V

    .line 155
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 157
    .local v3, "urlObj":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 156
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 158
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v4, 0x1770

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 159
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 161
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 162
    move-object v1, v0

    .line 171
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "urlObj":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 164
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "urlObj":Ljava/net/URL;
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Connect url failed! code "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "urlObj":Ljava/net/URL;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkUrl:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LDaemon/DownLoad/DownloadTask;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getFileName(Ljava/net/URL;Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 263
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "downloadUrl":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "filename":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 269
    :cond_0
    const/4 v2, 0x0

    .line 270
    .local v2, "i":I
    :goto_0
    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "mine":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 284
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v2    # "i":I
    .end local v4    # "mine":Ljava/lang/String;
    :cond_1
    move-object v5, v1

    .line 287
    :goto_1
    return-object v5

    .line 274
    .restart local v2    # "i":I
    .restart local v4    # "mine":Ljava/lang/String;
    :cond_2
    const-string v5, "content-disposition"

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v6

    .line 275
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 274
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 277
    const-string v5, ".*filename=(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 278
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 277
    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 279
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 280
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 269
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initInterruptedTask(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "totalSize"    # I

    .prologue
    .line 229
    const/4 v2, 0x0

    .line 231
    .local v2, "ret":Z
    iput p2, p0, LDaemon/DownLoad/DownloadTask;->mFileSize:I

    .line 232
    iput-object p1, p0, LDaemon/DownLoad/DownloadTask;->mUrl:Ljava/lang/String;

    .line 234
    iget-object v3, p0, LDaemon/DownLoad/DownloadTask;->mFileService:LDaemon/DownLoad/FileService;

    invoke-virtual {v3, p1}, LDaemon/DownLoad/FileService;->getData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, LDaemon/DownLoad/DownloadTask;->mThreadDownloadInfo:Ljava/util/Map;

    .line 235
    iget-object v3, p0, LDaemon/DownLoad/DownloadTask;->mThreadDownloadInfo:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iput v3, p0, LDaemon/DownLoad/DownloadTask;->mThreadNum:I

    .line 237
    iget v3, p0, LDaemon/DownLoad/DownloadTask;->mThreadNum:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 259
    :goto_0
    return v2

    .line 243
    :cond_0
    :try_start_0
    iget-object v3, p0, LDaemon/DownLoad/DownloadTask;->mThreadDownloadInfo:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, LDaemon/DownLoad/DownloadTask;->mStartPosition:I

    .line 244
    iget-object v3, p0, LDaemon/DownLoad/DownloadTask;->mTargetFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v1, v3

    .line 246
    .local v1, "filePosition":I
    iget v3, p0, LDaemon/DownLoad/DownloadTask;->mStartPosition:I

    if-eq v1, v3, :cond_1

    .line 247
    const-string v3, "Record Error : the start position is not consistent"

    invoke-static {v3}, LDaemon/DownLoad/DownloadTask;->print(Ljava/lang/String;)V

    .line 248
    iput v1, p0, LDaemon/DownLoad/DownloadTask;->mStartPosition:I

    .line 251
    :cond_1
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v4, p0, LDaemon/DownLoad/DownloadTask;->mTempDownloadFile:Ljava/io/File;

    const-string v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, LDaemon/DownLoad/DownloadTask;->mTargetFile:Ljava/io/RandomAccessFile;

    .line 252
    iget-object v3, p0, LDaemon/DownLoad/DownloadTask;->mTargetFile:Ljava/io/RandomAccessFile;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 254
    iget v3, p0, LDaemon/DownLoad/DownloadTask;->mStartPosition:I

    sub-int v3, p2, v3

    iput v3, p0, LDaemon/DownLoad/DownloadTask;->mDownlenLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v1    # "filePosition":I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initInterruptedTask:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LDaemon/DownLoad/DownloadTask;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initNewTask(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "threadNum"    # I

    .prologue
    const/4 v4, 0x0

    .line 200
    iget-object v1, p0, LDaemon/DownLoad/DownloadTask;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    move v1, v4

    .line 225
    :goto_0
    return v1

    .line 205
    :cond_0
    iget-object v1, p0, LDaemon/DownLoad/DownloadTask;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    iput v1, p0, LDaemon/DownLoad/DownloadTask;->mDownlenLen:I

    .line 206
    iget v1, p0, LDaemon/DownLoad/DownloadTask;->mDownlenLen:I

    iput v1, p0, LDaemon/DownLoad/DownloadTask;->mFileSize:I

    .line 207
    iput-object p1, p0, LDaemon/DownLoad/DownloadTask;->mUrl:Ljava/lang/String;

    .line 208
    iget v1, p0, LDaemon/DownLoad/DownloadTask;->mDownlenLen:I

    if-ltz v1, :cond_2

    move v1, v4

    :goto_1
    iput v1, p0, LDaemon/DownLoad/DownloadTask;->mStartPosition:I

    .line 211
    :try_start_0
    iget-object v1, p0, LDaemon/DownLoad/DownloadTask;->mTempDownloadFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, LDaemon/DownLoad/DownloadTask;->mTempDownloadFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 214
    :cond_1
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, LDaemon/DownLoad/DownloadTask;->mTempDownloadFile:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, LDaemon/DownLoad/DownloadTask;->mTargetFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_2
    sget v1, LDaemon/DownLoad/DownloadTask;->MAX_THREAD_NUMBER:I

    if-le p2, v1, :cond_3

    sget v1, LDaemon/DownLoad/DownloadTask;->MAX_THREAD_NUMBER:I

    :goto_3
    iput v1, p0, LDaemon/DownLoad/DownloadTask;->mThreadNum:I

    .line 222
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, LDaemon/DownLoad/DownloadTask;->mThreadDownloadInfo:Ljava/util/Map;

    .line 223
    iget-object v1, p0, LDaemon/DownLoad/DownloadTask;->mThreadDownloadInfo:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const/4 v1, 0x1

    goto :goto_0

    .line 208
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 215
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initNewTask:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LDaemon/DownLoad/DownloadTask;->print(Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    move v1, p2

    .line 220
    goto :goto_3
.end method

.method public static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 291
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "DownloadTask"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    return-void
.end method

.method private setupDownloadFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v2, 0x0

    .line 178
    .local v2, "ret":Z
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 180
    .local v3, "urlObj":Ljava/net/URL;
    move-object v1, p2

    .line 181
    .local v1, "fname":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 182
    :cond_0
    iget-object v4, p0, LDaemon/DownLoad/DownloadTask;->mConnection:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v3, v4}, LDaemon/DownLoad/DownloadTask;->getFileName(Ljava/net/URL;Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 183
    const-string v4, ".zip"

    const-string v5, ".apk"

    invoke-static {v1, v4, v5}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, LDaemon/DownLoad/DownloadTask;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, LDaemon/DownLoad/DownloadTask;->mDownloadFile:Ljava/io/File;

    .line 187
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, LDaemon/DownLoad/DownloadTask;->mFilePath:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, LDaemon/DownLoad/DownloadTask;->mTempDownloadFile:Ljava/io/File;

    .line 189
    iget-object v4, p0, LDaemon/DownLoad/DownloadTask;->mFileService:LDaemon/DownLoad/FileService;

    invoke-virtual {v4, v1}, LDaemon/DownLoad/FileService;->setfilename(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    const/4 v2, 0x1

    .line 196
    .end local v1    # "fname":Ljava/lang/String;
    .end local v3    # "urlObj":Ljava/net/URL;
    :goto_0
    return v2

    .line 192
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setupDownloadFile:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LDaemon/DownLoad/DownloadTask;->print(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public initTask(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "threadNum"    # I

    .prologue
    const/4 v5, 0x0

    .line 34
    const/4 v2, 0x0

    .line 36
    .local v2, "ret":Z
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 37
    const-string v4, "/download/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "fileSaveDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    if-gtz p3, :cond_2

    :cond_1
    move v3, v2

    .line 60
    :goto_0
    return v3

    .line 45
    :cond_2
    invoke-direct {p0, p1}, LDaemon/DownLoad/DownloadTask;->checkUrl(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v3

    iput-object v3, p0, LDaemon/DownLoad/DownloadTask;->mConnection:Ljava/net/HttpURLConnection;

    .line 46
    iget-object v3, p0, LDaemon/DownLoad/DownloadTask;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v3, :cond_3

    move v3, v5

    .line 47
    goto :goto_0

    .line 49
    :cond_3
    invoke-direct {p0, p1, p2}, LDaemon/DownLoad/DownloadTask;->setupDownloadFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v5

    .line 50
    goto :goto_0

    .line 53
    :cond_4
    iget-object v3, p0, LDaemon/DownLoad/DownloadTask;->mFileService:LDaemon/DownLoad/FileService;

    invoke-virtual {v3, p1}, LDaemon/DownLoad/FileService;->getDataFileSize(Ljava/lang/String;)I

    move-result v1

    .line 54
    .local v1, "fileSize":I
    if-nez v1, :cond_5

    .line 55
    invoke-direct {p0, p1, p3}, LDaemon/DownLoad/DownloadTask;->initNewTask(Ljava/lang/String;I)Z

    move-result v2

    :goto_1
    move v3, v2

    .line 60
    goto :goto_0

    .line 57
    :cond_5
    invoke-direct {p0, p1, v1}, LDaemon/DownLoad/DownloadTask;->initInterruptedTask(Ljava/lang/String;I)Z

    move-result v2

    goto :goto_1
.end method

.method public start()V
    .locals 10

    .prologue
    .line 64
    iget-object v0, p0, LDaemon/DownLoad/DownloadTask;->mConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 69
    :cond_0
    :try_start_0
    iget v0, p0, LDaemon/DownLoad/DownloadTask;->mThreadNum:I

    new-array v0, v0, [LDaemon/DownLoad/DownloadThread;

    iput-object v0, p0, LDaemon/DownLoad/DownloadTask;->mDownloadThreads:[LDaemon/DownLoad/DownloadThread;

    .line 72
    new-instance v2, Ljava/net/URL;

    iget-object v0, p0, LDaemon/DownLoad/DownloadTask;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, "url":Ljava/net/URL;
    iget-object v8, p0, LDaemon/DownLoad/DownloadTask;->mDownloadThreads:[LDaemon/DownLoad/DownloadThread;

    const/4 v9, 0x0

    new-instance v0, LDaemon/DownLoad/DownloadThread;

    const/4 v1, 0x0

    iget v3, p0, LDaemon/DownLoad/DownloadTask;->mStartPosition:I

    .line 74
    iget v4, p0, LDaemon/DownLoad/DownloadTask;->mDownlenLen:I

    iget-object v5, p0, LDaemon/DownLoad/DownloadTask;->mTargetFile:Ljava/io/RandomAccessFile;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, LDaemon/DownLoad/DownloadThread;-><init>(ILjava/net/URL;IILjava/io/RandomAccessFile;LDaemon/DownLoad/DownloadTask;)V

    .line 73
    aput-object v0, v8, v9

    .line 75
    iget-object v0, p0, LDaemon/DownLoad/DownloadTask;->mDownloadThreads:[LDaemon/DownLoad/DownloadThread;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, LDaemon/DownLoad/DownloadThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :cond_1
    :goto_1
    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 81
    iget-boolean v0, p0, LDaemon/DownLoad/DownloadTask;->mIsFinish:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 85
    .local v7, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InterruptedException:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/DownLoad/DownloadTask;->print(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 89
    .end local v2    # "url":Ljava/net/URL;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 90
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/DownLoad/DownloadTask;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized updateDownloadInfo(IIZ)V
    .locals 6
    .param p1, "threadId"    # I
    .param p2, "position"    # I
    .param p3, "error"    # Z

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, LDaemon/DownLoad/DownloadTask;->mThreadDownloadInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget v2, p0, LDaemon/DownLoad/DownloadTask;->mStartPosition:I

    sub-int v2, p2, v2

    add-int/lit8 v1, v2, 0x1

    .line 99
    .local v1, "hasDownload":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mDownlenLen:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, LDaemon/DownLoad/DownloadTask;->mDownlenLen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "hasDownload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/DownLoad/DownloadTask;->print(Ljava/lang/String;)V

    .line 100
    if-nez p3, :cond_2

    .line 102
    iget v2, p0, LDaemon/DownLoad/DownloadTask;->mDownlenLen:I

    if-eq v1, v2, :cond_0

    iget v2, p0, LDaemon/DownLoad/DownloadTask;->mDownlenLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 104
    :cond_0
    :try_start_1
    iget-object v2, p0, LDaemon/DownLoad/DownloadTask;->mTargetFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 105
    iget-object v2, p0, LDaemon/DownLoad/DownloadTask;->mDownloadFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/DownLoad/DownloadTask;->print(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, LDaemon/DownLoad/DownloadTask;->mTempDownloadFile:Ljava/io/File;

    iget-object v3, p0, LDaemon/DownLoad/DownloadTask;->mDownloadFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 108
    iget-object v2, p0, LDaemon/DownLoad/DownloadTask;->mFileService:LDaemon/DownLoad/FileService;

    iget-object v3, p0, LDaemon/DownLoad/DownloadTask;->mUrl:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, LDaemon/DownLoad/FileService;->delete(Ljava/lang/String;Z)V

    .line 109
    const/4 v2, 0x1

    iput-boolean v2, p0, LDaemon/DownLoad/DownloadTask;->mIsFinish:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateDownloadInfo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/DownLoad/DownloadTask;->print(Ljava/lang/String;)V

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    if-eqz p3, :cond_1

    iget v2, p0, LDaemon/DownLoad/DownloadTask;->mFileSize:I

    if-lez v2, :cond_1

    .line 121
    iget-object v2, p0, LDaemon/DownLoad/DownloadTask;->mFileService:LDaemon/DownLoad/FileService;

    iget v3, p0, LDaemon/DownLoad/DownloadTask;->mFileSize:I

    iget-object v4, p0, LDaemon/DownLoad/DownloadTask;->mUrl:Ljava/lang/String;

    iget-object v5, p0, LDaemon/DownLoad/DownloadTask;->mThreadDownloadInfo:Ljava/util/Map;

    invoke-virtual {v2, v3, v4, v5}, LDaemon/DownLoad/FileService;->save(ILjava/lang/String;Ljava/util/Map;)V

    .line 122
    const/4 v2, 0x1

    iput-boolean v2, p0, LDaemon/DownLoad/DownloadTask;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 96
    .end local v1    # "hasDownload":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 115
    .restart local v1    # "hasDownload":I
    :cond_3
    :try_start_3
    const-string v2, "Shouldn\'t be here!"

    invoke-static {v2}, LDaemon/DownLoad/DownloadTask;->print(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
