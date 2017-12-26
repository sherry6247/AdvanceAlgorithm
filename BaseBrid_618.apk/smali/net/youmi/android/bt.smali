.class Lnet/youmi/android/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/cx;

.field private final synthetic b:Lnet/youmi/android/bp;

.field private final synthetic c:Lnet/youmi/android/ay;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/youmi/android/cx;Lnet/youmi/android/bp;Lnet/youmi/android/ay;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/cx;

    iput-object p2, p0, Lnet/youmi/android/bt;->b:Lnet/youmi/android/bp;

    iput-object p3, p0, Lnet/youmi/android/bt;->c:Lnet/youmi/android/ay;

    iput-object p4, p0, Lnet/youmi/android/bt;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/cx;

    iget-object v1, p0, Lnet/youmi/android/bt;->b:Lnet/youmi/android/bp;

    const/4 v2, 0x0

    const-string v3, "\u8fde\u63a5\u4e2d"

    invoke-static {v0, v1, v2, v3}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/cx;Lnet/youmi/android/bp;ILjava/lang/String;)V

    iget-object v0, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/cx;

    iget-object v1, p0, Lnet/youmi/android/bt;->b:Lnet/youmi/android/bp;

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/cx;Lnet/youmi/android/bp;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lnet/youmi/android/bt;->c:Lnet/youmi/android/ay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/youmi/android/bt;->c:Lnet/youmi/android/ay;

    iget-object v2, p0, Lnet/youmi/android/bt;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/youmi/android/ay;->c(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    :try_start_2
    iget-object v1, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/cx;

    iget-object v2, p0, Lnet/youmi/android/bt;->b:Lnet/youmi/android/bp;

    const/16 v3, 0x32

    invoke-static {v1, v2, v3}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/cx;Lnet/youmi/android/bp;I)V

    move v1, v7

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    if-lez v2, :cond_5

    const/16 v3, 0x200

    new-array v3, v3, [B

    array-length v4, v3

    div-int/2addr v2, v4

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_2
    const/4 v5, 0x0

    array-length v6, v3

    invoke-virtual {v0, v3, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_4

    iget-object v2, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/cx;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v2, Lnet/youmi/android/cx;->c:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    iget-object v0, p0, Lnet/youmi/android/bt;->c:Lnet/youmi/android/ay;

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    iget-object v0, p0, Lnet/youmi/android/bt;->c:Lnet/youmi/android/ay;

    iget-object v1, p0, Lnet/youmi/android/bt;->d:Ljava/lang/String;

    iget-object v2, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/cx;

    iget-object v2, v2, Lnet/youmi/android/cx;->c:[B

    invoke-virtual {v0, v1, v2}, Lnet/youmi/android/ay;->a(Ljava/lang/String;[B)Z

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/cx;

    iget-object v1, p0, Lnet/youmi/android/bt;->b:Lnet/youmi/android/bp;

    invoke-static {v0, v1}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/cx;Lnet/youmi/android/bp;)V

    :goto_5
    return-void

    :cond_2
    iget-object v0, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/cx;

    iget-object v1, p0, Lnet/youmi/android/bt;->b:Lnet/youmi/android/bp;

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/cx;Lnet/youmi/android/bp;I)V

    iget-object v0, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/cx;

    iget-object v0, v0, Lnet/youmi/android/cx;->b:Landroid/app/Activity;

    iget-object v1, p0, Lnet/youmi/android/bt;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/youmi/android/cg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "Unable to connect to the server, please check your network configuration."

    invoke-static {v0}, Lnet/youmi/android/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/cx;

    iget-object v1, p0, Lnet/youmi/android/bt;->b:Lnet/youmi/android/bp;

    const/4 v2, 0x1

    iget-object v3, p0, Lnet/youmi/android/bt;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/cx;Lnet/youmi/android/bp;ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/cx;

    iget-object v2, p0, Lnet/youmi/android/bt;->b:Lnet/youmi/android/bp;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v7, v0}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/cx;Lnet/youmi/android/bp;ILjava/lang/String;)V

    goto :goto_5

    :cond_3
    :try_start_6
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-static {v0}, Lnet/youmi/android/cg;->a(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v1, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/cx;

    invoke-virtual {v1, v0}, Lnet/youmi/android/cx;->a(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v0

    :try_start_7
    iget-object v1, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/cx;

    iget-object v2, p0, Lnet/youmi/android/bt;->b:Lnet/youmi/android/bp;

    const/16 v3, 0x32

    invoke-static {v1, v2, v3}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/cx;Lnet/youmi/android/bp;I)V

    move v1, v4

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v0, "Unable to connect to the server, please check your network configuration.."

    invoke-static {v0}, Lnet/youmi/android/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/cx;

    iget-object v1, p0, Lnet/youmi/android/bt;->b:Lnet/youmi/android/bp;

    const/4 v2, 0x1

    iget-object v3, p0, Lnet/youmi/android/bt;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/cx;Lnet/youmi/android/bp;ILjava/lang/String;)V

    goto :goto_5

    :cond_4
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v5, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/cx;

    iget-object v6, p0, Lnet/youmi/android/bt;->b:Lnet/youmi/android/bp;

    invoke-static {v5, v6, v2}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/cx;Lnet/youmi/android/bp;I)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/cx;

    iget-object v1, p0, Lnet/youmi/android/bt;->b:Lnet/youmi/android/bp;

    const/4 v2, 0x1

    iget-object v3, p0, Lnet/youmi/android/bt;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/cx;Lnet/youmi/android/bp;ILjava/lang/String;)V

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lnet/youmi/android/bt;->a:Lnet/youmi/android/cx;

    iget-object v1, p0, Lnet/youmi/android/bt;->b:Lnet/youmi/android/bp;

    const/4 v2, 0x1

    iget-object v3, p0, Lnet/youmi/android/bt;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/cx;Lnet/youmi/android/bp;ILjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_4

    :catch_4
    move-exception v1

    goto/16 :goto_0
.end method
