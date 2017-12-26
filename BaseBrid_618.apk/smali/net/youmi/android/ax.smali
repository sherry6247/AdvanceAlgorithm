.class Lnet/youmi/android/ax;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/graphics/Bitmap;

.field private j:Lnet/youmi/android/au;

.field private k:Lnet/youmi/android/z;

.field private l:Landroid/graphics/Bitmap;

.field private m:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lnet/youmi/android/ax;->a:I

    const/4 v0, 0x3

    iput v0, p0, Lnet/youmi/android/ax;->b:I

    iput-boolean v1, p0, Lnet/youmi/android/ax;->e:Z

    iput-boolean v1, p0, Lnet/youmi/android/ax;->f:Z

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/ax;->a:I

    return v0
.end method

.method a(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lnet/youmi/android/ax;->a:I

    :cond_1
    return-void
.end method

.method a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ax;->l:Landroid/graphics/Bitmap;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ax;->m:Ljava/lang/String;

    return-void
.end method

.method a(Lnet/youmi/android/z;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ax;->k:Lnet/youmi/android/z;

    return-void
.end method

.method a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-gtz p2, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-nez p3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    iput p2, p0, Lnet/youmi/android/ax;->d:I

    iput-object v0, p0, Lnet/youmi/android/ax;->c:Ljava/lang/String;

    if-nez p6, :cond_3

    const-string v0, ""

    :goto_1
    if-nez p4, :cond_4

    const-string v1, ""

    :goto_2
    iput-object v1, p0, Lnet/youmi/android/ax;->g:Ljava/lang/String;

    if-nez p5, :cond_5

    const-string v2, ""

    :goto_3
    iput-object v2, p0, Lnet/youmi/android/ax;->h:Ljava/lang/String;

    if-eq p8, v4, :cond_6

    if-eq p8, v6, :cond_6

    if-eq p8, v5, :cond_6

    move v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    iput p8, p0, Lnet/youmi/android/ax;->a:I

    const/4 v2, 0x4

    if-eq p7, v2, :cond_7

    if-eq p7, v6, :cond_7

    if-eq p7, v5, :cond_7

    if-eq p7, v4, :cond_7

    move v0, v3

    goto :goto_0

    :cond_7
    iput p7, p0, Lnet/youmi/android/ax;->b:I

    packed-switch p7, :pswitch_data_0

    move v0, v3

    goto :goto_0

    :pswitch_0
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v3

    goto :goto_0

    :pswitch_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_8

    move v0, v3

    goto :goto_0

    :cond_8
    :try_start_1
    new-instance v1, Lnet/youmi/android/cx;

    invoke-direct {v1, p1}, Lnet/youmi/android/cx;-><init>(Landroid/app/Activity;)V

    sget-object v2, Lnet/youmi/android/af;->b:Lnet/youmi/android/ay;

    invoke-virtual {v1, v0, v2}, Lnet/youmi/android/cx;->a(Ljava/lang/String;Lnet/youmi/android/ay;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lnet/youmi/android/cx;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ax;->i:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_4
    :try_start_2
    iget-object v0, p0, Lnet/youmi/android/ax;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    move v0, v3

    goto :goto_0

    :cond_9
    move v0, v3

    goto :goto_0

    :pswitch_2
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-eqz v1, :cond_a

    move v0, v3

    goto/16 :goto_0

    :cond_a
    :try_start_3
    new-instance v1, Lnet/youmi/android/cx;

    invoke-direct {v1, p1}, Lnet/youmi/android/cx;-><init>(Landroid/app/Activity;)V

    sget-object v2, Lnet/youmi/android/af;->a:Lnet/youmi/android/ay;

    invoke-virtual {v1, v0, v2}, Lnet/youmi/android/cx;->a(Ljava/lang/String;Lnet/youmi/android/ay;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v1}, Lnet/youmi/android/cx;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ax;->i:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    :try_start_4
    iget-object v0, p0, Lnet/youmi/android/ax;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    iput v0, p0, Lnet/youmi/android/ax;->b:I

    :cond_b
    move v0, v4

    goto/16 :goto_0

    :cond_c
    move v0, v3

    goto/16 :goto_0

    :pswitch_3
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v1

    if-eqz v1, :cond_d

    move v0, v3

    goto/16 :goto_0

    :cond_d
    :try_start_5
    new-instance v1, Lnet/youmi/android/cx;

    invoke-direct {v1, p1}, Lnet/youmi/android/cx;-><init>(Landroid/app/Activity;)V

    sget-object v2, Lnet/youmi/android/af;->d:Lnet/youmi/android/ay;

    invoke-virtual {v1, v0, v2}, Lnet/youmi/android/cx;->a(Ljava/lang/String;Lnet/youmi/android/ay;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lnet/youmi/android/au;

    invoke-virtual {v1}, Lnet/youmi/android/cx;->c()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/youmi/android/au;-><init>([B)V

    iput-object v0, p0, Lnet/youmi/android/ax;->j:Lnet/youmi/android/au;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    iget-object v0, p0, Lnet/youmi/android/ax;->j:Lnet/youmi/android/au;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v0, :cond_b

    move v0, v3

    goto/16 :goto_0

    :cond_e
    move v0, v3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method b()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/ax;->b:I

    return v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ax;->g:Ljava/lang/String;

    return-object v0
.end method

.method d()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ax;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ax;->c:Ljava/lang/String;

    return-object v0
.end method

.method f()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/ax;->d:I

    return v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ax;->h:Ljava/lang/String;

    return-object v0
.end method

.method h()Lnet/youmi/android/z;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ax;->k:Lnet/youmi/android/z;

    return-object v0
.end method

.method i()Z
    .locals 1

    iget-boolean v0, p0, Lnet/youmi/android/ax;->e:Z

    return v0
.end method

.method j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/ax;->e:Z

    return-void
.end method

.method k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/ax;->f:Z

    return-void
.end method

.method l()Lnet/youmi/android/au;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ax;->j:Lnet/youmi/android/au;

    return-object v0
.end method

.method m()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ax;->l:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ax;->m:Ljava/lang/String;

    return-object v0
.end method
