.class Lnet/youmi/android/cx;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/app/Activity;

.field c:[B

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/youmi/android/cx;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lnet/youmi/android/cx;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/cx;->e:I

    const-string v0, ""

    iput-object v0, p0, Lnet/youmi/android/cx;->f:Ljava/lang/String;

    iput-object p1, p0, Lnet/youmi/android/cx;->b:Landroid/app/Activity;

    return-void
.end method

.method private a(Lnet/youmi/android/bp;)V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "\u52a0\u8f7d\u5b8c\u6210"

    invoke-direct {p0, p1, v0, v1}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/bp;ILjava/lang/String;)V

    return-void
.end method

.method private a(Lnet/youmi/android/bp;I)V
    .locals 4

    const/16 v3, 0x64

    iget v0, p0, Lnet/youmi/android/cx;->e:I

    if-lez p2, :cond_0

    iget v1, p0, Lnet/youmi/android/cx;->e:I

    add-int/2addr v1, p2

    if-lt v1, v3, :cond_3

    iget v1, p0, Lnet/youmi/android/cx;->d:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iput v3, p0, Lnet/youmi/android/cx;->e:I

    :cond_0
    :goto_0
    iget v1, p0, Lnet/youmi/android/cx;->e:I

    if-eq v0, v1, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1, p0}, Lnet/youmi/android/bp;->a(Lnet/youmi/android/cx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v1, 0x63

    iput v1, p0, Lnet/youmi/android/cx;->e:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lnet/youmi/android/cx;->e:I

    add-int/2addr v1, p2

    iput v1, p0, Lnet/youmi/android/cx;->e:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Lnet/youmi/android/bp;ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x2

    iget v0, p0, Lnet/youmi/android/cx;->d:I

    if-ne v0, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    if-eq p2, v1, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    :cond_2
    iput-object p3, p0, Lnet/youmi/android/cx;->f:Ljava/lang/String;

    iput p2, p0, Lnet/youmi/android/cx;->d:I

    iget v0, p0, Lnet/youmi/android/cx;->d:I

    if-ne v0, v1, :cond_3

    const/16 v0, 0x64

    iput v0, p0, Lnet/youmi/android/cx;->e:I

    :cond_3
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, p0}, Lnet/youmi/android/bp;->a(Lnet/youmi/android/cx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lnet/youmi/android/cx;Lnet/youmi/android/bp;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/bp;)V

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/cx;Lnet/youmi/android/bp;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/bp;I)V

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/cx;Lnet/youmi/android/bp;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/bp;ILjava/lang/String;)V

    return-void
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v6, -0x1

    const-string v0, "<meta"

    const-string v1, ">"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move-object v3, p0

    :goto_0
    if-gt v2, v6, :cond_0

    const-string v0, "utf-8"

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v2, v6, :cond_1

    if-le v4, v6, :cond_1

    add-int v5, v2, v4

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "charset"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v5, v6, :cond_1

    add-int/lit8 v0, v5, 0x7

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move v7, v3

    move-object v3, v2

    move v2, v7

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnet/youmi/android/cx;->c:[B

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/youmi/android/cx;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lnet/youmi/android/cx;->c:[B

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/youmi/android/cx;->c:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    invoke-static {v0}, Lnet/youmi/android/cx;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/cx;->a:Ljava/lang/String;

    iget-object v1, p0, Lnet/youmi/android/cx;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/youmi/android/cx;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/youmi/android/cx;->a:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lnet/youmi/android/cx;->a:Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lnet/youmi/android/cx;->c:[B

    iget-object v2, p0, Lnet/youmi/android/cx;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_4
    move-object v0, p1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method a(Ljava/net/HttpURLConnection;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "content-type"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "charset="

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-le v0, v4, :cond_0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/cx;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Lnet/youmi/android/bp;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/bp;Lnet/youmi/android/ay;Ljava/lang/String;)V

    return-void
.end method

.method a(Lnet/youmi/android/bp;Lnet/youmi/android/ay;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/youmi/android/bt;

    invoke-direct {v1, p0, p1, p2, p3}, Lnet/youmi/android/bt;-><init>(Lnet/youmi/android/cx;Lnet/youmi/android/bp;Lnet/youmi/android/ay;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method a()Z
    .locals 2

    iget v0, p0, Lnet/youmi/android/cx;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Lnet/youmi/android/ay;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2, p1}, Lnet/youmi/android/ay;->c(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    move-object v1, v0

    move v0, v7

    :goto_1
    if-eqz v1, :cond_5

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_5

    const/16 v2, 0x400

    new-array v2, v2, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_2
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_4

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lnet/youmi/android/cx;->c:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    :try_start_4
    iget-object v0, p0, Lnet/youmi/android/cx;->c:[B

    invoke-virtual {p2, p1, v0}, Lnet/youmi/android/ay;->a(Ljava/lang/String;[B)Z

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lnet/youmi/android/cx;->d:I

    move v0, v7

    :goto_5
    return v0

    :cond_2
    iget-object v1, p0, Lnet/youmi/android/cx;->b:Landroid/app/Activity;

    invoke-static {v1, p1}, Lnet/youmi/android/cg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v1

    if-nez v1, :cond_3

    move v0, v6

    goto :goto_5

    :cond_3
    :try_start_5
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-static {v1}, Lnet/youmi/android/cg;->a(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p0, v1}, Lnet/youmi/android/cx;->a(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v0

    move-object v1, v0

    move v0, v6

    goto :goto_1

    :catch_0
    move-exception v1

    move-object v1, v0

    move v0, v6

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :try_start_6
    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :cond_5
    move v0, v6

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_4
.end method

.method b()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lnet/youmi/android/cx;->c:[B

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/cx;->c:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lnet/youmi/android/cx;->c:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()[B
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/cx;->c:[B

    return-object v0
.end method

.method d()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/cx;->e:I

    return v0
.end method

.method e()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/cx;->d:I

    return v0
.end method
