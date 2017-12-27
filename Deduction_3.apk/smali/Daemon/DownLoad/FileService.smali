.class public LDaemon/DownLoad/FileService;
.super Ljava/lang/Object;
.source "FileService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileService"

.field public static final fileroot:Ljava/lang/String; = "/download/"

.field static final packnum:I = 0x64

.field static final version:I = 0x64


# instance fields
.field private context:Landroid/content/Context;

.field private fileSaveDir:Ljava/io/File;

.field private filename:Ljava/lang/String;

.field private openHelper:LDaemon/DownLoad/DBOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, LDaemon/DownLoad/FileService;->context:Landroid/content/Context;

    .line 35
    new-instance v2, LDaemon/DownLoad/DBOpenHelper;

    invoke-direct {v2, p1}, LDaemon/DownLoad/DBOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    .line 36
    new-instance v2, Ljava/io/File;

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

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object v2, p0, LDaemon/DownLoad/FileService;->fileSaveDir:Ljava/io/File;

    .line 38
    iget-object v2, p0, LDaemon/DownLoad/FileService;->fileSaveDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 39
    iget-object v2, p0, LDaemon/DownLoad/FileService;->fileSaveDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 46
    :cond_0
    return-void

    .line 41
    :cond_1
    iget-object v2, p0, LDaemon/DownLoad/FileService;->fileSaveDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 42
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 43
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private buildDownloadTaskInfos(Ljava/lang/String;ILjava/util/Map;)Ljava/util/List;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v7, "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;>;"
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    return-object v7

    .line 172
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 173
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v0, LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;

    iget-object v1, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;-><init>(LDaemon/DownLoad/DBOpenHelper;Ljava/lang/String;III)V

    .line 173
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isNewData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v1, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v1, p1}, LDaemon/DownLoad/DBOpenHelper;->queryDownloadTaskInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 113
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 350
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    const-string v0, "FileService"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    return-void
.end method


