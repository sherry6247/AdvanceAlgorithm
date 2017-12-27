.class public Lcom/zhangling/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field static teShuZiFu_new:[Ljava/lang/String;

.field static teShuZiFu_old:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 12
    const-string v1, "#"

    aput-object v1, v0, v3

    .line 13
    const-string v1, "&"

    aput-object v1, v0, v4

    .line 14
    const-string v1, "<"

    aput-object v1, v0, v5

    .line 15
    const-string v1, ">"

    aput-object v1, v0, v6

    .line 16
    const-string v1, " "

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 17
    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 18
    const-string v2, "$"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 19
    const-string v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 20
    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 21
    const-string v2, "%"

    aput-object v2, v0, v1

    .line 11
    sput-object v0, Lcom/zhangling/util/StringUtil;->teShuZiFu_old:[Ljava/lang/String;

    .line 26
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 27
    const-string v1, "#23"

    aput-object v1, v0, v3

    .line 28
    const-string v1, "#26"

    aput-object v1, v0, v4

    .line 29
    const-string v1, "#3C"

    aput-object v1, v0, v5

    .line 30
    const-string v1, "#3E"

    aput-object v1, v0, v6

    .line 31
    const-string v1, "#20"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 32
    const-string v2, "#3F"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 33
    const-string v2, "#24"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 34
    const-string v2, "\\\'"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 35
    const-string v2, "#2D"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 36
    const-string v2, "#25"

    aput-object v2, v0, v1

    .line 26
    sput-object v0, Lcom/zhangling/util/StringUtil;->teShuZiFu_new:[Ljava/lang/String;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beKong(Ljava/lang/Object;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 104
    if-nez p0, :cond_0

    move v0, v2

    .line 108
    :goto_0
    return v0

    .line 106
    :cond_0
    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static beKong(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 97
    if-nez p0, :cond_0

    move v0, v1

    .line 101
    :goto_0
    return v0

    .line 99
    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static beKongWith0(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 117
    if-nez p0, :cond_0

    move v0, v1

    .line 123
    :goto_0
    return v0

    .line 119
    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 120
    goto :goto_0

    .line 121
    :cond_1
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 122
    goto :goto_0

    .line 123
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDist(J)Ljava/lang/String;
    .locals 3
    .param p0, "lon"    # J

    .prologue
    .line 57
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 58
    .local v0, "nowlong":J
    invoke-static {v0, v1, p0, p1}, Lcom/zhangling/util/StringUtil;->getDist(JJ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDist(JJ)Ljava/lang/String;
    .locals 8
    .param p0, "nowlong"    # J
    .param p2, "lon"    # J

    .prologue
    const-wide/16 v6, 0x18

    const-wide/16 v4, 0x3c

    .line 69
    sub-long v0, p0, p2

    .line 70
    .local v0, "res":J
    const-wide/16 v2, 0x3e8

    :try_start_0
    div-long/2addr v0, v2

    .line 71
    cmp-long v2, v4, v0

    if-lez v2, :cond_0

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u79d2\u949f\u524d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    :goto_0
    return-object v2

    .line 74
    :cond_0
    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    .line 75
    cmp-long v2, v4, v0

    if-lez v2, :cond_1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u5206\u949f\u524d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 78
    :cond_1
    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    .line 79
    cmp-long v2, v6, v0

    if-lez v2, :cond_2

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u5c0f\u65f6\u524d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 82
    :cond_2
    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u5929\u524d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 87
    :catch_0
    move-exception v2

    .line 88
    const-string v2, ""

    goto :goto_0
.end method

.method public static unTihuan(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v2, Lcom/zhangling/util/StringUtil;->teShuZiFu_old:[Ljava/lang/String;

    array-length v1, v2

    .line 45
    .local v1, "length":I
    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 48
    return-object p0

    .line 46
    :cond_0
    sget-object v2, Lcom/zhangling/util/StringUtil;->teShuZiFu_new:[Ljava/lang/String;

    aget-object v2, v2, v0

    sget-object v3, Lcom/zhangling/util/StringUtil;->teShuZiFu_old:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 45
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
