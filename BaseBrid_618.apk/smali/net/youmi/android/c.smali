.class Lnet/youmi/android/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/youmi/android/bb;


# direct methods
.method constructor <init>(Lnet/youmi/android/bb;)V
    .locals 0

    iput-object p1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/youmi/android/bb;->setVisibility(I)V

    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v1}, Lnet/youmi/android/bb;->c(Lnet/youmi/android/bb;)Lnet/youmi/android/ax;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/ax;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    iget-object v2, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v2}, Lnet/youmi/android/bb;->c(Lnet/youmi/android/bb;)Lnet/youmi/android/ax;

    move-result-object v2

    invoke-virtual {v2}, Lnet/youmi/android/ax;->b()I

    move-result v2

    invoke-static {v1, v2}, Lnet/youmi/android/bb;->b(Lnet/youmi/android/bb;I)V

    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v1}, Lnet/youmi/android/bb;->c(Lnet/youmi/android/bb;)Lnet/youmi/android/ax;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/ax;->b()I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v1}, Lnet/youmi/android/bb;->c(Lnet/youmi/android/bb;)Lnet/youmi/android/ax;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/ax;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    :cond_1
    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/youmi/android/bb;->setBackgroundColor(I)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-virtual {v1}, Lnet/youmi/android/bb;->postInvalidate()V

    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v1}, Lnet/youmi/android/bb;->l(Lnet/youmi/android/bb;)Lnet/youmi/android/ac;

    move-result-object v1

    if-eq v0, v1, :cond_7

    invoke-interface {v0}, Lnet/youmi/android/ac;->c()V

    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v1}, Lnet/youmi/android/bb;->l(Lnet/youmi/android/bb;)Lnet/youmi/android/ac;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v1}, Lnet/youmi/android/bb;->c(Lnet/youmi/android/bb;)Lnet/youmi/android/ax;

    move-result-object v1

    invoke-virtual {v1}, Lnet/youmi/android/ax;->b()I

    move-result v1

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v1}, Lnet/youmi/android/bb;->l(Lnet/youmi/android/bb;)Lnet/youmi/android/ac;

    move-result-object v1

    invoke-interface {v1}, Lnet/youmi/android/ac;->a()V

    :cond_3
    :goto_2
    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v1}, Lnet/youmi/android/bb;->f(Lnet/youmi/android/bb;)Lnet/youmi/android/ak;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/r;->a(Lnet/youmi/android/ak;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0}, Lnet/youmi/android/ac;->d()V

    invoke-interface {v0, v1}, Lnet/youmi/android/ac;->a(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v1, v0}, Lnet/youmi/android/bb;->a(Lnet/youmi/android/bb;Lnet/youmi/android/ac;)V

    :cond_4
    :goto_3
    return-void

    :pswitch_0
    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v1}, Lnet/youmi/android/bb;->g(Lnet/youmi/android/bb;)Lnet/youmi/android/y;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v2}, Lnet/youmi/android/bb;->c(Lnet/youmi/android/bb;)Lnet/youmi/android/ax;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/y;->a(Lnet/youmi/android/ax;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v0}, Lnet/youmi/android/bb;->g(Lnet/youmi/android/bb;)Lnet/youmi/android/y;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v1}, Lnet/youmi/android/bb;->h(Lnet/youmi/android/bb;)Lnet/youmi/android/ce;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v2}, Lnet/youmi/android/bb;->c(Lnet/youmi/android/bb;)Lnet/youmi/android/ax;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/ce;->a(Lnet/youmi/android/ax;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v0}, Lnet/youmi/android/bb;->h(Lnet/youmi/android/bb;)Lnet/youmi/android/ce;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v1}, Lnet/youmi/android/bb;->i(Lnet/youmi/android/bb;)Lnet/youmi/android/q;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v2}, Lnet/youmi/android/bb;->c(Lnet/youmi/android/bb;)Lnet/youmi/android/ax;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/q;->a(Lnet/youmi/android/ax;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v0}, Lnet/youmi/android/bb;->i(Lnet/youmi/android/bb;)Lnet/youmi/android/q;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v1}, Lnet/youmi/android/bb;->j(Lnet/youmi/android/bb;)Lnet/youmi/android/k;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v2}, Lnet/youmi/android/bb;->c(Lnet/youmi/android/bb;)Lnet/youmi/android/ax;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/k;->a(Lnet/youmi/android/ax;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v0}, Lnet/youmi/android/bb;->j(Lnet/youmi/android/bb;)Lnet/youmi/android/k;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v1}, Lnet/youmi/android/bb;->k(Lnet/youmi/android/bb;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    iget-object v2, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v2}, Lnet/youmi/android/bb;->k(Lnet/youmi/android/bb;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/youmi/android/bb;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v1}, Lnet/youmi/android/bb;->f(Lnet/youmi/android/bb;)Lnet/youmi/android/ak;

    move-result-object v1

    invoke-static {v1}, Lnet/youmi/android/r;->b(Lnet/youmi/android/ak;)Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v2}, Lnet/youmi/android/bb;->l(Lnet/youmi/android/bb;)Lnet/youmi/android/ac;

    move-result-object v2

    invoke-interface {v2, v1}, Lnet/youmi/android/ac;->a(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v1}, Lnet/youmi/android/bb;->l(Lnet/youmi/android/bb;)Lnet/youmi/android/ac;

    move-result-object v1

    invoke-interface {v1}, Lnet/youmi/android/ac;->a()V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lnet/youmi/android/c;->a:Lnet/youmi/android/bb;

    invoke-static {v0}, Lnet/youmi/android/bb;->l(Lnet/youmi/android/bb;)Lnet/youmi/android/ac;

    move-result-object v0

    invoke-interface {v0}, Lnet/youmi/android/ac;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
