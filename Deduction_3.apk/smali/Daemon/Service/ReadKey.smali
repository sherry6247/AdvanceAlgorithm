.class public LDaemon/Service/ReadKey;
.super Ljava/lang/Object;
.source "ReadKey.java"


# static fields
.field private static final tag:Ljava/lang/String; = "ReadKey"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Read(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 7
    .param p0, "mCtx"    # Landroid/content/Context;

    .prologue
    .line 29
    const-string v3, ""

    .line 30
    .local v3, "temp":Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 31
    .local v4, "values":Landroid/content/ContentValues;
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "rundate"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "chanel"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "version"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    .line 32
    const-string v1, "product"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "hearttime"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "host"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "print"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "key"

    aput-object v1, v2, v0

    .line 34
    .local v2, "item":[Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 35
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "mCtx":Landroid/content/Context;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".kt"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "xmlFilename":Ljava/lang/String;
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "xml read:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LDaemon/Service/ReadKey;->print(Ljava/lang/String;)V

    .line 38
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 39
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 40
    .local p0, "bis":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .end local v0    # "xmlFilename":Ljava/lang/String;
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 42
    .local v0, "dos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->read()I

    move-result v1

    .local v1, "hh":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_7

    .line 45
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .end local v1    # "hh":I
    const-string v5, "UTF-8"

    invoke-static {v1, v5}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    .end local v3    # "temp":Ljava/lang/String;
    .local v1, "temp":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 47
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 48
    const/4 p0, 0x0

    .line 49
    const/4 p0, 0x0

    .end local v0    # "dos":Ljava/io/ByteArrayOutputStream;
    .local p0, "dos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .line 61
    .end local v1    # "temp":Ljava/lang/String;
    .end local p0    # "dos":Ljava/io/ByteArrayOutputStream;
    .local v0, "temp":Ljava/lang/String;
    :goto_1
    :try_start_2
    const-string p0, "</item>"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_9

    .line 75
    const-string p0, "key"

    invoke-virtual {v4, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_c

    const-string p0, "key"

    invoke-virtual {v4, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "89860079090902204557"

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    .line 77
    const-string p0, "rundate"

    invoke-virtual {v4, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 78
    const-string p0, "rundate"

    invoke-virtual {v4, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 78
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, LDaemon/Action/Action;->startdate:I

    .line 80
    :cond_0
    const-string p0, "chanel"

    invoke-virtual {v4, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 81
    const-string p0, "chanel"

    invoke-virtual {v4, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, LDaemon/Action/Action;->channe:I

    .line 84
    :cond_1
    const-string p0, "version"

    invoke-virtual {v4, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 85
    const-string p0, "version"

    invoke-virtual {v4, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 85
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, LDaemon/Action/Action;->version:I

    .line 88
    :cond_2
    const-string p0, "product"

    invoke-virtual {v4, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 89
    const-string p0, "product"

    invoke-virtual {v4, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 89
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, LDaemon/Action/Action;->product:I

    .line 92
    :cond_3
    const-string p0, "hearttime"

    invoke-virtual {v4, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 93
    const-string p0, "hearttime"

    invoke-virtual {v4, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, LHamsterSuper/Client/Game/BootReceiver;->hearttime:J

    .line 96
    :cond_4
    const-string p0, "host"

    invoke-virtual {v4, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 97
    const-string p0, "host"

    invoke-virtual {v4, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, LDaemon/Action/Action;->host:Ljava/lang/String;

    .line 98
    :cond_5
    const-string p0, "print"

    invoke-virtual {v4, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 99
    const-string p0, "print"

    invoke-virtual {v4, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_6

    .line 100
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    .line 102
    :cond_6
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    move-object v6, v0

    .end local v0    # "temp":Ljava/lang/String;
    .local v6, "temp":Ljava/lang/String;
    move-object v0, p0

    move-object p0, v6

    .line 106
    .end local v2    # "item":[Ljava/lang/String;
    .end local v6    # "temp":Ljava/lang/String;
    .local p0, "temp":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 43
    .local v0, "dos":Ljava/io/ByteArrayOutputStream;
    .local v1, "hh":I
    .restart local v2    # "item":[Ljava/lang/String;
    .restart local v3    # "temp":Ljava/lang/String;
    .local p0, "bis":Ljava/io/FileInputStream;
    :cond_7
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 55
    .end local v0    # "dos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "hh":I
    .end local p0    # "bis":Ljava/io/FileInputStream;
    :catch_0
    move-exception p0

    move-object v0, v3

    .line 56
    .end local v3    # "temp":Ljava/lang/String;
    .local v0, "temp":Ljava/lang/String;
    .local p0, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xml read error:"

    .end local v2    # "item":[Ljava/lang/String;
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "e":Ljava/lang/Exception;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LDaemon/Service/ReadKey;->print(Ljava/lang/String;)V

    .line 57
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    move-object v6, v0

    .end local v0    # "temp":Ljava/lang/String;
    .restart local v6    # "temp":Ljava/lang/String;
    move-object v0, p0

    move-object p0, v6

    .end local v6    # "temp":Ljava/lang/String;
    .local p0, "temp":Ljava/lang/String;
    goto :goto_2

    .line 51
    .end local p0    # "temp":Ljava/lang/String;
    .local v0, "xmlFilename":Ljava/lang/String;
    .restart local v2    # "item":[Ljava/lang/String;
    .restart local v3    # "temp":Ljava/lang/String;
    :cond_8
    :try_start_4
    const-string p0, "no found xml"

    invoke-static {p0}, LDaemon/Service/ReadKey;->print(Ljava/lang/String;)V

    .line 52
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object p0

    move-object v0, p0

    move-object p0, v3

    .end local v3    # "temp":Ljava/lang/String;
    .restart local p0    # "temp":Ljava/lang/String;
    goto :goto_2

    .line 62
    .end local p0    # "temp":Ljava/lang/String;
    .local v0, "temp":Ljava/lang/String;
    :cond_9
    :try_start_5
    const-string p0, "item"

    invoke-static {v0, p0}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 63
    .local p0, "cur":Ljava/lang/String;
    const/4 p0, 0x0

    .local p0, "i":I
    :goto_4
    array-length v1, v2

    if-lt p0, v1, :cond_a

    .line 68
    const-string p0, "</item>"

    .end local p0    # "i":I
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    .line 69
    const-string v1, "</item>"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p0, v1

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .end local v0    # "temp":Ljava/lang/String;
    .local p0, "temp":Ljava/lang/String;
    move-object v0, p0

    .end local p0    # "temp":Ljava/lang/String;
    .restart local v0    # "temp":Ljava/lang/String;
    goto/16 :goto_1

    .line 64
    .local p0, "i":I
    :cond_a
    aget-object v1, v2, p0

    const-string v3, "_id"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 65
    aget-object v1, v2, p0

    invoke-static {v0, v1}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 66
    aget-object v1, v2, p0

    aget-object v3, v2, p0

    invoke-static {v0, v3}, LDaemon/Base/Tools;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 63
    :cond_b
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    .line 71
    .end local p0    # "i":I
    :catch_1
    move-exception p0

    .line 72
    .local p0, "e":Ljava/lang/Exception;
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .end local p0    # "e":Ljava/lang/Exception;
    move-result-object p0

    move-object v6, v0

    .end local v0    # "temp":Ljava/lang/String;
    .restart local v6    # "temp":Ljava/lang/String;
    move-object v0, p0

    move-object p0, v6

    .end local v6    # "temp":Ljava/lang/String;
    .local p0, "temp":Ljava/lang/String;
    goto :goto_2

    .line 106
    .end local p0    # "temp":Ljava/lang/String;
    .restart local v0    # "temp":Ljava/lang/String;
    :cond_c
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    move-object v6, v0

    .end local v0    # "temp":Ljava/lang/String;
    .restart local v6    # "temp":Ljava/lang/String;
    move-object v0, p0

    move-object p0, v6

    .end local v6    # "temp":Ljava/lang/String;
    .restart local p0    # "temp":Ljava/lang/String;
    goto/16 :goto_2

    .line 55
    .local v0, "dos":Ljava/io/ByteArrayOutputStream;
    .local v1, "temp":Ljava/lang/String;
    .local p0, "bis":Ljava/io/FileInputStream;
    :catch_2
    move-exception p0

    move-object v0, v1

    .end local v1    # "temp":Ljava/lang/String;
    .local v0, "temp":Ljava/lang/String;
    goto :goto_3
.end method

.method public static ReadInit(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    sget-object v0, LDaemon/Action/Action;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "host is ok:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, LDaemon/Action/Action;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LDaemon/Action/Action;->host:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 123
    const v1, 0x7f060004

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, LDaemon/Action/Action;->protocol_version:I

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 125
    const v1, 0x7f060001

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, LDaemon/Action/Action;->version:I

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 127
    const v1, 0x7f060002

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, LDaemon/Action/Action;->channe:I

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 129
    const v1, 0x7f060003

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, LDaemon/Action/Action;->product:I

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 131
    const v1, 0x7f060005

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, LDaemon/Action/Action;->startdate:I

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 133
    const v1, 0x7f060006

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, LHamsterSuper/Client/Game/BootReceiver;->hearttime:J

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "host:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, LDaemon/Action/Action;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "protocol_version:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, LDaemon/Action/Action;->protocol_version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "version:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, LDaemon/Action/Action;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "channe:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, LDaemon/Action/Action;->channe:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "product:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, LDaemon/Action/Action;->product:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startdate:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, LDaemon/Action/Action;->startdate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hearttime:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v1, LHamsterSuper/Client/Game/BootReceiver;->hearttime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static ReadVersionCode(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const/4 v0, 0x1

    .line 151
    .local v0, "versioncode":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 152
    const/high16 v2, 0x7f060000

    .line 151
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 153
    return v0
.end method

.method public static addVerSionCode(I)V
    .locals 3
    .param p0, "code"    # I

    .prologue
    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, LHamsterSuper/Client/Game/BootReceiver;->versioncode:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addVerSionCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 167
    sget-object v1, LHamsterSuper/Client/Game/BootReceiver;->versioncode:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    return-void

    .line 163
    :cond_1
    sget-object v1, LHamsterSuper/Client/Game/BootReceiver;->versioncode:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, p0, :cond_0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static print(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 198
    sget-object v0, LDaemon/Action/Action;->print:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "ReadKey"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    return-void
.end method

.method public static runHeart(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 176
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->versioncode:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 177
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->action:LDaemon/Action/Action;

    invoke-virtual {v3, v4, v4}, LDaemon/Action/Action;->Generate_events(II)I

    move v3, v5

    .line 194
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return v3

    .line 182
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->action:LDaemon/Action/Action;

    invoke-virtual {v3, v4, v4}, LDaemon/Action/Action;->Generate_events(II)I

    .line 184
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->versioncode:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_1

    move v3, v5

    .line 185
    goto :goto_0

    .line 187
    :cond_1
    invoke-static {p0}, LDaemon/Service/ReadKey;->ReadVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 188
    .local v0, "VersionCode":I
    const/4 v2, 0x0

    .end local p0    # "context":Landroid/content/Context;
    .local v2, "i":I
    :goto_1
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->versioncode:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 194
    const/4 v3, 0x1

    goto :goto_0

    .line 189
    :cond_2
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->versioncode:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 190
    .local v1, "code":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "versioncode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LDaemon/Action/Action;->print(Ljava/lang/String;)V

    .line 191
    sget-object v3, LHamsterSuper/Client/Game/BootReceiver;->versioncode:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v3, v0, :cond_3

    move v3, v5

    .line 192
    goto :goto_0

    .line 188
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
