.class LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoQuerier;
.super Ljava/lang/Object;
.source "DBOpenHelper.java"

# interfaces
.implements LDaemon/DownLoad/DBOpenHelper$TableQuerier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDaemon/DownLoad/DBOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadTaskInfoQuerier"
.end annotation


# static fields
.field private static final GET_TASK_INFO_SQL:Ljava/lang/String; = "SELECT filesize , threadid , position FROM filedown WHERE downpath = ?"


# instance fields
.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Ljava/lang/String;

.field final synthetic this$0:LDaemon/DownLoad/DBOpenHelper;


# direct methods
.method constructor <init>(LDaemon/DownLoad/DBOpenHelper;Ljava/lang/String;)V
    .locals 1
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 331
    iput-object p1, p0, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoQuerier;->this$0:LDaemon/DownLoad/DBOpenHelper;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p2, p0, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoQuerier;->mUri:Ljava/lang/String;

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoQuerier;->mInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public doWork(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 341
    const-string v0, "SELECT filesize , threadid , position FROM filedown WHERE downpath = ?"

    new-array v1, v9, [Ljava/lang/String;

    iget-object v2, p0, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoQuerier;->mUri:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 342
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 350
    return-void

    .line 343
    :cond_1
    iget-object v7, p0, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoQuerier;->mInfos:Ljava/util/List;

    new-instance v0, LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;

    iget-object v1, p0, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoQuerier;->this$0:LDaemon/DownLoad/DBOpenHelper;

    .line 344
    const-string v2, ""

    .line 345
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 346
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 347
    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;-><init>(LDaemon/DownLoad/DBOpenHelper;Ljava/lang/String;III)V

    .line 343
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getQueryData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LDaemon/DownLoad/DBOpenHelper$DOWNLOAD_TASK_INFO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, LDaemon/DownLoad/DBOpenHelper$DownloadTaskInfoQuerier;->mInfos:Ljava/util/List;

    return-object v0
.end method
