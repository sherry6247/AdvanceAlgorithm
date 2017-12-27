.class public LDaemon/DownLoad/FileDownloader;
.super Ljava/lang/Object;
.source "FileDownloader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileDownloader"

.field public static final threadsnoFinish:I = 0x0

.field public static final threadsnofound:I = 0x2

.field public static final threadsokFinish:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private fileService:LDaemon/DownLoad/FileService;

.field private mDownloadTask:LDaemon/DownLoad/DownloadTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, LDaemon/DownLoad/FileDownloader;->context:Landroid/content/Context;

    .line 85
    new-instance v0, LDaemon/DownLoad/FileService;

    invoke-direct {v0, p1}, LDaemon/DownLoad/FileService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    .line 86
    new-instance v0, LDaemon/DownLoad/DownloadTask;

    invoke-direct {v0, p1}, LDaemon/DownLoad/DownloadTask;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LDaemon/DownLoad/FileDownloader;->mDownloadTask:LDaemon/DownLoad/DownloadTask;

    .line 88
    return-void
.end method

.method public static getHttpResponseHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 4
    .param p0, "http"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 140
    .local v0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 142
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "mine":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 151
    return-object v0

    .line 147
    :cond_0
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 179
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "FileDownloader"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    return-void
.end method

.method public static printResponseHeader(Ljava/net/HttpURLConnection;)V
    .locals 6
    .param p0, "http"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 164
    invoke-static {p0}, LDaemon/DownLoad/FileDownloader;->getHttpResponseHeader(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v1

    .line 166
    .local v1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0    # "http":Ljava/net/HttpURLConnection;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 174
    return-void

    .line 166
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 168
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 170
    .local v2, "key":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LDaemon/DownLoad/FileDownloader;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const-string v4, ""

    move-object v2, v4

    goto :goto_1
.end method


# virtual methods
.method public UpdateFileDownloader(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "threadNum"    # I

    .prologue
    const-string v2, "Init download task failed!"

    .line 107
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->mDownloadTask:LDaemon/DownLoad/DownloadTask;

    invoke-virtual {v0, p1, p2, p3}, LDaemon/DownLoad/DownloadTask;->initTask(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const-string v0, "Init download task failed!"

    invoke-static {v2}, LDaemon/DownLoad/FileDownloader;->print(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Init download task failed!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    return-void
.end method

.method public addEvent(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 11
    .param p1, "packnum"    # I
    .param p2, "version"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "txt"    # Ljava/lang/String;
    .param p5, "push"    # I
    .param p6, "pushnum"    # Ljava/lang/String;
    .param p7, "downpath"    # Ljava/lang/String;
    .param p8, "priority"    # I
    .param p9, "strategy"    # I

    .prologue
    .line 68
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    const/4 v3, 0x1

    move v1, p2

    move v2, p1

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, LDaemon/DownLoad/FileService;->IsOkDownFile(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "push-------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/DownLoad/FileService;->print(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    invoke-virtual {v0}, LDaemon/DownLoad/FileService;->push()V

    .line 74
    :cond_0
    return-void
.end method

.method public download(LDaemon/DownLoad/DownloadProgressListener;)V
    .locals 1
    .param p1, "listener"    # LDaemon/DownLoad/DownloadProgressListener;

    .prologue
    .line 123
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->mDownloadTask:LDaemon/DownLoad/DownloadTask;

    invoke-virtual {v0}, LDaemon/DownLoad/DownloadTask;->start()V

    .line 124
    return-void
.end method

.method public push()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "heart push-------"

    invoke-static {v0}, LDaemon/DownLoad/FileService;->print(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    invoke-virtual {v0}, LDaemon/DownLoad/FileService;->push()V

    .line 55
    return-void
.end method

.method public setType(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)I
    .locals 11
    .param p1, "packnum"    # I
    .param p2, "version"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "txt"    # Ljava/lang/String;
    .param p5, "push"    # I
    .param p6, "pushnum"    # Ljava/lang/String;
    .param p7, "downpath"    # Ljava/lang/String;
    .param p8, "priority"    # I
    .param p9, "strategy"    # I

    .prologue
    .line 37
    iget-object v0, p0, LDaemon/DownLoad/FileDownloader;->fileService:LDaemon/DownLoad/FileService;

    const/4 v3, 0x0

    move v1, p2

    move v2, p1

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, LDaemon/DownLoad/FileService;->IsOkDownFile(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x2

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
