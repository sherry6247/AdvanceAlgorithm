.class LDaemon/DownLoad/DBOpenHelper$ADDownloadFlagQuerier;
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
    name = "ADDownloadFlagQuerier"
.end annotation


# static fields
.field private static final GET_AD_DOWNLOAD_FLAG_SQL:Ljava/lang/String; = "SELECT down FROM file WHERE version = ?  AND packnum = ? "


# instance fields
.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LDaemon/DownLoad/DBOpenHelper$AD_INFO;",
            ">;"
        }
    .end annotation
.end field

.field private mPackNum:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;

.field final synthetic this$0:LDaemon/DownLoad/DBOpenHelper;


# direct methods
.method constructor <init>(LDaemon/DownLoad/DBOpenHelper;II)V
    .locals 1
    .param p2, "version"    # I
    .param p3, "packNum"    # I

    .prologue
    .line 529
    iput-object p1, p0, LDaemon/DownLoad/DBOpenHelper$ADDownloadFlagQuerier;->this$0:LDaemon/DownLoad/DBOpenHelper;

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDaemon/DownLoad/DBOpenHelper$ADDownloadFlagQuerier;->mVersion:Ljava/lang/String;

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LDaemon/DownLoad/DBOpenHelper$ADDownloadFlagQuerier;->mPackNum:Ljava/lang/String;

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LDaemon/DownLoad/DBOpenHelper$ADDownloadFlagQuerier;->mInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public doWork(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    const-string v6, ""

    .line 538
    const-string v1, "SELECT down FROM file WHERE version = ?  AND packnum = ? "

    .line 539
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, LDaemon/DownLoad/DBOpenHelper$ADDownloadFlagQuerier;->mVersion:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, LDaemon/DownLoad/DBOpenHelper$ADDownloadFlagQuerier;->mPackNum:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 538
    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 540
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 547
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 548
    return-void

    .line 541
    :cond_1
    iget-object v1, p0, LDaemon/DownLoad/DBOpenHelper$ADDownloadFlagQuerier;->mInfos:Ljava/util/List;

    new-instance v2, LDaemon/DownLoad/DBOpenHelper$AD_INFO;

    iget-object v3, p0, LDaemon/DownLoad/DBOpenHelper$ADDownloadFlagQuerier;->this$0:LDaemon/DownLoad/DBOpenHelper;

    .line 542
    const-string v4, ""

    .line 543
    const-string v4, ""

    .line 544
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v2, v3, v6, v6, v4}, LDaemon/DownLoad/DBOpenHelper$AD_INFO;-><init>(LDaemon/DownLoad/DBOpenHelper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 541
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getQueryData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LDaemon/DownLoad/DBOpenHelper$AD_INFO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, LDaemon/DownLoad/DBOpenHelper$ADDownloadFlagQuerier;->mInfos:Ljava/util/List;

    return-object v0
.end method
