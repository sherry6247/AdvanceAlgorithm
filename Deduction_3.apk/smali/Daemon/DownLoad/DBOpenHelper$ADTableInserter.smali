.class LDaemon/DownLoad/DBOpenHelper$ADTableInserter;
.super Ljava/lang/Object;
.source "DBOpenHelper.java"

# interfaces
.implements LDaemon/DownLoad/DBOpenHelper$TableOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDaemon/DownLoad/DBOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ADTableInserter"
.end annotation


# static fields
.field private static final INSERT_AD_INFO_SQL:Ljava/lang/String; = "INSERT INTO file ( downpath , savedpath , version , packnum , pushnum , title , txt , push , down , priority , strategy )  VALUES (?,?,?,?,?,?,?,?,?,?,?) "


# instance fields
.field protected mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LDaemon/DownLoad/DBOpenHelper$AD_INFO;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:LDaemon/DownLoad/DBOpenHelper;


# direct methods
.method constructor <init>(LDaemon/DownLoad/DBOpenHelper;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LDaemon/DownLoad/DBOpenHelper$AD_INFO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 377
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$AD_INFO;>;"
    iput-object p1, p0, LDaemon/DownLoad/DBOpenHelper$ADTableInserter;->this$0:LDaemon/DownLoad/DBOpenHelper;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p2, p0, LDaemon/DownLoad/DBOpenHelper$ADTableInserter;->mInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public doWork(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 395
    iget-object v1, p0, LDaemon/DownLoad/DBOpenHelper$ADTableInserter;->mInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 401
    return-void

    .line 395
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;

    .line 396
    .local v0, "info":LDaemon/DownLoad/DBOpenHelper$AD_INFO;
    const-string v2, "INSERT INTO file ( downpath , savedpath , version , packnum , pushnum , title , txt , push , down , priority , strategy )  VALUES (?,?,?,?,?,?,?,?,?,?,?) "

    .line 397
    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mUri:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mSavedPath:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mPackNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mSpNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 398
    iget-object v5, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mTitle:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mContent:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget v5, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mPushFlag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 399
    iget v5, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mDownloadFlag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0x9

    iget v5, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mPriority:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v4, 0xa

    iget v5, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mStrategy:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 396
    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
