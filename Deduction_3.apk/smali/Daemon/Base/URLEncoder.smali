.class public LDaemon/Base/URLEncoder;
.super Ljava/lang/Object;
.source "URLEncoder.java"


# static fields
.field public static final MAX_RADIX:I = 0x24

.field public static final MIN_RADIX:I = 0x2

.field static final caseDiff:I = 0x20

.field private static defaultEncName:Ljava/lang/String;

.field private static dontNeedEncoding:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 50
    const-string v1, ""

    sput-object v1, LDaemon/Base/URLEncoder;->defaultEncName:Ljava/lang/String;

    .line 53
    const/16 v1, 0x100

    new-array v1, v1, [Z

    sput-object v1, LDaemon/Base/URLEncoder;->dontNeedEncoding:[Z

    .line 55
    const/16 v0, 0x61

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    .line 58
    const/16 v0, 0x41

    :goto_1
    const/16 v1, 0x5a

    if-le v0, v1, :cond_3

    .line 61
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-le v0, v1, :cond_4

    .line 64
    sget-object v1, LDaemon/Base/URLEncoder;->dontNeedEncoding:[Z

    const/16 v2, 0x20

    aput-boolean v3, v1, v2

    .line 66
    sget-object v1, LDaemon/Base/URLEncoder;->dontNeedEncoding:[Z

    const/16 v2, 0x2d

    aput-boolean v3, v1, v2

    .line 67
    sget-object v1, LDaemon/Base/URLEncoder;->dontNeedEncoding:[Z

    const/16 v2, 0x5f

    aput-boolean v3, v1, v2

    .line 68
    sget-object v1, LDaemon/Base/URLEncoder;->dontNeedEncoding:[Z

    const/16 v2, 0x2e

    aput-boolean v3, v1, v2

    .line 69
    sget-object v1, LDaemon/Base/URLEncoder;->dontNeedEncoding:[Z

    const/16 v2, 0x2a

    aput-boolean v3, v1, v2

    .line 70
    const-string v1, "microedition.encoding"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, LDaemon/Base/URLEncoder;->defaultEncName:Ljava/lang/String;

    .line 71
    sget-object v1, LDaemon/Base/URLEncoder;->defaultEncName:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, LDaemon/Base/URLEncoder;->defaultEncName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 72
    :cond_0
    const-string v1, "UTF-8"

    sput-object v1, LDaemon/Base/URLEncoder;->defaultEncName:Ljava/lang/String;

    .line 46
    :cond_1
    return-void

    .line 56
    :cond_2
    sget-object v1, LDaemon/Base/URLEncoder;->dontNeedEncoding:[Z

    aput-boolean v3, v1, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_3
    sget-object v1, LDaemon/Base/URLEncoder;->dontNeedEncoding:[Z

    aput-boolean v3, v1, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 62
    :cond_4
    sget-object v1, LDaemon/Base/URLEncoder;->dontNeedEncoding:[Z

    aput-boolean v3, v1, v0

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "str":Ljava/lang/String;
    sget-object v1, LDaemon/Base/URLEncoder;->defaultEncName:Ljava/lang/String;

    invoke-static {p0, v1}, LDaemon/Base/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "enc"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v2, 0x0

    .line 125
    .local v2, "needToChange":Z
    const/4 v4, 0x0

    .line 126
    .local v4, "wroteUnencodedChar":Z
    const/16 v0, 0xa

    .line 127
    .local v0, "maxBytesPerChar":I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 128
    .local v6, "out":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 129
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 131
    .local v3, "writer":Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    .end local v0    # "maxBytesPerChar":I
    invoke-direct {v0, v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .local v0, "writer":Ljava/io/OutputStreamWriter;
    move-object v3, v0

    .line 140
    .end local v0    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v3    # "writer":Ljava/io/OutputStreamWriter;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    move v7, v4

    .end local v4    # "wroteUnencodedChar":Z
    .local v7, "wroteUnencodedChar":Z
    move v5, v2

    .end local v2    # "needToChange":Z
    .local v5, "needToChange":Z
    move-object v4, v3

    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .local v4, "writer":Ljava/io/OutputStreamWriter;
    move v3, v0

    .end local v0    # "i":I
    .local v3, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v3, v0, :cond_1

    .line 215
    if-eqz v5, :cond_0

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 132
    .end local v5    # "needToChange":Z
    .end local v7    # "wroteUnencodedChar":Z
    .restart local v2    # "needToChange":Z
    .local v3, "writer":Ljava/io/OutputStreamWriter;
    .local v4, "wroteUnencodedChar":Z
    .restart local p0    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    :try_start_1
    new-instance v0, Ljava/io/OutputStreamWriter;

    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    sget-object v5, LDaemon/Base/URLEncoder;->defaultEncName:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4

    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .local v0, "writer":Ljava/io/OutputStreamWriter;
    move-object v3, v0

    .end local v0    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v3    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_0

    .line 141
    .end local v2    # "needToChange":Z
    .local v3, "i":I
    .local v4, "writer":Ljava/io/OutputStreamWriter;
    .restart local v5    # "needToChange":Z
    .restart local v7    # "wroteUnencodedChar":Z
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 143
    .local v2, "c":I
    const/16 v0, 0x100

    if-ge v2, v0, :cond_2

    sget-object v0, LDaemon/Base/URLEncoder;->dontNeedEncoding:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    .line 144
    const/16 v0, 0x20

    if-ne v2, v0, :cond_9

    .line 145
    const/16 v0, 0x2b

    .line 146
    .end local v2    # "c":I
    .local v0, "c":I
    const/4 v2, 0x1

    .line 149
    .end local v5    # "needToChange":Z
    .local v2, "needToChange":Z
    :goto_2
    int-to-char v5, v0

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 150
    const/4 v5, 0x1

    .end local v7    # "wroteUnencodedChar":Z
    .local v5, "wroteUnencodedChar":Z
    move v10, v3

    .end local v3    # "i":I
    .local v10, "i":I
    move v3, v2

    .end local v2    # "needToChange":Z
    .local v3, "needToChange":Z
    move v2, v10

    .line 140
    .end local v10    # "i":I
    .local v2, "i":I
    :goto_3
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .local v0, "i":I
    move v7, v5

    .end local v5    # "wroteUnencodedChar":Z
    .restart local v7    # "wroteUnencodedChar":Z
    move v5, v3

    .end local v3    # "needToChange":Z
    .local v5, "needToChange":Z
    move v3, v0

    .end local v0    # "i":I
    .local v3, "i":I
    goto :goto_1

    .line 154
    .local v2, "c":I
    :cond_2
    if-eqz v7, :cond_8

    .line 155
    :try_start_2
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 156
    .end local v4    # "writer":Ljava/io/OutputStreamWriter;
    .local v0, "writer":Ljava/io/OutputStreamWriter;
    const/4 v4, 0x0

    .end local v7    # "wroteUnencodedChar":Z
    .local v4, "wroteUnencodedChar":Z
    move-object v7, v0

    .end local v0    # "writer":Ljava/io/OutputStreamWriter;
    .local v7, "writer":Ljava/io/OutputStreamWriter;
    move v8, v4

    .line 158
    .end local v4    # "wroteUnencodedChar":Z
    .local v8, "wroteUnencodedChar":Z
    :goto_4
    if-eqz v7, :cond_3

    .line 159
    :try_start_3
    invoke-virtual {v7, v2}, Ljava/io/OutputStreamWriter;->write(I)V

    .line 168
    :cond_3
    const v0, 0xd800

    if-lt v2, v0, :cond_7

    const v0, 0xdbff

    if-gt v2, v0, :cond_7

    .line 173
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 174
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 179
    .local v0, "d":I
    const v4, 0xdc00

    if-lt v0, v4, :cond_7

    const v4, 0xdfff

    if-gt v0, v4, :cond_7

    .line 184
    invoke-virtual {v7, v0}, Ljava/io/OutputStreamWriter;->write(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 185
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "i":I
    .local v0, "i":I
    move v4, v0

    .line 189
    .end local v0    # "i":I
    .local v4, "i":I
    :goto_5
    :try_start_4
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 194
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 195
    .local v0, "ba":[B
    const/4 v3, 0x0

    .local v3, "j":I
    move v5, v3

    .end local v3    # "j":I
    .local v5, "j":I
    :goto_6
    array-length v3, v0

    if-lt v5, v3, :cond_4

    .line 210
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 211
    const/4 v0, 0x1

    .local v0, "needToChange":Z
    move v5, v8

    .end local v8    # "wroteUnencodedChar":Z
    .local v5, "wroteUnencodedChar":Z
    move v3, v0

    .end local v0    # "needToChange":Z
    .local v3, "needToChange":Z
    move v0, v2

    .end local v2    # "c":I
    .local v0, "c":I
    move v2, v4

    .end local v4    # "i":I
    .local v2, "i":I
    move-object v4, v7

    .end local v7    # "writer":Ljava/io/OutputStreamWriter;
    .local v4, "writer":Ljava/io/OutputStreamWriter;
    goto :goto_3

    .line 190
    .end local v0    # "c":I
    .local v2, "c":I
    .local v3, "i":I
    .local v5, "needToChange":Z
    .local v7, "wroteUnencodedChar":Z
    :catch_1
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    move v0, v2

    .end local v2    # "c":I
    .local v0, "c":I
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    move v3, v5

    .end local v5    # "needToChange":Z
    .local v3, "needToChange":Z
    move v5, v7

    .line 192
    .end local v7    # "wroteUnencodedChar":Z
    .local v5, "wroteUnencodedChar":Z
    goto :goto_3

    .line 196
    .end local v3    # "needToChange":Z
    .local v0, "ba":[B
    .local v2, "c":I
    .local v4, "i":I
    .local v5, "j":I
    .local v7, "writer":Ljava/io/OutputStreamWriter;
    .restart local v8    # "wroteUnencodedChar":Z
    :cond_4
    const/16 v3, 0x25

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 197
    aget-byte v3, v0, v5

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    const/16 v9, 0x10

    invoke-static {v3, v9}, LDaemon/Base/URLEncoder;->forDigit(II)C

    move-result v3

    .line 198
    .local v3, "ch":C
    invoke-static {v3}, LDaemon/Base/URLEncoder;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 199
    const/16 v9, 0x20

    sub-int/2addr v3, v9

    int-to-char v3, v3

    .line 201
    :cond_5
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 203
    aget-byte v3, v0, v5

    .end local v3    # "ch":C
    and-int/lit8 v3, v3, 0xf

    const/16 v9, 0x10

    invoke-static {v3, v9}, LDaemon/Base/URLEncoder;->forDigit(II)C

    move-result v3

    .line 205
    .restart local v3    # "ch":C
    invoke-static {v3}, LDaemon/Base/URLEncoder;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 206
    const/16 v9, 0x20

    sub-int/2addr v3, v9

    int-to-char v3, v3

    .line 208
    :cond_6
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 195
    add-int/lit8 v3, v5, 0x1

    .end local v5    # "j":I
    .local v3, "j":I
    move v5, v3

    .end local v3    # "j":I
    .restart local v5    # "j":I
    goto :goto_6

    .line 190
    .end local v0    # "ba":[B
    .end local v4    # "i":I
    .local v3, "i":I
    .local v5, "needToChange":Z
    :catch_2
    move-exception v0

    move-object v4, v7

    .end local v7    # "writer":Ljava/io/OutputStreamWriter;
    .local v4, "writer":Ljava/io/OutputStreamWriter;
    move v7, v8

    .end local v8    # "wroteUnencodedChar":Z
    .local v7, "wroteUnencodedChar":Z
    goto :goto_7

    .end local v3    # "i":I
    .local v4, "i":I
    .local v7, "writer":Ljava/io/OutputStreamWriter;
    .restart local v8    # "wroteUnencodedChar":Z
    :catch_3
    move-exception v0

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    move-object v4, v7

    .end local v7    # "writer":Ljava/io/OutputStreamWriter;
    .local v4, "writer":Ljava/io/OutputStreamWriter;
    move v7, v8

    .end local v8    # "wroteUnencodedChar":Z
    .local v7, "wroteUnencodedChar":Z
    goto :goto_7

    .line 135
    .end local v5    # "needToChange":Z
    .end local v7    # "wroteUnencodedChar":Z
    .local v2, "needToChange":Z
    .local v3, "writer":Ljava/io/OutputStreamWriter;
    .local v4, "wroteUnencodedChar":Z
    :catch_4
    move-exception v0

    goto/16 :goto_0

    .end local v4    # "wroteUnencodedChar":Z
    .local v2, "c":I
    .local v3, "i":I
    .restart local v5    # "needToChange":Z
    .local v7, "writer":Ljava/io/OutputStreamWriter;
    .restart local v8    # "wroteUnencodedChar":Z
    :cond_7
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    goto :goto_5

    .end local v8    # "wroteUnencodedChar":Z
    .restart local v3    # "i":I
    .local v4, "writer":Ljava/io/OutputStreamWriter;
    .local v7, "wroteUnencodedChar":Z
    :cond_8
    move v8, v7

    .end local v7    # "wroteUnencodedChar":Z
    .restart local v8    # "wroteUnencodedChar":Z
    move-object v7, v4

    .end local v4    # "writer":Ljava/io/OutputStreamWriter;
    .local v7, "writer":Ljava/io/OutputStreamWriter;
    goto/16 :goto_4

    .end local v8    # "wroteUnencodedChar":Z
    .restart local v4    # "writer":Ljava/io/OutputStreamWriter;
    .local v7, "wroteUnencodedChar":Z
    :cond_9
    move v0, v2

    .end local v2    # "c":I
    .local v0, "c":I
    move v2, v5

    .end local v5    # "needToChange":Z
    .local v2, "needToChange":Z
    goto/16 :goto_2
.end method

.method private static forDigit(II)C
    .locals 2
    .param p0, "digit"    # I
    .param p1, "radix"    # I

    .prologue
    const/4 v1, 0x0

    .line 225
    if-ge p0, p1, :cond_0

    if-gez p0, :cond_1

    :cond_0
    move v0, v1

    .line 234
    :goto_0
    return v0

    .line 228
    :cond_1
    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    const/16 v0, 0x24

    if-le p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 229
    goto :goto_0

    .line 231
    :cond_3
    const/16 v0, 0xa

    if-ge p0, v0, :cond_4

    .line 232
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    goto :goto_0

    .line 234
    :cond_4
    add-int/lit8 v0, p0, 0x57

    int-to-char v0, v0

    goto :goto_0
.end method

.method private static isLetter(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 219
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    .line 220
    :cond_1
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
