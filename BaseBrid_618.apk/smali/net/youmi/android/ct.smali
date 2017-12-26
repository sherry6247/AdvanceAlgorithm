.class Lnet/youmi/android/ct;
.super Landroid/widget/ImageView;


# instance fields
.field private a:Lnet/youmi/android/au;

.field private b:Lnet/youmi/android/cu;

.field private c:Landroid/graphics/Bitmap;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/ct;->d:Z

    return-void
.end method

.method static synthetic a(Lnet/youmi/android/ct;)Lnet/youmi/android/au;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ct;->a:Lnet/youmi/android/au;

    return-object v0
.end method

.method static synthetic a(Lnet/youmi/android/ct;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/ct;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic b(Lnet/youmi/android/ct;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/ct;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ct;->b:Lnet/youmi/android/cu;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/youmi/android/ct;->c()V

    :cond_0
    new-instance v0, Lnet/youmi/android/cu;

    new-instance v1, Lnet/youmi/android/bf;

    invoke-direct {v1, p0}, Lnet/youmi/android/bf;-><init>(Lnet/youmi/android/ct;)V

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lnet/youmi/android/cu;-><init>(Lnet/youmi/android/p;I)V

    iput-object v0, p0, Lnet/youmi/android/ct;->b:Lnet/youmi/android/cu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/ct;->b:Lnet/youmi/android/cu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/youmi/android/ct;->b:Lnet/youmi/android/cu;

    invoke-virtual {v0}, Lnet/youmi/android/cu;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/youmi/android/ct;->b:Lnet/youmi/android/cu;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/youmi/android/ct;->d:Z

    invoke-direct {p0}, Lnet/youmi/android/ct;->c()V

    return-void
.end method

.method a(Lnet/youmi/android/au;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lnet/youmi/android/au;->c()I

    move-result v0

    if-lez v0, :cond_0

    iput-object p1, p0, Lnet/youmi/android/ct;->a:Lnet/youmi/android/au;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/youmi/android/ct;->d:Z

    invoke-direct {p0}, Lnet/youmi/android/ct;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lnet/youmi/android/ct;->a:Lnet/youmi/android/au;

    invoke-direct {p0}, Lnet/youmi/android/ct;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lnet/youmi/android/ct;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lnet/youmi/android/ct;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lnet/youmi/android/ct;->c()V

    goto :goto_0
.end method
