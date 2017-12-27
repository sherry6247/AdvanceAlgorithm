.class public Lcom/zhangling/db/ContentInfo;
.super Lcom/zhangling/db/BaseSqlManager;
.source "ContentInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zhangling/db/BaseSqlManager",
        "<",
        "Lcom/zhangling/db/ContentInfo;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final cols:[Ljava/lang/String;

.field private static final colsType:[Ljava/lang/String;

.field private static contentInfo:Lcom/zhangling/db/ContentInfo; = null

.field private static final tableName:Ljava/lang/String; = "ContentInfo"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/zhangling/db/ContentInfo;->contentInfo:Lcom/zhangling/db/ContentInfo;

    .line 27
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ciId"

    aput-object v1, v0, v3

    const-string v1, "ciTitle"

    aput-object v1, v0, v4

    const-string v1, "ciContext"

    aput-object v1, v0, v5

    .line 29
    const-string v1, "ciMiniText"

    aput-object v1, v0, v6

    const-string v1, "ciBrowseLastTime"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ciStatus"

    aput-object v2, v0, v1

    .line 27
    sput-object v0, Lcom/zhangling/db/ContentInfo;->cols:[Ljava/lang/String;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "INTEGER PRIMARY KEY"

    aput-object v1, v0, v3

    const-string v1, "VARCHAR"

    aput-object v1, v0, v4

    const-string v1, "text"

    aput-object v1, v0, v5

    .line 35
    const-string v1, "VARCHAR"

    aput-object v1, v0, v6

    const-string v1, "DATETIME"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "INTEGER"

    aput-object v2, v0, v1

    .line 33
    sput-object v0, Lcom/zhangling/db/ContentInfo;->colsType:[Ljava/lang/String;

    .line 12
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const-string v0, "ContentInfo"

    sget-object v1, Lcom/zhangling/db/ContentInfo;->cols:[Ljava/lang/String;

    sget-object v2, Lcom/zhangling/db/ContentInfo;->colsType:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zhangling/db/BaseSqlManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static init(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)Lcom/zhangling/db/ContentInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "db_init_ContentInfo"

    const-string v2, "1"

    .line 53
    sget-object v2, Lcom/zhangling/db/ContentInfo;->contentInfo:Lcom/zhangling/db/ContentInfo;

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangling/util/Logs;->p(Ljava/lang/Boolean;)V

    .line 54
    sget-object v2, Lcom/zhangling/db/ContentInfo;->contentInfo:Lcom/zhangling/db/ContentInfo;

    if-eqz v2, :cond_1

    .line 55
    sget-object v2, Lcom/zhangling/db/ContentInfo;->contentInfo:Lcom/zhangling/db/ContentInfo;

    .line 73
    :goto_1
    return-object v2

    :cond_0
    move v2, v3

    .line 53
    goto :goto_0

    .line 57
    :cond_1
    :try_start_0
    new-instance v2, Lcom/zhangling/db/ContentInfo;

    invoke-direct {v2, p0}, Lcom/zhangling/db/ContentInfo;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/zhangling/db/ContentInfo;->contentInfo:Lcom/zhangling/db/ContentInfo;

    .line 58
    sget-object v2, Lcom/zhangling/db/ContentInfo;->contentInfo:Lcom/zhangling/db/ContentInfo;

    if-nez v2, :cond_2

    move v2, v4

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/zhangling/util/Logs;->p(Ljava/lang/Boolean;)V

    .line 59
    const-string v2, "db_init_ContentInfo"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "db_init":Ljava/lang/String;
    invoke-static {v0}, Lcom/zhangling/util/Logs;->p(Ljava/lang/String;)V

    .line 61
    if-eqz v0, :cond_3

    .line 62
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    sget-object v2, Lcom/zhangling/db/ContentInfo;->contentInfo:Lcom/zhangling/db/ContentInfo;

    goto :goto_1

    .end local v0    # "db_init":Ljava/lang/String;
    :cond_2
    move v2, v3

    .line 58
    goto :goto_2

    .line 67
    .restart local v0    # "db_init":Ljava/lang/String;
    :cond_3
    const-string v2, "db_init_ContentInfo"

    const-string v3, "1"

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 69
    sget-object v2, Lcom/zhangling/db/ContentInfo;->contentInfo:Lcom/zhangling/db/ContentInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 70
    .end local v0    # "db_init":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    move-object v2, v5

    .line 73
    goto :goto_1
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 12
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
    .line 80
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v10, "resList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    new-array v7, v0, [Ljava/lang/String;

    .line 82
    .local v7, "cols":[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v11, "sb":Ljava/lang/StringBuilder;
    const-string v9, ""

    .line 85
    .local v9, "orderBy":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/zhangling/db/ContentInfo;->queryBySql(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 89
    :goto_0
    return-object v10

    .line 86
    :catch_0
    move-exception v8

    .line 87
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v8}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getSomeList([Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "ids"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 98
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v5, "resList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v0, v9, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 100
    const-string v8, "ciTitle"

    aput-object v8, v0, v7

    .line 102
    .local v0, "cols":[Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string v4, ""

    .line 105
    .local v4, "orderBy":Ljava/lang/String;
    :try_start_0
    array-length v3, p1

    .line 106
    .local v3, "length":I
    if-nez v3, :cond_1

    .line 119
    .end local v3    # "length":I
    :cond_0
    :goto_0
    return-object v5

    .line 109
    .restart local v3    # "length":I
    :cond_1
    const-string v7, "ciTitle in ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 111
    aget-object v7, p1, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    sub-int v7, v3, v9

    if-ge v2, v7, :cond_2

    .line 113
    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 116
    .end local v2    # "i":I
    .end local v3    # "length":I
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/zhangling/util/Logs;->out(Ljava/lang/Exception;)V

    goto :goto_0
.end method
