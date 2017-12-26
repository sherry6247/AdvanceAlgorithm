.class Lnet/youmi/android/bl;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "youmi://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p0, v0}, Lnet/youmi/android/bl;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-static {p0, v0}, Lnet/youmi/android/bl;->b(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-static {p0, v0}, Lnet/youmi/android/bl;->c(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    invoke-static {p0, v0}, Lnet/youmi/android/bl;->d(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    invoke-static {p0, p1, v0}, Lnet/youmi/android/bl;->b(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_7
    move v0, v3

    goto :goto_0
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "youmi://tel/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "youmi://tel/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lnet/youmi/android/ad;->e(Landroid/app/Activity;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Lnet/youmi/android/aj;->a()Lnet/youmi/android/ax;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/ax;->f()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lnet/youmi/android/a;->b(Landroid/app/Activity;ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static b(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "youmi://wap/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "youmi://wap/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    if-le v4, v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_2
    invoke-static {v0}, Lnet/youmi/android/v;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-static {}, Lnet/youmi/android/aj;->a()Lnet/youmi/android/ax;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/ax;->f()I

    move-result v0

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lnet/youmi/android/a;->b(Landroid/app/Activity;ILjava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_0
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_3
    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_2
    move v0, v6

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_3

    :cond_3
    move-object v1, v3

    goto :goto_0

    :cond_4
    move-object v0, v2

    move-object v1, v3

    goto :goto_0
.end method

.method private static b(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "youmi://sms/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "youmi://sms/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    if-le v4, v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_2
    invoke-static {v0}, Lnet/youmi/android/v;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_2

    :try_start_3
    invoke-static {p0, v1, v0}, Lnet/youmi/android/ad;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    :try_start_4
    invoke-static {}, Lnet/youmi/android/aj;->a()Lnet/youmi/android/ax;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/ax;->f()I

    move-result v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lnet/youmi/android/a;->b(Landroid/app/Activity;ILjava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_0
    :goto_1
    move v0, v7

    :goto_2
    return v0

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_3
    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_2
    move v0, v6

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_3

    :cond_3
    move-object v1, v3

    goto :goto_0

    :cond_4
    move-object v0, v2

    move-object v1, v3

    goto :goto_0
.end method

.method private static c(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 8

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "youmi://geo/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "youmi://geo/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v5, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-le v3, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_3

    :try_start_2
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v5, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v2, 0x1

    if-le v4, v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v3

    :goto_1
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "geo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-static {}, Lnet/youmi/android/aj;->a()Lnet/youmi/android/ax;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/ax;->f()I

    move-result v0

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lnet/youmi/android/a;->b(Landroid/app/Activity;ILjava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    const/4 v0, 0x1

    :goto_3
    return v0

    :catch_0
    move-exception v0

    move-object v0, v6

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_1
    move v0, v7

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v6

    move-object v2, v3

    goto :goto_1

    :cond_3
    move-object v0, v6

    move-object v2, v6

    goto :goto_1

    :cond_4
    move-object v0, v6

    move-object v1, v2

    goto :goto_0

    :cond_5
    move-object v0, v6

    move-object v1, v6

    goto :goto_0
.end method

.method private static d(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "youmi://dl/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "youmi://dl/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    if-le v4, v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_2
    invoke-static {v0}, Lnet/youmi/android/v;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-static {p0, v0}, Lnet/youmi/android/ad;->b(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-static {}, Lnet/youmi/android/aj;->a()Lnet/youmi/android/ax;

    move-result-object v0

    invoke-virtual {v0}, Lnet/youmi/android/ax;->f()I

    move-result v0

    const/4 v2, 0x3

    invoke-static {p0, v0, v1, v2}, Lnet/youmi/android/a;->b(Landroid/app/Activity;ILjava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_0
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_3
    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_2
    move v0, v6

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_3

    :cond_3
    move-object v1, v3

    goto :goto_0

    :cond_4
    move-object v0, v2

    move-object v1, v3

    goto :goto_0
.end method
