.class public Lcom/zhangling/db/HistoryInfo;
.super Lcom/zhangling/db/BaseSqlManager;
.source "HistoryInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhangling/db/BaseSqlManager",
        "<",
        "Lcom/zhangling/db/HistoryInfo;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final cols:[Ljava/lang/String;

.field private static final colsType:[Ljava/lang/String;

.field private static info:Lcom/zhangling/db/HistoryInfo; = null

.field private static final tableName:Ljava/lang/String; = "HistoryInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/zhangling/db/HistoryInfo;->info:Lcom/zhangling/db/HistoryInfo;

    .line 29
    new-array v0, v6, [Ljava/lang/String;

    .line 30
    const-string v1, "hiId"

    aput-object v1, v0, v2

    .line 31
    const-string v1, "hiPid"

    aput-object v1, v0, v3

    .line 32
    const-string v1, "hiCreateTime"

    aput-object v1, v0, v4

    .line 34
    const-string v1, "hiTime"

    aput-object v1, v0, v5

    .line 29
    sput-object v0, Lcom/zhangling/db/HistoryInfo;->cols:[Ljava/lang/String;

    .line 39
    new-array v0, v6, [Ljava/lang/String;

    .line 40
    const-string v1, "INTEGER PRIMARY KEY"

    aput-object v1, v0, v2

    .line 41
    const-string v1, "INTEGER"

    aput-object v1, v0, v3

    .line 42
    const-string v1, "DATETIME"

    aput-object v1, v0, v4

    .line 44
    const-string v1, "DATETIME"

    aput-object v1, v0, v5

    .line 39
    sput-object v0, Lcom/zhangling/db/HistoryInfo;->colsType:[Ljava/lang/String;

    .line 14
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string v0, "HistoryInfo"

    sget-object v1, Lcom/zhangling/db/HistoryInfo;->cols:[Ljava/lang/String;

    sget-object v2, Lcom/zhangling/db/HistoryInfo;->colsType:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zhangling/db/BaseSqlManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static init(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)Lcom/zhangling/db/HistoryInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    const/4 v4, 0x0

    const-string v2, "db_init_HistoryInfo"

    const-string v2, "1"

    .line 63
    sget-object v2, Lcom/zhangling/db/HistoryInfo;->info:Lcom/zhangling/db/HistoryInfo;

    if-eqz v2, :cond_0

    .line 64
    sget-object v2, Lcom/zhangling/db/HistoryInfo;->info:Lcom/zhangling/db/HistoryInfo;

    .line 83
    :goto_0
    return-object v2

    .line 66
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/zhangling/util/Logs;->pShow()V

    .line 67
    new-instance v2, Lcom/zhangling/db/HistoryInfo;

    invoke-direct {v2, p0}, Lcom/zhangling/db/HistoryInfo;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/zhangling/db/HistoryInfo;->info:Lcom/zhangling/db/HistoryInfo;

    .line 68
    invoke-static {}, Lcom/zhangling/util/Logs;->pShow()V

    .line 70
    sget-object v2, Lcom/zhangling/db/HistoryInfo;->info:Lcom/zhangling/db/HistoryInfo;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangling/util/Logs;->p(Ljava/lang/Boolean;)V

    .line 71
    const-string v2, "db_init_HistoryInfo"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "db_init":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 73
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    sget-object v2, Lcom/zhangling/db/HistoryInfo;->info:Lcom/zhangling/db/HistoryInfo;

    goto :goto_0

    .line 70
    .end local v0    # "db_init":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 77
    .restart local v0    # "db_init":Ljava/lang/String;
    :cond_2
    const-string v2, "db_init_HistoryInfo"

    const-string v3, "1"

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    sget-object v2, Lcom/zhangling/db/HistoryInfo;->info:Lcom/zhangling/db/HistoryInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    .end local v0    # "db_init":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    move-object v2, v4

    .line 83
    goto :goto_0
.end method

.method private initData()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method


# virtual methods
.method public insertInto(Ljava/lang/String;)V
    .locals 7
    .param p1, "Pid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    new-array v0, v6, [Ljava/lang/String;

    .line 92
    const-string v2, "hiPid"

    aput-object v2, v0, v3

    .line 93
    const-string v2, "hiCreateTime"

    aput-object v2, v0, v4

    .line 94
    const-string v2, "hiTime"

    aput-object v2, v0, v5

    .line 96
    .local v0, "names":[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    .line 97
    aput-object p1, v1, v3

    .line 98
    invoke-virtual {p0}, Lcom/zhangling/db/HistoryInfo;->getDateTime()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 99
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 105
    .local v1, "values":[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/zhangling/db/HistoryInfo;->insert([Ljava/lang/String;[Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public querySome()Ljava/util/List;
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
    const/4 v2, 0x0

    .line 167
    const-string v1, "count(hiId)"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/zhangling/db/HistoryInfo;->queryBySql(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryToday()Ljava/util/List;
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
    const/4 v3, 0x0

    .line 134
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 135
    const-string v2, "hiPid"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    .line 136
    const-string v2, "hiTime"

    aput-object v2, v1, v0

    .line 138
    .local v1, "_cols":[Ljava/lang/String;
    const-string v2, "hiCreateTime >= datetime(\'now\', \'start of day\')"

    const-string v6, "hiCreateTime desc"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/zhangling/db/HistoryInfo;->queryBySqls([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryYesterday()Ljava/util/List;
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
    const/4 v3, 0x0

    .line 145
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 146
    const-string v2, "hiPid"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    .line 147
    const-string v2, "hiTime"

    aput-object v2, v1, v0

    .line 149
    .local v1, "_cols":[Ljava/lang/String;
    const-string v2, "hiCreateTime >= datetime(\'now\', \'-1 day\', \'start of day\') and hiCreateTime < datetime(\'now\', \'start of day\')"

    const-string v6, "hiCreateTime desc"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/zhangling/db/HistoryInfo;->queryBySqls([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryYesterdayBefore()Ljava/util/List;
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
    const/4 v3, 0x0

    .line 156
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 157
    const-string v2, "hiPid"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    .line 158
    const-string v2, "hiTime"

    aput-object v2, v1, v0

    .line 160
    .local v1, "_cols":[Ljava/lang/String;
    const-string v2, "hiCreateTime < datetime(\'now\', \'-1 day\', \'start of day\')"

    const-string v6, "hiCreateTime desc"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/zhangling/db/HistoryInfo;->queryBySqls([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
