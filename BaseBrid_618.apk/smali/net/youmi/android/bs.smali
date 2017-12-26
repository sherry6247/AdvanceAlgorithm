.class Lnet/youmi/android/bs;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lnet/youmi/android/ac;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/animation/Animation;

.field e:Landroid/view/animation/Animation;

.field final synthetic f:Lnet/youmi/android/bb;


# direct methods
.method public constructor <init>(Lnet/youmi/android/bb;Landroid/app/Activity;ILnet/youmi/android/ak;)V
    .locals 5

    const/16 v4, 0x10

    const/16 v3, 0x8

    const/4 v2, 0x2

    const/4 v1, -0x2

    iput-object p1, p0, Lnet/youmi/android/bs;->f:Lnet/youmi/android/bb;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/bs;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lnet/youmi/android/bs;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lnet/youmi/android/bs;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lnet/youmi/android/bs;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lnet/youmi/android/bs;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lnet/youmi/android/bs;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/bs;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lnet/youmi/android/bs;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lnet/youmi/android/bs;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p4}, Lnet/youmi/android/r;->a(Lnet/youmi/android/ak;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/bs;->d:Landroid/view/animation/Animation;

    invoke-static {p4}, Lnet/youmi/android/r;->b(Lnet/youmi/android/ak;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnet/youmi/android/bs;->e:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lnet/youmi/android/bs;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/view/animation/Animation;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lnet/youmi/android/bs;->a(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lnet/youmi/android/ax;)Z
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lnet/youmi/android/bs;->b()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/youmi/android/ax;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method b()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lnet/youmi/android/bs;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/youmi/android/bs;->c:Landroid/widget/TextView;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/bs;->b:Landroid/widget/TextView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/youmi/android/bs;->a:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public c()V
    .locals 3

    invoke-virtual {p0}, Lnet/youmi/android/bs;->b()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lnet/youmi/android/bs;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/youmi/android/bs;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v0, p0, Lnet/youmi/android/bs;->c:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/youmi/android/bs;->setVisibility(I)V

    return-void
.end method

.method public e()V
    .locals 3

    invoke-virtual {p0}, Lnet/youmi/android/bs;->b()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lnet/youmi/android/bs;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/youmi/android/bs;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lnet/youmi/android/bs;->e:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lnet/youmi/android/bs;->c:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lnet/youmi/android/bs;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Lnet/youmi/android/bs;->c:Landroid/widget/TextView;

    goto :goto_0
.end method
