.class public Lcom/zhangling/util/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "db.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TABLE_NAME:Ljava/lang/String; = "ContentInfo"

.field private static dataHelper:Lcom/zhangling/util/DatabaseHelper;


# instance fields
.field private cols:[Ljava/lang/String;

.field private colsType:[Ljava/lang/String;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/zhangling/util/DatabaseHelper;->dataHelper:Lcom/zhangling/util/DatabaseHelper;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 20
    const-string v0, "db.db"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zhangling/util/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ciId"

    aput-object v1, v0, v4

    const-string v1, "ciTitle"

    aput-object v1, v0, v3

    const-string v1, "ciContext"

    aput-object v1, v0, v5

    .line 63
    const-string v1, "ciMiniText"

    aput-object v1, v0, v6

    const-string v1, "ciBrowseLastTime"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ciStatus"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zhangling/util/DatabaseHelper;->cols:[Ljava/lang/String;

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "INTEGER PRIMARY KEY"

    aput-object v1, v0, v4

    const-string v1, "VARCHAR"

    aput-object v1, v0, v3

    const-string v1, "text"

    aput-object v1, v0, v5

    .line 69
    const-string v1, "VARCHAR"

    aput-object v1, v0, v6

    const-string v1, "DATETIME"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zhangling/util/DatabaseHelper;->colsType:[Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static init(Landroid/content/Context;)Lcom/zhangling/util/DatabaseHelper;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 33
    sget-object v1, Lcom/zhangling/util/DatabaseHelper;->dataHelper:Lcom/zhangling/util/DatabaseHelper;

    if-eqz v1, :cond_0

    .line 34
    sget-object v1, Lcom/zhangling/util/DatabaseHelper;->dataHelper:Lcom/zhangling/util/DatabaseHelper;

    .line 42
    :goto_0
    return-object v1

    .line 36
    :cond_0
    :try_start_0
    new-instance v1, Lcom/zhangling/util/DatabaseHelper;

    const-string v2, "db.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/zhangling/util/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v1, Lcom/zhangling/util/DatabaseHelper;->dataHelper:Lcom/zhangling/util/DatabaseHelper;

    .line 38
    sget-object v1, Lcom/zhangling/util/DatabaseHelper;->dataHelper:Lcom/zhangling/util/DatabaseHelper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    move-object v1, v5

    .line 42
    goto :goto_0
.end method


# virtual methods
.method public createTable()V
    .locals 5

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/zhangling/util/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, p0, Lcom/zhangling/util/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 383
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v3, "ContentInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    iget-object v3, p0, Lcom/zhangling/util/DatabaseHelper;->cols:[Ljava/lang/String;

    array-length v1, v3

    .line 386
    .local v1, "length":I
    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 394
    const-string v3, ");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :try_start_0
    iget-object v3, p0, Lcom/zhangling/util/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_1
    return-void

    .line 388
    :cond_0
    iget-object v3, p0, Lcom/zhangling/util/DatabaseHelper;->cols:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v3, p0, Lcom/zhangling/util/DatabaseHelper;->colsType:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const/4 v3, 0x1

    sub-int v3, v1, v3

    if-ge v0, v3, :cond_1

    .line 392
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public deleteItem()V
    .locals 4

    .prologue
    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/zhangling/util/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ContentInfo"

    const-string v2, " ciId < 999999"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public dropTable()V
    .locals 3

    .prologue
    .line 518
    const-string v1, "DROP TABLE IF EXISTS ContentInfo"

    .line 520
    .local v1, "sql":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/zhangling/util/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 522
    .local v0, "e":Landroid/database/SQLException;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public insertBySql(Ljava/lang/String;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/zhangling/util/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public insertItem()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x4

    .line 406
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 407
    .local v3, "random":Ljava/util/Random;
    const/4 v6, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v6, "ciTitle"

    aput-object v6, v2, v8

    const-string v6, "ciContext"

    aput-object v6, v2, v10

    .line 409
    const-string v6, "ciMiniText"

    aput-object v6, v2, v11

    const-string v6, "ciBrowseLastTime"

    aput-object v6, v2, v12

    const-string v6, "ciStatus"

    aput-object v6, v2, v9

    .line 410
    .local v2, "names":[Ljava/lang/String;
    const/4 v6, 0x5

    new-array v5, v6, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ciTitle-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ciContext-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 412
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ciMiniText-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 414
    .local v5, "values":[Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v6, "insert into "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v6, "ContentInfo"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    array-length v1, v2

    .line 419
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 424
    const-string v6, ") values (\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_2

    .line 430
    const-string v6, "\');"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget-object v6, p0, Lcom/zhangling/util/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 436
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 420
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    aget-object v6, v2, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    sub-int v6, v1, v10

    if-ge v0, v6, :cond_1

    .line 422
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    :cond_2
    aget-object v6, v5, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    sub-int v6, v1, v10

    if-ge v0, v6, :cond_3

    .line 428
    const-string v6, "\', \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 433
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public insertItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "Pid"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "miniContent"    # Ljava/lang/String;

    .prologue
    .line 452
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 528
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 532
    return-void
.end method

.method public showItems()Ljava/lang/String;
    .locals 14

    .prologue
    const-string v0, "\n"

    .line 469
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .local v13, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x6

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "ciId"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "ciTitle"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "ciContext"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "ciMiniText"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "ciBrowseLastTime"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "ciStatus"

    aput-object v1, v2, v0

    .line 472
    .local v2, "column":[Ljava/lang/String;
    iget-object v0, p0, Lcom/zhangling/util/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ContentInfo"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 473
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 475
    .local v12, "num":Ljava/lang/Integer;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 477
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v0, v1, :cond_0

    .line 498
    .end local v2    # "column":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v12    # "num":Ljava/lang/Integer;
    :goto_1
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 478
    .restart local v2    # "column":[Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "num":Ljava/lang/Integer;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/zhangling/util/DatabaseHelper;->cols:[Ljava/lang/String;

    array-length v11, v0

    .line 479
    .local v11, "length":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-lt v10, v11, :cond_1

    .line 483
    const-string v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const-string v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 495
    .end local v2    # "column":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "i":I
    .end local v11    # "length":I
    .end local v12    # "num":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 496
    .local v9, "e":Landroid/database/SQLException;
    invoke-static {v9}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_1

    .line 480
    .end local v9    # "e":Landroid/database/SQLException;
    .restart local v2    # "column":[Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "i":I
    .restart local v11    # "length":I
    .restart local v12    # "num":Ljava/lang/Integer;
    :cond_1
    :try_start_2
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const-string v0, "\n"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 479
    add-int/lit8 v10, v10, 0x1

    goto :goto_2
.end method

.method public updateItem()V
    .locals 7

    .prologue
    .line 506
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 507
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "ciTitle"

    const-string v2, "\u6279\u91cf\u66f4\u65b0\u540e\u7684\u540d\u5b57"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/zhangling/util/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "ContentInfo"

    const-string v3, "ciId<?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "3"

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v0    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 510
    :catch_0
    move-exception v1

    goto :goto_0
.end method