# virtual methods
.method public IsOkDownFile(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 17
    .param p1, "version"    # I
    .param p2, "packnum"    # I
    .param p3, "downtemp"    # I
    .param p4, "push"    # I
    .param p5, "pushnum"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "txt"    # Ljava/lang/String;
    .param p8, "downpath"    # Ljava/lang/String;
    .param p9, "priority"    # I
    .param p10, "strategy"    # I

    .prologue
    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IsOkDownFile"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " down:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 295
    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 294
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LDaemon/DownLoad/FileService;->print(Ljava/lang/String;)V

    .line 297
    const/16 v3, 0x64

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_0

    const/16 v3, 0x64

    move/from16 v0, p2

    move v1, v3

    if-ne v0, v1, :cond_0

    .line 298
    const-string v3, "deleteupdate 100"

    invoke-static {v3}, LDaemon/DownLoad/FileService;->print(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p0 .. p0}, LDaemon/DownLoad/FileService;->deleteupdate()V

    .line 302
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, LDaemon/DownLoad/DBOpenHelper;->queryADInfo(II)Ljava/util/List;

    move-result-object v16

    .line 303
    .local v16, "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$AD_INFO;>;"
    if-eqz v16, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 304
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":LDaemon/DownLoad/FileService;
    check-cast p0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;

    move-object/from16 v0, p0

    iget v0, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mDownloadFlag:I

    move v3, v0

    if-lez v3, :cond_2

    .line 305
    const/4 v3, 0x0

    .line 314
    :goto_0
    return v3

    .line 307
    .restart local p0    # "this":LDaemon/DownLoad/FileService;
    :cond_1
    new-instance v3, LDaemon/DownLoad/DBOpenHelper$AD_INFO;

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v5, p8

    move-object/from16 v6, p8

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p4

    move/from16 v13, p3

    move/from16 v14, p9

    move/from16 v15, p10

    .line 309
    invoke-direct/range {v3 .. v15}, LDaemon/DownLoad/DBOpenHelper$AD_INFO;-><init>(LDaemon/DownLoad/DBOpenHelper;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 307
    move-object/from16 v0, v16

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, LDaemon/DownLoad/DBOpenHelper;->insertADInfo(Ljava/util/List;)Z

    .line 313
    .end local p0    # "this":LDaemon/DownLoad/FileService;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IsOkDownFile ok:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LDaemon/DownLoad/FileService;->print(Ljava/lang/String;)V

    .line 314
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public delete(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "download"    # Z

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delete path:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " filename:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LDaemon/DownLoad/FileService;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/DownLoad/FileService;->print(Ljava/lang/String;)V

    .line 256
    if-eqz p2, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LDaemon/DownLoad/FileService;->fileSaveDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LDaemon/DownLoad/FileService;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LDaemon/DownLoad/FileService;->updateDownFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_0
    iget-object v0, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v0, p1}, LDaemon/DownLoad/DBOpenHelper;->deleteDownloadTaskInfo(Ljava/lang/String;)Z

    .line 260
    if-eqz p2, :cond_1

    .line 261
    const-string v0, "down load push-------"

    invoke-static {v0}, LDaemon/DownLoad/FileService;->print(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, LDaemon/DownLoad/FileService;->push()V

    .line 265
    :cond_1
    return-void
.end method

.method public deleteupdate()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 278
    iget-object v0, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v0, v1, v1}, LDaemon/DownLoad/DBOpenHelper;->deleteADInfo(II)Z

    .line 279
    return-void
.end method

.method public getData(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v3, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v3, p1}, LDaemon/DownLoad/DBOpenHelper;->queryDownloadTaskInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 94
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 98
    return-object v0

    .line 94
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;

    .line 95
    .local v1, "i":LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;
    iget v4, v1, LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;->mThreadeId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;->mPosition:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getDataFileSize(Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 128
    .local v1, "ret":I
    iget-object v2, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v2, p1}, LDaemon/DownLoad/DBOpenHelper;->queryDownloadTaskInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 129
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 130
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":LDaemon/DownLoad/FileService;
    check-cast p0, LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;

    iget v1, p0, LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;->mFileSize:I

    .line 133
    :cond_0
    return v1
.end method

.method public getfile()Ljava/io/File;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, LDaemon/DownLoad/FileService;->fileSaveDir:Ljava/io/File;

    return-object v0
.end method

.method public getfilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, LDaemon/DownLoad/FileService;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized push()V
    .locals 10

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    sget-object v8, LHamsterSuper/Client/Game/BootReceiver;->mPhoneStateListener:LDaemon/Service/MyPhoneStateListener;

    if-eqz v8, :cond_0

    .line 188
    sget-object v8, LHamsterSuper/Client/Game/BootReceiver;->mPhoneStateListener:LDaemon/Service/MyPhoneStateListener;

    invoke-virtual {v8}, LDaemon/Service/MyPhoneStateListener;->isCallState()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_2

    .line 190
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LDaemon/Service/HeartConnecter;->getalltime()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "date":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "date:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LDaemon/DownLoad/FileService;->print(Ljava/lang/String;)V

    .line 192
    iget-object v8, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v8, v2}, LDaemon/DownLoad/DBOpenHelper;->queryADInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 193
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$AD_INFO;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 194
    :cond_1
    const-string v8, "infos size 0"

    invoke-static {v8}, LDaemon/DownLoad/FileService;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .end local v2    # "date":Ljava/lang/String;
    .end local v4    # "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$AD_INFO;>;"
    :cond_2
    monitor-exit p0

    return-void

    .line 197
    .restart local v2    # "date":Ljava/lang/String;
    .restart local v4    # "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$AD_INFO;>;"
    :cond_3
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "infos size:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " push_show_client:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 198
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LDaemon/DownLoad/DBOpenHelper$AD_INFO;

    iget v8, v8, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mPackNum:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 197
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LDaemon/DownLoad/FileService;->print(Ljava/lang/String;)V

    .line 199
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LDaemon/DownLoad/DBOpenHelper$AD_INFO;

    invoke-virtual {p0, v8}, LDaemon/DownLoad/FileService;->push_show_client(LDaemon/DownLoad/DBOpenHelper$AD_INFO;)V

    .line 201
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 202
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;

    .line 203
    .local v0, "ad":LDaemon/DownLoad/DBOpenHelper$AD_INFO;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "other AD_INFO id:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mPackNum:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mStrategy"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 204
    iget v9, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mStrategy:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 203
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LDaemon/DownLoad/FileService;->print(Ljava/lang/String;)V

    .line 205
    iget v8, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mStrategy:I

    if-nez v8, :cond_4

    .line 206
    invoke-virtual {p0, v0}, LDaemon/DownLoad/FileService;->push_show_client(LDaemon/DownLoad/DBOpenHelper$AD_INFO;)V

    .line 201
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 208
    :cond_4
    iget v8, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mStrategy:I

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit8 v8, v8, 0x3c

    mul-int/lit16 v1, v8, 0x3e8

    .line 209
    .local v1, "add_time":I
    if-nez v1, :cond_5

    .line 210
    const v1, 0x36ee80

    .line 212
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 213
    .local v5, "new_time":J
    int-to-long v8, v1

    add-long/2addr v5, v8

    .line 214
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 215
    const-string v8, "yyyyMMddHH"

    .line 214
    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 217
    .local v7, "simpleFormat":Ljava/text/SimpleDateFormat;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 216
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mPushFlag:I

    .line 218
    invoke-virtual {p0, v0}, LDaemon/DownLoad/FileService;->updatePush(LDaemon/DownLoad/DBOpenHelper$AD_INFO;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 187
    .end local v0    # "ad":LDaemon/DownLoad/DBOpenHelper$AD_INFO;
    .end local v1    # "add_time":I
    .end local v2    # "date":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$AD_INFO;>;"
    .end local v5    # "new_time":J
    .end local v7    # "simpleFormat":Ljava/text/SimpleDateFormat;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized push_show_client(LDaemon/DownLoad/DBOpenHelper$AD_INFO;)V
    .locals 4
    .param p1, "ad"    # LDaemon/DownLoad/DBOpenHelper$AD_INFO;

    .prologue
    .line 233
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput v1, p1, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mPushFlag:I

    .line 234
    invoke-virtual {p0, p1}, LDaemon/DownLoad/FileService;->updatePush(LDaemon/DownLoad/DBOpenHelper$AD_INFO;)V

    .line 235
    new-instance v0, LDaemon/Action/NoticeBase;

    invoke-direct {v0}, LDaemon/Action/NoticeBase;-><init>()V

    .line 236
    .local v0, "noticebase":LDaemon/Action/NoticeBase;
    iget-object v1, p1, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mSavedPath:Ljava/lang/String;

    iput-object v1, v0, LDaemon/Action/NoticeBase;->downpath:Ljava/lang/String;

    .line 237
    iget-object v1, p1, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mTitle:Ljava/lang/String;

    iput-object v1, v0, LDaemon/Action/NoticeBase;->notice_title:Ljava/lang/String;

    .line 238
    iget-object v1, p1, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mContent:Ljava/lang/String;

    iput-object v1, v0, LDaemon/Action/NoticeBase;->notice_info:Ljava/lang/String;

    .line 239
    iget-object v1, p1, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mSpNumber:Ljava/lang/String;

    iput-object v1, v0, LDaemon/Action/NoticeBase;->simulation_tel:Ljava/lang/String;

    .line 240
    sget-object v1, LHamsterSuper/Client/Game/BootReceiver;->action:LDaemon/Action/Action;

    invoke-virtual {v1, v0}, LDaemon/Action/Action;->Update_Notice(LDaemon/Action/NoticeBase;)V

    .line 241
    sget-object v1, LHamsterSuper/Client/Game/BootReceiver;->action:LDaemon/Action/Action;

    const/4 v2, 0x0

    .line 242
    iget v3, p1, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mVersion:I

    rem-int/lit8 v3, v3, 0xa

    .line 241
    invoke-virtual {v1, v2, v3}, LDaemon/Action/Action;->Generate_events(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    monitor-exit p0

    return-void

    .line 233
    .end local v0    # "noticebase":LDaemon/Action/NoticeBase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public save(ILjava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "filesize"    # I
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {p0, p2}, LDaemon/DownLoad/FileService;->isNewData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-direct {p0, p2, p1, p3}, LDaemon/DownLoad/FileService;->buildDownloadTaskInfos(Ljava/lang/String;ILjava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LDaemon/DownLoad/DBOpenHelper;->insertDownloadTaskInfo(Ljava/util/List;)Z

    .line 150
    :cond_0
    return-void
.end method

.method public setfilename(Ljava/lang/String;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, LDaemon/DownLoad/FileService;->filename:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public update(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, LDaemon/DownLoad/FileService;->isNewData(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    .line 164
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0, p1, v1, p2}, LDaemon/DownLoad/FileService;->buildDownloadTaskInfos(Ljava/lang/String;ILjava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, LDaemon/DownLoad/DBOpenHelper;->updateDownloadTaskInfo(Ljava/util/List;)Z

    .line 166
    :cond_0
    return-void
.end method

.method public updateDownFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "savepath"    # Ljava/lang/String;

    .prologue
    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$AD_INFO;>;"
    new-instance v1, LDaemon/DownLoad/DBOpenHelper$AD_INFO;

    iget-object v2, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x1

    invoke-direct {v1, v2, p1, p2, v3}, LDaemon/DownLoad/DBOpenHelper$AD_INFO;-><init>(LDaemon/DownLoad/DBOpenHelper;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v1, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v1, v0}, LDaemon/DownLoad/DBOpenHelper;->updateADDownloadFlag(Ljava/util/List;)Z

    .line 329
    return-void
.end method

.method public updatePush(LDaemon/DownLoad/DBOpenHelper$AD_INFO;)V
    .locals 6
    .param p1, "ad"    # LDaemon/DownLoad/DBOpenHelper$AD_INFO;

    .prologue
    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$AD_INFO;>;"
    new-instance v1, LDaemon/DownLoad/DBOpenHelper$AD_INFO;

    iget-object v2, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p1, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mPushFlag:I

    iget v4, p1, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mVersion:I

    .line 343
    iget v5, p1, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mPackNum:I

    .line 342
    invoke-direct {v1, v2, v3, v4, v5}, LDaemon/DownLoad/DBOpenHelper$AD_INFO;-><init>(LDaemon/DownLoad/DBOpenHelper;III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v1, p0, LDaemon/DownLoad/FileService;->openHelper:LDaemon/DownLoad/DBOpenHelper;

    invoke-virtual {v1, v0}, LDaemon/DownLoad/DBOpenHelper;->updateADPushFlag(Ljava/util/List;)Z

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateADPushFlag:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mPackNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LDaemon/DownLoad/FileService;->print(Ljava/lang/String;)V

    .line 347
    return-void
.end method
