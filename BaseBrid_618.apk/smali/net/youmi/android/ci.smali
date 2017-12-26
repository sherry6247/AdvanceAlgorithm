.class Lnet/youmi/android/ci;
.super Landroid/widget/TableLayout;


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/ImageView;

.field e:Landroid/widget/ImageView;

.field f:Landroid/graphics/Bitmap;

.field g:Landroid/graphics/Bitmap;

.field h:Landroid/graphics/Bitmap;

.field i:Landroid/graphics/Bitmap;

.field j:Landroid/graphics/Bitmap;

.field k:Landroid/graphics/Bitmap;

.field l:Landroid/graphics/Bitmap;

.field m:Landroid/graphics/Bitmap;

.field n:Landroid/graphics/Bitmap;

.field o:Landroid/graphics/Bitmap;

.field p:Landroid/graphics/Bitmap;

.field q:Landroid/graphics/Bitmap;

.field r:Landroid/graphics/Bitmap;

.field s:Landroid/graphics/Bitmap;

.field t:Z

.field u:Z

.field v:Z

.field w:Lnet/youmi/android/j;

.field x:Lnet/youmi/android/ak;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lnet/youmi/android/ak;Lnet/youmi/android/j;)V
    .locals 10

    const/16 v4, 0xf

    const/4 v9, 0x1

    const/4 v3, -0x2

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v8, p0, Lnet/youmi/android/ci;->t:Z

    iput-boolean v8, p0, Lnet/youmi/android/ci;->u:Z

    iput-boolean v8, p0, Lnet/youmi/android/ci;->v:Z

    iput-object p3, p0, Lnet/youmi/android/ci;->w:Lnet/youmi/android/j;

    iput-object p2, p0, Lnet/youmi/android/ci;->x:Lnet/youmi/android/ak;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lnet/youmi/android/ci;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/youmi/android/ci;->c()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lnet/youmi/android/ci;->c:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, Lnet/youmi/android/ci;->x:Lnet/youmi/android/ak;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Lnet/youmi/android/ak;->a(I)I

    move-result v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v4, p0, Lnet/youmi/android/ci;->x:Lnet/youmi/android/ak;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v4, v3}, Lnet/youmi/android/ak;->a(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/ci;->c:Landroid/widget/ImageView;

    new-instance v3, Lnet/youmi/android/bj;

    invoke-direct {v3, p0}, Lnet/youmi/android/bj;-><init>(Lnet/youmi/android/ci;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lnet/youmi/android/ci;->c:Landroid/widget/ImageView;

    new-instance v3, Lnet/youmi/android/bk;

    invoke-direct {v3, p0}, Lnet/youmi/android/bk;-><init>(Lnet/youmi/android/ci;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/ci;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/youmi/android/ci;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lnet/youmi/android/ci;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/youmi/android/ci;->f()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v0, p0, Lnet/youmi/android/ci;->x:Lnet/youmi/android/ak;

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v0, v3}, Lnet/youmi/android/ak;->a(I)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v0, p0, Lnet/youmi/android/ci;->x:Lnet/youmi/android/ak;

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v0, v3}, Lnet/youmi/android/ak;->a(I)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/ci;->d:Landroid/widget/ImageView;

    new-instance v2, Lnet/youmi/android/bh;

    invoke-direct {v2, p0}, Lnet/youmi/android/bh;-><init>(Lnet/youmi/android/ci;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lnet/youmi/android/ci;->d:Landroid/widget/ImageView;

    new-instance v2, Lnet/youmi/android/bi;

    invoke-direct {v2, p0}, Lnet/youmi/android/bi;-><init>(Lnet/youmi/android/ci;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/ci;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/youmi/android/ci;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lnet/youmi/android/ci;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lnet/youmi/android/ci;->x:Lnet/youmi/android/ak;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lnet/youmi/android/ak;->a(I)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v2, p0, Lnet/youmi/android/ci;->x:Lnet/youmi/android/ak;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Lnet/youmi/android/ak;->a(I)I

    move-result v0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :cond_2
    iget-object v0, p0, Lnet/youmi/android/ci;->a:Landroid/widget/ImageView;

    new-instance v1, Lnet/youmi/android/bo;

    invoke-direct {v1, p0}, Lnet/youmi/android/bo;-><init>(Lnet/youmi/android/ci;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lnet/youmi/android/ci;->a:Landroid/widget/ImageView;

    new-instance v1, Lnet/youmi/android/bq;

    invoke-direct {v1, p0}, Lnet/youmi/android/bq;-><init>(Lnet/youmi/android/ci;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/ci;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/youmi/android/ci;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lnet/youmi/android/ci;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v0, p0, Lnet/youmi/android/ci;->b:Landroid/widget/ImageView;

    new-instance v1, Lnet/youmi/android/bm;

    invoke-direct {v1, p0}, Lnet/youmi/android/bm;-><init>(Lnet/youmi/android/ci;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lnet/youmi/android/ci;->b:Landroid/widget/ImageView;

    new-instance v1, Lnet/youmi/android/bn;

    invoke-direct {v1, p0}, Lnet/youmi/android/bn;-><init>(Lnet/youmi/android/ci;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/ci;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/youmi/android/ci;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lnet/youmi/android/ci;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_4
    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lnet/youmi/android/ci;->x:Lnet/youmi/android/ak;

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Lnet/youmi/android/ak;->a(I)I

    move-result v1

    iget-object v2, p0, Lnet/youmi/android/ci;->x:Lnet/youmi/android/ak;

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Lnet/youmi/android/ak;->a(I)I

    move-result v2

    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput v8, v3, Landroid/widget/TableRow$LayoutParams;->column:I

    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput v8, v4, Landroid/widget/TableRow$LayoutParams;->column:I

    new-instance v5, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v5, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput v8, v5, Landroid/widget/TableRow$LayoutParams;->column:I

    new-instance v6, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v6, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput v8, v6, Landroid/widget/TableRow$LayoutParams;->column:I

    new-instance v7, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v7, v1, v2}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    iput v8, v7, Landroid/widget/TableRow$LayoutParams;->column:I

    invoke-virtual {p0, v9}, Lnet/youmi/android/ci;->setStretchAllColumns(Z)V

    iget-object v1, p0, Lnet/youmi/android/ci;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/youmi/android/ci;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/youmi/android/ci;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/youmi/android/ci;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v6}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/youmi/android/ci;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lnet/youmi/android/ci;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v9}, Lnet/youmi/android/ci;->setGravity(I)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lnet/youmi/android/ci;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lnet/youmi/android/ci;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ci;->s:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->s:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "a4.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/ci;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ci;->s:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lnet/youmi/android/ci;->s:Landroid/graphics/Bitmap;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Z)V
    .locals 2

    iput-boolean p1, p0, Lnet/youmi/android/ci;->t:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/youmi/android/ci;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/youmi/android/ci;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/ci;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/youmi/android/ci;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ci;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->f:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "a11.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/ci;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ci;->f:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lnet/youmi/android/ci;->f:Landroid/graphics/Bitmap;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method b(Z)V
    .locals 2

    iput-boolean p1, p0, Lnet/youmi/android/ci;->u:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/youmi/android/ci;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/youmi/android/ci;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/ci;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/youmi/android/ci;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method c()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ci;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->g:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "a9.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/ci;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ci;->g:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnet/youmi/android/ci;->g:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method d()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ci;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->h:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "a10.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/ci;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ci;->h:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnet/youmi/android/ci;->h:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method e()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ci;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->i:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "a14.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/ci;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ci;->i:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnet/youmi/android/ci;->i:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method f()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ci;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->k:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "a12.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/ci;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ci;->k:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnet/youmi/android/ci;->k:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method g()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ci;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->j:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "a13.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/ci;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ci;->j:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnet/youmi/android/ci;->j:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method h()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ci;->l:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->l:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "a18.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/ci;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ci;->l:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnet/youmi/android/ci;->l:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method i()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ci;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->m:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "a17.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/ci;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ci;->m:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnet/youmi/android/ci;->m:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method j()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ci;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->r:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "a19.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/ci;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ci;->r:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnet/youmi/android/ci;->r:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method k()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ci;->p:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->p:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "a16.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/ci;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ci;->p:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnet/youmi/android/ci;->p:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method l()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ci;->q:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->q:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "a15.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/ci;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ci;->q:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnet/youmi/android/ci;->q:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method m()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ci;->n:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->n:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "a6.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/ci;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ci;->n:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnet/youmi/android/ci;->n:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method n()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ci;->o:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ci;->o:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "a5.png"

    invoke-virtual {p0, v0}, Lnet/youmi/android/ci;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ci;->o:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lnet/youmi/android/ci;->o:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TableLayout;->onAttachedToWindow()V

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/ci;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/youmi/android/ci;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/ci;->x:Lnet/youmi/android/ak;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Lnet/youmi/android/ak;->a(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
