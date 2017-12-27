.class public LDaemon/DownLoad/DBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDaemon/DownLoad/DBOpenHelper$ADDownloadFlagQuerier;,
        LDaemon/DownLoad/DBOpenHelper$ADDownloadFlagUpdater;,
        LDaemon/DownLoad/DBOpenHelper$ADInfoDeleter;,
        LDaemon/DownLoad/DBOpenHelper$ADInfoQuerier;,
        LDaemon/DownLoad/DBOpenHelper$ADPushFlagUpdater;,
        LDaemon/DownLoad/DBOpenHelper$ADTableInserter;,
        LDaemon/DownLoad/DBOpenHelper$ADTableUpdater;,
        LDaemon/DownLoad/DBOpenHelper$AD_INFO;,
        LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;,
        LDaemon/DownLoad/DBOpenHelper$DownloadTableModifier;,
        LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoDeleter;,
        LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoInserter;,
        LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoQuerier;,
        LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoUpdater;,
        LDaemon/DownLoad/DBOpenHelper$TableOperator;,
        LDaemon/DownLoad/DBOpenHelper$TableQuerier;
    }
.end annotation


# static fields
.field private static final AD_CONTENT:Ljava/lang/String; = "txt"

.field private static final AD_DOWNLOAD_FLAG:Ljava/lang/String; = "down"

.field private static final AD_ID:Ljava/lang/String; = "packnum"

.field private static final AD_PRIORITY:Ljava/lang/String; = "priority"

.field private static final AD_PUSH_FLAG:Ljava/lang/String; = "push"

.field private static final AD_SAVED_PATH:Ljava/lang/String; = "savedpath"

.field private static final AD_SOURCE:Ljava/lang/String; = "downpath"

.field private static final AD_SP_NUMBER:Ljava/lang/String; = "pushnum"

.field private static final AD_STRATEGY:Ljava/lang/String; = "strategy"

.field private static final AD_TABLE:Ljava/lang/String; = "file"

.field private static final AD_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS file (  _id integer primary key autoincrement, downpath varchar(100), savedpath varchar(100), version INTEGER, packnum INTEGER, pushnum INTEGER, title varchar(50), txt varchar(150), push INTEGER, down INTEGER, priority INTEGER, strategy INTEGER  );"

.field private static final AD_TITLE:Ljava/lang/String; = "title"

.field private static final AD_VERSION:Ljava/lang/String; = "version"

.field private static final DBNAME:Ljava/lang/String; = "download.db"

.field private static final DOWNLOAD_TASK_TABLE:Ljava/lang/String; = "filedown"

.field private static final DOWNLOAD_TASK_TABLE_CREATE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS filedown (  _id integer primary key autoincrement, downpath varchar(100), filesize INTEGER, threadid INTEGER, position INTEGER  );"

.field private static final DOWNLOAD_THREAD_ID:Ljava/lang/String; = "threadid"

.field private static final DOWNLOAD_THREAD_POSITION:Ljava/lang/String; = "position"

.field private static final FILE_SIZE:Ljava/lang/String; = "filesize"

.field private static final TAG:Ljava/lang/String; = "DBOpenHelper"

.field private static final URI:Ljava/lang/String; = "downpath"

.field private static final VERSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    const-string v0, "download.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 161
    return-void
.end method

