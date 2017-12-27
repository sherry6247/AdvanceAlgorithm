.class public Lcom/zhangling/db/BaseSqlManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BaseSqlManager.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Landroid/database/sqlite/SQLiteOpenHelper;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "db.db"

.field private static final DATABASE_VERSION:I = 0x1

.field protected static baseSqlManager:Lcom/zhangling/db/BaseSqlManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zhangling/db/BaseSqlManager",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected cols:[Ljava/lang/String;

.field protected colsType:[Ljava/lang/String;

.field protected db:Landroid/database/sqlite/SQLiteDatabase;

.field protected tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/zhangling/db/BaseSqlManager;->baseSqlManager:Lcom/zhangling/db/BaseSqlManager;

    .line 15
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "cols"    # [Ljava/lang/String;
    .param p4, "colsType"    # [Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/zhangling/db/BaseSqlManager;, "Lcom/zhangling/db/BaseSqlManager<TT;>;"
    const/4 v3, 0x0

    .line 48
    const-string v1, "db.db"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v3, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 18
    iput-object v3, p0, Lcom/zhangling/db/BaseSqlManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    iput-object v3, p0, Lcom/zhangling/db/BaseSqlManager;->tableName:Ljava/lang/String;

    .line 35
    iput-object v3, p0, Lcom/zhangling/db/BaseSqlManager;->cols:[Ljava/lang/String;

    .line 39
    iput-object v3, p0, Lcom/zhangling/db/BaseSqlManager;->colsType:[Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/zhangling/db/BaseSqlManager;->tableName:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/zhangling/db/BaseSqlManager;->cols:[Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/zhangling/db/BaseSqlManager;->colsType:[Ljava/lang/String;

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/zhangling/db/BaseSqlManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangling/db/BaseSqlManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 57
    invoke-virtual {p0}, Lcom/zhangling/db/BaseSqlManager;->createTable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected createTable()V
    .locals 6

    .prologue
    .line 101
    .local p0, "this":Lcom/zhangling/db/BaseSqlManager;, "Lcom/zhangling/db/BaseSqlManager<TT;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v4, p0, Lcom/zhangling/db/BaseSqlManager;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v4, p0, Lcom/zhangling/db/BaseSqlManager;->cols:[Ljava/lang/String;

    array-length v2, v4

    .line 105
    .local v2, "length":I
    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 113
    const-string v4, ");"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :try_start_0
    iget-object v4, p0, Lcom/zhangling/db/BaseSqlManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    return-void

    .line 107
    :cond_0
    iget-object v4, p0, Lcom/zhangling/db/BaseSqlManager;->cols:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v4, p0, Lcom/zhangling/db/BaseSqlManager;->colsType:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const/4 v4, 0x1

    sub-int v4, v2, v4

    if-ge v1, v4, :cond_1

    .line 111
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected dropTable()V
    .locals 4

    .prologue
    .line 354
    .local p0, "this":Lcom/zhangling/db/BaseSqlManager;, "Lcom/zhangling/db/BaseSqlManager<TT;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/zhangling/db/BaseSqlManager;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "sql":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/zhangling/db/BaseSqlManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected getDateTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 401
    .local p0, "this":Lcom/zhangling/db/BaseSqlManager;, "Lcom/zhangling/db/BaseSqlManager<TT;>;"
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 402
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 401
    return-object v0
.end method

.method protected getInstantion(Landroid/content/Context;)Ljava/io/Serializable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lcom/zhangling/db/BaseSqlManager;, "Lcom/zhangling/db/BaseSqlManager<TT;>;"
    sget-object v1, Lcom/zhangling/db/BaseSqlManager;->baseSqlManager:Lcom/zhangling/db/BaseSqlManager;

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Lcom/zhangling/db/BaseSqlManager;->baseSqlManager:Lcom/zhangling/db/BaseSqlManager;

    .line 92
    :goto_0
    return-object v1

    .line 87
    :cond_0
    :try_start_0
    new-instance v1, Lcom/zhangling/db/BaseSqlManager;

    iget-object v2, p0, Lcom/zhangling/db/BaseSqlManager;->tableName:Ljava/lang/String;

    iget-object v3, p0, Lcom/zhangling/db/BaseSqlManager;->cols:[Ljava/lang/String;

    iget-object v4, p0, Lcom/zhangling/db/BaseSqlManager;->colsType:[Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/zhangling/db/BaseSqlManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v1, Lcom/zhangling/db/BaseSqlManager;->baseSqlManager:Lcom/zhangling/db/BaseSqlManager;

    .line 88
    sget-object v1, Lcom/zhangling/db/BaseSqlManager;->baseSqlManager:Lcom/zhangling/db/BaseSqlManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    .line 92
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected insert([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/zhangling/db/BaseSqlManager;, "Lcom/zhangling/db/BaseSqlManager<TT;>;"
    const/4 v5, 0x1

    .line 141
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "insert into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v4, p0, Lcom/zhangling/db/BaseSqlManager;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    array-length v2, p1

    .line 146
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 151
    const-string v4, ") values (\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_2

    .line 157
    const-string v4, "\');"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zhangling/util/Logs;->out(Ljava/lang/String;)V

    .line 159
    iget-object v4, p0, Lcom/zhangling/db/BaseSqlManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    return-void

    .line 147
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    sub-int v4, v2, v5

    if-ge v1, v4, :cond_1

    .line 149
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_2
    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    sub-int v4, v2, v5

    if-ge v1, v4, :cond_3

    .line 155
    const-string v4, "\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 160
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method protected insertBySql(Ljava/lang/String;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 129
    .local p0, "this":Lcom/zhangling/db/BaseSqlManager;, "Lcom/zhangling/db/BaseSqlManager<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/zhangling/db/BaseSqlManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 67
    .local p0, "this":Lcom/zhangling/db/BaseSqlManager;, "Lcom/zhangling/db/BaseSqlManager<TT;>;"
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 73
    .local p0, "this":Lcom/zhangling/db/BaseSqlManager;, "Lcom/zhangling/db/BaseSqlManager<TT;>;"
    return-void
.end method

.method public queryAll()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/zhangling/db/BaseSqlManager;, "Lcom/zhangling/db/BaseSqlManager<TT;>;"
    const/4 v1, 0x0

    .line 368
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/zhangling/db/BaseSqlManager;->queryBySql_all([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAll2()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/zhangling/db/BaseSqlManager;, "Lcom/zhangling/db/BaseSqlManager<TT;>;"
    const/4 v1, 0x0

    .line 371
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/zhangling/db/BaseSqlManager;->queryBySql_all2([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAll3()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/zhangling/db/BaseSqlManager;, "Lcom/zhangling/db/BaseSqlManager<TT;>;"
    const/4 v2, 0x0

    .line 375
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 376
    const-string v3, "hiPid"

    aput-object v3, v1, v0

    const/4 v0, 0x1

    .line 377
    const-string v3, "hiCreateTime"

    aput-object v3, v1, v0

    .local v1, "_cols":[Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    .line 380
    invoke-virtual/range {v0 .. v6}, Lcom/zhangling/db/BaseSqlManager;->queryBySql_all2([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected queryBySql(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lcom/zhangling/db/BaseSqlManager;, "Lcom/zhangling/db/BaseSqlManager<TT;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v11, "resList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v12, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v2, p0, Lcom/zhangling/db/BaseSqlManager;->cols:[Ljava/lang/String;

    .line 212
    .local v2, "columns":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 213
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .end local v2    # "columns":[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p1, v2, v0

    .line 214
    .restart local v2    # "columns":[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/zhangling/db/BaseSqlManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/zhangling/db/BaseSqlManager;->tableName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 215
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 216
    .local v10, "num":Ljava/lang/Integer;
    invoke-static {v10}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Integer;)V

    .line 220
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Integer;)V

    .line 221
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "num":Ljava/lang/Integer;
    :goto_1
    return-object v11

    .line 223
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "num":Ljava/lang/Integer;
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v0, "\n"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "num":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 246
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/String;)V

    .line 247
    invoke-static {v9}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected queryBySql_all([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lcom/zhangling/db/BaseSqlManager;, "Lcom/zhangling/db/BaseSqlManager<TT;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v14, "resList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v15, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 270
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangling/db/BaseSqlManager;->cols:[Ljava/lang/String;

    move-object/from16 p1, v0

    .line 271
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangling/db/BaseSqlManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangling/db/BaseSqlManager;->tableName:Ljava/lang/String;

    move-object v2, v0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 272
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 274
    .local v13, "num":Ljava/lang/Integer;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 276
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 297
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v13    # "num":Ljava/lang/Integer;
    :goto_1
    return-object v14

    .line 277
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "num":Ljava/lang/Integer;
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move v12, v0

    .line 278
    .local v12, "length":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-lt v11, v12, :cond_2

    .line 288
    const-string v1, "\n"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, "\n"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v1, "\n"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v11    # "i":I
    .end local v12    # "length":I
    .end local v13    # "num":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 294
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangling/util/Logs;->out(Ljava/lang/String;)V

    .line 295
    invoke-static {v10}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_1

    .line 279
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "i":I
    .restart local v12    # "length":I
    .restart local v13    # "num":Ljava/lang/Integer;
    :cond_2
    :try_start_1
    aget-object v1, p1, v11

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v1, "\n"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    aget-object v1, p1, v11

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    add-int/lit8 v11, v11, 0x1

    goto :goto_2
.end method

.method protected queryBySql_all2([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lcom/zhangling/db/BaseSqlManager;, "Lcom/zhangling/db/BaseSqlManager<TT;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move v2, v0

    if-lt v13, v2, :cond_1

    .line 305
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v16, "resList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v17, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 309
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangling/db/BaseSqlManager;->cols:[Ljava/lang/String;

    move-object/from16 p1, v0

    .line 310
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangling/db/BaseSqlManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangling/db/BaseSqlManager;->tableName:Ljava/lang/String;

    move-object v3, v0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 311
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 313
    .local v15, "num":Ljava/lang/Integer;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 315
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move v2, v0

    if-lt v13, v2, :cond_2

    .line 319
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v2, v3, :cond_3

    .line 347
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v15    # "num":Ljava/lang/Integer;
    :goto_3
    return-object v16

    .line 303
    .end local v16    # "resList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "columns["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    .line 301
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 317
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v15    # "num":Ljava/lang/Integer;
    .restart local v16    # "resList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v17    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "columns["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    .line 315
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 320
    :cond_3
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    .line 322
    .local v14, "length":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    .line 323
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v10, "_resList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x0

    :goto_4
    if-lt v13, v14, :cond_4

    .line 331
    move-object/from16 v0, v16

    move-object v1, v10

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    const-string v2, "\n"

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v2, "\n"

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v2, "\n"

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 341
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangling/util/Logs;->out(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 343
    .end local v10    # "_resList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v14    # "length":I
    .end local v15    # "num":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    move-object v12, v2

    .line 344
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    .line 345
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangling/util/Logs;->out(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 326
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v10    # "_resList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "length":I
    .restart local v15    # "num":Ljava/lang/Integer;
    :cond_4
    :try_start_2
    aget-object v2, p1, v13

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v2, "\n"

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    aget-object v2, p1, v13

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 324
    add-int/lit8 v13, v13, 0x1

    goto :goto_4
.end method

.method protected queryBySqls([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/zhangling/db/BaseSqlManager;, "Lcom/zhangling/db/BaseSqlManager<TT;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v14, "resList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v15, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    .line 181
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangling/db/BaseSqlManager;->cols:[Ljava/lang/String;

    move-object/from16 p1, v0

    .line 182
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangling/db/BaseSqlManager;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zhangling/db/BaseSqlManager;->tableName:Ljava/lang/String;

    move-object v2, v0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 183
    .local v10, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    .end local v10    # "cursor":Landroid/database/Cursor;
    :goto_1
    return-object v14

    .line 184
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move v13, v0

    .line 186
    .local v13, "length":I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    .line 187
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v9, "_resList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-lt v12, v13, :cond_2

    .line 194
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    const-string v1, "\n"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, "\n"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "\n"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangling/util/Logs;->out(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v9    # "_resList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v12    # "i":I
    .end local v13    # "length":I
    :catch_0
    move-exception v1

    move-object v11, v1

    .line 201
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v11}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    .line 202
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zhangling/util/Logs;->out(Ljava/lang/String;)V

    goto :goto_1

    .line 190
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v9    # "_resList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "i":I
    .restart local v13    # "length":I
    :cond_2
    :try_start_1
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "\n"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 189
    add-int/lit8 v12, v12, 0x1

    goto :goto_2
.end method

.method public reCreat()V
    .locals 2

    .prologue
    .line 388
    .local p0, "this":Lcom/zhangling/db/BaseSqlManager;, "Lcom/zhangling/db/BaseSqlManager<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/zhangling/db/BaseSqlManager;->dropTable()V

    .line 389
    invoke-virtual {p0}, Lcom/zhangling/db/BaseSqlManager;->createTable()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_0
.end method
