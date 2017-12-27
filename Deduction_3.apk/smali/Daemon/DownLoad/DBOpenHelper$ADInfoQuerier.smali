.class LDaemon/DownLoad/DBOpenHelper$ADInfoQuerier;
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
    name = "ADInfoQuerier"
.end annotation


# static fields
.field private static final GET_AD_INFO_SQL:Ljava/lang/String; = "SELECT savedpath , version , packnum , pushnum , title , txt , priority , strategy FROM file WHERE down = 1  AND ( push = 1 OR push = ? ) ORDER BY priority DESC "


# instance fields
.field private mDate:Ljava/lang/String;

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

.field final synthetic this$0:LDaemon/DownLoad/DBOpenHelper;


# direct methods
.method constructor <init>(LDaemon/DownLoad/DBOpenHelper;Ljava/lang/String;)V
    .locals 1
    .param p2, "date"    # Ljava/lang/String;

    .prologue
    .line 471
    iput-object p1, p0, LDaemon/DownLoad/DBOpenHelper$ADInfoQuerier;->this$0:LDaemon/DownLoad/DBOpenHelper;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput-object p2, p0, LDaemon/DownLoad/DBOpenHelper$ADInfoQuerier;->mDate:Ljava/lang/String;

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LDaemon/DownLoad/DBOpenHelper$ADInfoQuerier;->mInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public doWork(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 487
    const-string v3, "SELECT savedpath , version , packnum , pushnum , title , txt , priority , strategy FROM file WHERE down = 1  AND ( push = 1 OR push = ? ) ORDER BY priority DESC "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/DownLoad/DBOpenHelper$ADInfoQuerier;->mDate:Ljava/lang/String;

    move-object v6, v0

    aput-object v6, v4, v5

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 489
    .local v16, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 504
    :cond_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 505
    return-void

    .line 490
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/DownLoad/DBOpenHelper$ADInfoQuerier;->mInfos:Ljava/util/List;

    move-object/from16 v17, v0

    new-instance v3, LDaemon/DownLoad/DBOpenHelper$AD_INFO;

    move-object/from16 v0, p0

    iget-object v0, v0, LDaemon/DownLoad/DBOpenHelper$ADInfoQuerier;->this$0:LDaemon/DownLoad/DBOpenHelper;

    move-object v4, v0

    .line 491
    const-string v5, ""

    .line 492
    const/4 v6, 0x0

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 493
    const/4 v7, 0x1

    move-object/from16 v0, v16

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 494
    const/4 v8, 0x2

    move-object/from16 v0, v16

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 495
    const/4 v9, 0x3

    move-object/from16 v0, v16

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 496
    const/4 v10, 0x4

    move-object/from16 v0, v16

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 497
    const/4 v11, 0x5

    move-object/from16 v0, v16

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 498
    const/4 v12, 0x0

    .line 499
    const/4 v13, 0x0

    .line 500
    const/4 v14, 0x6

    move-object/from16 v0, v16

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 501
    const/4 v15, 0x7

    move-object/from16 v0, v16

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-direct/range {v3 .. v15}, LDaemon/DownLoad/DBOpenHelper$AD_INFO;-><init>(LDaemon/DownLoad/DBOpenHelper;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 490
    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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
    .line 508
    iget-object v0, p0, LDaemon/DownLoad/DBOpenHelper$ADInfoQuerier;->mInfos:Ljava/util/List;

    return-object v0
.end method
