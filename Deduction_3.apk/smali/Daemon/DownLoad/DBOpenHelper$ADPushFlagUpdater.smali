.class LDaemon/DownLoad/DBOpenHelper$ADPushFlagUpdater;
.super LDaemon/DownLoad/DBOpenHelper$ADTableUpdater;
.source "DBOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDaemon/DownLoad/DBOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ADPushFlagUpdater"
.end annotation


# static fields
.field private static final UPDATE_AD_PUSH_FLAG_SQL:Ljava/lang/String; = "UPDATE file SET push = ?  WHERE version = ?  AND packnum = ?"


# instance fields
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
    .line 439
    .local p2, "infos":Ljava/util/List;, "Ljava/util/List<LDaemon/DownLoad/DBOpenHelper$AD_INFO;>;"
    iput-object p1, p0, LDaemon/DownLoad/DBOpenHelper$ADPushFlagUpdater;->this$0:LDaemon/DownLoad/DBOpenHelper;

    .line 438
    invoke-direct {p0, p1, p2}, LDaemon/DownLoad/DBOpenHelper$ADTableUpdater;-><init>(LDaemon/DownLoad/DBOpenHelper;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public doWork(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 448
    iget-object v1, p0, LDaemon/DownLoad/DBOpenHelper$ADPushFlagUpdater;->mInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 452
    return-void

    .line 448
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;

    .line 449
    .local v0, "info":LDaemon/DownLoad/DBOpenHelper$AD_INFO;
    const-string v2, "UPDATE file SET push = ?  WHERE version = ?  AND packnum = ?"

    .line 450
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mPushFlag:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mVersion:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, v0, LDaemon/DownLoad/DBOpenHelper$AD_INFO;->mPackNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 449
    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
