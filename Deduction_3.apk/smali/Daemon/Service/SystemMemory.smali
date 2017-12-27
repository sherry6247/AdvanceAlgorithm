.class public LDaemon/Service/SystemMemory;
.super Ljava/lang/Object;
.source "SystemMemory.java"


# static fields
.field public static final CPU_FILE:Ljava/lang/String; = "/proc/stat"

.field public static final DEV_FILE:Ljava/lang/String; = "/proc/meminfo"

.field private static final MemFree:Ljava/lang/String; = "MemFree"

.field private static final MemTotal:Ljava/lang/String; = "MemTotal"

.field public static Memdata:[Ljava/lang/String; = null

.field private static final Processor:Ljava/lang/String; = "Processor"

.field public static final SIZE:I = 0x400


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string v3, "0"

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v3, v0, v1

    sput-object v0, LDaemon/Service/SystemMemory;->Memdata:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllMemory()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, ""

    .line 56
    invoke-static {}, LDaemon/Service/SystemMemory;->readdev()V

    .line 57
    sget-object v2, LDaemon/Service/SystemMemory;->Memdata:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, " "

    const-string v4, ""

    invoke-static {v2, v3, v5}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "size":Ljava/lang/String;
    const-string v2, "kB"

    const-string v3, ""

    invoke-static {v1, v2, v5}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    const-string v2, "KB"

    const-string v3, ""

    invoke-static {v1, v2, v5}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    const-string v2, "kb"

    const-string v3, ""

    invoke-static {v1, v2, v5}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v0, v2, 0x400

    .line 63
    .local v0, "allsize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 67
    .end local v0    # "allsize":I
    :goto_0
    return-object v2

    .line 64
    :catch_0
    move-exception v2

    .line 67
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCpu()Ljava/lang/String;
    .locals 8

    .prologue
    .line 89
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 90
    .local v0, "cpu":Ljava/lang/String;
    const/4 v1, 0x0

    .line 92
    .local v1, "fstream":Ljava/io/FileReader;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v6, "/proc/stat"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "fstream":Ljava/io/FileReader;
    .local v2, "fstream":Ljava/io/FileReader;
    move-object v1, v2

    .line 97
    .end local v2    # "fstream":Ljava/io/FileReader;
    .restart local v1    # "fstream":Ljava/io/FileReader;
    :goto_0
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v6, 0x1f4

    invoke-direct {v3, v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 102
    .local v3, "in":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 109
    :goto_1
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 114
    .end local v4    # "line":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 103
    .restart local v4    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "segs":[Ljava/lang/String;
    const-string v6, "Processor"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 105
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 106
    goto :goto_1

    .line 111
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "segs":[Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2

    .line 93
    .end local v3    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public static getFreeMemory()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, ""

    .line 72
    invoke-static {}, LDaemon/Service/SystemMemory;->readdev()V

    .line 73
    sget-object v2, LDaemon/Service/SystemMemory;->Memdata:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v3, " "

    const-string v4, ""

    invoke-static {v2, v3, v5}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "size":Ljava/lang/String;
    const-string v2, "kB"

    const-string v3, ""

    invoke-static {v1, v2, v5}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    const-string v2, "KB"

    const-string v3, ""

    invoke-static {v1, v2, v5}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v2, "kb"

    const-string v3, ""

    invoke-static {v1, v2, v5}, LDaemon/Base/Tools;->replace_name(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v0, v2, 0x400

    .line 79
    .local v0, "allsize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 83
    .end local v0    # "allsize":I
    :goto_0
    return-object v2

    .line 80
    :catch_0
    move-exception v2

    .line 83
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    goto :goto_0
.end method

.method public static readdev()V
    .locals 9

    .prologue
    .line 24
    const/4 v1, 0x0

    .line 26
    .local v1, "fstream":Ljava/io/FileReader;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v6, "/proc/meminfo"

    invoke-direct {v2, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "fstream":Ljava/io/FileReader;
    .local v2, "fstream":Ljava/io/FileReader;
    move-object v1, v2

    .line 31
    .end local v2    # "fstream":Ljava/io/FileReader;
    .restart local v1    # "fstream":Ljava/io/FileReader;
    :goto_0
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v6, 0x1f4

    invoke-direct {v3, v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 35
    .local v3, "in":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 38
    .local v0, "count":I
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 47
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 52
    .end local v4    # "line":Ljava/lang/String;
    :goto_2
    return-void

    .line 39
    .restart local v4    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, "segs":[Ljava/lang/String;
    const-string v6, "MemTotal"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 41
    sget-object v6, LDaemon/Service/SystemMemory;->Memdata:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 45
    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    :cond_2
    const-string v6, "MemFree"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 43
    sget-object v6, LDaemon/Service/SystemMemory;->Memdata:[Ljava/lang/String;

    const/4 v7, 0x1

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 49
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "segs":[Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2

    .line 27
    .end local v0    # "count":I
    .end local v3    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v6

    goto :goto_0
.end method
