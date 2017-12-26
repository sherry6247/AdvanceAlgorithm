.class Lnet/youmi/android/as;
.super Ljava/lang/Object;


# static fields
.field private static final a:C

.field private static final b:C

.field private static final c:C

.field private static final d:C

.field private static final e:C

.field private static final f:C

.field private static final g:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const-string v0, "00000011"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lnet/youmi/android/as;->a:C

    const-string v0, "00001111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lnet/youmi/android/as;->b:C

    const-string v0, "00111111"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lnet/youmi/android/as;->c:C

    const-string v0, "11111100"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lnet/youmi/android/as;->d:C

    const-string v0, "11110000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lnet/youmi/android/as;->e:C

    const-string v0, "11000000"

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lnet/youmi/android/as;->f:C

    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lnet/youmi/android/as;->g:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    const-string v2, "%032x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {v5, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static a([B)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    int-to-double v1, v1

    const-wide v3, 0x3ff570a3d70a3d71L    # 1.34

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    move v1, v5

    move v2, v5

    move v3, v5

    :goto_0
    array-length v4, p0

    if-lt v1, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    :goto_1
    if-gtz v1, :cond_4

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    rem-int/lit8 v3, v3, 0x8

    :goto_2
    const/16 v4, 0x8

    if-lt v3, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    packed-switch v3, :pswitch_data_0

    :cond_3
    :goto_3
    :pswitch_0
    sget-object v4, Lnet/youmi/android/as;->g:[C

    aget-char v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x6

    goto :goto_2

    :pswitch_1
    aget-byte v2, p0, v1

    sget-char v4, Lnet/youmi/android/as;->d:C

    and-int/2addr v2, v4

    int-to-char v2, v2

    ushr-int/lit8 v2, v2, 0x2

    int-to-char v2, v2

    goto :goto_3

    :pswitch_2
    aget-byte v2, p0, v1

    sget-char v4, Lnet/youmi/android/as;->c:C

    and-int/2addr v2, v4

    int-to-char v2, v2

    goto :goto_3

    :pswitch_3
    aget-byte v2, p0, v1

    sget-char v4, Lnet/youmi/android/as;->b:C

    and-int/2addr v2, v4

    int-to-char v2, v2

    shl-int/lit8 v2, v2, 0x2

    int-to-char v2, v2

    add-int/lit8 v4, v1, 0x1

    array-length v5, p0

    if-ge v4, v5, :cond_3

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    sget-char v5, Lnet/youmi/android/as;->f:C

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x6

    or-int/2addr v2, v4

    int-to-char v2, v2

    goto :goto_3

    :pswitch_4
    aget-byte v2, p0, v1

    sget-char v4, Lnet/youmi/android/as;->a:C

    and-int/2addr v2, v4

    int-to-char v2, v2

    shl-int/lit8 v2, v2, 0x4

    int-to-char v2, v2

    add-int/lit8 v4, v1, 0x1

    array-length v5, p0

    if-ge v4, v5, :cond_3

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    sget-char v5, Lnet/youmi/android/as;->e:C

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v2, v4

    int-to-char v2, v2

    goto :goto_3

    :cond_4
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x40

    new-array v0, v8, [B

    new-array v1, v8, [B

    new-array v2, v8, [B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Lnet/youmi/android/bz;

    invoke-direct {v4}, Lnet/youmi/android/bz;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Lnet/youmi/android/bz;->a([B)[B

    move-result-object v3

    array-length v5, v3

    move v6, v9

    :goto_0
    if-lt v6, v5, :cond_1

    move v3, v5

    :cond_0
    :goto_1
    if-lt v3, v8, :cond_3

    move v3, v9

    :goto_2
    if-lt v3, v8, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v2}, Lnet/youmi/android/as;->a([B[B)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lnet/youmi/android/bz;->a([B)[B

    move-result-object v0

    invoke-static {v1, v0}, Lnet/youmi/android/as;->a([B[B)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lnet/youmi/android/bz;->a([B)[B

    move-result-object v0

    return-object v0

    :cond_1
    aget-byte v7, v3, v6

    aput-byte v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move v6, v9

    :goto_3
    array-length v7, v5

    if-ge v6, v7, :cond_0

    aget-byte v7, v5, v6

    aput-byte v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    aput-byte v9, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    aget-byte v5, v2, v3

    xor-int/lit8 v5, v5, 0x36

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    aget-byte v5, v2, v3

    xor-int/lit8 v5, v5, 0x5c

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static a([B[B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    move v1, v3

    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    move v1, v3

    :goto_1
    array-length v2, p1

    if-lt v1, v2, :cond_1

    return-object v0

    :cond_0
    aget-byte v2, p0, v1

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v2, p0

    add-int/2addr v2, v1

    aget-byte v3, p1, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lnet/youmi/android/as;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lnet/youmi/android/as;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lnet/youmi/android/as;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method
