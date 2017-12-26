.class Lnet/youmi/android/ak;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/util/DisplayMetrics;I)V
    .locals 6

    const/16 v1, 0xa0

    const/16 v5, 0x40

    const/16 v4, 0x2a

    const/16 v3, 0x30

    const/4 v2, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lnet/youmi/android/ak;->e:I

    iput v2, p0, Lnet/youmi/android/ak;->f:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lnet/youmi/android/ak;->g:F

    const/4 v0, 0x0

    iput v0, p0, Lnet/youmi/android/ak;->h:I

    iput v1, p0, Lnet/youmi/android/ak;->i:I

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lnet/youmi/android/ak;->j:I

    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lnet/youmi/android/ak;->k:I

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lnet/youmi/android/ak;->g:F

    iput v1, p0, Lnet/youmi/android/ak;->i:I

    iput p2, p0, Lnet/youmi/android/ak;->h:I

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "densityDpi"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/ak;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-ge p2, v2, :cond_2

    iget v0, p0, Lnet/youmi/android/ak;->j:I

    int-to-float v0, v0

    iget v1, p0, Lnet/youmi/android/ak;->g:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/ak;->a:I

    iget v0, p0, Lnet/youmi/android/ak;->k:I

    int-to-float v0, v0

    iget v1, p0, Lnet/youmi/android/ak;->g:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/ak;->b:I

    iput v3, p0, Lnet/youmi/android/ak;->d:I

    const/16 v0, 0x32

    iput v0, p0, Lnet/youmi/android/ak;->c:I

    iput v4, p0, Lnet/youmi/android/ak;->e:I

    iput v2, p0, Lnet/youmi/android/ak;->f:I

    invoke-static {}, Lnet/youmi/android/cr;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ak;->l:Ljava/lang/String;

    :goto_1
    iget v0, p0, Lnet/youmi/android/ak;->a:I

    iget v1, p0, Lnet/youmi/android/ak;->b:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lnet/youmi/android/ak;->a:I

    iget v1, p0, Lnet/youmi/android/ak;->b:I

    iput v1, p0, Lnet/youmi/android/ak;->a:I

    iput v0, p0, Lnet/youmi/android/ak;->b:I

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lnet/youmi/android/ak;->j:I

    iput v0, p0, Lnet/youmi/android/ak;->a:I

    iget v0, p0, Lnet/youmi/android/ak;->k:I

    iput v0, p0, Lnet/youmi/android/ak;->b:I

    iget v0, p0, Lnet/youmi/android/ak;->i:I

    sparse-switch v0, :sswitch_data_0

    iput v3, p0, Lnet/youmi/android/ak;->d:I

    invoke-static {}, Lnet/youmi/android/cr;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ak;->l:Ljava/lang/String;

    :goto_2
    const/high16 v0, 0x42480000    # 50.0f

    iget v1, p0, Lnet/youmi/android/ak;->g:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/ak;->c:I

    const/high16 v0, 0x42280000    # 42.0f

    iget v1, p0, Lnet/youmi/android/ak;->g:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/ak;->e:I

    const/high16 v0, 0x40800000    # 4.0f

    iget v1, p0, Lnet/youmi/android/ak;->g:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lnet/youmi/android/ak;->f:I

    goto :goto_1

    :sswitch_0
    const/16 v0, 0x26

    iput v0, p0, Lnet/youmi/android/ak;->d:I

    invoke-static {}, Lnet/youmi/android/cr;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ak;->l:Ljava/lang/String;

    goto :goto_2

    :sswitch_1
    iput v3, p0, Lnet/youmi/android/ak;->d:I

    invoke-static {}, Lnet/youmi/android/cr;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ak;->l:Ljava/lang/String;

    goto :goto_2

    :sswitch_2
    iput v5, p0, Lnet/youmi/android/ak;->d:I

    invoke-static {}, Lnet/youmi/android/cr;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ak;->l:Ljava/lang/String;

    goto :goto_2

    :sswitch_3
    iput v5, p0, Lnet/youmi/android/ak;->d:I

    invoke-static {}, Lnet/youmi/android/cr;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/ak;->l:Ljava/lang/String;

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/ak;->j:I

    return v0
.end method

.method a(I)I
    .locals 4

    const/4 v3, 0x1

    if-gtz p1, :cond_1

    move v0, v3

    :goto_0
    iget v1, p0, Lnet/youmi/android/ak;->h:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    int-to-float v0, v0

    iget v1, p0, Lnet/youmi/android/ak;->g:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v3

    :cond_0
    return v0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method b()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/ak;->a:I

    return v0
.end method

.method c()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/ak;->b:I

    return v0
.end method

.method d()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/ak;->c:I

    return v0
.end method

.method e()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/ak;->e:I

    return v0
.end method

.method f()I
    .locals 1

    iget v0, p0, Lnet/youmi/android/ak;->f:I

    return v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ak;->l:Ljava/lang/String;

    return-object v0
.end method
