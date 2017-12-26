.class Lnet/youmi/android/br;
.super Landroid/view/View;


# instance fields
.field a:Lnet/youmi/android/ak;

.field b:Landroid/graphics/Bitmap;

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/graphics/Bitmap;

.field e:Landroid/graphics/Paint;

.field f:Landroid/graphics/RectF;

.field g:F

.field h:I

.field i:I

.field j:F

.field k:Landroid/graphics/Rect;

.field l:Landroid/graphics/Rect;

.field m:Landroid/graphics/RectF;

.field n:Ljava/util/Random;

.field o:I

.field p:I

.field q:I

.field r:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lnet/youmi/android/ak;I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/br;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x43700000    # 240.0f

    const/high16 v2, 0x42480000    # 50.0f

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lnet/youmi/android/br;->f:Landroid/graphics/RectF;

    iput v4, p0, Lnet/youmi/android/br;->g:F

    iput v3, p0, Lnet/youmi/android/br;->h:I

    iput v3, p0, Lnet/youmi/android/br;->i:I

    iput v4, p0, Lnet/youmi/android/br;->j:F

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v3, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lnet/youmi/android/br;->k:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/br;->l:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/br;->m:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lnet/youmi/android/br;->n:Ljava/util/Random;

    iput v5, p0, Lnet/youmi/android/br;->q:I

    const/4 v0, 0x6

    iput v0, p0, Lnet/youmi/android/br;->r:I

    iput-object p2, p0, Lnet/youmi/android/br;->a:Lnet/youmi/android/ak;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "a1.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/br;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "a3.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/br;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "a2.png"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/br;->b:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lnet/youmi/android/br;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lnet/youmi/android/br;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput p3, p0, Lnet/youmi/android/br;->o:I

    iget v0, p0, Lnet/youmi/android/br;->q:I

    invoke-virtual {p2, v0}, Lnet/youmi/android/ak;->a(I)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/br;->p:I

    int-to-float v0, p3

    iput v0, p0, Lnet/youmi/android/br;->g:F

    iput v3, p0, Lnet/youmi/android/br;->h:I

    iget v0, p0, Lnet/youmi/android/br;->g:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lnet/youmi/android/br;->j:F

    iput v3, p0, Lnet/youmi/android/br;->i:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/16 v1, 0x64

    if-gez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lnet/youmi/android/br;->i:I

    invoke-virtual {p0}, Lnet/youmi/android/br;->postInvalidate()V

    return-void

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/br;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lnet/youmi/android/br;->p:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lnet/youmi/android/br;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lnet/youmi/android/br;->o:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/16 v7, 0x22

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lnet/youmi/android/br;->j:F

    iget v1, p0, Lnet/youmi/android/br;->i:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lnet/youmi/android/br;->k:Landroid/graphics/Rect;

    const/16 v2, 0xa

    iget v3, p0, Lnet/youmi/android/br;->r:I

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lnet/youmi/android/br;->m:Landroid/graphics/RectF;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40e00000    # 7.0f

    invoke-virtual {v1, v6, v2, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lnet/youmi/android/br;->d:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lnet/youmi/android/br;->k:Landroid/graphics/Rect;

    iget-object v3, p0, Lnet/youmi/android/br;->m:Landroid/graphics/RectF;

    iget-object v4, p0, Lnet/youmi/android/br;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v1, p0, Lnet/youmi/android/br;->k:Landroid/graphics/Rect;

    iget v2, p0, Lnet/youmi/android/br;->q:I

    invoke-virtual {v1, v5, v5, v7, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lnet/youmi/android/br;->m:Landroid/graphics/RectF;

    iget-object v2, p0, Lnet/youmi/android/br;->a:Lnet/youmi/android/ak;

    invoke-virtual {v2, v7}, Lnet/youmi/android/ak;->a(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget v3, p0, Lnet/youmi/android/br;->q:I

    int-to-float v3, v3

    invoke-virtual {v1, v0, v6, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lnet/youmi/android/br;->c:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lnet/youmi/android/br;->k:Landroid/graphics/Rect;

    iget-object v2, p0, Lnet/youmi/android/br;->m:Landroid/graphics/RectF;

    iget-object v3, p0, Lnet/youmi/android/br;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method
