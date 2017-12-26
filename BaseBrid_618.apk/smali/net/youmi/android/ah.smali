.class Lnet/youmi/android/ah;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field static final b:I

.field static final c:I

.field static final d:I

.field static final e:I

.field static final f:I

.field private static g:Landroid/graphics/LinearGradient;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x80

    const/4 v2, 0x0

    const/16 v1, 0xff

    const/16 v0, 0xa0

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lnet/youmi/android/ah;->a:I

    const/16 v0, 0x32

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lnet/youmi/android/ah;->b:I

    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lnet/youmi/android/ah;->c:I

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lnet/youmi/android/ah;->d:I

    const/16 v0, 0x50

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lnet/youmi/android/ah;->e:I

    const/16 v0, 0x96

    const/16 v1, 0x87

    const/16 v2, 0xce

    const/16 v3, 0xfa

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lnet/youmi/android/ah;->f:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(IIII)Landroid/graphics/Bitmap;
    .locals 10

    const/4 v9, 0x1

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    invoke-static {p1}, Lnet/youmi/android/ah;->a(I)Landroid/graphics/LinearGradient;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v2, p1, 0x2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iput p0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    sget v1, Lnet/youmi/android/ah;->d:I

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    sget v1, Lnet/youmi/android/ah;->c:I

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, p0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    sget v1, Lnet/youmi/android/ah;->e:I

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    sub-int v2, p1, v9

    int-to-float v2, v2

    int-to-float v3, p0

    sub-int v4, p1, v9

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v7, v8, v0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    move-object v0, v6

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static a(I)Landroid/graphics/LinearGradient;
    .locals 8

    const/4 v1, 0x0

    sget-object v0, Lnet/youmi/android/ah;->g:Landroid/graphics/LinearGradient;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/LinearGradient;

    const/high16 v2, 0x3f000000    # 0.5f

    int-to-float v3, p0

    mul-float v4, v2, v3

    sget v5, Lnet/youmi/android/ah;->a:I

    sget v6, Lnet/youmi/android/ah;->b:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    sput-object v0, Lnet/youmi/android/ah;->g:Landroid/graphics/LinearGradient;

    :cond_0
    sget-object v0, Lnet/youmi/android/ah;->g:Landroid/graphics/LinearGradient;

    return-object v0
.end method
