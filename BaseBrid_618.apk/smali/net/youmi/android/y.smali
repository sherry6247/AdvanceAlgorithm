.class Lnet/youmi/android/y;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lnet/youmi/android/ac;


# instance fields
.field a:Lnet/youmi/android/ak;

.field b:I

.field c:Landroid/app/Activity;

.field d:Lnet/youmi/android/bs;

.field e:Landroid/widget/ImageView;

.field final synthetic f:Lnet/youmi/android/bb;


# direct methods
.method public constructor <init>(Lnet/youmi/android/bb;Landroid/app/Activity;Lnet/youmi/android/ak;I)V
    .locals 1

    iput-object p1, p0, Lnet/youmi/android/y;->f:Lnet/youmi/android/bb;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lnet/youmi/android/y;->b:I

    iput-object p3, p0, Lnet/youmi/android/y;->a:Lnet/youmi/android/ak;

    iput p4, p0, Lnet/youmi/android/y;->b:I

    iput-object p2, p0, Lnet/youmi/android/y;->c:Landroid/app/Activity;

    invoke-direct {p0}, Lnet/youmi/android/y;->f()V

    return-void
.end method

.method private f()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lnet/youmi/android/y;->d:Lnet/youmi/android/bs;

    if-nez v0, :cond_0

    new-instance v0, Lnet/youmi/android/bs;

    iget-object v1, p0, Lnet/youmi/android/y;->f:Lnet/youmi/android/bb;

    iget-object v2, p0, Lnet/youmi/android/y;->c:Landroid/app/Activity;

    iget v3, p0, Lnet/youmi/android/y;->b:I

    iget-object v4, p0, Lnet/youmi/android/y;->a:Lnet/youmi/android/ak;

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/youmi/android/bs;-><init>(Lnet/youmi/android/bb;Landroid/app/Activity;ILnet/youmi/android/ak;)V

    iput-object v0, p0, Lnet/youmi/android/y;->d:Lnet/youmi/android/bs;

    iget-object v0, p0, Lnet/youmi/android/y;->d:Lnet/youmi/android/bs;

    invoke-virtual {v0, v5}, Lnet/youmi/android/bs;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/y;->e:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lnet/youmi/android/y;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/y;->e:Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p0, Lnet/youmi/android/y;->d:Lnet/youmi/android/bs;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lnet/youmi/android/bs;->setId(I)V

    iget-object v0, p0, Lnet/youmi/android/y;->e:Landroid/widget/ImageView;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    invoke-static {}, Lnet/youmi/android/ap;->b()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    iget-object v3, p0, Lnet/youmi/android/y;->a:Lnet/youmi/android/ak;

    invoke-virtual {v3}, Lnet/youmi/android/ak;->d()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lnet/youmi/android/y;->a:Lnet/youmi/android/ak;

    invoke-virtual {v2}, Lnet/youmi/android/ak;->f()I

    move-result v2

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v5, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lnet/youmi/android/y;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lnet/youmi/android/y;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/youmi/android/y;->d:Lnet/youmi/android/bs;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/y;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/youmi/android/y;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/view/animation/Animation;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/y;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lnet/youmi/android/ax;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/youmi/android/y;->d:Lnet/youmi/android/bs;

    invoke-virtual {v0, p1}, Lnet/youmi/android/bs;->a(Lnet/youmi/android/ax;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lnet/youmi/android/y;->removeAllViews()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/y;->d:Lnet/youmi/android/bs;

    invoke-virtual {v0}, Lnet/youmi/android/bs;->c()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/youmi/android/y;->setVisibility(I)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lnet/youmi/android/y;->d:Lnet/youmi/android/bs;

    invoke-virtual {v0}, Lnet/youmi/android/bs;->e()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    :try_start_0
    new-instance v0, Lnet/youmi/android/cx;

    iget-object v1, p0, Lnet/youmi/android/y;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lnet/youmi/android/cx;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lnet/youmi/android/ae;

    invoke-direct {v1, p0}, Lnet/youmi/android/ae;-><init>(Lnet/youmi/android/y;)V

    sget-object v2, Lnet/youmi/android/af;->a:Lnet/youmi/android/ay;

    iget-object v3, p0, Lnet/youmi/android/y;->f:Lnet/youmi/android/bb;

    invoke-static {v3}, Lnet/youmi/android/bb;->f(Lnet/youmi/android/bb;)Lnet/youmi/android/ak;

    move-result-object v3

    invoke-virtual {v3}, Lnet/youmi/android/ak;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lnet/youmi/android/cx;->a(Lnet/youmi/android/bp;Lnet/youmi/android/ay;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
