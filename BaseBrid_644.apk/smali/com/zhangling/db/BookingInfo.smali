.class public Lcom/zhangling/db/BookingInfo;
.super Lcom/zhangling/db/BaseSqlManager;
.source "BookingInfo.java"

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

.field private static info:Lcom/zhangling/db/BookingInfo; = null

.field private static final tableName:Ljava/lang/String; = "BookingInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v6, "DATETIME"

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/zhangling/db/BookingInfo;->info:Lcom/zhangling/db/BookingInfo;

    .line 31
    new-array v0, v5, [Ljava/lang/String;

    .line 32
    const-string v1, "biPid"

    aput-object v1, v0, v2

    .line 33
    const-string v1, "biCreateTime"

    aput-object v1, v0, v3

    .line 35
    const-string v1, "biTime"

    aput-object v1, v0, v4

    .line 31
    sput-object v0, Lcom/zhangling/db/BookingInfo;->cols:[Ljava/lang/String;

    .line 41
    new-array v0, v5, [Ljava/lang/String;

    .line 42
    const-string v1, "INTEGER PRIMARY KEY"

    aput-object v1, v0, v2

    .line 43
    const-string v1, "DATETIME"

    aput-object v6, v0, v3

    .line 45
    const-string v1, "DATETIME"

    aput-object v6, v0, v4

    .line 41
    sput-object v0, Lcom/zhangling/db/BookingInfo;->colsType:[Ljava/lang/String;

    .line 13
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-string v0, "BookingInfo"

    sget-object v1, Lcom/zhangling/db/BookingInfo;->cols:[Ljava/lang/String;

    sget-object v2, Lcom/zhangling/db/BookingInfo;->colsType:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zhangling/db/BaseSqlManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static init(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)Lcom/zhangling/db/BookingInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    const/4 v4, 0x0

    const-string v2, "db_init_BookingInfo"

    const-string v2, "1"

    .line 64
    sget-object v2, Lcom/zhangling/db/BookingInfo;->info:Lcom/zhangling/db/BookingInfo;

    if-eqz v2, :cond_0

    .line 65
    sget-object v2, Lcom/zhangling/db/BookingInfo;->info:Lcom/zhangling/db/BookingInfo;

    .line 84
    :goto_0
    return-object v2

    .line 67
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/zhangling/util/Logs;->pShow()V

    .line 68
    new-instance v2, Lcom/zhangling/db/BookingInfo;

    invoke-direct {v2, p0}, Lcom/zhangling/db/BookingInfo;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/zhangling/db/BookingInfo;->info:Lcom/zhangling/db/BookingInfo;

    .line 69
    invoke-static {}, Lcom/zhangling/util/Logs;->pShow()V

    .line 71
    sget-object v2, Lcom/zhangling/db/BookingInfo;->info:Lcom/zhangling/db/BookingInfo;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangling/util/Logs;->p(Ljava/lang/Boolean;)V

    .line 72
    const-string v2, "db_init_BookingInfo"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "db_init":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 74
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    sget-object v2, Lcom/zhangling/db/BookingInfo;->info:Lcom/zhangling/db/BookingInfo;

    goto :goto_0

    .line 71
    .end local v0    # "db_init":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 78
    .restart local v0    # "db_init":Ljava/lang/String;
    :cond_2
    const-string v2, "db_init_BookingInfo"

    const-string v3, "1"

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    sget-object v2, Lcom/zhangling/db/BookingInfo;->info:Lcom/zhangling/db/BookingInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v0    # "db_init":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    move-object v2, v4

    .line 84
    goto :goto_0
.end method

.method private initData()V
    .locals 0

    .prologue
    .line 127
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

    .line 92
    new-array v0, v6, [Ljava/lang/String;

    .line 93
    const-string v2, "biPid"

    aput-object v2, v0, v3

    .line 94
    const-string v2, "biCreateTime"

    aput-object v2, v0, v4

    .line 95
    const-string v2, "biTime"

    aput-object v2, v0, v5

    .line 97
    .local v0, "names":[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    .line 98
    aput-object p1, v1, v3

    .line 99
    invoke-virtual {p0}, Lcom/zhangling/db/BookingInfo;->getDateTime()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 100
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 106
    .local v1, "values":[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/zhangling/db/BookingInfo;->insert([Ljava/lang/String;[Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public queryBooking()Ljava/util/List;
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

    .line 135
    const-string v1, "biPid"

    const-string v6, "biCreateTime desc"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/zhangling/db/BookingInfo;->queryBySql(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBooking2()Ljava/util/List;
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
    const/4 v2, 0x0

    .line 138
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 139
    const-string v3, "biPid"

    aput-object v3, v1, v0

    const/4 v0, 0x1

    .line 140
    const-string v3, "biCreateTime"

    aput-object v3, v1, v0

    .line 142
    .local v1, "_cols":[Ljava/lang/String;
    const-string v6, "biCreateTime desc"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/zhangling/db/BookingInfo;->queryBySqls([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