.method private modifyTable(LDaemon/DownLoad/DBOpenHelper$TableOperator;)Z
    .locals 5
    .param p1, "operator"    # LDaemon/DownLoad/DBOpenHelper$TableOperator;

    .prologue
    .line 203
    const/4 v2, 0x0

    .line 204
    .local v2, "ret":Z
    const/4 v0, 0x0

    .line 207
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, LDaemon/DownLoad/DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 210
    invoke-interface {p1, v0}, LDaemon/DownLoad/DBOpenHelper$TableOperator;->doWork(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 211
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    const/4 v2, 0x1

    .line 220
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 222
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 226
    :cond_0
    :goto_0
    return v2

    .line 215
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 217
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception on modifyTable : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LDaemon/DownLoad/DBOpenHelper;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 222
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 219
    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    .line 220
    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 222
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 224
    :cond_1
    throw v3
.end method

.method private static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 20
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    const-string v0, "DBOpenHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method

.method private queryTable(LDaemon/DownLoad/DBOpenHelper$TableQuerier;)V
    .locals 4
    .param p1, "querier"    # LDaemon/DownLoad/DBOpenHelper$TableQuerier;

    .prologue
    .line 231
    :try_start_0
    invoke-virtual {p0}, LDaemon/DownLoad/DBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 232
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-interface {p1, v0}, LDaemon/DownLoad/DBOpenHelper$TableQuerier;->doWork(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 233
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 237
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception on queryTable : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LDaemon/DownLoad/DBOpenHelper;->print(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteADInfo(II)Z
    .locals 1
    .param p1, "version"    # I
    .param p2, "packNum"    # I

    .prologue
    .line 584
    new-instance v0, LDaemon/DownLoad/DBOpenHelper$ADInfoDeleter;

    invoke-direct {v0, p0, p1, p2}, LDaemon/DownLoad/DBOpenHelper$ADInfoDeleter;-><init>(LDaemon/DownLoad/DBOpenHelper;II)V

    invoke-direct {p0, v0}, LDaemon/DownLoad/DBOpenHelper;->modifyTable(LDaemon/DownLoad/DBOpenHelper$TableOperator;)Z

    move-result v0

    return v0
.end method

.method public deleteDownloadTaskInfo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 320
    new-instance v0, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoDeleter;

    invoke-direct {v0, p0, p1}, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoDeleter;-><init>(LDaemon/DownLoad/DBOpenHelper;Ljava/lang/String;)V

    invoke-direct {p0, v0}, LDaemon/DownLoad/DBOpenHelper;->modifyTable(LDaemon/DownLoad/DBOpenHelper$TableOperator;)Z

    move-result v0

    return v0
.end method

.method public insertADInfo(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LDaemon/DownLoad/DBOpenHelper$AD_INFO;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$AD_INFO;>;"
    new-instance v0, LDaemon/DownLoad/DBOpenHelper$ADTableInserter;

    invoke-direct {v0, p0, p1}, LDaemon/DownLoad/DBOpenHelper$ADTableInserter;-><init>(LDaemon/DownLoad/DBOpenHelper;Ljava/util/List;)V

    invoke-direct {p0, v0}, LDaemon/DownLoad/DBOpenHelper;->modifyTable(LDaemon/DownLoad/DBOpenHelper$TableOperator;)Z

    move-result v0

    return v0
.end method

.method public insertDownloadTaskInfo(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;>;"
    new-instance v0, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoInserter;

    invoke-direct {v0, p0, p1}, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoInserter;-><init>(LDaemon/DownLoad/DBOpenHelper;Ljava/util/List;)V

    invoke-direct {p0, v0}, LDaemon/DownLoad/DBOpenHelper;->modifyTable(LDaemon/DownLoad/DBOpenHelper$TableOperator;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 166
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS filedown (  _id integer primary key autoincrement, downpath varchar(100), filesize INTEGER, threadid INTEGER, position INTEGER  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    const-string v0, "CREATE TABLE IF NOT EXISTS file (  _id integer primary key autoincrement, downpath varchar(100), savedpath varchar(100), version INTEGER, packnum INTEGER, pushnum INTEGER, title varchar(50), txt varchar(150), push INTEGER, down INTEGER, priority INTEGER, strategy INTEGER  );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 178
    :try_start_0
    const-string v0, "DROP TABLE IF EXISTS filedown"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const-string v0, "DROP TABLE IF EXISTS file"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, p1}, LDaemon/DownLoad/DBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public queryADInfo(II)Ljava/util/List;
    .locals 2
    .param p1, "version"    # I
    .param p2, "packNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "LDaemon/DownLoad/DBOpenHelper$AD_INFO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    new-instance v0, LDaemon/DownLoad/DBOpenHelper$ADDownloadFlagQuerier;

    invoke-direct {v0, p0, p1, p2}, LDaemon/DownLoad/DBOpenHelper$ADDownloadFlagQuerier;-><init>(LDaemon/DownLoad/DBOpenHelper;II)V

    .line 558
    .local v0, "querier":LDaemon/DownLoad/DBOpenHelper$TableQuerier;
    invoke-direct {p0, v0}, LDaemon/DownLoad/DBOpenHelper;->queryTable(LDaemon/DownLoad/DBOpenHelper$TableQuerier;)V

    .line 560
    invoke-interface {v0}, LDaemon/DownLoad/DBOpenHelper$TableQuerier;->getQueryData()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryADInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "LDaemon/DownLoad/DBOpenHelper$AD_INFO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 514
    new-instance v0, LDaemon/DownLoad/DBOpenHelper$ADInfoQuerier;

    invoke-direct {v0, p0, p1}, LDaemon/DownLoad/DBOpenHelper$ADInfoQuerier;-><init>(LDaemon/DownLoad/DBOpenHelper;Ljava/lang/String;)V

    .line 515
    .local v0, "querier":LDaemon/DownLoad/DBOpenHelper$TableQuerier;
    invoke-direct {p0, v0}, LDaemon/DownLoad/DBOpenHelper;->queryTable(LDaemon/DownLoad/DBOpenHelper$TableQuerier;)V

    .line 516
    invoke-interface {v0}, LDaemon/DownLoad/DBOpenHelper$TableQuerier;->getQueryData()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public queryDownloadTaskInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoQuerier;

    invoke-direct {v0, p0, p1}, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoQuerier;-><init>(LDaemon/DownLoad/DBOpenHelper;Ljava/lang/String;)V

    .line 361
    .local v0, "querier":LDaemon/DownLoad/DBOpenHelper$TableQuerier;
    invoke-direct {p0, v0}, LDaemon/DownLoad/DBOpenHelper;->queryTable(LDaemon/DownLoad/DBOpenHelper$TableQuerier;)V

    .line 363
    invoke-interface {v0}, LDaemon/DownLoad/DBOpenHelper$TableQuerier;->getQueryData()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public updateADDownloadFlag(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LDaemon/DownLoad/DBOpenHelper$AD_INFO;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$AD_INFO;>;"
    new-instance v0, LDaemon/DownLoad/DBOpenHelper$ADDownloadFlagUpdater;

    invoke-direct {v0, p0, p1}, LDaemon/DownLoad/DBOpenHelper$ADDownloadFlagUpdater;-><init>(LDaemon/DownLoad/DBOpenHelper;Ljava/util/List;)V

    invoke-direct {p0, v0}, LDaemon/DownLoad/DBOpenHelper;->modifyTable(LDaemon/DownLoad/DBOpenHelper$TableOperator;)Z

    move-result v0

    return v0
.end method

.method public updateADPushFlag(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LDaemon/DownLoad/DBOpenHelper$AD_INFO;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$AD_INFO;>;"
    new-instance v0, LDaemon/DownLoad/DBOpenHelper$ADPushFlagUpdater;

    invoke-direct {v0, p0, p1}, LDaemon/DownLoad/DBOpenHelper$ADPushFlagUpdater;-><init>(LDaemon/DownLoad/DBOpenHelper;Ljava/util/List;)V

    invoke-direct {p0, v0}, LDaemon/DownLoad/DBOpenHelper;->modifyTable(LDaemon/DownLoad/DBOpenHelper$TableOperator;)Z

    move-result v0

    return v0
.end method

.method public updateDownloadTaskInfo(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;>;"
    new-instance v0, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoUpdater;

    invoke-direct {v0, p0, p1}, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoUpdater;-><init>(LDaemon/DownLoad/DBOpenHelper;Ljava/util/List;)V

    invoke-direct {p0, v0}, LDaemon/DownLoad/DBOpenHelper;->modifyTable(LDaemon/DownLoad/DBOpenHelper$TableOperator;)Z

    move-result v0

    return v0
.end method
